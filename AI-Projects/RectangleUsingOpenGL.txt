#include <stdlib.h>

#include <GL/gl.h>
#include <GL/glut.h>
void display(void)
{
/* clear all pixels in background */
glClear (GL_COLOR_BUFFER_BIT);
/* draw white polygon (rectangle) with corners at
* (0.25, 0.25, 0.0) and (0.75, 0.75, 0.0)
*/
glColor3f (0.0, 1.0, 0.0);
glBegin(GL_LINE_LOOP);
glVertex3f (0.15, 0.15, 0.0);
glVertex3f (0.50, 0.15, 0.0);
glVertex3f (0.50, 0.40, 0.0);
glVertex3f (0.15, 0.40, 0.0);
glEnd();

glFlush ();
}
void init (void)
{
/* select clearing (background) color */
glClearColor (0.0, 0.0, 0.0, 0.0);

glMatrixMode(GL_PROJECTION);
glLoadIdentity();
glOrtho(0.0, 1.0, 0.0, 1.0, -1.0, 1.0);
}

int main(int argc, char** argv)
{
glutInit(&argc, argv);
glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
glutInitWindowSize (800, 500);
glutInitWindowPosition (100, 100);
glutCreateWindow ("Rectangle");
init ();
glutDisplayFunc(display);
glutMainLoop();
return 0;
}
