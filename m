Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69C90C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 20:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VB11TuxCJo632cV465XeYnNfsJwR5krQFMcmqcegyiM=; b=dbCzeWkeq6T0un
	aDwhs2ap7M5Rd4kivkClxgPkeNzSukuzqn02jPcAU29iSW/pw1fqlSZrcD9T6juSgGmaIbasXP0W2
	WywvGpooZirCSI5JRNCpcK3NVU8HezG2p3Xq0tX65dzVA3tbzMN0syIyFbJ96sRvTMMSaD2eNcMaz
	2kl5ojpH7Ry/tEBdqno577Atsh8p0+fTjb5wd5RbtVxtiOPvhtlFSbqh7I8f+tGbEbejlrUMEjxOr
	ASK/zmt1nXLIRxRxlHJXXeSRAyWnf3yoWMa0MBU2fbBTO+XE6hzmz8Pm1Kt+Kd2CIdu5NUYFcuo5b
	Eb9uiDfr/gDmraXkH/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGRMp-007Q3F-U5; Sat, 05 Feb 2022 20:09:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGRMQ-007PwL-9a; Sat, 05 Feb 2022 20:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3teMvj2/0J6vqS7vDs13BGjfypuWez4DHj0zODL6CDo=; b=CQ9OHFsgUXvffWI0DwJaEb2Smz
 GqzL8y18tNFaxQlnpqfvYaekAZE0jV7coCA/12jYV71oXTdxJIR5PeMnNPtMZ3RJBYeS2x54kX4Uy
 kgk55hLuCNQCy96QCqD6+Bcf5T40+KZlYolsQ3TePlQ+ZNYJlvf0a5Hl5qjuQ6SJFZOaVDrEpP4Ny
 Ijj9BnCv++iOHgsvqPFOC/5KInQBUhcHtFK8RTlzfOZfwsWx4LY5NoaTGkEHboiZXAIBkZ0sEcKCq
 jA/t/arUPTdhKiUfrEnPkr9Wag68e7/cD8C0kme7rZKaO5VOPF6uGvhoOBjjneu4vlWXgyyEl3QW/
 7FgxRyLw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQE4-007CL7-N2; Sat, 05 Feb 2022 18:56:02 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 4CEB4240002;
 Sat,  5 Feb 2022 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3teMvj2/0J6vqS7vDs13BGjfypuWez4DHj0zODL6CDo=;
 b=oVE3bwIzAEg75wiSM891kwyPlir/edIS30QQql9jFFjb/8EUd9B2odJMglmvMoO6CG5Q9L
 ieY3mkxUdbJOTq2LRxnwkYF69fEDI0D5SZsdDFGuog7Jh5fJZf8na8Tkt4fZd1MJ2YwzoA
 kCvStHvp6y+LOauMjLzovFk/e3ckQtmgog1n4amOVRy1YCMaS5pa/DkrCkHTMXm1AI+svE
 3+QCA+cfzo9Swks+b0ccYJtiiAIUD96jP2vsVOfHmSeR/qYnvomtggvOs8GkJlb6tW67gC
 VjfdsPpZ16OZAK5BAkl3NQk1cbFDD/NPZmhy+pFfA+3KUCKs2pKpfESrlTsokA==
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
Subject: [PATCH v2 47/66] media: sun6i-csi: Introduce format match structure,
 list and helper
Date: Sat,  5 Feb 2022 19:54:10 +0100
Message-Id: <20220205185429.2278860-48-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185600_828201_844B8654 
X-CRM114-Status: GOOD (  14.21  )
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

Introduce a list of mbus/pixel format combinations that need an exact
match between the two sides. This is the case when using raw input
configuration. The list will be used to replace the
sun6i_csi_is_format_supported combinatory helper.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       | 117 ++++++++++++++++++
 .../sunxi/sun6i-csi/sun6i_csi_capture.h       |   5 +
 2 files changed, 122 insertions(+)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index 1a5797454beb..91f2295cbdc6 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -227,6 +227,123 @@ struct sun6i_csi_capture_format *sun6i_csi_capture_format_find(u32 pixelformat)
 	return NULL;
 }
 
+/* RAW formats need an exact match between pixel and mbus formats. */
+static const
+struct sun6i_csi_capture_format_match sun6i_csi_capture_format_matches[] = {
+	/* YUV420 */
+	{
+		.pixelformat	= V4L2_PIX_FMT_YUYV,
+		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YUYV,
+		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YVYU,
+		.mbus_code	= MEDIA_BUS_FMT_YVYU8_2X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YVYU,
+		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_UYVY,
+		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_UYVY,
+		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_VYUY,
+		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_VYUY,
+		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
+	},
+	/* RGB */
+	{
+		.pixelformat	= V4L2_PIX_FMT_RGB565,
+		.mbus_code	= MEDIA_BUS_FMT_RGB565_2X8_LE,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_RGB565X,
+		.mbus_code	= MEDIA_BUS_FMT_RGB565_2X8_BE,
+	},
+	/* Bayer */
+	{
+		.pixelformat	= V4L2_PIX_FMT_SBGGR8,
+		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGBRG8,
+		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGRBG8,
+		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SRGGB8,
+		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SBGGR10,
+		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGBRG10,
+		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGRBG10,
+		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SRGGB10,
+		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SBGGR12,
+		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGBRG12,
+		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SGRBG12,
+		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_SRGGB12,
+		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
+	},
+	/* Compressed */
+	{
+		.pixelformat	= V4L2_PIX_FMT_JPEG,
+		.mbus_code	= MEDIA_BUS_FMT_JPEG_1X8,
+	},
+};
+
+static bool sun6i_csi_capture_format_match(u32 pixelformat, u32 mbus_code)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(sun6i_csi_capture_format_matches); i++) {
+		const struct sun6i_csi_capture_format_match *match =
+			&sun6i_csi_capture_format_matches[i];
+
+		if (match->pixelformat == pixelformat &&
+		    match->mbus_code == mbus_code)
+			return true;
+	}
+
+	return false;
+}
+
 /* Capture */
 
 static void sun6i_csi_capture_irq_enable(struct sun6i_csi_device *csi_dev)
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
index 4b1ff19edc2f..2605b16f091c 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
@@ -27,6 +27,11 @@ struct sun6i_csi_capture_format {
 	u32	hsize_len_factor;
 };
 
+struct sun6i_csi_capture_format_match {
+	u32	pixelformat;
+	u32	mbus_code;
+};
+
 #undef current
 struct sun6i_csi_capture_state {
 	struct list_head		queue;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
