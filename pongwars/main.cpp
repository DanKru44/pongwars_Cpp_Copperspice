#include <QtGui>
#include <QtCore>
#include <cmath>
#include <cstdlib>

class GameWidget : public QWidget
{
  public:

    GameWidget( QWidget *parent = nullptr ) : QWidget( parent )
    {
      // timer for the Animation speed
      // calling Method updateBalls to refresh the ball position
      // you can play with time to get faster or slower balls
      // changing the time can result in weird collison behaviour
      timer = new QTimer( this ) ;
      connect( timer , &QTimer::timeout , this , &GameWidget::updateBalls ) ;
      timer -> stop(  ) ;

      // initializing the square colors with a method call
      initializeSquareColors() ;

      initializeBalls() ;
    }

    void startAnimation()
    {
      timer -> start(3) ;
    }

    void stopAnimation()
    {
      timer ->stop() ;
    }

    void resetAnimation()
    {
      
      initializeSquareColors() ;

      initializeBalls() ;

      timer -> stop() ;
      update() ;
    }

  private:
    // ball properties
    double blueBallX , blueBallY ;
    double whiteBallX , whiteBallY ;
    int ballSize = 20 ;
    double speedBlueBallX , speedBlueBallY ;
    double speedWhiteballX , speedWhiteBallY ;

    // window properties
    int height = 800 ; 
    int width = 800 ;

    // square properties
    int squareSize = width / 20 ;
    // two dimensional Array to represent each square in the window
    QColor squareColor[ 40 ][ 40 ] ;

    QTimer* timer ;
    double angle ;

    // method to generate a random angle
    // use of static_cast to transform the returned integer into a double number
    // RAND_MAX to standardize the number in a range between 0 and 1
    // multiplication with 2*PI to represent a full circle
    double getrandomangle() 
    {
      return static_cast< double > ( std::rand() ) / RAND_MAX * 2.0 * M_PI ;
    }
    
    void initializeBalls()
    {
      whiteBallX = width / 4 ;
      whiteBallY = height /2 ;
      blueBallX = width * 0.75 ; 
      blueBallY = height / 2 ;

      angle = getrandomangle() ;
      speedWhiteballX = 2 ;
      speedWhiteBallY = 2 * std::cos( angle ) ;
      speedBlueBallX = -speedWhiteballX ;
      speedBlueBallY = -speedWhiteBallY ;
    }

    // method to distribute the squarecolors depending on the spot in the window
    // first for-loop represents the left border of each square
    // second Loop the upper Border
    // if detects if the left border of the square is over the half of the Window 
    // the squares are getting colored depending on the spot in the window
    void initializeSquareColors() 
    {
      for( int w = 0 ; w < width ; w += squareSize )
      {
        for( int h = 0 ; h < height ; h += squareSize )
        {
          if( w < width / 2 )
          {
            squareColor[ w / squareSize ] [ h / squareSize ] = Qt::blue ;
          }
            
          else
          {
            squareColor[ w / squareSize ] [ h / squareSize ] = Qt::white ;
          }
        }
      }
    }
    
    // setBrush sets the panit brush to the given color
    // drawEllipse paints the circle on the given coordinates and the given size
    void drawBall( QPainter& painter , double x , double y , int size , const QColor& color )
    {
      painter.setBrush( color ) ;
      painter.drawEllipse( x , y , size , size ) ;
    }

    // overrides virtual method paintEvent inheritet by QWidget
    // for-loops calculate the position and the size of the square
    // fillRect fills the square with the fitting color out of the squareColor array
    // call of the drawBall method to draw the balls
    // this method is getting called by update() or after the start of the programm
    void paintEvent( QPaintEvent* event ) override
    {
      QPainter painter( this ) ;

      for( int w = 0 ; w < width ; w += squareSize )
      {
        for ( int h = 0 ; h < height ; h += squareSize )
        {
          painter.fillRect( w , h , squareSize , squareSize , squareColor[ w / squareSize ][ h / squareSize ] ) ;
        }
      }

      drawBall( painter , whiteBallX , whiteBallY , ballSize , Qt::white ) ;
      drawBall( painter , blueBallX , blueBallY , ballSize , Qt::blue ) ;
    }

    // calls the Methods to determine if a collison occurs
    void checkCollision( double& ballX , double& ballY , double& speedX , double& speedY , const QColor& ballColor )
    {
      checkWallCollision( ballX , ballY , speedX , speedY ) ;
      checkSquareCollision( ballX , ballY , speedX , speedY , ballColor ) ;
    }

    // checks if a collison with the borders of the Window occurs
    // <= width/height checks the left/upper border
    // >= width/height checks the right/lower border
    // the speed direction gets reversed
    void checkWallCollision( double& ballX , double& ballY , double& speedX , double& speedY )
    {
      if( ballX <= 0 )
      {
        ballX = 0 ;
        speedX = std::abs( speedX ) ;
      }
      else if( ballX >= width - ballSize )
      {
        ballX = width - ballSize ;
        speedX = -speedX ;
      }

      if( ballY <= 0 )
      {
        ballY = 0 ;
        speedY = std::abs( speedY ) ;
      }
      else if( ballY >= height - ballSize )
      {
        ballY = height - ballSize ;
        speedY = -speedY ;
      }
    }

    void checkSquareCollision( double& ballX , double& ballY , double& speedX , double& speedY , const QColor& ballColor )
    {
      // iteration over every square in the window
      for( int w = 0 ; w < width ; w += squareSize )
      {
        for( int h = 0 ; h < height ; h += squareSize )
        {
          // gets the squarecolor of the given array
          QColor& squareColors = squareColor[ w / squareSize ] [ h / squareSize ] ;

          // checks if the ballcolor matches the squarecolor
          // also checks if the ball is inside a square to get recognized as a collison
          // ballX + ballSize > w : checks the right side
          // ballX < w : checks the left side
          // ballY + ballSize > h : checks the lower side
          // ballY < h checks the upper side
          if( ballColor == squareColors &&
             ballX + ballSize > w && ballX < w + squareSize &&
             ballY + ballSize > h && ballY < h + squareSize )
          {
            // calculates the overlap in x and y direction
            // use of std::abs to calculate the amount of overlap on each side (right and left, upper and lower)
            // std::min chooses the lesser overlap on each side 
            double overlapX = std::min( std::abs( ballX + ballSize - w ) , std::abs( ballX - ( w + squareSize ) ) ) ;
            double overlapY = std::min( std::abs( ballY + ballSize - h ) , std::abs( ballY - ( h + squareSize ) ) ) ;
            
            // determine if the overlap occurs in X or Y direction
            // the speed direction gets reversed accordingly
            if( overlapX < overlapY )
            {
              if( ballX + ballSize / 2 < w + squareSize / 2 )
              {
                speedX = -speedX ;
              }
              else
              {
                speedX = std::abs( speedX ) ;
              }
            }
            else
            {
              if( ballY + ballSize / 2 < h + squareSize / 2 )
              {
                speedY = -speedY ;
              }
              else
              {
                speedY = std::abs( speedY ) ;
              }
            }
            
            // changes the squarecolor if a collision ocurrs
            // if the Ballcolor is white the squarecolor gets changed to blue
            // else the squarecolor gets changed to white
            squareColors = ( ballColor == Qt::white ) ? Qt::blue : Qt::white ;
          }
        }
      }
    }

    // method to update the Ball Position
    // calls the checkCollision MEthod to determine if a collision occurs
    // update() calls the paintEvent Method
    void updateBalls()
    {

      checkCollision( whiteBallX , whiteBallY , speedWhiteballX , speedWhiteBallY , Qt::white ) ;
      checkCollision( blueBallX , blueBallY , speedBlueBallX , speedBlueBallY , Qt::blue ) ;
      whiteBallX += speedWhiteballX ;
      whiteBallY += speedWhiteBallY ;
      blueBallX += speedBlueBallX ;
      blueBallY += speedBlueBallY ;
      update() ;
    }

} ;


class MainWindow : public QWidget
{

  public:

    MainWindow()
    {
      QVBoxLayout *mainLayout = new QVBoxLayout( this ) ;

      GameWidget *gameWidget = new GameWidget( this ) ;
      gameWidget -> setFixedSize( 800, 800 ) ;
      mainLayout -> addWidget( gameWidget ) ;

      QHBoxLayout *buttonLayout = new QHBoxLayout() ;
      QPushButton *startButton = new QPushButton ( "Start" ) ;
      QPushButton *stopButton = new QPushButton ( "Stop" ) ;
      QPushButton *resetButton = new QPushButton( "Reset" ) ;
      buttonLayout -> addWidget( startButton ) ;
      buttonLayout -> addWidget( stopButton ) ;
      buttonLayout -> addWidget( resetButton ) ;

      QObject::connect( startButton , &QPushButton::clicked , gameWidget , &GameWidget::startAnimation ) ;
      QObject::connect( stopButton , &QPushButton::clicked , gameWidget , &GameWidget::stopAnimation ) ;
      QObject::connect( resetButton , &QPushButton::clicked , gameWidget , &GameWidget::resetAnimation ) ;

      mainLayout -> addLayout( buttonLayout ) ;

      setLayout( mainLayout ) ;
    }
} ;

int main( int argc , char *argv[] )
{
  QApplication app( argc , argv ) ;

  MainWindow mainWindow ;
  mainWindow.show() ;

  return app.exec() ;
}
