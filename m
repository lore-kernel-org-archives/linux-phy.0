Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EF1C352AA
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlpkIWCHVxaLM6cBJJHf83puSR3Y3N1Fwsf9tR5W6po=; b=hiziGXMwPOvwSS
	dayM8VD+/18fMl4vYdSdECoQBO9kEVKtnwfwEgcuO3lgFKNS/N9ZfKZ3uR/PwKdmx1noAl+1dkHYu
	BSI3jkdG8aro47D9I/MeLbbb8aCe+1d2yMh0n3z2+5hcELUIp3MANPOe8Tq9jNufpWNKTzsLF8Gzj
	42SfPF/zmmk6+pimcA6MC2suOQU2Ryme3ZhHNwUfCnnPbG7pEPCDuOvtLu1joZWsmPzk+R5ktgIfM
	0Vdj8RkbtputT4J7jEsDuiVXmxDhXOHk2yBwmMi8QVXV4oPM++9I39OQKQu+BlnPU+2QrwPFvJsQE
	R09kY3uJ6ZBkoJN3Yu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxX-00893X-RD; Mon, 17 Oct 2022 06:50:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxT-0088uN-8n
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4EE8260F4D;
	Mon, 17 Oct 2022 06:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAE62C43141;
	Mon, 17 Oct 2022 06:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989440;
	bh=g1jmdm0unlBZmP5l4AoYhCIkJtzDq7YAxgLUFKF22RM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CK3DaE7tTE6RbNwiMYR/ibuVR13cCZ1AAGHRPMtipbMEzNPprWr/X/3PNXKEztwkY
	 W3N16UoMbcXwBQM83Mj2o6Ii0bJZCarJvTIV4SvhON0HNlnNAdKywz5O9I12BnDQtu
	 nzZzEUdekYaRgz7j8SLp4FDL9mWjCv+iTHoQzzMu8DkYY/8tlMerx8s7jmhRopSKz/
	 2EZ/KOgjxD+gBW3on68xdQrWyef2SUYDDOqGOvB+BNbOR4FUTI4adkHZlok8jgud4x
	 IwE5QgEXpsxtMJ917umy8BP3fG97sc/cua+meNPd6fEFROnXMNNNn4h/b7G9jJw9PS
	 u2RVa52kYQebQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okJxG-00057c-Fm; Mon, 17 Oct 2022 08:50:30 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 04/11] phy: qcom-qmp-pcie: clean up power-down handling
Date: Mon, 17 Oct 2022 08:50:06 +0200
Message-Id: <20221017065013.19647-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017065013.19647-1-johan+linaro@kernel.org>
References: <20221017065013.19647-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235043_476202_39187F6D 
X-CRM114-Status: GOOD (  12.14  )
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

Always define the POWER_DOWN_CONTROL register instead of falling back to
the v2 offset during power on and power off.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index bdbd18b89a8c..1105d439828c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -98,18 +98,21 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x2ac,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -1999,13 +2002,8 @@ static int qmp_pcie_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
-		qphy_setbits(pcs,
-				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				cfg->pwrdn_ctrl);
-	else
-		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 
@@ -2112,13 +2110,8 @@ static int qmp_pcie_power_off(struct phy *phy)
 	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	/* Put PHY into POWER DOWN state: active low */
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			     cfg->pwrdn_ctrl);
-	} else {
-		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
-	}
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 }
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
