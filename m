Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA321C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0DhnifOwEODju9SCNe2m7ibFg+bQofAAxpRsWJzIDc=; b=mZhSHDN/c6ZO4b
	9AWKxI0dZReczvql67fmNcdHviPIufpfGkEnIq+uNnLkpLOvPHolRSY2ZEePPVXWFHj8rimNGj3FZ
	W6DgoVQX2zHkBmcZ4kSynkX0FypfQ3/31o93PtsDraDRBzc0Xngp+VLPAfUKWTU55P11yhnxLNgmf
	TJmFUichxKCWDkxLZ2ohi9PtJFy07VdfwicOHCT76nPZON+AG+LTjRPPFoPVEdmKNvrS6EjUnI41i
	PMpPmxJums09SotUKoRslPp74iyEAYCI1uy3qAqUGpJDEOUfOgztUFAsm57AKsdF9J0o+3a0DDmBX
	SrEoYPCqamVdw5Pr873g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQsF-007H8t-3i; Sat, 05 Feb 2022 19:37:31 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEF-0070AV-Vf; Sat, 05 Feb 2022 18:56:19 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7E05B240019;
 Sat,  5 Feb 2022 18:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087370;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HhjF8mCBEWtIxmFqd5RbAZEpOp/CPEwEasHqHdvdHxA=;
 b=OZ3GSXPrCYj5eKi3DVmxQN4ORAck5chGaq1bLiNgzzsbhFlVjI3TzH2/9dIcr2wvFSH3Xr
 G7XHLKgxn3p7HfeoS2w8aIw3jOjhZPXmHkdRhAxMdtz4XrdR50DCdDrL7KKeCGa22W8W0A
 03IvHThg6EE64Fy6qSQsg3zVHeHbyO5pqJ1vAcSUcp2EFmA/6uG3WAzv+LBlMEKL2OdujE
 ljofzKR20hLAltE3d4qHJZCAhs6Sn5czwIr35Wq9OfyWKBS1OXj6NMvkckFTunHsRuH0PN
 OEypz9/TNNOpl5itK/REHVolIvHyyD8rw+UPuz2oUiUPuvxWIV80VEpCWSj+Xw==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 53/66] media: sun6i-csi: Cleanup headers and includes,
 update copyright lines
Date: Sat,  5 Feb 2022 19:54:16 +0100
Message-Id: <20220205185429.2278860-54-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105612_431579_7A6A35B5 
X-CRM114-Status: GOOD (  11.43  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Cleanup includes, update copyright lines and some cosmetic changes.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 17 ++++++--------
 .../platform/sunxi/sun6i-csi/sun6i_csi.h      | 12 +++++-----
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       |  4 ++--
 .../sunxi/sun6i-csi/sun6i_csi_capture.h       | 22 ++++++++++++++-----
 .../platform/sunxi/sun6i-csi/sun6i_csi_reg.h  |  9 ++++----
 5 files changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 552ce74671f7..8941104f611b 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -1,31 +1,27 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (c) 2011-2018 Magewell Electronics Co., Ltd. (Nanjing)
- * All rights reserved.
  * Author: Yong Deng <yong.deng@magewell.com>
+ * Copyright 2021-2022 Bootlin
+ * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
  */
 
 #include <linux/clk.h>
-#include <linux/delay.h>
-#include <linux/dma-mapping.h>
 #include <linux/err.h>
-#include <linux/fs.h>
 #include <linux/interrupt.h>
-#include <linux/io.h>
-#include <linux/ioctl.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
-#include <linux/sched.h>
-#include <linux/sizes.h>
-#include <linux/slab.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
 #include <media/v4l2-mc.h>
 
 #include "sun6i_csi.h"
+#include "sun6i_csi_bridge.h"
+#include "sun6i_csi_capture.h"
 #include "sun6i_csi_reg.h"
 
 /* Media */
@@ -390,4 +386,5 @@ module_platform_driver(sun6i_csi_platform_driver);
 
 MODULE_DESCRIPTION("Allwinner A31 Camera Sensor Interface driver");
 MODULE_AUTHOR("Yong Deng <yong.deng@magewell.com>");
+MODULE_AUTHOR("Paul Kocialkowski <paul.kocialkowski@bootlin.com>");
 MODULE_LICENSE("GPL");
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index 773e9662048e..d7082e951b06 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -1,16 +1,16 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 2011-2018 Magewell Electronics Co., Ltd. (Nanjing)
- * All rights reserved.
  * Author: Yong Deng <yong.deng@magewell.com>
+ * Copyright 2021-2022 Bootlin
+ * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
  */
 
-#ifndef __SUN6I_CSI_H__
-#define __SUN6I_CSI_H__
+#ifndef _SUN6I_CSI_H_
+#define _SUN6I_CSI_H_
 
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
-#include <media/v4l2-fwnode.h>
 #include <media/videobuf2-v4l2.h>
 
 #include "sun6i_csi_bridge.h"
@@ -48,6 +48,8 @@ struct sun6i_csi_device {
 	struct reset_control		*reset;
 };
 
+/* V4L2 */
+
 int sun6i_csi_v4l2_complete(struct sun6i_csi_device *csi_dev);
 
-#endif /* __SUN6I_CSI_H__ */
+#endif
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index 85ea7812e991..67863642df44 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -1,13 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (c) 2011-2018 Magewell Electronics Co., Ltd. (Nanjing)
- * All rights reserved.
  * Author: Yong Deng <yong.deng@magewell.com>
+ * Copyright 2021-2022 Bootlin
+ * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
  */
 
 #include <linux/of.h>
 #include <linux/regmap.h>
-
 #include <media/v4l2-device.h>
 #include <media/v4l2-event.h>
 #include <media/v4l2-ioctl.h>
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
index 59c57bcefeec..ceceb030aef6 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
@@ -1,15 +1,15 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 2011-2018 Magewell Electronics Co., Ltd. (Nanjing)
- * All rights reserved.
  * Author: Yong Deng <yong.deng@magewell.com>
+ * Copyright 2021-2022 Bootlin
+ * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
  */
 
-#ifndef __SUN6I_CAPTURE_H__
-#define __SUN6I_CAPTURE_H__
+#ifndef _SUN6I_CAPTURE_H_
+#define _SUN6I_CAPTURE_H_
 
-#include <media/v4l2-dev.h>
-#include <media/videobuf2-core.h>
+#include <media/v4l2-device.h>
 
 #define SUN6I_CSI_CAPTURE_NAME	"sun6i-csi-capture"
 
@@ -57,21 +57,31 @@ struct sun6i_csi_capture {
 	struct v4l2_format		format;
 };
 
+/* Helpers */
+
 void sun6i_csi_capture_dimensions(struct sun6i_csi_device *csi_dev,
 				  unsigned int *width, unsigned int *height);
 void sun6i_csi_capture_format(struct sun6i_csi_device *csi_dev,
 			      u32 *pixelformat, u32 *field);
 
+/* Format */
+
 const
 struct sun6i_csi_capture_format *sun6i_csi_capture_format_find(u32 pixelformat);
 
+/* Capture */
+
 void sun6i_csi_capture_configure(struct sun6i_csi_device *csi_dev);
 void sun6i_csi_capture_state_update(struct sun6i_csi_device *csi_dev);
 
+/* State */
+
 void sun6i_csi_capture_sync(struct sun6i_csi_device *csi_dev);
 void sun6i_csi_capture_frame_done(struct sun6i_csi_device *csi_dev);
 
+/* Capture */
+
 int sun6i_csi_capture_setup(struct sun6i_csi_device *csi_dev);
 void sun6i_csi_capture_cleanup(struct sun6i_csi_device *csi_dev);
 
-#endif /* __SUN6I_CAPTURE_H__ */
+#endif
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_reg.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_reg.h
index 1e4a07f26d1d..e01c5b9c2d60 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_reg.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_reg.h
@@ -1,12 +1,13 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 2011-2018 Magewell Electronics Co., Ltd. (Nanjing)
- * All rights reserved.
  * Author: Yong Deng <yong.deng@magewell.com>
+ * Copyright 2021-2022 Bootlin
+ * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
  */
 
-#ifndef __SUN6I_CSI_REG_H__
-#define __SUN6I_CSI_REG_H__
+#ifndef _SUN6I_CSI_REG_H_
+#define _SUN6I_CSI_REG_H_
 
 #include <linux/kernel.h>
 
@@ -180,4 +181,4 @@
 #define SUN6I_CSI_CH_FIFO_STAT_REG		0x98
 #define SUN6I_CSI_CH_PCLK_STAT_REG		0x9c
 
-#endif /* __SUN6I_CSI_REG_H__ */
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
