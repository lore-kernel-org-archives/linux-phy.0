Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48738C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJzEHm8trFhW4VaWlIRMgdOrKOgB4EjPmi1fus+aijw=; b=XUhMVKw8t/w3I+
	PnuvNAB8MwBntw+z71x5j8OxPSMzQhBurK/Hy6/w9M1IyTmsu9dIEodmqqAy6XaR3UwooL7XwFuKC
	NIP2N0gblQDTR1hH0T1TtihcoykkUbNPNU9ejkwrpivFLw9V1a2iEZd10eY0xtyceVkR/zfgCY+Wy
	ADYY9KM6IMFk0kvYujHzXdz+nb6z8duPBLJVeo7PikynSZ56qMH2hWERa3ZvDgIt6S04jq8U0tXoO
	BHrYS6QVIx3/7AZnD3Eo1524/7GipnycqWocOgxLpYMNYX19qqlGGhL570mxgxaxofH6oYY9RWwYX
	Kgf0semPYI6On7LaLdxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQPR-00762T-CV; Sat, 05 Feb 2022 19:07:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDH-006zWH-14; Sat, 05 Feb 2022 18:55:15 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id DB76E24000B;
 Sat,  5 Feb 2022 18:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087309;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=thQFXb+Mbfog5Wu3+RYgHAOHMpkNUMkaPZldQzKOFCI=;
 b=POBS8qNGo79IGw+1tA4WMVk+b2+4QVJqDCBrSuj64Npk2IBHMtMxSOuXgberW/bWGUnYQs
 6dOtimeBK873korpK0pFVujnFlTcnAQJNJb+mbPJMI3xa84kbKYi576E2ZK+L3zy2o4H/C
 JEA3fN0QjWE0rTOAbQwoXalgUb11YtWpaov5Z2pRMw/yuZKyL1vBkQAXa9gKBUDvpjdcDx
 bvV1tzVMZQuMFoz7uMl5F6WZocWujfhIK731EeRTO6uGqB+IKnUDFg7wCY2IGKg8uTk5K+
 S9i2NLavH3Hue1GGIZBGLMH16UAej4HkKMUBm9PoilD0yqaiFGZM94+7xitXbg==
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
Subject: [PATCH v2 17/66] media: sun6i-csi: Define and use driver name and
 (reworked) description
Date: Sat,  5 Feb 2022 19:53:40 +0100
Message-Id: <20220205185429.2278860-18-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105511_402582_95E2D7BD 
X-CRM114-Status: GOOD (  15.46  )
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

Add proper defines for driver name and description instead of
MODULE_NAME and hardcoding (cosmetics).

Also rework the description while at it to mention the hardware
generation that the driver supports and remove the video capture
mentions since it applies to the whole media device.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 14 ++++++--------
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h |  3 +++
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index fc96921b0583..43dcd8117d3f 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -27,8 +27,6 @@
 #include "sun6i_csi.h"
 #include "sun6i_csi_reg.h"
 
-#define MODULE_NAME	"sun6i-csi"
-
 struct sun6i_csi_dev {
 	struct sun6i_csi		csi;
 	struct device			*dev;
@@ -730,7 +728,7 @@ static int sun6i_csi_v4l2_init(struct sun6i_csi *csi)
 	int ret;
 
 	csi->media_dev.dev = csi->dev;
-	strscpy(csi->media_dev.model, "Allwinner Video Capture Device",
+	strscpy(csi->media_dev.model, SUN6I_CSI_DESCRIPTION,
 		sizeof(csi->media_dev.model));
 	csi->media_dev.hw_revision = 0;
 	snprintf(csi->media_dev.bus_info, sizeof(csi->media_dev.bus_info),
@@ -755,7 +753,7 @@ static int sun6i_csi_v4l2_init(struct sun6i_csi *csi)
 		goto free_ctrl;
 	}
 
-	ret = sun6i_video_init(&csi->video, csi, "sun6i-csi");
+	ret = sun6i_video_init(&csi->video, csi, SUN6I_CSI_NAME);
 	if (ret)
 		goto unreg_v4l2;
 
@@ -870,8 +868,8 @@ static int sun6i_csi_resource_request(struct sun6i_csi_dev *sdev,
 	if (irq < 0)
 		return -ENXIO;
 
-	ret = devm_request_irq(&pdev->dev, irq, sun6i_csi_isr, 0, MODULE_NAME,
-			       sdev);
+	ret = devm_request_irq(&pdev->dev, irq, sun6i_csi_isr, 0,
+			       SUN6I_CSI_NAME, sdev);
 	if (ret) {
 		dev_err(&pdev->dev, "Cannot request csi IRQ\n");
 		return ret;
@@ -924,12 +922,12 @@ static struct platform_driver sun6i_csi_platform_driver = {
 	.probe = sun6i_csi_probe,
 	.remove = sun6i_csi_remove,
 	.driver = {
-		.name = MODULE_NAME,
+		.name = SUN6I_CSI_NAME,
 		.of_match_table = of_match_ptr(sun6i_csi_of_match),
 	},
 };
 module_platform_driver(sun6i_csi_platform_driver);
 
-MODULE_DESCRIPTION("Allwinner V3s Camera Sensor Interface driver");
+MODULE_DESCRIPTION("Allwinner A31 Camera Sensor Interface driver");
 MODULE_AUTHOR("Yong Deng <yong.deng@magewell.com>");
 MODULE_LICENSE("GPL");
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index 3a38d107ae3f..e04f3c3fa27b 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -14,6 +14,9 @@
 
 #include "sun6i_video.h"
 
+#define SUN6I_CSI_NAME		"sun6i-csi"
+#define SUN6I_CSI_DESCRIPTION	"Allwinner A31 CSI Device"
+
 struct sun6i_csi;
 
 /**
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
