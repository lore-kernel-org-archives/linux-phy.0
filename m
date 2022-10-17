Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0358C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lhxlz5hc6aote5BpXwWilViWGyR16hwYhL/TvBFaXgs=; b=Mrue6IRxIDA7wO
	ejYu1HTl7VGFa/lj9ubyVDkeo0N0ogY5mHSVsmX5UrY1uNjuS/ZB/waruO3XRznxfvbdlwy9m06u6
	0lNGXQt029lkPb6c4DN49BWeq1mfWbtDZy8dbrbZqEsgqSxVP3BXRJC6yotdAkjHo3jhsLw0ZTsHg
	tpG5owi8rDBSjj3+nTdMtEN5u4JnIcz6l8aYo4XWv35LFVKTVn4TT5fEj4CBZSYBjMNmLZSGY4GPC
	YugxLmFC+3k694Q52wREhnTA5r4FeGdsXZjMZN6H6nobbdIVZZh8KvrGwtemrbKQyKcib0tqxi9bR
	QpqA5fXUI+/RlHbORMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVw-00D01U-8I; Mon, 17 Oct 2022 14:54:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVr-00Cztq-3k
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BD5DDB8190D;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42A89C43142;
	Mon, 17 Oct 2022 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018479;
	bh=5U2mLRcMewZ/OXbcaeXyQCALagcvHGf09jg9Pu1Jzck=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KSHL9PrRPjAqbjDjMFzJzqq+fxGXFq9dz+otGMV65LYtpvqxceXazsyzITOX/rviN
	 WaYu6q9TScpcEmMA6E9/fuoqw6gpnaVnK5XuoRKlLajAmdAqpt6+DBIcizuMZ4tHPK
	 UydCTFCbvaEm18+mUzZ5enbwEPTYxXVdPeVBwLxyivfEZHDfNBKPUd3q7poHfBFSgz
	 /myluj2wWcO0yNVgLsgw/QXbt6BN15azMGcPq4wXTdHBGcBilD9iqCop3+/dFn2ayR
	 IdYTSxK7LwdQLAWKCO86grM6lkN1jyTWF7G4jl2WuF2SoY1R95gUw1HM8fNuOnZeSD
	 n5uf9WznNwX7g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVd-0005mW-J3; Mon, 17 Oct 2022 16:54:29 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 13/15] phy: qcom-qmp-pcie: add support for pipediv2 clock
Date: Mon, 17 Oct 2022 16:53:26 +0200
Message-Id: <20221017145328.22090-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075443_516835_D82909FF 
X-CRM114-Status: GOOD (  15.86  )
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

Some QMP PHYs have a second fixed-divider pipe clock that needs to be
enabled along with the pipe clock.

Add support for an optional "pipediv2" clock.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9c8e009033f1..c1d74c06fad1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1379,7 +1379,9 @@ struct qmp_pcie {
 	void __iomem *rx2;
 
 	struct clk *pipe_clk;
+	struct clk *pipediv2_clk;
 	struct clk_bulk_data *clks;
+
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -1902,6 +1904,36 @@ static int qmp_pcie_exit(struct phy *phy)
 	return 0;
 }
 
+static int pipe_clk_enable(struct qmp_pcie *qmp)
+{
+	int ret;
+
+	ret = clk_prepare_enable(qmp->pipe_clk);
+	if (ret) {
+		dev_err(qmp->dev, "failed to enable pipe clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(qmp->pipediv2_clk);
+	if (ret) {
+		dev_err(qmp->dev, "failed to enable pipediv2 clock: %d\n", ret);
+		goto err_disable_pipe_clk;
+	}
+
+	return 0;
+
+err_disable_pipe_clk:
+	clk_disable_unprepare(qmp->pipe_clk);
+
+	return ret;
+}
+
+static void pipe_clk_disable(struct qmp_pcie *qmp)
+{
+	clk_disable_unprepare(qmp->pipediv2_clk);
+	clk_disable_unprepare(qmp->pipe_clk);
+}
+
 static int qmp_pcie_power_on(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
@@ -1923,11 +1955,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tables);
 	qmp_pcie_init_registers(qmp, mode_tables);
 
-	ret = clk_prepare_enable(qmp->pipe_clk);
-	if (ret) {
-		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
+	ret = pipe_clk_enable(qmp);
+	if (ret)
 		return ret;
-	}
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
@@ -1950,7 +1980,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	return 0;
 
 err_disable_pipe_clk:
-	clk_disable_unprepare(qmp->pipe_clk);
+	pipe_clk_disable(qmp);
 
 	return ret;
 }
@@ -1960,7 +1990,7 @@ static int qmp_pcie_power_off(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_disable_unprepare(qmp->pipe_clk);
+	pipe_clk_disable(qmp);
 
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
