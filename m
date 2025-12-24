Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8855E7491C
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 07:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLRxVKm7rCG7Xsw8SAOe8UToZLrUkscHVN5LySZN4jE=; b=HJWaxzgIhUUQCL
	pPdHSjmRcESbG3O18Bwg2HDYy3G145MK5bZJ50WaiR5UKSkSs/ozXcfYtXn4QxTFHKyhRdBkFzHG3
	4+zBw606D2Fq8vj8E6Wn/Yc3NwR2LwIOI17cJz+0wH4pDHe7JxDkWSV85m5eiuTvJTsShVYOX6vDW
	Skii1xdZEL1/gH11qdnXKEcsq11T1yQJpKNU+Xpo+eDLCjVKoSv/2+afT2grL4fuzLbMN9h2UagcJ
	MxMNo1rztKVV3BVh9dvVyxkqWH2Sy+kSrXTIL47jgT3Bh3Dry4/dvXJ0cLhZSzY8/lMOnenTXAD0U
	IIwd0gV3dzMClwrj2WVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ2L-0000000GWmt-2WD9;
	Wed, 24 Dec 2025 07:11:57 +0000
Received: from mail-m3274.qiye.163.com ([220.197.32.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ2J-0000000GWlF-1YcR;
	Wed, 24 Dec 2025 07:11:56 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e63ea8ca;
	Wed, 24 Dec 2025 15:11:50 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 5/5] phy: rockchip-snps-pcie3: Only check PHY1 status when using it
Date: Wed, 24 Dec 2025 15:10:10 +0800
Message-Id: <1766560210-100883-6-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b4f3325d609cckunm34e2a83f3c2d9f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkIeHlYaHUhJSkJPQx4dSh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TmLgWE9U7J1vkop2lo1vEeOw97p0kk+Be/2U3TnE2Eek1d/kfquCEwnGLLvkp3zlUQmwNK7tTiEHQoh+mbs3GOUGNgpqfdb147CRvHji6dySuTGBQZgeQVYqR7EiwsK+KqGZWGKuxnFfbUdIgpArqyTP5gLb6AVyczeyc3Exk5k=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=HVTGJgDhwCKjeXI1BckdM02NnUQgr1hJwOomGYZB9m8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_231155_564290_C3CA590F 
X-CRM114-Status: GOOD (  10.45  )
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

RK3588_LANE_AGGREGATION and RK3588_BIFURCATION_LANE_2_3 should be
used to check if it need to check PHY1 status. Because in other
cases, only PHY0 could show locked status.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 6cc38e3..36b2142 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -183,6 +183,7 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	}
 
 	reg = mode;
+	priv->pcie30_phymode = mode;
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0,
 		     RK3588_PCIE30_PHY_MODE_EN | reg);
 
@@ -208,10 +209,13 @@ static int rockchip_p3phy_rk3588_calibrate(struct rockchip_p3phy_priv *priv)
 				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
 				       reg, RK3588_SRAM_INIT_DONE(reg),
 				       0, RK_SRAM_INIT_TIMEOUT_US);
-	ret |= regmap_read_poll_timeout(priv->phy_grf,
-					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
-					reg, RK3588_SRAM_INIT_DONE(reg),
-					0, RK_SRAM_INIT_TIMEOUT_US);
+	if (priv->pcie30_phymode & (RK3588_LANE_AGGREGATION | RK3588_BIFURCATION_LANE_2_3)) {
+		ret |= regmap_read_poll_timeout(priv->phy_grf,
+						RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
+						reg, RK3588_SRAM_INIT_DONE(reg),
+						0, RK_SRAM_INIT_TIMEOUT_US);
+	}
+
 	if (ret)
 		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
 			reg);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
