Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F61ACD4F48
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 03:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HnLfMuQ6AUdxEvEEYyqAkPC/UZlKG+8HGL328P8uXhQ=; b=4430Gcu6Bjpjx5
	6mjjuvx3tUAyN8zkhAGejkd4+mysT4OszsIGnwJipatkSXKgCV0rCnMyf4LVtfi9Kwv3cDKLa6EyT
	/RTM0dKGbVsYCmiMGAqMmhU1fJYrAax2TVhKWXWSAawAPFbTJPYUs7R803be/vjWp/nmAwYpKwkNZ
	C+2YWc0Ddlg5elbE/I4i6DoSxaCuuS+qFGJ+VCZ4yeAw+3sOvxBbkRY8dyrdfzAB6NjwXdk37GkLM
	YeClX+B8RcYr9j6zsObFZ9D5H1pnpSU7rzR1PLj4AophUTXXXLERrCaTUKJjw4577U18D5HMkKKah
	LrxwF7TLZ0IM33i9ujuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJNZn-00000009p36-3gCf;
	Thu, 13 Nov 2025 03:00:47 +0000
Received: from mail-m19731118.qiye.163.com ([220.197.31.118])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJNZk-00000009p2M-3ZgW;
	Thu, 13 Nov 2025 03:00:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29687937f;
	Thu, 13 Nov 2025 11:00:38 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: naneng-combphy: Fix PCIe L1ss support
Date: Thu, 13 Nov 2025 11:00:28 +0800
Message-Id: <1763002828-212219-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a7b286b9709cckunmb5c46a5f24944e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8ZHlZOHh5LS0lIGUgfGkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJMTU
	xVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=cCNojZVonb1lv23vv3pS2U60tJEmAuctR8TGD0vb0Dbo7dPVwT0RnGoaRcyFE6HzyyPsJhOz0TDw/BjqidT7NuX9s/xroOCS4HJxOuSL5go9+WTbYUElMyk6mxpgA2xvUDEZmBlHGEhX3FJxJhSDIjTQ2HJ/CRfX16qB8uTmQOo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=S7L42Y7j11IGJceKJY6qAzucNqZtfZNTo1ZyQbfILj8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_190045_384353_BE37889D 
X-CRM114-Status: UNSURE (   9.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Need to control the delay PLL turnoff time if PCIe works on
L1 PM substates.

Fixes: bbcca4fac873 ("phy: rockchip: naneng-combphy: Add RK3528 support")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index a3ef198..af9a5c7 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -21,6 +21,9 @@
 #define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
 
 /* RK3528 COMBO PHY REG */
+#define RK3528_PHYREG5				0x14
+#define RK3528_PHYREG5_GATE_TX_PCK_SEL		BIT(3)
+#define RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF	BIT(3)
 #define RK3528_PHYREG6				0x18
 #define RK3528_PHYREG6_PLL_KVCO			GENMASK(12, 10)
 #define RK3528_PHYREG6_PLL_KVCO_VALUE		0x2
@@ -504,6 +507,11 @@ static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
+			/* Gate_tx_pck_sel length select for L1ss support */
+			rockchip_combphy_updatel(priv, RK3528_PHYREG5_GATE_TX_PCK_SEL,
+						 RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF,
+						 RK3528_PHYREG5);
+
 			/* PLL KVCO tuning fine */
 			val = FIELD_PREP(RK3528_PHYREG6_PLL_KVCO, RK3528_PHYREG6_PLL_KVCO_VALUE);
 			rockchip_combphy_updatel(priv, RK3528_PHYREG6_PLL_KVCO, val,
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
