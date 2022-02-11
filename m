Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B34FC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 12:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBu1L/ORiwOYGoFD1tkKj0mF1sygfqLOOUI5a8Y4v8k=; b=mMA1u5J98z/aXL
	x6KMVyIAZjqv/WFcfa0qarIrHjCSNYlvto3nYxVJrM4fOCosAj6rq01oDh0VXQSHjoKvFATRrEuBM
	f6ze+9oIrVPowAmV+yPgFk8gW0Avgg2UXPrha/hPyXBEbIqYQVVSuwh+th2IPMuVSvSzKYmRBt1Z6
	G293PrYTZATd2v5hDEwh2QmuUUpd1SRvKLvVStPd5utgSvwR3jCjiyUAQT+Ch0kvq1Uo7wqvzrp9O
	G2woIsyu0VpquFXZic2+RaPVsoWRtA/j9qGQnB6aoswa2UiLEoX6888XjYB83Cl/qUCa8bGB5uKiO
	FrxOx8I3uOz2c61482jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIV4x-0078AE-Nq; Fri, 11 Feb 2022 12:31:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIV18-0075rB-1n; Fri, 11 Feb 2022 12:27:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BCFA1476;
 Fri, 11 Feb 2022 04:27:13 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.196.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF1703F70D;
 Fri, 11 Feb 2022 04:27:11 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v10 13/18] phy: sun4i-usb: Allow reset line to be shared
Date: Fri, 11 Feb 2022 12:26:38 +0000
Message-Id: <20220211122643.1343315-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211122643.1343315-1-andre.przywara@arm.com>
References: <20220211122643.1343315-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_042714_171343_91B701DA 
X-CRM114-Status: GOOD (  11.43  )
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

The USB HCIs (and PHYs?) in Allwinner's newer generation SoCs (H616)
rely on the reset line of USB PHY 2 to be de-asserted, even when only
one of the other PHYs is actually in use.

To make those ports work, we include this reset line in the HCIs' resets
property, which requires this line to be shareable.

Change the call to allocate the reset line to mark it as shared, to
enable the other ports on those SoCs.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 142f4cafdc78..126ef74d013c 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -788,7 +788,7 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
 		}
 
 		snprintf(name, sizeof(name), "usb%d_reset", i);
-		phy->reset = devm_reset_control_get(dev, name);
+		phy->reset = devm_reset_control_get_shared(dev, name);
 		if (IS_ERR(phy->reset)) {
 			dev_err(dev, "failed to get reset %s\n", name);
 			return PTR_ERR(phy->reset);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
