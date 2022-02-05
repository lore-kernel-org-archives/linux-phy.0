Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37461C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 20:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrL9YNZptGXYoqCSythBzkYyZ7gTlGZ1MIEjX3nI3t4=; b=yvfLy6HaufKBit
	BzG6Aw36FdCc3uAHCkvOFXSjOCShz3IKF8OdNiOBMexH5ZyXwgssJ4dVEr5kPKCa54cPVEtN6SUhQ
	W9oTn1ey0+ZmzNvxnT0DZ/VZQApYP8aK5itagzOCAr+JjZUr52iL9WpIIDUwvl4qcmOVzyurRz9Ac
	CliyVzr07jGuQzNpfI7UGEYhPDBULiL9kG5JNRq+Bwk2fmUmPOGXqRveWZ6WE9XwxgwRD9/2z4FkJ
	cNYFLDMh0ZByayLOqn8o35UQ3mQShxA8BIgPO44F9Q7uRWIvsQgbqNTwYLqxcB6Bn2e7Us8EVRIjv
	lpadIZ7mEVAaht4y4nWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGRNu-007QYv-K0; Sat, 05 Feb 2022 20:10:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGRMW-007PwL-Ke; Sat, 05 Feb 2022 20:08:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=KsW6dwZ6XY/Jd3tCcTrPW9sY6sNQwXsn1oDkb4n9lt8=; b=hOenFWSdEA4zrtMhkqXkkZVDiD
 7PHWhFhdOWi9LlLYGiK//QzMKkJOSeutDa36WP5NtWy5Z/jt+GLbCz65GrpPDiYWLXEIkIETXCdCE
 2rVdsEm+ZyRun/coIj1nrTEmPA6GAol2otCfdN5K09w3X1VwoGxw8Wwqc75BVGpKQL6RrW7Gu/kmx
 TqfAp7bNf5wRI2deHSAUU+pUOPADvmfszxeLpKRxMuIsgQ2ur07yV6/cOdk/WzQcGK+zK5/wteQeN
 jOu0+gy87ozvhdVxYdQvrAByQCr92uLOeCH9T1rhhQtLvZSV6VBa5Aa3fhbAvC+DqhlgjvCLWWahN
 9FmALYfw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDn-007CGo-AH; Sat, 05 Feb 2022 18:55:45 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 1C3FE24000A;
 Sat,  5 Feb 2022 18:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087341;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KsW6dwZ6XY/Jd3tCcTrPW9sY6sNQwXsn1oDkb4n9lt8=;
 b=budOrhSW03+JLtgBO9IhoomOq125GQ/GwlLhnOSNgWef2yStBlAXSe8bigpcZ2L1FCIEGp
 OjaTIn9fg5VvZsUQuwXWS3xCERfVnSkjmUNmTwE/b/prHlrAh30j74khYAjBVVht1Eb+qe
 JEcBKOuz8ypNGUNpEZ8aVl7icd+YzLbvIqdrEgZ9sVCQV3rzWQm0iAe/zUHJlXvz7ohfbJ
 YyYBKr8XQylEyXEkHhsN9Wre2yRQW8RZSFUqrUBK1FCr/8p5mFOB7KIX31X4gyDL3oBoWW
 eh3GD2dzFhwx/zK2rU1yDpMkX1a2FvN1U44K5G0MpL8Cmh7ze6K6fUBwmHNHFg==
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
Subject: [PATCH v2 36/66] media: sun6i-csi: Split stream sequences and irq
 code in capture
Date: Sat,  5 Feb 2022 19:53:59 +0100
Message-Id: <20220205185429.2278860-37-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185543_440188_4A249013 
X-CRM114-Status: GOOD (  13.62  )
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

Create minimal helpers that split the enable/disable flow, which will
make it easier to move control over to the bridge later on.

Generally speaking the goal is to move register configuration to
the capture code and later split it with the bridge code.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 26 ---------
 .../platform/sunxi/sun6i-csi/sun6i_csi.h      |  7 ---
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       | 58 ++++++++++++++++++-
 3 files changed, 55 insertions(+), 36 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 5314497ad681..22779baf8c09 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -535,32 +535,6 @@ int sun6i_csi_update_config(struct sun6i_csi_device *csi_dev,
 	return 0;
 }
 
-void sun6i_csi_set_stream(struct sun6i_csi_device *csi_dev, bool enable)
-{
-	struct regmap *regmap = csi_dev->regmap;
-
-	if (!enable) {
-		regmap_update_bits(regmap, SUN6I_CSI_CAP_REG,
-				   SUN6I_CSI_CAP_VCAP_ON, 0);
-		regmap_write(regmap, SUN6I_CSI_CH_INT_EN_REG, 0);
-		return;
-	}
-
-	regmap_write(regmap, SUN6I_CSI_CH_INT_STA_REG,
-		     SUN6I_CSI_CH_INT_STA_CLEAR);
-	regmap_write(regmap, SUN6I_CSI_CH_INT_EN_REG,
-		     SUN6I_CSI_CH_INT_EN_VS |
-		     SUN6I_CSI_CH_INT_EN_HB_OF |
-		     SUN6I_CSI_CH_INT_EN_FIFO2_OF |
-		     SUN6I_CSI_CH_INT_EN_FIFO1_OF |
-		     SUN6I_CSI_CH_INT_EN_FIFO0_OF |
-		     SUN6I_CSI_CH_INT_EN_FD |
-		     SUN6I_CSI_CH_INT_EN_CD);
-
-	regmap_update_bits(regmap, SUN6I_CSI_CAP_REG, SUN6I_CSI_CAP_VCAP_ON,
-			   SUN6I_CSI_CAP_VCAP_ON);
-}
-
 /* Media */
 
 static const struct media_device_ops sun6i_csi_media_ops = {
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index e16b3439a63c..1f235b8e240c 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -89,13 +89,6 @@ int sun6i_csi_set_power(struct sun6i_csi_device *csi_dev, bool enable);
 int sun6i_csi_update_config(struct sun6i_csi_device *csi_dev,
 			    struct sun6i_csi_config *config);
 
-/**
- * sun6i_csi_set_stream() - start/stop csi streaming
- * @csi:	pointer to the csi
- * @enable:	start/stop
- */
-void sun6i_csi_set_stream(struct sun6i_csi_device *csi_dev, bool enable);
-
 /* get bpp form v4l2 pixformat */
 static inline int sun6i_csi_get_bpp(unsigned int pixformat)
 {
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index f32beed0aaad..ab6e298864ed 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -107,6 +107,51 @@ static bool sun6i_csi_capture_format_check(u32 format)
 
 /* Capture */
 
+static void sun6i_csi_capture_irq_enable(struct sun6i_csi_device *csi_dev)
+{
+	struct regmap *regmap = csi_dev->regmap;
+
+	regmap_write(regmap, SUN6I_CSI_CH_INT_EN_REG,
+		     SUN6I_CSI_CH_INT_EN_VS |
+		     SUN6I_CSI_CH_INT_EN_HB_OF |
+		     SUN6I_CSI_CH_INT_EN_FIFO2_OF |
+		     SUN6I_CSI_CH_INT_EN_FIFO1_OF |
+		     SUN6I_CSI_CH_INT_EN_FIFO0_OF |
+		     SUN6I_CSI_CH_INT_EN_FD |
+		     SUN6I_CSI_CH_INT_EN_CD);
+}
+
+static void sun6i_csi_capture_irq_disable(struct sun6i_csi_device *csi_dev)
+{
+	struct regmap *regmap = csi_dev->regmap;
+
+	regmap_write(regmap, SUN6I_CSI_CH_INT_EN_REG, 0);
+}
+
+static void sun6i_csi_capture_irq_clear(struct sun6i_csi_device *csi_dev)
+{
+	struct regmap *regmap = csi_dev->regmap;
+
+	regmap_write(regmap, SUN6I_CSI_CH_INT_EN_REG, 0);
+	regmap_write(regmap, SUN6I_CSI_CH_INT_STA_REG,
+		     SUN6I_CSI_CH_INT_STA_CLEAR);
+}
+
+static void sun6i_csi_capture_enable(struct sun6i_csi_device *csi_dev)
+{
+	struct regmap *regmap = csi_dev->regmap;
+
+	regmap_update_bits(regmap, SUN6I_CSI_CAP_REG, SUN6I_CSI_CAP_VCAP_ON,
+			   SUN6I_CSI_CAP_VCAP_ON);
+}
+
+static void sun6i_csi_capture_disable(struct sun6i_csi_device *csi_dev)
+{
+	struct regmap *regmap = csi_dev->regmap;
+
+	regmap_update_bits(regmap, SUN6I_CSI_CAP_REG, SUN6I_CSI_CAP_VCAP_ON, 0);
+}
+
 static void
 sun6i_csi_capture_buffer_configure(struct sun6i_csi_device *csi_dev,
 				   struct sun6i_csi_buffer *csi_buffer)
@@ -357,6 +402,10 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 		goto error_media_pipeline;
 	}
 
+	/* Clear */
+
+	sun6i_csi_capture_irq_clear(csi_dev);
+
 	/* Configure */
 
 	sun6i_csi_capture_configure(csi_dev);
@@ -367,7 +416,8 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 
 	/* Enable */
 
-	sun6i_csi_set_stream(csi_dev, true);
+	sun6i_csi_capture_irq_enable(csi_dev);
+	sun6i_csi_capture_enable(csi_dev);
 
 	ret = v4l2_subdev_call(subdev, video, s_stream, 1);
 	if (ret && ret != -ENOIOCTLCMD)
@@ -376,7 +426,8 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 	return 0;
 
 error_stream:
-	sun6i_csi_set_stream(csi_dev, false);
+	sun6i_csi_capture_disable(csi_dev);
+	sun6i_csi_capture_irq_disable(csi_dev);
 
 error_media_pipeline:
 	media_pipeline_stop(&video_dev->entity);
@@ -397,7 +448,8 @@ static void sun6i_csi_capture_stop_streaming(struct vb2_queue *queue)
 	if (subdev)
 		v4l2_subdev_call(subdev, video, s_stream, 0);
 
-	sun6i_csi_set_stream(csi_dev, false);
+	sun6i_csi_capture_disable(csi_dev);
+	sun6i_csi_capture_irq_disable(csi_dev);
 
 	media_pipeline_stop(&capture->video_dev.entity);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
