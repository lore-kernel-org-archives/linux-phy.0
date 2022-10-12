Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D65C43217
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6danZjpVifhlFD6+N+PkpKpUZkEcG8EtBeMM9MAnJSQ=; b=UK18CwUSenHDh6
	Rnvy/GNgZ2NDqQNCp3g6v3ngK2EHgxDGmQctpKh4J8GzdBM0Cu8Bk2mLIt8rCLT3Q3S6m3AmMji74
	qHKYSjzANXiMpuSORgXziLAWx7kV8y4AxKnjAmZX2/SvT/KYS9OrbV+pG3coLjgjuVq0NdYKRN25v
	NtzmDIyKlThRye9tZjtf8XRm2Wo256XJqXHPVa2fwvna8/QZARMgf8noED04MJA5ToQ280YyFntJr
	i9NsAQhFNOBjjZDTQABKus/koVtNeuMx2l/+Jm4QXdQSEGpXi0H7h5fVx7ni8/1gkef2nDtUVG8LA
	D8vbZnH3Ixpli++rRnqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuS-007Ie6-RH; Wed, 12 Oct 2022 08:16:12 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuM-007IXo-PE
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4565EB819CD;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E650C4314F;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=tShhF+Z3LYpaH03aRXW/UVxFL2Lj2z+T7hFQgivfPC0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j1q7WJR/YlDHXjP3sAW8OdxGXfJ0Mnb/5ZsCqlUuLFgpOtdiNjGjRVn7Dv8d8FDWO
	 EM4PpbCOKcwClOWFjsf0cHsufJmZdcwevvyx7RCzCqR5A6ClFwqY703/U4Xc7hLp7b
	 LMXU/mxkX9F78Lmr18c4ZKCffxaN5mMOYG7bZPym5agaUcOeZkERaV4SaXrMmW4pIO
	 y9piQDpuU2uLFDhzU9n+57k1a6RUbl/pP78/tvL6MH000C6CPudE1uFZ0cSq8plJIR
	 7QKhPEIllJh+/PHo9mNenTmHgeccy+68mr7FjGYzliLyEeeMc7PfQFPp7j568lSZy6
	 ko8oLJR11mFjg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oZ-Kp; Wed, 12 Oct 2022 10:15:46 +0200
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
Subject: [PATCH v2 06/14] phy: qcom-qmp-ufs: drop unused in-layout configuration
Date: Wed, 12 Oct 2022 10:12:33 +0200
Message-Id: <20221012081241.18273-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011607_136562_845ACEC4 
X-CRM114-Status: GOOD (  15.11  )
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

The QMP UFS PHY driver does not use the "in-layout" configuration macro
to configure registers that are typically accessed using "regs_layout"
arrays (e.g. QPHY_START_CTRL) so drop this unused feature.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 42 ++++++-------------------
 1 file changed, 10 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index ab69f648ee38..02931b82132f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -41,11 +41,6 @@
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
@@ -60,14 +55,6 @@ struct qmp_phy_init_tbl {
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
@@ -800,7 +787,6 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 };
 
 static void qmp_ufs_configure_lane(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
 					u8 lane_mask)
@@ -815,19 +801,15 @@ static void qmp_ufs_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
+		writel(t->val, base + t->offset);
 	}
 }
 
 static void qmp_ufs_configure(void __iomem *base,
-				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qmp_ufs_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_ufs_configure_lane(base, tbl, num, 0xff);
 }
 
 static int qmp_ufs_serdes_init(struct qmp_phy *qphy)
@@ -837,7 +819,7 @@ static int qmp_ufs_serdes_init(struct qmp_phy *qphy)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_ufs_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_ufs_configure(serdes, serdes_tbl, serdes_tbl_num);
 
 	return 0;
 }
@@ -941,21 +923,17 @@ static int qmp_ufs_power_on(struct phy *phy)
 	qmp_ufs_serdes_init(qphy);
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_ufs_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_ufs_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_ufs_configure_lane(qphy->tx2, cfg->regs,
-					cfg->tx_tbl, cfg->tx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_ufs_configure_lane(qphy->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 
-	qmp_ufs_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_ufs_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_ufs_configure_lane(qphy->rx2, cfg->regs,
-					cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_ufs_configure_lane(qphy->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
-	qmp_ufs_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_ufs_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
