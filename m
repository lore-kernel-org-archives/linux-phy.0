Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 910BFC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2scUuwTI676Vq4l4/CxJYz7ICpaX0WgadCJSstdfz8=; b=M7e4SKi3s71wRu
	C+wcPc4KlEpIRFOqJ9bOhgUYn0x9DfCpYZx72tnIxoxDRQG0tx9A2TDRrdLIMB+KZiOnJ/DzLREVV
	+qo9GRtQBSRVKKU/bDx/ukmmOj8o8LpEVvOh9MrJD443TnG/anXFUhVJksAHEl1BGGQ9UR6/QzB8e
	k4oW7SK2mBNfPOyP9nnsSBJKY5rvh7dwNMgedT8G5FaFgxeiZz1ouTY+LzOmHpC/a6mGcrVmd2Zi7
	nO6Ph/rRjufjLwvY2FZtWwh1t+6yRHYUtds0Tgv5sQcUHwhshs6fsPOk9G2gSonr2MfOurgiy0FRu
	eZhu3sUXFIphUkjHIK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIo-00EaQj-VZ; Fri, 11 Nov 2022 09:26:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQId-00EaJK-R4
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D5B4B824AB;
	Fri, 11 Nov 2022 09:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44593C4FF12;
	Fri, 11 Nov 2022 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158765;
	bh=GytNX5qMHGwRBIZQ4jQpYSYuZdJSnnn+VzUiNV2EjJ4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qnOlPyF/uc+ZKluq70ipVJ7R0BRk3ZbX4dLf7w/ScJalpxtHfQ10a43F2EyRJ23he
	 eqYuAEbMu+P+Un1OwDyNPMNItXa0F3nEBfYiIRMVZRMm1tcs4fWaFTPZcoWFFavP7h
	 7MawJg93t9pu4ZLVuGXiWuHeF4pjcTKILo+ottHFixjAg1sPhhQEiifkyhnE9jdx/0
	 EnOai3uH8ozq9wPF1/h14uHXFRvCCYsW5iT028ZfoNqeL5oApQNBDX2Od1XSDiQmqZ
	 oMZ2D/HVzctyg9NcJGE2HkdlU7BcbmiuHX9+1k0veVmGP/Qfc8XJ6tDwr65wiqMRiX
	 akervAURvDESQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI5-0002lK-G9; Fri, 11 Nov 2022 10:25:37 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 12/14] phy: qcom-qmp-combo: rename common-register pointers
Date: Fri, 11 Nov 2022 10:24:55 +0100
Message-Id: <20221111092457.10546-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012613_380641_789DA617 
X-CRM114-Status: GOOD (  14.76  )
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

The common registers are shared by the USB and DP parts of the PHY so
drop the misleading "dp" prefix from the corresponding pointers.

Note that the "DP" prefix could also be dropped from the corresponding
defines, but leave that in place for now.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5068f8674faf..ee44ed6dfaae 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -866,7 +866,7 @@ struct qmp_combo {
 
 	const struct qmp_phy_cfg *cfg;
 
-	void __iomem *dp_com;
+	void __iomem *com;
 
 	void __iomem *serdes;
 	void __iomem *tx;
@@ -1778,7 +1778,7 @@ static int qmp_combo_dp_calibrate(struct phy *phy)
 static int qmp_combo_com_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *dp_com = qmp->dp_com;
+	void __iomem *com = qmp->com;
 	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
@@ -1809,25 +1809,25 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
+	qphy_setbits(com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
 
 	/* override hardware control for reset of qmp phy */
-	qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+	qphy_setbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
 			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
 			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
 
 	/* Default type-c orientation, i.e CC1 */
-	qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
+	qphy_setbits(com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
 
-	qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
+	qphy_setbits(com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
 
 	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-	qphy_clrbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
 			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
 			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
 
-	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
-	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
+	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
+	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
@@ -2560,9 +2560,9 @@ static int qmp_combo_parse_dt_legacy(struct qmp_combo *qmp, struct device_node *
 	if (IS_ERR(qmp->serdes))
 		return PTR_ERR(qmp->serdes);
 
-	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(qmp->dp_com))
-		return PTR_ERR(qmp->dp_com);
+	qmp->com = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(qmp->com))
+		return PTR_ERR(qmp->com);
 
 	qmp->dp_serdes = devm_platform_ioremap_resource(pdev, 2);
 	if (IS_ERR(qmp->dp_serdes))
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
