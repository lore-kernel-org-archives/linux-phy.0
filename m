Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A5FECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 10:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9j9Cyz8QfKuZvJQ5Ig0Mi9afnbkK23YQrTc00xJrmo=; b=HtURmXPnFZDMuP
	mCZwlV6kZzIf3McdV+1f/HxOF4gxmgPhL+1jLB5WeNhQ9sg8yFVcoxz6EdzWZOpTQbSufgDtsUoDx
	nVVUY4kMrySS05/F5ILOrSHXr/B4LxJAMlX6II7/5kWL9dSACEIlkULqmKB41E6vRQ85L7NgBGKye
	Snj0XrGe3LvNuEBPaPDPurEKJt4pWdtO3UlYIEq05DYILmrE0F9VOeWYqQsnugaPQnR8mNesV3uRL
	vR11QUmyoe5qSgpctTlCP1A4JhBMQQl6sHIlJzhMJCJH0w8v0xh9MCiEEhHl1ZgJnkam3QdimU1kN
	XtjBq6obngjfF32+9Unw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8YC-00C9s6-1W; Fri, 16 Sep 2022 10:26:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vg-00C8QH-29
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5E0F062AA8;
	Fri, 16 Sep 2022 10:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79AF1C4315F;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=fzSBWqAV/KoAW+IM7FR2klj1KXJLCORvoez5yC2eol4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SPdbyCtL2xkelZkgqh8GFKnipXKQgoCr6cM9ZDdTY70soFLGz5//ul4MN7zRdVOqI
	 DwNtxleZsQTa+eHv8J0g2m4ImWb4EHShXUFLNjfrVdwUUaLP6WFG6NpSBv96o5+z4J
	 h+uMod2eoRxg1TbHS7uP9tDtXhmYLQUyk37SdkGAZv/ZgCKJn1VCDTA2b6mpsyn6dv
	 lHbaU7AYv8Cl7r5y3zbKWyQw3M9vdVXEalPrnzpjmQzQhJMGSCk/EpH/RFN/qbrVOD
	 Bg7Mlgak52bsh6HonJ97wP1yGQDK9MuPnM7nEZSaWjtHwQeL1D7JCKmsFxwDR8/mlG
	 wL86YA8ECxQNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vi-00030d-QE; Fri, 16 Sep 2022 12:23:50 +0200
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
Subject: [PATCH v2 07/11] phy: qcom-qmp-pcie-msm8996: drop unused pcs_misc handling
Date: Fri, 16 Sep 2022 12:23:36 +0200
Message-Id: <20220916102340.11520-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032348_201780_13057935 
X-CRM114-Status: GOOD (  12.81  )
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
