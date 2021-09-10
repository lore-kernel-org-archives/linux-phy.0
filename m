Return-Path: <SRS0=5sx/=OA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A7DC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:54:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29F9F611CE
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:54:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 29F9F611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwcQFe5ndxXtJR1QOj37NTy28dbtv3gJKMtuO54Yz4Q=; b=OJeOt3Z0xNvUfb
	PyGqWxwj7DexoxVlTrtUM4UI1fGPAFXH1LvoJ1D1e6htOpRBB0XgqKmM9gI5ZHfVwFoM6wdVk78uJ
	bSLWKWxsteuOSNp4my5pRYPsTXm+MNL/TKNKD+qPe3P4alcJ61cSUl53pM8ck7zjk1JSMgRHY6oY3
	ooGFbuzp3jwk6v5DgRyz4cX4doGOduA5TTP6NTgIRtNZtC5szobHQ2tg4y7hkRu47jSqYH7q+4Owi
	1Z+/IGrVFAa29wWdO9tGdLMH4ab6dw+nLFYLp1UR0A/Sit64SKbMOXnxQPduFvEbDS4vweSpJgZEy
	kBI7EYS2gM6ohG6H0nIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOlfl-00DRiE-FP; Fri, 10 Sep 2021 18:54:49 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlU7-00DM94-8C; Fri, 10 Sep 2021 18:42:55 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 30EC7240005;
 Fri, 10 Sep 2021 18:42:44 +0000 (UTC)
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
Subject: [PATCH 19/22] soc: sunxi: mbus: Add A31 ISP compatibles to the list
Date: Fri, 10 Sep 2021 20:41:44 +0200
Message-Id: <20210910184147.336618-20-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_114247_493030_B4B0DF93 
X-CRM114-Status: GOOD (  10.19  )
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

The A31 ISP sits on the mbus and requires the usual bus address
adaptation. Add its compatibles to the list.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/soc/sunxi/sunxi_mbus.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/sunxi/sunxi_mbus.c b/drivers/soc/sunxi/sunxi_mbus.c
index d90e4a264b6f..7f0079ea30b1 100644
--- a/drivers/soc/sunxi/sunxi_mbus.c
+++ b/drivers/soc/sunxi/sunxi_mbus.c
@@ -37,6 +37,7 @@ static const char * const sunxi_mbus_devices[] = {
 	"allwinner,sun5i-a13-video-engine",
 	"allwinner,sun6i-a31-csi",
 	"allwinner,sun6i-a31-display-backend",
+	"allwinner,sun6i-a31-isp",
 	"allwinner,sun7i-a20-csi0",
 	"allwinner,sun7i-a20-display-backend",
 	"allwinner,sun7i-a20-display-frontend",
@@ -50,6 +51,7 @@ static const char * const sunxi_mbus_devices[] = {
 	"allwinner,sun8i-h3-csi",
 	"allwinner,sun8i-h3-video-engine",
 	"allwinner,sun8i-v3s-csi",
+	"allwinner,sun8i-v3s-isp",
 	"allwinner,sun9i-a80-display-backend",
 	"allwinner,sun50i-a64-csi",
 	"allwinner,sun50i-a64-video-engine",
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
