# Declaration of variables
CC = g++-7 -fopenmp
CC_FLAGS = -w 
#OPENCV_FLAGS = -I/usr/local/Cellar/opencv/3.4.0/include/opencv2 -I/usr/local/Cellar/opencv/3.4.0/include -L/usr/local/Cellar/opencv/3.4.0/lib  -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_ocl -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab
OPENCV_FLAGS = -I/usr/local/Cellar/opencv/2.4.13.2/include -I/usr/local/Cellar/opencv/2.4.13.2/include/opencv2 -L/usr/local/Cellar/opencv/2.4.13.2/lib  -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_ocl -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab
#OPENCV_FLAGS = -I/usr/local/include/opencv2 


# File names
EXEC = run
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXEC)

# To obtain object files
%.o: %.cpp
	$(CC) -c $(CC_FLAGS) $(OPENCV_FLAGS) $< -o $@

# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)
