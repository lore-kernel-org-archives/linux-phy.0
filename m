Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C18C43217
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gb80NfIx1X+Xfoc4G81Wm0DkrQTV1p+OEW98a4vT2Nk=; b=Bl2cEtyInIrk9P
	QGKyEp3+GfMHXKE5QzEnU5icaJG+F8S8UdfjE7tXfR19TykODm8CvkE1l0ezAbr0Gu+NihBmA6+He
	MObaFnfrpa5C/hs+wa0D6LH6tNyB0kt87kL2i7oHUmp4o0glVVGbpmbnqa+3mzXcGcJQYCeU710As
	06JeZxwLUEKW1i/XLdwoLN4srSyl1D7vTlGg9RIiUWm6NUw6T/oNFGv75SK9Hb0W+BxzLEa3qgeMH
	WVKc0VXfa3Pt75JuHW1aEoDUFdBD9OCViyqPGjNTrNQ2yCP6yi73IBpna1B4XE5UOiPjP+h9XIk4+
	IoSjPYcgk/1QOK7MRwPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5x-004JBt-He; Tue, 11 Oct 2022 13:14:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5t-004J7U-GY
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:14:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 053ED6119F;
	Tue, 11 Oct 2022 13:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F5BC43145;
	Tue, 11 Oct 2022 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494087;
	bh=QoK1eOJGYK/GWydTNlYAVeiMng7vXJDkaKJci2sXvgE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QcjAl9TK+HzejlBjpm5YZDfm17N4A2Bt5f7Zv23AyJxLqIpzZ+xcI8TzPqKhvOEJS
	 oGDo+oWc1GkY2Hc1A45t7h7wtxzflKs5o4uEfGXDzfJlpeNjk3okNB/+Kuh6kgWb0H
	 //MyUkS1zZbnLbzonT3iRuKbPCvIGlubdaeMa6AE0sGiJKDlLYic2lUx8HTCKkJxBQ
	 3mwe7guwHSGLEFS7Z2J/eV0JGl0qtw668HdIy2jAWA6Q/EQinv6DM6kknjk78VIJPB
	 vn5+ZNkly2p1eFKVtX3AWLy1d+3cTKsiwA32bVs9fTJIWjcF3lB8Vr4wgISopc6V6I
	 t8DfFiCqh6U+w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiF5i-0000el-Hl; Tue, 11 Oct 2022 15:14:38 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/13] phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
Date: Tue, 11 Oct 2022 15:14:08 +0200
Message-Id: <20221011131416.2478-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011131416.2478-1-johan+linaro@kernel.org>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_061449_642263_728D04A9 
X-CRM114-Status: GOOD (  14.24  )
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

The MSM8996 QMP PCIe PHY driver no longer uses the "in-layout"
configuration macro to configure registers that are typically accessed
using "regs_layout" arrays (e.g. QPHY_START_CTRL) so drop this unused
feature.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 34 ++++---------------
 1 file changed, 6 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 8b74948eb467..31ac405d3785 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -46,11 +46,6 @@
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
-	/*
-	 * register part of layout ?
-	 * if yes, then offset gives index in the reg-layout
-	 */
-	bool in_layout;
 	/*
 	 * mask of lanes for which this register is written
 	 * for cases when second lane needs different values
@@ -65,14 +60,6 @@ struct qmp_phy_init_tbl {
 		.lane_mask = 0xff,	\
 	}
 
-#define QMP_PHY_INIT_CFG_L(o, v)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.in_layout = true,	\
-		.lane_mask = 0xff,	\
-	}
-
 #define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
 	{				\
 		.offset = o,		\
@@ -346,7 +333,6 @@ static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
 };
 
 static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
 					u8 lane_mask)
@@ -361,19 +347,15 @@ static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
+		writel(t->val, base + t->offset);
 	}
 }
 
 static void qmp_pcie_msm8996_configure(void __iomem *base,
-				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qmp_pcie_msm8996_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_pcie_msm8996_configure_lane(base, tbl, num, 0xff);
 }
 
 static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
@@ -387,7 +369,7 @@ static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	unsigned int mask, val;
 	int ret;
 
-	qmp_pcie_msm8996_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_pcie_msm8996_configure(serdes, serdes_tbl, serdes_tbl_num);
 
 	qphy_clrbits(serdes, cfg->regs[QPHY_COM_SW_RESET], SW_RESET);
 	qphy_setbits(serdes, cfg->regs[QPHY_COM_START_CONTROL],
@@ -531,13 +513,9 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_pcie_msm8996_configure_lane(tx, cfg->regs, cfg->tx_tbl,
-					cfg->tx_tbl_num, 1);
-
-	qmp_pcie_msm8996_configure_lane(rx, cfg->regs, cfg->rx_tbl,
-					cfg->rx_tbl_num, 1);
-
-	qmp_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_pcie_msm8996_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_pcie_msm8996_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_pcie_msm8996_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
