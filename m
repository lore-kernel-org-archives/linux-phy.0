Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53DB4C6FA8D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9j9Cyz8QfKuZvJQ5Ig0Mi9afnbkK23YQrTc00xJrmo=; b=UMVmPOFur4K/32
	BJMCtY2d1qHPD8bjwT361y5R7r67WYFTdwBn/UouuX8cfEbdo1VC3/QVzFoF2/Qo0S9gI0hs6CHGI
	tfPCiO/WB2koU0d1OZ4XdfqWQ9HFADRQHdxA+tY/gup9t2sGXZf4IN4v7Lnq40VWkfAwr2p+3aO7a
	/gSWZAcBu8Rb/KKS9kZ2OrX0AK9I1JOXnozOnND9gWbZ6y8fa5ie5hDNMywzdqke5cm3MdLEM7JUF
	AH4At7UCgU6WxrGtDwMO9KqMGOwRR+hSIHhTlIbGC6xFOxyPg7YOjGiRpfdHilNuBjY1OiSrgfFe1
	TA2jlHUJYlnvl216FeaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDt-0054dI-AM; Wed, 14 Sep 2022 16:26:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDm-0054Uw-Rs
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5C97EB8172B;
	Wed, 14 Sep 2022 16:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E04CCC4315B;
	Wed, 14 Sep 2022 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172798;
	bh=fzSBWqAV/KoAW+IM7FR2klj1KXJLCORvoez5yC2eol4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DCYFvcvsouLftsvnw22RTKlQ1SxZmOENXG6zPOwvdXrIQB9pGh+Xn8FTKb7nSttT/
	 oZc28O0eVbcH11RO+EyEFAiMFUhV6GjPBKDznp81Ysit6BweK/mjCCzH54wPhwe+Rz
	 HmaFSpcN/2O1o4DjEWTi18eJsNzNS9JgSRIsvd31ROslEtSnfSc3yuljJgesNidyxW
	 t9E1yw+ilKQKnP7cKFYNkdmqJ4mQwBPhCPRnfVFXB8XDPLonbgwwWum72ixFbSKL7m
	 l5SPM27Fp9Unm9syWmv+JOB/AVfWMOqN+eW7QUeecVD66cnLslXeN4VV3h/QhQLUG7
	 0YrLFkcbeQ4OA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDk-0001el-0q; Wed, 14 Sep 2022 18:26:40 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 07/11] phy: qcom-qmp-pcie-msm8996: drop unused pcs_misc handling
Date: Wed, 14 Sep 2022 18:25:41 +0200
Message-Id: <20220914162545.6289-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092643_272979_A9170742 
X-CRM114-Status: GOOD (  12.50  )
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

The MSM8996 QMP PHY driver does not use the PCS_MISC IO region (and
neither do the DT binding specify it) so remove the corresponding code
from the driver.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 6664d84bb599..245f6dc1710e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -202,8 +202,6 @@ struct qmp_phy_cfg {
 	int rx_tbl_num;
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
-	const struct qmp_phy_init_tbl *pcs_misc_tbl;
-	int pcs_misc_tbl_num;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -240,7 +238,6 @@ struct qmp_phy_cfg {
  * @tx: iomapped memory space for lane's tx
  * @rx: iomapped memory space for lane's rx
  * @pcs: iomapped memory space for lane's pcs
- * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
@@ -254,7 +251,6 @@ struct qmp_phy {
 	void __iomem *tx;
 	void __iomem *rx;
 	void __iomem *pcs;
-	void __iomem *pcs_misc;
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
@@ -523,7 +519,6 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	void __iomem *tx = qphy->tx;
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
 	void __iomem *status;
 	unsigned int mask, val, ready;
 	int ret;
@@ -552,9 +547,6 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 
 	qmp_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-	qmp_pcie_msm8996_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
-			       cfg->pcs_misc_tbl_num);
-
 	/*
 	 * Pull out PHY from POWER DOWN state.
 	 * This is active low enable signal to power-down PHY.
@@ -793,8 +785,6 @@ static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, i
 	/*
 	 * Get memory resources for each phy lane:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
-	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
-	 * For single lane PHYs: pcs_misc (optional) -> 3.
 	 */
 	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
 	if (IS_ERR(qphy->tx))
@@ -808,10 +798,6 @@ static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, i
 	if (IS_ERR(qphy->pcs))
 		return PTR_ERR(qphy->pcs);
 
-	qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
-	if (IS_ERR(qphy->pcs_misc))
-		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
-
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
