Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EDBBC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox9+JYM1F5xFWb0BGFyYYCc/zNdzjJatXP4ho7S4JPI=; b=owg1as12/3wvhW
	xB3H0wryk0HwxfXD+ruttYcBea2TKK+whW1simhkb7Dz2Xc2rBkGtMWQKe0FMXO0YeJERcuvXlxZN
	0vx7mZvpTKZDYPxKqYqyf7x/x4RYbqdZr5mMlXY9UHzkqnVveH1A+6aOJzooDJ+LR6FqkRqrQfL1+
	0v5mOeqpZY2M1UYWjGQksx/5PX1fwn/Kh7kugCnujq1twCvXpRbOPZkFItAveowguyGrQ+lNswgmK
	bl0af5an2b2p8wDd5UVxGiP0uYOwnV0z18MQlu4K43HO64+AEmLRBSC47JTFnOBDOVBCMI5xT37gI
	EIeT6PK7X/VcmRUmH7gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQcG-007B5R-6K; Sat, 05 Feb 2022 19:21:00 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDm-006zrc-C6; Sat, 05 Feb 2022 18:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=//Qc7XjLYxE3yQkQCiZCEdHx9uQtYT28JsyXBc9nHFY=; b=arQ3rOtwYIImcP1isWu6OUorNl
 QXm61lv901WdIU3oL6eaM+QSOGN5oVj3zxiGfZmClCrqUlqTmmrhboRxeIUD5DAbo3Ex6WAVwujE/
 8IYrB7xlwr27cXqoF1KuBdUhJ5g1ALWqyS2nGZuw2OKTZ36syBhyyj6gY6HMWG1axCYvTCgiY2gtE
 EJAx0hb2hQ6WYMONXYrDytJfEdMjTycDFdXP5tlynq7q/B0WGYorRfCPp9nSmFrxAuYcc4zmk2eZG
 r9gK2lsph68fT6S64sNaOF7r01pjeHgMnIJVazF8KBcoL9bbvk0TwABXa8AptzJEdBgDE7F4BgCxC
 gz87eCUg==;
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDj-007CFJ-A0; Sat, 05 Feb 2022 18:55:41 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id C64F524000F;
 Sat,  5 Feb 2022 18:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087338;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=//Qc7XjLYxE3yQkQCiZCEdHx9uQtYT28JsyXBc9nHFY=;
 b=K7yx2LuUd3NG3rFwQWkeBbBjXRbtMwnQhMK4T+S49OsmWavbuyf6JYPe7BBFn0N4635MLr
 mD2mOYhaPMTaejD86sdHqZhJz0r6dO3asmE5Rhq11Ilv9S2mGIJLklrOMxvSVfg3nBl1+W
 I0iNQQKq/FOLz/5R06OpLG13WjqW7+ew5H3xqgmoGwIVzzYeOoMLr0OtMlqEVeyRC0JHaZ
 D4b0mC2uMBc5XyUNHayd/n+cXlQ3Mjjwfojwsb44h3oWSUEINqoobijoRrV/f/It7GBL82
 6vWoQs2D9TENYPX+n+B44XOfYuzHL35licCcLwTOas0X+njp3WMK0ULxQP/o/g==
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
Subject: [PATCH v2 34/66] media: sun6i-csi: Add dimensions and format helpers
 to capture
Date: Sat,  5 Feb 2022 19:53:57 +0100
Message-Id: <20220205185429.2278860-35-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_185539_516925_DF04BC8B 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

Define and export useful helpers to access dimensions and pixel format.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sunxi/sun6i-csi/sun6i_csi_capture.c       | 19 +++++++++++++++++++
 .../sunxi/sun6i-csi/sun6i_csi_capture.h       |  5 +++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index bcbb4ffbb517..7b8556a25c61 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -25,6 +25,25 @@
 
 /* Helpers */
 
+void sun6i_csi_capture_dimensions(struct sun6i_csi_device *csi_dev,
+				  unsigned int *width, unsigned int *height)
+{
+	if (width)
+		*width = csi_dev->capture.format.fmt.pix.width;
+	if (height)
+		*height = csi_dev->capture.format.fmt.pix.height;
+}
+
+void sun6i_csi_capture_format(struct sun6i_csi_device *csi_dev,
+			      u32 *pixelformat, u32 *field)
+{
+	if (pixelformat)
+		*pixelformat = csi_dev->capture.format.fmt.pix.pixelformat;
+
+	if (field)
+		*field = csi_dev->capture.format.fmt.pix.field;
+}
+
 static struct v4l2_subdev *
 sun6i_csi_capture_remote_subdev(struct sun6i_csi_capture *capture, u32 *pad)
 {
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
index 7fa66a2af5ec..935f35b7049a 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.h
@@ -37,6 +37,11 @@ struct sun6i_csi_capture {
 	u32				mbus_code;
 };
 
+void sun6i_csi_capture_dimensions(struct sun6i_csi_device *csi_dev,
+				  unsigned int *width, unsigned int *height);
+void sun6i_csi_capture_format(struct sun6i_csi_device *csi_dev,
+			      u32 *pixelformat, u32 *field);
+
 void sun6i_csi_capture_sync(struct sun6i_csi_device *csi_dev);
 void sun6i_csi_capture_frame_done(struct sun6i_csi_device *csi_dev);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
