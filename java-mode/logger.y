# -*- mode: snippet -*-
# Last modified: <2016-06-27 16:14:16 Monday by richard>
# name: logger
# key: logger
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


private static Logger logger = LoggerFactory
      .getLogger($0.class);
