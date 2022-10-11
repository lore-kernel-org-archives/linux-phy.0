Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7415C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4t00dRnyAqZGzz6qwtZg83MhKB1A/GfbMf0n59IPtE=; b=wX7mV1wI4oDJZb
	DHK8baI384OV7vX6hNOijLXE/DrSrKgGsuobBVwXM9tIoK4eEr5pu5bCD91GEicD3NG1EliX6QrdT
	vqWD74pfTk+/kooSUuiZVd9frDhOeysv3Vu/oO9I+VHy/4KLnDPXVuXJlV0PkJiguILJprUxw3kKC
	HyO6VxBMhkTGGKgB9netCkadEcIiUURRmGLHc3ajeGJT/IVLbqPpV0GaNhf7O18pfNmClKdVZH02b
	mz40uUpftCNyuxuQ5rtGe/pFL7dVEkJl68dfmRjQ3ydUS9KBMl8DNnh0yYtSfEaxgP8tJTqXKBGRI
	CfY7NjXMoObCrFLdWhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5v-004JAB-Rw; Tue, 11 Oct 2022 13:14:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5t-004J74-4y
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:14:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 00F5461183;
	Tue, 11 Oct 2022 13:14:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F10DC433D6;
	Tue, 11 Oct 2022 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494087;
	bh=IW9lw1kUhSb+unO9M7xVYw4heSHkYim78HGQ0xSwVAk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=miAB6rBRRDVUP8Y2EG566VoTyi4dNst61Gwcav9la5dOj21cMy8MSc+nevaXLGIir
	 Z54Wz34iPbyt1hCqqm8wsEHI9hrEKsW2Ryq8SqwQRrXJbAZSAB+QFh+qDZw6KqnRy9
	 E9wcHpEvlfTSrOQbmFuNZVuRWqoHA3MI7yOu/dW1kmSaz/h2VWBfoFfj97UqxhfzQf
	 9r2rATaNmVMaScyuwsyDIwLr68Iv0q7qB089WwtAUaa9mSjWsHP+ePHiHB7r0uJ3Fi
	 Z9opcy+kRQtB0vYyMAwjFlyTaBdR0M7HuacehFlYwPGR/93F0Yo/ymkn9esmPYomXl
	 CI0uGTbwdtcQw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiF5i-0000ef-A9; Tue, 11 Oct 2022 15:14:38 +0200
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
Subject: [PATCH 02/13] phy: qcom-qmp: drop superfluous comments
Date: Tue, 11 Oct 2022 15:14:05 +0200
Message-Id: <20221011131416.2478-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011131416.2478-1-johan+linaro@kernel.org>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_061449_310558_41811A73 
X-CRM114-Status: GOOD (  11.91  )
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

Drop some unnecessary or incorrect comments.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 4 ----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 ---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 3 ---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 3 ---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 5 -----
 5 files changed, 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 998c8f80ccd8..3889dcf73c59 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1949,7 +1949,6 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 		return 0;
 	}
 
-	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -2779,7 +2778,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
 	combo_cfg = of_device_get_match_data(dev);
 	if (!combo_cfg)
 		return -EINVAL;
@@ -2787,7 +2785,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	usb_cfg = combo_cfg->usb_cfg;
 	cfg = usb_cfg; /* Setup clks and regulators */
 
-	/* per PHY serdes; usually located at base address */
 	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
@@ -2796,7 +2793,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(qmp->dp_com))
 		return PTR_ERR(qmp->dp_com);
 
-	/* Only two serdes for combo PHY */
 	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
 	if (IS_ERR(dp_serdes))
 		return PTR_ERR(dp_serdes);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 45c0e2958bf6..8b74948eb467 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -420,7 +420,6 @@ static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
 		return 0;
 	}
 
-	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -845,12 +844,10 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
 	cfg = of_device_get_match_data(dev);
 	if (!cfg)
 		return -EINVAL;
 
-	/* per PHY serdes; usually located at base address */
 	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index dc7f8ba413b9..de04d8dd5350 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1978,7 +1978,6 @@ static int qmp_pcie_init(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	int ret;
 
-	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -2425,12 +2424,10 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
 	cfg = of_device_get_match_data(dev);
 	if (!cfg)
 		return -EINVAL;
 
-	/* per PHY serdes; usually located at base address */
 	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 566365fbfe1a..ab69f648ee38 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -849,7 +849,6 @@ static int qmp_ufs_com_init(struct qmp_phy *qphy)
 	void __iomem *pcs = qphy->pcs;
 	int ret;
 
-	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -1194,12 +1193,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
 	cfg = of_device_get_match_data(dev);
 	if (!cfg)
 		return -EINVAL;
 
-	/* per PHY serdes; usually located at base address */
 	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a0b97fd5d0a5..2c5e4041bcf9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2120,7 +2120,6 @@ static int qmp_usb_init(struct phy *phy)
 	void __iomem *dp_com = qmp->dp_com;
 	int ret;
 
-	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -2229,7 +2228,6 @@ static int qmp_usb_power_on(struct phy *phy)
 					cfg->rx_tbl, cfg->rx_tbl_num, 2);
 	}
 
-	/* Configure link rate, swing, etc. */
 	qmp_usb_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
@@ -2719,17 +2717,14 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	/* Get the specific init parameters of QMP phy */
 	cfg = of_device_get_match_data(dev);
 	if (!cfg)
 		return -EINVAL;
 
-	/* per PHY serdes; usually located at base address */
 	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	/* per PHY dp_com; if PHY has dp_com control block */
 	if (cfg->has_phy_dp_com_ctrl) {
 		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
 		if (IS_ERR(qmp->dp_com))
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
