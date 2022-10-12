Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 110CAC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzcERw1Iyxh3dOVjXTOlxV3f2P200uvEOig9XkEO3Xo=; b=kWj+x3IGDe36YJ
	N4PPlVbHekttLCs7M4Pcd5hRvtmQyheS2VqLKPQP4Dkf2LjcEvzecLFqdEdkS4q5As4nbg5bvsPVt
	ZbG7z99f52h3qqXX3eIkyokEUTGpTq0azeEycE95PbCpJf8dMDHaZpc1rOqqWk+mr61tT9IjPDWiO
	AxO8Cd65EexbRXLdYdmNHKGfJIpN6G31s8PigjfcYW08qKs7NbkKXXJOaPe4lj+2irjbGq5pnhTAP
	t24uNBrhAFT0B4DxZjNts7uWCKwBzxCyWy6WsCxpkqa26A0V7ORIIcf95xLCjvMKW74d4CoUDCl8B
	PsOolKZuO8c1y8uKwybA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuN-007IZF-98; Wed, 12 Oct 2022 08:16:07 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITZ-TV
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9A9AFB819CA;
	Wed, 12 Oct 2022 08:15:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 457D6C43155;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=e8XpSHjTNJUNEEWSbFBHEVklGknG96PoGVTN8QWLfBI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pwe8DNgiMsexlj+WlWiztNuTtYfe9f34+TLqpNWj6pdloKALmXQFU4yraF9YWvzMg
	 zGSm4basaJf9bHGvt/q1/IK1pLC5s1Q3RVigYA+14HKzYHnWLgNf5suhfRe6qy3fxv
	 zOo/v+JoUAeCDO7ZiENieMONBJ4tB07lkXp6XaVzH37yJmtJEjDk/CqDBijeHlPlGv
	 lNvCaxJB2E83sV+ONYy/dc65nyc+6rcJaEUYJL/iSn5NOGhK8kKFjrsgMNLHRMNou3
	 NjXmiAQWIKtX5aa5qUk/3egTRFkk8ghfGLUxufgD+KbY3vj8LAjdjRHpD4gaYyDCjY
	 7OKcOH6AyqepA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004of-Qi; Wed, 12 Oct 2022 10:15:46 +0200
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
Subject: [PATCH v2 08/14] phy: qcom-qmp-pcie: drop power-down delay config
Date: Wed, 12 Oct 2022 10:12:35 +0200
Message-Id: <20221012081241.18273-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_469043_94AF0F1F 
X-CRM114-Status: GOOD (  14.43  )
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

The power-down delay was included in the first version of the QMP driver
as an optional delay after powering on the PHY (using
POWER_DOWN_CONTROL) and just before starting it. Later changes modified
this sequence by powering on before initialising the PHY, but the
optional delay stayed where it was (i.e. before starting the PHY).

The vendor driver does not use a delay before starting the PHY and this
is likely not needed on any platform unless there is a corresponding
delay in the vendor kernel init sequence tables (i.e. in devicetree).

Let's keep the delay for now, but drop the redundant delay period
configuration while increasing the unnecessarily low timer slack
somewhat.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +-----------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fa8bc6aeedf1..315de484f875 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1362,9 +1362,6 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
-	/* power_down delay in usec */
-	int pwrdn_delay_min;
-	int pwrdn_delay_max;
 
 	/* QMP PHY pipe clock interface rate */
 	unsigned long pipe_clock_rate;
@@ -1500,8 +1497,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
@@ -1529,8 +1524,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 
 	.pipe_clock_rate	= 250000000,
 };
@@ -1562,8 +1555,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
@@ -1594,8 +1585,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
@@ -1624,8 +1613,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
@@ -1666,8 +1653,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
@@ -1708,8 +1693,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
@@ -1765,8 +1748,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
@@ -1797,8 +1778,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
@@ -1829,8 +1808,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
@@ -1876,8 +1853,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static void qmp_pcie_configure_lane(void __iomem *base,
@@ -2037,7 +2012,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_pcs_init(qphy, mode_tables);
 
 	if (cfg->has_pwrdn_delay)
-		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
+		usleep_range(1000, 1200);
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
