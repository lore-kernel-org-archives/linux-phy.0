Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3935EC433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 15:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyhztdYN7m+rMTTrfeVRJD5BSr9DUjHXZXV8p1kfOgg=; b=TFKQ/ozjFh+GXM
	yJDyjYxP82y5fa7PuOGPP/FzWorz3Y0Nx8kV72J6ZvRH4XVKB6SoPc1PEqVzNFRhB8NiRsgc0Tvi5
	UgyMrCT7Uk+V/hv0iLUi7LLVR+IsDUHwWAr7rZR0oeet2Nce1P5uYH99iJF+OR036IJcGlxpx8gDX
	v5R0Dm8bOMBbI8pmN/DZZuOsE3JDuEDNL5aYTGtDbL8kem9WoFMgb8chOkRuyHb51yc9SMs2nLe4z
	6MNm6m1oEjHTgkHHVhGR5B4nAwah5LJDDN70oWaPA1G5tQWQRi9AJTs6PBX3EaTk5LpiEm3Lc33Zj
	W04djjaSYdQIR3NChJ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhI-006mLZ-LO; Sat, 05 Nov 2022 15:03:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKhB-006mE7-DS
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 15:02:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0706760B67;
	Sat,  5 Nov 2022 15:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CDFDC4315F;
	Sat,  5 Nov 2022 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667660570;
	bh=oVZOTzq45reHyMUZv3CzKzfVdLviOUal1dPut+RcE50=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dpzR3cQojso4N00J1Jx18hOHXzZGo4acBogaoMKYI5uvDVmeSLUWm3uR9BuZ/3LJc
	 j3wzbR9AVrIZH+yNhahBHwDUbrs9YOaO2lM2J2zIw8jQoPI5Udq3mOPqo63R2AA04o
	 7hPIwu5quonuQqp5LIh6JNg95HypYb+gGBbDbLp1wMWaQtddUyyrLW+2SNFzQSeNN8
	 +LS9a3xiwnFC1qriAtr5SBmnz8l3knXllzafLOQzQ4g6fxB9wutDFNsxmkeATsyUVr
	 te5laE5Cw0gD4emE+cDIo9YmvUoskHcqjKQw0QSGxjqFiavoF01m/vBgQWvRFZcdCZ
	 DAf6QEojcrzlA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1orKgp-0005Kd-FS; Sat, 05 Nov 2022 16:02:31 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 09/16] phy: qcom-qmp-pcie: add register init helper
Date: Sat,  5 Nov 2022 15:59:32 +0100
Message-Id: <20221105145939.20318-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221105145939.20318-1-johan+linaro@kernel.org>
References: <20221105145939.20318-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_080253_571657_28C2965E 
X-CRM114-Status: GOOD (  12.38  )
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

Generalise the serdes initialisation helper so that it can be used to
initialise all the PHY registers (e.g. serdes, tx, rx, pcs).

Note that this defers the ungating of the PIPE clock somewhat, which is
fine as it isn't needed until starting the PHY.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 37 +++++-------------------
 1 file changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a977f2bbd831..09999d5b5268 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1820,27 +1820,22 @@ static void qmp_pcie_configure(void __iomem *base,
 	qmp_pcie_configure_lane(base, tbl, num, 0xff);
 }
 
-static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
-{
-	void __iomem *serdes = qmp->serdes;
-
-	if (!tbls)
-		return;
-
-	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
-}
-
-static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
+static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *serdes = qmp->serdes;
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
+	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	if (!tbls)
 		return;
 
+	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
+
 	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
 	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
 
@@ -1848,15 +1843,6 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
 		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
 		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
 	}
-}
-
-static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
-{
-	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
-
-	if (!tbls)
-		return;
 
 	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
 	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
@@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
 	else
 		mode_tbls = cfg->tbls_ep;
 
-	qmp_pcie_serdes_init(qmp, &cfg->tbls);
-	qmp_pcie_serdes_init(qmp, mode_tbls);
+	qmp_pcie_init_registers(qmp, &cfg->tbls);
+	qmp_pcie_init_registers(qmp, mode_tbls);
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
@@ -1941,13 +1927,6 @@ static int qmp_pcie_power_on(struct phy *phy)
 		return ret;
 	}
 
-	/* Tx, Rx, and PCS configurations */
-	qmp_pcie_lanes_init(qmp, &cfg->tbls);
-	qmp_pcie_lanes_init(qmp, mode_tbls);
-
-	qmp_pcie_pcs_init(qmp, &cfg->tbls);
-	qmp_pcie_pcs_init(qmp, mode_tbls);
-
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
