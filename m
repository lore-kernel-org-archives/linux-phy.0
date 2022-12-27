Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51968C4167B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 20:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YicnxwpX7d3yfbTIlSwwC9KC4jLiBSZoasMJhVS+MEc=; b=P1rzOw1MsZSeDF
	hsh4F6IsRPcV4oaWTgXCOmN62FU2IZVBBw+GkFQ/QcrPgnIYoie1KzB0mgNLfqSM70lceiLV7qCxi
	vkP7DOJ/1BD0AZi8OKYPU/4ELkya6cvo9R4+qmwEeMGcCMjz6k4NSwt05qm7zKtMoP9l164/66axc
	4t/w2EqzcdddTKCHUlKWt4XPCaJMLEtI6zWX5QGB58tmq1zEWVY89J3GY40Pe3+slDN49tQ/eKzIG
	r4TzMVpIidkkYIWYqFK6m7zbQ+9rQMondCxtMHvzf2IMPv+q7Ja0x71FvHZCQJvfLgphGH6zqFrF2
	Ww42G4NxnmhH3wBeyLhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGda-00G5Vz-M3; Tue, 27 Dec 2022 20:33:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGdN-00G5Rk-Dq; Tue, 27 Dec 2022 20:33:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BB1B96123D;
	Tue, 27 Dec 2022 20:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF159C433D2;
	Tue, 27 Dec 2022 20:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672173192;
	bh=rQ+00Z6ZTv6ILxtSees34a9r4D8tzVxUbESU6RXZltA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rKNj5FRZfzpX/ZTiQOlxsfeoDHUa3T+YypdDPJwZyYJN0laO0R5LqkeXUv89kulft
	 ziU3/OFjQczqnP03/algn0AUFu7fy50k7HqyXklgEHTLUpHW/Ku/bPnDV8MaKg7zn1
	 HirSeNWrmQ3gWwNpjxP7CWvtlF7RsmDrEirIS2kM0SJry2L9FuPW+CPCGWBm3xkGk4
	 CagVSOAZx12l0Z5WDfdxScmISYfWI5N2eKaaMJ/YS4RCy5V5WO6o8WY6r7l1PFdc9+
	 99OXiBmqE4e3pB3LPeUbzslYs8VckzW6Ph5UvmGePXhk9o1HYOJuSSvKQWOuQNhzhs
	 RyJmuhqiulBcw==
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
Subject: [PATCH AUTOSEL 6.1 13/28] phy: sun4i-usb: Add support for the H616 USB PHY
Date: Tue, 27 Dec 2022 15:32:34 -0500
Message-Id: <20221227203249.1213526-13-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221227203249.1213526-1-sashal@kernel.org>
References: <20221227203249.1213526-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_123313_555156_AD40CBF8 
X-CRM114-Status: GOOD (  11.64  )
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
index e39f5ad62cc1..5472db9e87ef 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -1032,6 +1032,17 @@ static const struct sun4i_usb_phy_cfg sun50i_h6_cfg = {
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
@@ -1047,6 +1058,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
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
