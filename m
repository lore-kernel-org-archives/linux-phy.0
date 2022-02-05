Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 258A7C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 18:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LD6zcZjre8UsvmyXJittTsbUXUQ2B2TJd1J9qrkExw=; b=UB4v0uGcJwKNL+
	HlnG/P8CkqvfnudNcw4rBVDavsoCTLQl5d4H89jz2y8umK0PwrEqm9uiEzK68Umdlepb7tjqoUyD0
	8FDdDxRtwOqJMhpZupHDyCGK/xAIoMv9aaahAAONEmzf1He5/xVtRKfTBdzTqzETjBudJd/RUMj9I
	Dwg1OpE5Gwmk9dEOQdrzRlPHD2U3Md5/cyrOgtCo6GeT41tnznzfECV/Iy+hgfjEuuWFsrCp21n5e
	OcdTMTllFWhKW+RkKbIjS8FCZSz+4tJH5JBvThaCcysZ7y6O23KQoF+/GQNAFWvYzwWVHa5CW+7Yr
	XOVwucGdNzSG+cddqF5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQD9-006zRP-BW; Sat, 05 Feb 2022 18:55:03 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQCr-006zF5-ET; Sat, 05 Feb 2022 18:54:48 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 2F5F3240003;
 Sat,  5 Feb 2022 18:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087283;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MdNte4sN/MUAO5c6piyw/+F9bIGGex5gsZiLTGbQSck=;
 b=mv5VwDSlYn/pVjUom3rpRYcRFbdr7D+YYIJxxfTnpGY9Cl9p0/JkjeQs7fh6apCzg17pBR
 E7mIBwqlbrnz3kTTKuy8k7acZPKQXymfhvNiDhaDAj6ciYFFUWqy+tNiMZc7yrk2Z7163V
 UG6pEdB7klVMqDKfkl23yTx4l6KDxW4+rI4kvjj8KQ7SyWa/wH8q47lzHYt5hQqLXi2dP3
 CBqDoKQEKKPjqGZbwYGxSz7pz18z3dtMGt4GBTheVn702FABUcdJSoJNQ2hdRt8I+q/6xB
 Kljst51Gao+mApuQNO3yGr2DI7pRMJIRZTAQFOHd0tVJ1/Ldmez3uS+1Qq5lgw==
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
Subject: [PATCH v2 02/66] dt-bindings: interconnect: sunxi: Add V3s mbus
 compatible
Date: Sat,  5 Feb 2022 19:53:25 +0100
Message-Id: <20220205185429.2278860-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105445_645391_C39B5F32 
X-CRM114-Status: UNSURE (   8.34  )
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

Since the V3s uses the internal mbus, document its compatible.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
index 29c9961ee2d8..b67bf9261a6a 100644
--- a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
@@ -31,6 +31,7 @@ properties:
       - allwinner,sun5i-a13-mbus
       - allwinner,sun8i-h3-mbus
       - allwinner,sun8i-r40-mbus
+      - allwinner,sun8i-v3s-mbus
       - allwinner,sun50i-a64-mbus
 
   reg:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
