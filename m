Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A5F2C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BedzbsUG3rJhHKUlqfOez/SK0Hx2xfKLqYaddzBAzAU=; b=tRtxVgWfUJE2tD
	x5SREZwW6wpWimLP37wAT81/X5VlEYfVgjr8HS5zHliQWSbdFvX8+Jz0K+QCxXUl5OvNez63AZ3YM
	4qAJjec1VWpJN7APp2+fXGN9ekVaQCzelKCkx+cjAfNyjqesXg5t6O345VhOk2hGzpvqhDk1wwbEx
	+iEUxZydFmm4RzVTsyQni/UUzTXUNvtb15aAGN+htf0SRqzCos0nqJDXzOpl75cTW2z4QgoMB9qVo
	0HjKFavde5TWa70Ndzy9gS69hfu5CoPWS+2Tm0DR7tbkjreFjQTLpwqww2EdDZ6N8EiRfwHM5KaRk
	yaSDaW4lDCOxhg7wzQBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQvi-007IXO-6Y; Sat, 05 Feb 2022 19:41:06 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEM-0070FV-Lg; Sat, 05 Feb 2022 18:56:24 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 47E8424001A;
 Sat,  5 Feb 2022 18:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087376;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hEbyDZAwj+JYZxX167CZrODGu9JM7Aoq0VHUoYRotHU=;
 b=Dz+e1zpnMLO2pW/kckDcXmsMAomIsyZleOtFL28GuZRBhtcrnujPMlVIoBZSK7ZdJ31SNm
 7WQqXGsA3fF2iJffd3ozdJDxF0Z/dKD1VVvSk0ApUroAc7D57Yzw5ngTIvPwEMd7Zk+IPe
 bLEdMwQu8okaquqr1QggIpA+3S8WRbYB47VrbE8JghAHMPyBlPAEWqDpCCrUqRlIEM3enn
 jtY1CaLSkYVzBAR/SAGG4IMGztZkUpyjOhygun2InLn+FBocUjvVybnq8j/dokTjRfCe8g
 yfCsVCeJnj1l3xyfFSkr4bf4HbaVxFnwDTDVdopYZok+C77Y3czLy2hL6dOYaw==
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
Subject: [PATCH v2 57/66] media: sun6i-csi: Request a shared interrupt
Date: Sat,  5 Feb 2022 19:54:20 +0100
Message-Id: <20220205185429.2278860-58-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105618_922251_33A4E65B 
X-CRM114-Status: GOOD (  11.46  )
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

Request our interrupt shared since it is typically shared with the isp
block. The interrupt routine looks good to go for shared irq.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index e3ac7dad86ae..b8e925f6bc09 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -285,8 +285,8 @@ static int sun6i_csi_resources_setup(struct sun6i_csi_device *csi_dev,
 		goto error_clk_rate_exclusive;
 	}
 
-	ret = devm_request_irq(dev, irq, sun6i_csi_isr, 0, SUN6I_CSI_NAME,
-			       csi_dev);
+	ret = devm_request_irq(dev, irq, sun6i_csi_isr, IRQF_SHARED,
+			       SUN6I_CSI_NAME, csi_dev);
 	if (ret) {
 		dev_err(dev, "failed to request interrupt\n");
 		goto error_clk_rate_exclusive;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
