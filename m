Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A31C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqLqifaOWZT4aPGNr6cYIwiuwIv0kpzkui75XwLXIZ4=; b=CrH8Bg06Mtg5Pd
	mi3FhadmK88twITgAg6UUtSxDtNFRYdAyDE8O5PlTcP8pwY7hXfnxseVHBw0WeguCKeV1nJwQNz8A
	/v7j805WfSI12Ia5J2JzikEJNeBu6vbFhCtsJJnZfeLxETPO+BB9aMBCxasyZZi/TbwE5zxHo+SvP
	EmVujXXONEI45wyekZbaCvfVvIx8MCMD3FQtoBFTvon2CnKDa9cBxgwwLPUrNOe1XSUPcYd5WteVV
	Xy7GV/m5i121A4QdmA1gjKHOVIk+/jqSROkAmzy498wKiDgGEEROI5aq6lZXqsYXb/t1fQ6VtJceY
	FfI+VF7SF4FzBqUflsvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsua-005XGh-Cf; Wed, 07 Sep 2022 11:08:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuM-005X4m-GC
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 633176187A;
	Wed,  7 Sep 2022 11:07:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29848C433B5;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=oCNeazgzySBMhn1TpvZAKgzyPNPtsXO3fOIZhO7KEao=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RsSqc4qS9t0A01F3K1bc1v4mWclmmToDac7r16WW9Q5bFe9JsRJqaxzRh52DMSu0x
	 EkRsi2Gk32TBRNDujo02lJX1rNC3WgBVBdvw9v6jIkOb1DB7h881IIyFE018L36rfN
	 hb6yFWGJZOuA6i4bjFHsfI4bNTOs4XgaqyAJdX7k8+HCFnTPmfJANBtTtmtHBhAjxb
	 brBLMOQJSHqk3HWED7oZaB5IqTyTUKELFwyvCSiOM+melkZUK14YEF9K0pELGCeV/Y
	 Pf9bmk4qdBR8Jt/PWKGTbn/II+bLV2mgw3CfZiTcwAfD3zwXn7sBPSRwPdQlVuWry6
	 KLWmQ5WoT94+w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004yu-9M; Wed, 07 Sep 2022 13:07:52 +0200
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
Subject: [PATCH 03/16] phy: qcom-qmp-pcie: drop unused runtime PM implementation
Date: Wed,  7 Sep 2022 13:07:15 +0200
Message-Id: <20220907110728.19092-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040750_689660_1D71EDD8 
X-CRM114-Status: GOOD (  14.81  )
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

Drop the unused and incomplete runtime PM implementation, which was
only used by USB PHYs before splitting the QMP driver.

Note that the runtime PM was never disabled (and state restored) on
driver unbind.

This effectively reverts commit ac0d239936bd ("phy: qcom-qmp: Add
support for runtime PM").

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 38 ------------------------
 1 file changed, 38 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2923977b205a..860620972d8a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -53,20 +53,6 @@
 #define USB3_MODE				BIT(0) /* enables USB3 mode */
 #define DP_MODE					BIT(1) /* enables DP mode */
 
-/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
-#define ARCVR_DTCT_EN				BIT(0)
-#define ALFPS_DTCT_EN				BIT(1)
-#define ARCVR_DTCT_EVENT_SEL			BIT(4)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
-#define IRQ_CLEAR				BIT(0)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 #define POWER_DOWN_DELAY_US_MIN			10
 #define POWER_DOWN_DELAY_US_MAX			11
@@ -125,9 +111,6 @@ enum qphy_reg_layout {
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
 	QPHY_PCS_STATUS,
-	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
-	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* PCS_MISC registers */
 	QPHY_PCS_MISC_TYPEC_CTRL,
@@ -2153,15 +2136,6 @@ static int qmp_pcie_disable(struct phy *phy)
 	return qmp_pcie_exit(phy);
 }
 
-static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-
-	qphy->mode = mode;
-
-	return 0;
-}
-
 static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2285,7 +2259,6 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 static const struct phy_ops qmp_pcie_ops = {
 	.power_on	= qmp_pcie_enable,
 	.power_off	= qmp_pcie_disable,
-	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -2474,14 +2447,6 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (!qmp->phys)
 		return -ENOMEM;
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
-
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
@@ -2509,13 +2474,10 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_info(dev, "Registered Qcom-QMP phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	pm_runtime_disable(dev);
 	of_node_put(child);
 	return ret;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
