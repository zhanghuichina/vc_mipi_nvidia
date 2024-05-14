# Binning

With the following v4l2 control the binning mode of the sensor can be set
```
v4l2-ctl -c binning_mode=value
```
The value determines the mode and depends on the capabilities of the sensor. There are predefined value pairs for the horizontal and the vertical binning factors, which are addressed by an index. <br>
E.g. IMX412:
```
v4l2-ctl -c binning_mode=1
```
means horizontal binning is 1, vertical binning is 2 (1x2)
The predefined value pairs can be seen in the vc_init_ctrl_xxx function of the sensor. In that case vc_init_ctrl_imx412(...)<br>
When setting a binning mode, the ROI must be adjusted accordingly.


The table below