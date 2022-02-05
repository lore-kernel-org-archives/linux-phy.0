Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6D2C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxEoRyEFg/yZXrbEG6zr1Cy1u6H4FLUwn8G+o8RUxjo=; b=Rk5BwCBdPepq99
	PHd5sR/2lhcdNPz4JGM6eMTaKHs0xn0QbDCdlhUdIwcM/jfhuvGmeRVGgtf4izPdaTGPupiBex2Lt
	aoedtdfLE4FnY1xNyAI/vhsm57QawBVCpEMQPj5P2Bv/3IyY6fNBXmBbXd1qp2hjYUqL8h4c6ymcR
	M4HLyVm540ADDlkeW/BJlM1a7TnWGyH/TMR5nmFK0IHDa+lIDSYv9zGWo1HEmYxnLd6atHAL2Rr4x
	IodHViPOHDCMb/VzFW6knoYG9rUdmnlA/7GCKeDTGumDwKOIjd4KiPnT9JOQsP/DrFURKZ5rChbv+
	CtNoC5WjP8DNpCexc8dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQtf-007Hhe-BK; Sat, 05 Feb 2022 19:38:59 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEJ-0070D0-6x; Sat, 05 Feb 2022 18:56:22 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id E0472240016;
 Sat,  5 Feb 2022 18:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3LhFPVwGxoOrWZ1HkvtJgo9PGpxM3Ge8Kn9h1p++8mA=;
 b=HO1PQ6MNIInKM2Q/W6K76u61/wKCZbZP/R1bOoCflNKDMhtmvQyQebax+XrHBylhXzzAC1
 1YWM496Eh8aJj7bWotUqrBb/m+GGNyk4Q6V2VwQ1pER/KaLMqktu7y2SGxWC+EoBqy5uhQ
 J2Rhx6WyhoLB2qynANAu1IEhRwkoESOirHGE/FcyH+73Z5xedGSVJWZVpkKoGTbnvUIISf
 g1QnLJTxpVIGFxfDfBqowGXdV/+uhoRf9AttSg4tV3Moa0TYC3g1VwyhVq+Ja4MjdkoGCU
 tnpX+YRI9GCwkmfdFpR9M3I2gyBF9CHr00/UJrkZIZsiNCYgBy+v3Hkz9NfKPA==
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
Subject: [PATCH v2 55/66] media: sun6i-csi: Only configure capture when
 streaming
Date: Sat,  5 Feb 2022 19:54:18 +0100
Message-Id: <20220205185429.2278860-56-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105615_586889_940D15BF 
X-CRM114-Status: GOOD (  18.75  )
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

Add a streaming element to the capture state structure to know if the
capture device is used or not. Only configure things related to output
when streaming, including the output format, irq, state (dma buffer)
and window configuration registers.

After this change, it becomes possible to use the bridge without the
capture device, which will be the case in the isp media flow.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sunxi/sun6i-csi/sun6i_csi_bridge.c        | 50 ++++++++++++-------
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       | 11 +++-
 .../sunxi/sun6i-csi/sun6i_csi_capture.h       |  1 +
 3 files changed, 41 insertions(+), 21 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
index b631220dd682..9827486dc3cb 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c
@@ -338,6 +338,7 @@ sun6i_csi_bridge_configure_mipi_csi2(struct sun6i_csi_device *csi_dev)
 static void sun6i_csi_bridge_configure_format(struct sun6i_csi_device *csi_dev)
 {
 	struct regmap *regmap = csi_dev->regmap;
+	bool capture_streaming = csi_dev->capture.state.streaming;
 	const struct sun6i_csi_bridge_format *bridge_format;
 	const struct sun6i_csi_capture_format *capture_format;
 	u32 mbus_code, field, pixelformat;
@@ -353,26 +354,29 @@ static void sun6i_csi_bridge_configure_format(struct sun6i_csi_device *csi_dev)
 	input_format = bridge_format->input_format;
 	input_yuv_seq = bridge_format->input_yuv_seq;
 
-	sun6i_csi_capture_format(csi_dev, &pixelformat, NULL);
+	if (capture_streaming) {
+		sun6i_csi_capture_format(csi_dev, &pixelformat, NULL);
 
-	capture_format = sun6i_csi_capture_format_find(pixelformat);
-	if (WARN_ON(!capture_format))
-		return;
+		capture_format = sun6i_csi_capture_format_find(pixelformat);
+		if (WARN_ON(!capture_format))
+			return;
 
-	if (capture_format->input_format_raw)
-		input_format = SUN6I_CSI_INPUT_FMT_RAW;
+		if (capture_format->input_format_raw)
+			input_format = SUN6I_CSI_INPUT_FMT_RAW;
 
-	if (capture_format->input_yuv_seq_invert)
-		input_yuv_seq = bridge_format->input_yuv_seq_invert;
+		if (capture_format->input_yuv_seq_invert)
+			input_yuv_seq = bridge_format->input_yuv_seq_invert;
 
-	if (field == V4L2_FIELD_INTERLACED ||
-	    field == V4L2_FIELD_INTERLACED_TB ||
-	    field == V4L2_FIELD_INTERLACED_BT)
-		output_format = capture_format->output_format_field;
-	else
-		output_format = capture_format->output_format_frame;
+		if (field == V4L2_FIELD_INTERLACED ||
+		    field == V4L2_FIELD_INTERLACED_TB ||
+		    field == V4L2_FIELD_INTERLACED_BT)
+			output_format = capture_format->output_format_field;
+		else
+			output_format = capture_format->output_format_frame;
+
+		value |= SUN6I_CSI_CH_CFG_OUTPUT_FMT(output_format);
+	}
 
-	value |= SUN6I_CSI_CH_CFG_OUTPUT_FMT(output_format);
 	value |= SUN6I_CSI_CH_CFG_INPUT_FMT(input_format);
 	value |= SUN6I_CSI_CH_CFG_INPUT_YUV_SEQ(input_yuv_seq);
 
@@ -401,6 +405,7 @@ static void sun6i_csi_bridge_configure(struct sun6i_csi_device *csi_dev)
 static int sun6i_csi_bridge_s_stream(struct v4l2_subdev *subdev, int on)
 {
 	struct sun6i_csi_device *csi_dev = v4l2_get_subdevdata(subdev);
+	bool capture_streaming = csi_dev->capture.state.streaming;
 	struct device *dev = csi_dev->dev;
 	struct v4l2_subdev *source_subdev;
 	/* Initialize to 0 to use both in disable label (ret != 0) and off. */
@@ -431,15 +436,20 @@ static int sun6i_csi_bridge_s_stream(struct v4l2_subdev *subdev, int on)
 	/* Configure */
 
 	sun6i_csi_bridge_configure(csi_dev);
-	sun6i_csi_capture_configure(csi_dev);
+
+	if (capture_streaming)
+		sun6i_csi_capture_configure(csi_dev);
 
 	/* State Update */
 
-	sun6i_csi_capture_state_update(csi_dev);
+	if (capture_streaming)
+		sun6i_csi_capture_state_update(csi_dev);
 
 	/* Enable */
 
-	sun6i_csi_bridge_irq_enable(csi_dev);
+	if (capture_streaming)
+		sun6i_csi_bridge_irq_enable(csi_dev);
+
 	sun6i_csi_bridge_enable(csi_dev);
 
 	ret = v4l2_subdev_call(source_subdev, video, s_stream, 1);
@@ -449,7 +459,9 @@ static int sun6i_csi_bridge_s_stream(struct v4l2_subdev *subdev, int on)
 	return 0;
 
 disable:
-	sun6i_csi_bridge_irq_disable(csi_dev);
+	if (capture_streaming)
+		sun6i_csi_bridge_irq_disable(csi_dev);
+
 	sun6i_csi_bridge_disable(csi_dev);
 
 	csi_dev->bridge.source = NULL;
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index 67863642df44..f6dac15af675 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -616,13 +616,17 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 	if (ret < 0)
 		goto error_state;
 
+	state->streaming = true;
+
 	ret = v4l2_subdev_call(subdev, video, s_stream, 1);
 	if (ret && ret != -ENOIOCTLCMD)
-		goto error_media_pipeline;
+		goto error_streaming;
 
 	return 0;
 
-error_media_pipeline:
+error_streaming:
+	state->streaming = false;
+
 	media_pipeline_stop(&video_dev->entity);
 
 error_state:
@@ -636,11 +640,14 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 static void sun6i_csi_capture_stop_streaming(struct vb2_queue *queue)
 {
 	struct sun6i_csi_device *csi_dev = vb2_get_drv_priv(queue);
+	struct sun6i_csi_capture_state *state = &csi_dev->capture.state;
 	struct video_device *video_dev = &csi_dev->capture.video_dev;
 	struct v4l2_subdev *subdev = &csi_dev->bridge.subdev;
 
 	v4l2_subdev_call(subdev, video, s_stream, 0);
 
+	state->streaming = false;
+
 	media_pipeline_stop(&video_dev->entity);
 
 	sun6i_csi_capture_state_cleanup(csi_dev, true);
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
index ceceb030aef6..29893cf96f6b 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
@@ -44,6 +44,7 @@ struct sun6i_csi_capture_state {
 	struct sun6i_csi_buffer		*complete;
 
 	unsigned int			sequence;
+	bool				streaming;
 };
 
 struct sun6i_csi_capture {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
