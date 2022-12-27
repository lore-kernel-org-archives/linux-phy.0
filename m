Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78C6EC4167B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 20:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Px0e1iZGzyLjx/RAMT5qHS66XwYPouJhtTCUy1Lp4Gw=; b=dmIs+HJ35uaRsJ
	H63Ye6sk4N8uy0/4xXsjAd/VE55AYtwo9KsDEYcx428kpAYi4po2WA85HuVafGojd42lMh75niYiv
	U0vY8kMUGO7/jDJYufQmOb1A+72f8ZWC0tIJXMz/yl8/OEIIq5zHHP6EABscQqtDWx50nl+Xc9WQM
	R6eL/bUpLDm3HmOeXgTI+SutimcrZpxisnka2p91hU5dZyZeV8DzxInI/tUp2FArQGag85XTn2hz6
	6azpHG0eAjFE3uK38NSlQ9GjVzg6+HguLVQ5MhVbMM1qNpJfWa9EAw7Mp3aCKPrxjqdAcCCX1dqVh
	vBbRuK7S01xuVsNa1W/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGiC-00G7w3-Oq; Tue, 27 Dec 2022 20:38:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGfM-00G6KD-B5; Tue, 27 Dec 2022 20:35:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BD1BF61237;
	Tue, 27 Dec 2022 20:35:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D67FFC433D2;
	Tue, 27 Dec 2022 20:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672173315;
	bh=17q78AWH7ZS36A1H5pgoO7SU1wwmo9sZqO+Q1V9JmNc=;
	h=From:To:Cc:Subject:Date:From;
	b=pQWElqlF3knnZFTo07jtgss8Ml7LZy45UAsMGdgrcazfa0pO8D18PDrrJwahtaYwc
	 D71ENkHTOdai5PfiyT0FX3tRS44OYLQWH0bgYwTMBy2GrtWpocH+AmgJpkWqemoWqA
	 gxPntyK4+0Z7l3kIwTRwMksZ+J3hSkvbkXT7tiup8RfkNqDJDRtSVYgQcDUk+TY5Y2
	 zKDLER/3m6abEKmy8fTPyJYb59xX/E+fctveswCOlXkBCzDaH5zjS8xXCkiWF2tW/N
	 C9mbubEg/aj0EuYfZym6ZsvQ4MTm+YvycKxgmdj8Lcpa0TB4cZsXUKLUV8UO8YqXSz
	 /98e8hcwA7Iyw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andre Przywara <andre.przywara@arm.com>,
	Samuel Holland <samuel@sholland.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	wsa+renesas@sang-engineering.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH AUTOSEL 5.10 1/7] phy: sun4i-usb: Add support for the H616 USB PHY
Date: Tue, 27 Dec 2022 15:35:04 -0500
Message-Id: <20221227203512.1214527-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_123516_500787_8DE221A8 
X-CRM114-Status: GOOD (  11.25  )
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

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit 0f607406525d25019dd9c498bcc0b42734fc59d5 ]

The USB PHY used in the Allwinner H616 SoC inherits some traits from its
various predecessors: it has four full PHYs like the H3, needs some
extra bits to be set like the H6, and puts SIDDQ on a different bit like
the A100. Plus it needs this weird PHY2 quirk.

Name all those properties in a new config struct and assign a new
compatible name to it.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Samuel Holland <samuel@sholland.org>
Link: https://lore.kernel.org/r/20221031111358.3387297-5-andre.przywara@arm.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 651d5e2a25ce..230987e55ece 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -974,6 +974,17 @@ static const struct sun4i_usb_phy_cfg sun50i_h6_cfg = {
 	.missing_phys = BIT(1) | BIT(2),
 };
 
+static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = {
+	.num_phys = 4,
+	.type = sun50i_h6_phy,
+	.disc_thresh = 3,
+	.phyctl_offset = REG_PHYCTL_A33,
+	.dedicated_clocks = true,
+	.phy0_dual_route = true,
+	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
+	.needs_phy2_siddq = true,
+};
+
 static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun4i-a10-usb-phy", .data = &sun4i_a10_cfg },
 	{ .compatible = "allwinner,sun5i-a13-usb-phy", .data = &sun5i_a13_cfg },
@@ -988,6 +999,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun50i-a64-usb-phy",
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
+	{ .compatible = "allwinner,sun50i-h616-usb-phy", .data = &sun50i_h616_cfg },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
