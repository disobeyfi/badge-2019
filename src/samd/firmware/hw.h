#include "pins.h"
#include "adafruit_ptc.h"

extern volatile uint8_t led_channels[18];
class LEDcontrol {
  public:
    LEDcontrol(uint16_t counts = 10);
    void setled(uint8_t id, uint8_t r, uint8_t g, uint8_t b);
    void setbl(uint8_t value);
    void setbuzz(uint16_t freq, uint16_t duration);
    void alloff();

  private:
    bool enabled = false;
};

class Touchcontrol {
  public:
    Touchcontrol(uint32_t _gap = 0);
    void tick();
    bool buttons[6] = {false};

  private:

    struct adafruit_ptc_config configs[6];
    int minval[6] = {1500, 1500, 1500, 1500, 1500, 1500};
    int tcurval[6] = {0};

    int state = 0;
    int button = 0;
    uint32_t gap = 0;
    uint32_t gapcounter = 0;
    bool tbtna = false;

};
