Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 505F3C4321E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sK2o+L/OPw+65pUteCHIDDbt9jEQGwoTsCihZONNavc=; b=yo0FzxVYqXrfuT
	pYmHnkpXfMEKvq5ASSwXSR9yTdGm7T/vUek9Q2x5map+COKkPzpvH//R7ZLLV7NSTTjg6KAcr8evg
	puyUIuezuLubj2Z5g8f+NGCkYEzdx+3csaZJv2L5pqPTk5E+NL425VfHTRnEIPS3Umc7iz5RpeT3s
	iFyBBrgMoGofE4X5Q0RQtd0P0LLT4ZjhM3CeA8v72tAqGgKfspQHI0d6n6uUwmcvggaOj3IlefcF6
	rTjk/Wn3296t7xCV9XXYNElFRl//zMmTxd/9lka5ZHDvMhmKFfCPKDqp09PWN/NS2AFjBQYA5q7tD
	KFXyHW49Tcu4Wi2OCMQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRt-007Q7U-Eg; Wed, 12 Oct 2022 08:50:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRo-007Q0r-GZ
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1EC076148D;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3590C43145;
	Wed, 12 Oct 2022 08:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564638;
	bh=9nyAGS5QAzmJUhzuVdKVAvXKjrOv/M19QeLWUbmPdwI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OtXw83vhPnrgJMAyL+SdHSyFTGvWKsmKw8gKPIfn7csDAafTGrNsj+o+u+iC74MXB
	 Umk+vzAJmqCZ9jPX2ewD9YAaMJRVTSyxdmzwSbdu+aKJMcNUfpz1rKNuhWIhLLhICB
	 lCFt2X5uMPUbv01OxK8jGuYX4/pgCNv+5+u2UnSNwVPLGDdZk5b+00/qVo14YcYl8Y
	 p7olFpsqr2mL3UPa5MsvQv7zUstgaZSPk8uj1+w4pedu09gEexrePIknKOvg+nt8dS
	 5fecTzq/4TwLxlS2RsapkhK3oti7qCbzx+nM8AYqV1nP9p1xSiXQRbrTdHkn0aPijI
	 AulpAd5g2jKGQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hj-Ih; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 06/20] phy: qcom-qmp-pcie-msm8996: clean up ready and status polling
Date: Wed, 12 Oct 2022 10:49:48 +0200
Message-Id: <20221012085002.24099-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015040_647465_C6BAA732 
X-CRM114-Status: GOOD (  13.88  )
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

Clean up the PHY ready and status polling by dropping the configuration
masks which are no longer needed since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 899be7bd4d92..b9260c8746bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -35,7 +35,6 @@
 #define PLL_READY_GATE_EN			BIT(3)
 /* QPHY_PCS_STATUS bit */
 #define PHYSTATUS				BIT(6)
-#define PHYSTATUS_4_20				BIT(7)
 /* QPHY_COM_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)
 
@@ -200,9 +199,6 @@ struct qmp_phy_cfg {
 
 	unsigned int start_ctrl;
 	unsigned int pwrdn_ctrl;
-	unsigned int mask_com_pcs_ready;
-	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
-	unsigned int phy_status;
 };
 
 /**
@@ -318,8 +314,6 @@ static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
 
 	.start_ctrl		= PCS_START | PLL_READY_GATE_EN,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-	.mask_com_pcs_ready	= PCS_READY,
-	.phy_status		= PHYSTATUS,
 };
 
 static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
@@ -356,7 +350,7 @@ static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 	void __iomem *status;
-	unsigned int mask, val;
+	unsigned int val;
 	int ret;
 
 	qmp_pcie_msm8996_configure(serdes, serdes_tbl, serdes_tbl_num);
@@ -366,9 +360,7 @@ static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 		     SERDES_START | PCS_START);
 
 	status = serdes + cfg->regs[QPHY_COM_PCS_READY_STATUS];
-	mask = cfg->mask_com_pcs_ready;
-
-	ret = readl_poll_timeout(status, val, (val & mask), 10,
+	ret = readl_poll_timeout(status, val, (val & PCS_READY), 10,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev,
@@ -484,7 +476,7 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
-	unsigned int mask, val, ready;
+	unsigned int val;
 	int ret;
 
 	qmp_pcie_msm8996_serdes_init(qphy);
@@ -522,10 +514,7 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
-	mask = cfg->phy_status;
-	ready = 0;
-
-	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
