Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1071CC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvcCxfAGwzgtzmajavTaByIZ5U1eawdot6O1RzXFdZ4=; b=kfKUCAcWAJ5mK0
	aWK/cQJUef4L3qjWfyTBbF8EkJXeUkUEtBW5zQj8S3jwvq1qlAu80ZlbZJu/nF3HO3k9wkmlt61Rh
	utZLJBCv/e37aHLe6CUL0ehq/Qb2wzYn7SdVD5TT9qgAkooxKjNiZsopwYVxJlzItbma9mE3u4ymv
	G+Ih6cmI05eWuq7fhkPKfHjnXM1bo0TmTX+REiwiLr8SfLFm/bXqjMkqmjNSxGSZauM4flLVXJN9F
	fOHjIfbYshgl8ceYWnH1kptYPz7ICSubsoA2b/cXAFRjyx+mKeVbRwYos77rU6ad3xjP6Sukdu3tj
	2/B4kNW9gSOceiWghY/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQlX-007EXo-BU; Sat, 05 Feb 2022 19:30:35 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQE1-006zzr-0y; Sat, 05 Feb 2022 18:56:04 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 631C3240018;
 Sat,  5 Feb 2022 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087354;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2bmTxzvTu5IUiX+CK1RyRY9aBm5pWpgoWqh+V+7gT8I=;
 b=kkN7KMWoj9J2P+xEQT1grm/Vgyb8b8/2W5JnyLPfgm7fL/ZzxxnRGEDf9k+nRK2iQ55JUP
 d8K9k9oXDEd9CN0VLA8yGQ3trZFJx9GXvSQ+r+VHm0t+VT8rxfxvUcoTSoBwLBmJeCmOFp
 tjBLDpx29BMatT13sdeISNqzuzQs16H36F3XJtzEbh+xMIzUer3B5x01nvbdGPZ4wKGGO5
 RnmOjJgsdeH+UQn3arEIUMkLIcsMwb83P3Ef0EjKitX0e06eWmxE+f8eR7YlYPeYTBHlVp
 85XmRugLguT14cKztabI/WaH7neqYS29YybFUUkdGNSQ5CmD0AiMHFD1mpzQmg==
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
Subject: [PATCH v2 44/66] media: sun6i-csi: Introduce bridge format structure,
 list and helper
Date: Sat,  5 Feb 2022 19:54:07 +0100
Message-Id: <20220205185429.2278860-45-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105557_489998_48565716 
X-CRM114-Status: GOOD (  17.67  )
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

Introduce a more informative format list for the bridge, with
information about how to configure the input. This separation will
later be useful when using the bridge standalone (without capture)
for the isp workflow.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sunxi/sun6i-csi/sun6i_csi_bridge.c        | 169 ++++++++++++++----
 .../sunxi/sun6i-csi/sun6i_csi_bridge.h        |  12 ++
 2 files changed, 145 insertions(+), 36 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
index 5e2d4ffd9932..bb6260f28c45 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
@@ -11,6 +11,7 @@
 
 #include "sun6i_csi.h"
 #include "sun6i_csi_bridge.h"
+#include "sun6i_csi_reg.h"
 
 /* Helpers */
 
@@ -34,47 +35,143 @@ void sun6i_csi_bridge_format(struct sun6i_csi_device *csi_dev,
 
 /* Format */
 
-static const u32 sun6i_csi_bridge_mbus_codes[] = {
+static const struct sun6i_csi_bridge_format sun6i_csi_bridge_formats[] = {
 	/* Bayer */
-	MEDIA_BUS_FMT_SBGGR8_1X8,
-	MEDIA_BUS_FMT_SGBRG8_1X8,
-	MEDIA_BUS_FMT_SGRBG8_1X8,
-	MEDIA_BUS_FMT_SRGGB8_1X8,
-	MEDIA_BUS_FMT_SBGGR10_1X10,
-	MEDIA_BUS_FMT_SGBRG10_1X10,
-	MEDIA_BUS_FMT_SGRBG10_1X10,
-	MEDIA_BUS_FMT_SRGGB10_1X10,
-	MEDIA_BUS_FMT_SBGGR12_1X12,
-	MEDIA_BUS_FMT_SGBRG12_1X12,
-	MEDIA_BUS_FMT_SGRBG12_1X12,
-	MEDIA_BUS_FMT_SRGGB12_1X12,
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SBGGR8_1X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGBRG8_1X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGRBG8_1X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SRGGB8_1X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SBGGR10_1X10,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGBRG10_1X10,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGRBG10_1X10,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SRGGB10_1X10,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SBGGR12_1X12,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGBRG12_1X12,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SGRBG12_1X12,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_SRGGB12_1X12,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
 	/* RGB */
-	MEDIA_BUS_FMT_RGB565_2X8_LE,
-	MEDIA_BUS_FMT_RGB565_2X8_BE,
+	{
+		.mbus_code		= MEDIA_BUS_FMT_RGB565_2X8_LE,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_RGB565_2X8_BE,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
 	/* YUV422 */
-	MEDIA_BUS_FMT_YUYV8_2X8,
-	MEDIA_BUS_FMT_UYVY8_2X8,
-	MEDIA_BUS_FMT_YVYU8_2X8,
-	MEDIA_BUS_FMT_UYVY8_2X8,
-	MEDIA_BUS_FMT_VYUY8_2X8,
-	MEDIA_BUS_FMT_YUYV8_1X16,
-	MEDIA_BUS_FMT_UYVY8_1X16,
-	MEDIA_BUS_FMT_YVYU8_1X16,
-	MEDIA_BUS_FMT_UYVY8_1X16,
-	MEDIA_BUS_FMT_VYUY8_1X16,
+	{
+		.mbus_code		= MEDIA_BUS_FMT_YUYV8_2X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_YUYV,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_YVYU,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_UYVY8_2X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_YVYU8_2X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_YVYU,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_YUYV,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_UYVY8_2X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_VYUY8_2X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_YUYV8_1X16,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_YUYV,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_YVYU,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_UYVY8_1X16,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_YVYU8_1X16,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_YVYU,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_YUYV,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_UYVY8_1X16,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+	},
+	{
+		.mbus_code		= MEDIA_BUS_FMT_VYUY8_1X16,
+		.input_format		= SUN6I_CSI_INPUT_FMT_YUV422,
+		.input_yuv_seq		= SUN6I_CSI_INPUT_YUV_SEQ_VYUY,
+		.input_yuv_seq_invert	= SUN6I_CSI_INPUT_YUV_SEQ_UYVY,
+	},
 	/* Compressed */
-	MEDIA_BUS_FMT_JPEG_1X8,
+	{
+		.mbus_code		= MEDIA_BUS_FMT_JPEG_1X8,
+		.input_format		= SUN6I_CSI_INPUT_FMT_RAW,
+	},
 };
 
-static bool sun6i_csi_bridge_mbus_code_check(u32 mbus_code)
+const struct sun6i_csi_bridge_format *
+sun6i_csi_bridge_format_find(u32 mbus_code)
 {
 	unsigned int i;
 
-	for (i = 0; i < ARRAY_SIZE(sun6i_csi_bridge_mbus_codes); i++)
-		if (sun6i_csi_bridge_mbus_codes[i] == mbus_code)
-			return true;
+	for (i = 0; i < ARRAY_SIZE(sun6i_csi_bridge_formats); i++)
+		if (sun6i_csi_bridge_formats[i].mbus_code == mbus_code)
+			return &sun6i_csi_bridge_formats[i];
 
-	return false;
+	return NULL;
 }
 
 /* V4L2 Subdev */
@@ -117,8 +214,8 @@ static const struct v4l2_subdev_video_ops sun6i_csi_bridge_video_ops = {
 static void
 sun6i_csi_bridge_mbus_format_prepare(struct v4l2_mbus_framefmt *mbus_format)
 {
-	if (!sun6i_csi_bridge_mbus_code_check(mbus_format->code))
-		mbus_format->code = sun6i_csi_bridge_mbus_codes[0];
+	if (!sun6i_csi_bridge_format_find(mbus_format->code))
+		mbus_format->code = sun6i_csi_bridge_formats[0].mbus_code;
 
 	mbus_format->field = V4L2_FIELD_NONE;
 	mbus_format->colorspace = V4L2_COLORSPACE_RAW;
@@ -133,7 +230,7 @@ static int sun6i_csi_bridge_init_cfg(struct v4l2_subdev *subdev,
 	struct v4l2_mbus_framefmt *mbus_format =
 		v4l2_subdev_get_try_format(subdev, state, pad);
 
-	mbus_format->code = sun6i_csi_bridge_mbus_codes[0];
+	mbus_format->code = sun6i_csi_bridge_formats[0].mbus_code;
 	mbus_format->width = 1280;
 	mbus_format->height = 720;
 
@@ -147,10 +244,10 @@ sun6i_csi_bridge_enum_mbus_code(struct v4l2_subdev *subdev,
 				struct v4l2_subdev_state *state,
 				struct v4l2_subdev_mbus_code_enum *code_enum)
 {
-	if (code_enum->index >= ARRAY_SIZE(sun6i_csi_bridge_mbus_codes))
+	if (code_enum->index >= ARRAY_SIZE(sun6i_csi_bridge_formats))
 		return -EINVAL;
 
-	code_enum->code = sun6i_csi_bridge_mbus_codes[code_enum->index];
+	code_enum->code = sun6i_csi_bridge_formats[code_enum->index].mbus_code;
 
 	return 0;
 }
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
index afef17b5a788..079227c02482 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.h
@@ -20,6 +20,13 @@ enum sun6i_csi_bridge_pad {
 
 struct sun6i_csi_device;
 
+struct sun6i_csi_bridge_format {
+	u32	mbus_code;
+	u8	input_format;
+	u8	input_yuv_seq;
+	u8	input_yuv_seq_invert;
+};
+
 struct sun6i_csi_bridge_source {
 	struct v4l2_subdev		*subdev;
 	struct v4l2_fwnode_endpoint	endpoint;
@@ -43,6 +50,11 @@ void sun6i_csi_bridge_dimensions(struct sun6i_csi_device *csi_dev,
 void sun6i_csi_bridge_format(struct sun6i_csi_device *csi_dev,
 			     u32 *mbus_code, u32 *field);
 
+/* Format */
+
+const struct sun6i_csi_bridge_format *
+sun6i_csi_bridge_format_find(u32 mbus_code);
+
 /* Bridge */
 
 int sun6i_csi_bridge_setup(struct sun6i_csi_device *csi_dev);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
