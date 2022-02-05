Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 570A5C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 20:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mJgPBMu63QzNMvK9TRLkDRa92EE0w2hmvl+8TtBy2g=; b=zCh5gcOCH4nk6W
	QK9tQNAfRu0krnJRU6tyPusV3Wfhe0dLrAhzO1Zz6XUC4e6swIk3nkx/TcZzg7SKcG6HpFlH4j06F
	n4UB3laxNggo5gjreicB8RgT0A6dKeMTM5yHrYQOU0d3Hn1B5k1nwnVA98NYv4+tI21epMKKWxeI7
	tGsWc6puJQQ2ed9WbX0saKy+xJgWz0WAYoWO28Un0t4NRhff3d0bxmdMEebxF786FEorbjqOoX6oF
	uaXlxilWp+P8hwZzFTyh94dpc3RO0BUV76iSYg6DBee+ZPJXsjySMICzdSx4e1+uoOenEcl8vav/k
	7n2CA0YKYlSwKSGhiCqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGRNE-007QDI-Nt; Sat, 05 Feb 2022 20:09:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGRMU-007PwL-1b; Sat, 05 Feb 2022 20:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=h75JqJgq6QG+QOajI+uXIxRh4Nj5dGBymygUtKmDRes=; b=j1/O1aQ5n0d0p6D/zHnINMj8UP
 nFWQ3LN1L/a7y0hibJWqySW6COzHl2WrdrEUVcKZKs7HKBQhF+kL7N2LJWJCihPGkPcwHpEURT6gC
 4l27X1TKYPdrk8MG+uKVSmeGmSaf4uhJSYvu984LsOm4lsEeW8uvAOOTNggoB/3hyJq13EKGUe+KG
 azLrPeH4kuWb86Uq3Q3pk1/64IkGM2/rkHgWxT9RTHTqiJp239LrORQveWf5YFKrZf4qtERvaqYEx
 ZF38mxAmyptjZ09fgAGXfHiaa6aK64qHMS38w8BxhdNqGTUBR26N52gxQi4bslfKg4Tr7V+Ag0qek
 yppG7m5A==;
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDt-007CIe-8m; Sat, 05 Feb 2022 18:55:51 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id BC4B5240010;
 Sat,  5 Feb 2022 18:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087348;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h75JqJgq6QG+QOajI+uXIxRh4Nj5dGBymygUtKmDRes=;
 b=JZzyEEQE91vY0aTTIZs5rZcxQDqtAH20J36gTZWsh2QwLca6y5yIY8WGY/o9R1gKx9gzO/
 MsfPl91BGIxchRs9ARg8MjkM7QTHsN6yy8gwpP8pLg5mzJageBnvNaZYmagsyqj+K3gm7+
 vOsSablNoBhsHHjBUmv9arVDe5toKXH+UNFMNr0SNgCnt7PpmI09Cqpz37loFoCVSvzBjZ
 jlK/DRN52VocOG74Oqw911gR2se7P4FtqzRnS+FwXlRPLcAovQQDm7zHontyyQM9xLWgpJ
 e8xxFAkxcc23j6b3O77MbmTREs+xwtuplWTPUHXXVqf6VAr6qKibg1cq24OoeA==
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
Subject: [PATCH v2 40/66] media: sun6i-csi: Remove custom format helper and
 rework configure
Date: Sat,  5 Feb 2022 19:54:03 +0100
Message-Id: <20220205185429.2278860-41-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185549_402613_EAF362D3 
X-CRM114-Status: GOOD (  14.14  )
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

Remove the custom sun6i_csi_get_bpp helper in favor of common v4l2
infrastructure and rework the related window configuration code.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_csi.h      | 49 -------------
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       | 70 +++++++++----------
 2 files changed, 35 insertions(+), 84 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index c37bbab93cd5..c687213924d4 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -57,55 +57,6 @@ struct sun6i_csi_device {
 bool sun6i_csi_is_format_supported(struct sun6i_csi_device *csi_dev,
 				   u32 pixformat, u32 mbus_code);
 
-/* get bpp form v4l2 pixformat */
-static inline int sun6i_csi_get_bpp(unsigned int pixformat)
-{
-	switch (pixformat) {
-	case V4L2_PIX_FMT_SBGGR8:
-	case V4L2_PIX_FMT_SGBRG8:
-	case V4L2_PIX_FMT_SGRBG8:
-	case V4L2_PIX_FMT_SRGGB8:
-	case V4L2_PIX_FMT_JPEG:
-		return 8;
-	case V4L2_PIX_FMT_SBGGR10:
-	case V4L2_PIX_FMT_SGBRG10:
-	case V4L2_PIX_FMT_SGRBG10:
-	case V4L2_PIX_FMT_SRGGB10:
-		return 10;
-	case V4L2_PIX_FMT_SBGGR12:
-	case V4L2_PIX_FMT_SGBRG12:
-	case V4L2_PIX_FMT_SGRBG12:
-	case V4L2_PIX_FMT_SRGGB12:
-	case V4L2_PIX_FMT_NV12_16L16:
-	case V4L2_PIX_FMT_NV12:
-	case V4L2_PIX_FMT_NV21:
-	case V4L2_PIX_FMT_YUV420:
-	case V4L2_PIX_FMT_YVU420:
-		return 12;
-	case V4L2_PIX_FMT_YUYV:
-	case V4L2_PIX_FMT_YVYU:
-	case V4L2_PIX_FMT_UYVY:
-	case V4L2_PIX_FMT_VYUY:
-	case V4L2_PIX_FMT_NV16:
-	case V4L2_PIX_FMT_NV61:
-	case V4L2_PIX_FMT_YUV422P:
-	case V4L2_PIX_FMT_RGB565:
-	case V4L2_PIX_FMT_RGB565X:
-		return 16;
-	case V4L2_PIX_FMT_RGB24:
-	case V4L2_PIX_FMT_BGR24:
-		return 24;
-	case V4L2_PIX_FMT_RGB32:
-	case V4L2_PIX_FMT_BGR32:
-		return 32;
-	default:
-		WARN(1, "Unsupported pixformat: 0x%x\n", pixformat);
-		break;
-	}
-
-	return 0;
-}
-
 int sun6i_csi_v4l2_complete(struct sun6i_csi_device *csi_dev);
 
 #endif /* __SUN6I_CSI_H__ */
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index 9c8b33c7e59c..f977b89dcea2 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -483,68 +483,68 @@ static void sun6i_csi_capture_configure_format(struct sun6i_csi_device *csi_dev)
 
 static void sun6i_csi_capture_configure_window(struct sun6i_csi_device *csi_dev)
 {
+	struct regmap *regmap = csi_dev->regmap;
+	const struct v4l2_format_info *info;
+	u32 hsize_len, vsize_len;
+	u32 luma_line, chroma_line = 0;
 	u32 pixelformat, field;
 	u32 width, height;
-	u32 bytesperline_y;
-	u32 bytesperline_c;
-	u32 hor_len;
 
 	sun6i_csi_capture_dimensions(csi_dev, &width, &height);
 	sun6i_csi_capture_format(csi_dev, &pixelformat, &field);
 
-	hor_len = width;
+	hsize_len = width;
+	vsize_len = height;
 
 	switch (pixelformat) {
 	case V4L2_PIX_FMT_YUYV:
 	case V4L2_PIX_FMT_YVYU:
 	case V4L2_PIX_FMT_UYVY:
 	case V4L2_PIX_FMT_VYUY:
-		dev_dbg(csi_dev->dev,
-			"Horizontal length should be 2 times of width for packed YUV formats!\n");
-		hor_len = width * 2;
+		/*
+		 * Horizontal length should be 2 times of width for packed
+		 * YUV formats.
+		 */
+		hsize_len *= 2;
 		break;
 	default:
 		break;
 	}
 
-	regmap_write(csi_dev->regmap, SUN6I_CSI_CH_HSIZE_REG,
-		     SUN6I_CSI_CH_HSIZE_LEN(hor_len) |
+	regmap_write(regmap, SUN6I_CSI_CH_HSIZE_REG,
+		     SUN6I_CSI_CH_HSIZE_LEN(hsize_len) |
 		     SUN6I_CSI_CH_HSIZE_START(0));
-	regmap_write(csi_dev->regmap, SUN6I_CSI_CH_VSIZE_REG,
-		     SUN6I_CSI_CH_VSIZE_LEN(height) |
+
+	regmap_write(regmap, SUN6I_CSI_CH_VSIZE_REG,
+		     SUN6I_CSI_CH_VSIZE_LEN(vsize_len) |
 		     SUN6I_CSI_CH_VSIZE_START(0));
 
 	switch (pixelformat) {
-	case V4L2_PIX_FMT_NV12_16L16:
-	case V4L2_PIX_FMT_NV12:
-	case V4L2_PIX_FMT_NV21:
-	case V4L2_PIX_FMT_NV16:
-	case V4L2_PIX_FMT_NV61:
-		bytesperline_y = width;
-		bytesperline_c = width;
+	case V4L2_PIX_FMT_RGB565X:
+		luma_line = width * 2;
 		break;
-	case V4L2_PIX_FMT_YUV420:
-	case V4L2_PIX_FMT_YVU420:
-		bytesperline_y = width;
-		bytesperline_c = width / 2;
+	case V4L2_PIX_FMT_NV12_16L16:
+		luma_line = width;
+		chroma_line = width;
 		break;
-	case V4L2_PIX_FMT_YUV422P:
-		bytesperline_y = width;
-		bytesperline_c = width / 2;
+	case V4L2_PIX_FMT_JPEG:
+		luma_line = width;
 		break;
-	default: /* raw */
-		dev_dbg(csi_dev->dev,
-			"Calculating pixelformat(0x%x)'s bytesperline as a packed format\n",
-			pixelformat);
-		bytesperline_y = (sun6i_csi_get_bpp(pixelformat) *
-				  width) / 8;
-		bytesperline_c = 0;
+	default:
+		info = v4l2_format_info(pixelformat);
+		if (WARN_ON(!info))
+			return;
+
+		luma_line = width * info->bpp[0];
+
+		if (info->comp_planes > 1)
+			chroma_line = width * info->bpp[1] / info->hdiv;
 		break;
 	}
 
-	regmap_write(csi_dev->regmap, SUN6I_CSI_CH_BUF_LEN_REG,
-		     SUN6I_CSI_CH_BUF_LEN_CHROMA_LINE(bytesperline_c) |
-		     SUN6I_CSI_CH_BUF_LEN_LUMA_LINE(bytesperline_y));
+	regmap_write(regmap, SUN6I_CSI_CH_BUF_LEN_REG,
+		     SUN6I_CSI_CH_BUF_LEN_CHROMA_LINE(chroma_line) |
+		     SUN6I_CSI_CH_BUF_LEN_LUMA_LINE(luma_line));
 }
 
 static void sun6i_csi_capture_configure(struct sun6i_csi_device *csi_dev)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
