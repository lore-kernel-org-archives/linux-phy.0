Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07939C38A2D
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj4csOxgyV7oUiuaOHLPAGh4Y86boEjDEAC3RVgUQdI=; b=rx5WvfT9WNJqRF
	Hwzvl1Nv57MYTtEEwreZAR7gR16UULI/zWNugKRI/vl5ZIHil4VdWZmdY4C7LpvZr7cgUmbuREaHr
	G36UkpvFO/OYdfxWcebcV2e2s4SHWg0MQrGwpKz/ty48y5Q29jKN9p8KJIkz84MF0PSKWD1UzhlKA
	FxzPtViMhgSzu+QpC490EG9X7uc2EcCaL+1KzmoYWtBZnIsZ0JCGmRzvHVv1DcSfZdAU9/RsyKsY0
	Bi4sLowzuomjcM9v9ZLyPMCMDs6gn5EteAUt1rgOPc5q4zR443HwyCNDN2o+uhh+0yJyZ9LflQiRW
	vL0jXgPEXpRJmjxvRi1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuT-007IeR-9J; Wed, 12 Oct 2022 08:16:13 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuO-007IYq-0G
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 51AB5B819EB;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B08A0C4FF0A;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=bYQN0YtO3QDxIDiiIbVNgHd6/O2oSORExytwbqbGh7M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Tx0WxBJDYVSw5qJcuh6FjqqAYA1g0eHqBKCFm+Q/fgZOuIeJ5HUAhQNXrlJRKMum7
	 s3kR0u5Ud4cNw0u76CNXNRiVxlg6Fvn3B0fcVtZSBw9qJypNo50nHVKJloK6d7jHiH
	 gngsQiLDYeA6ledF0jXrffNybG2tkQIsd7P1eE0z+/z++myd5ExaqwMfZhhl7jIV2p
	 7gnFBEIJ546JG5F23xd/t7QA0XTSdVzlPl/m/v8obauyu5cKtVyKbeZLS5gyM5SvCa
	 0WCXxaeuwXg7gjWlA20aXQ41a65cN+Nou6unT3fTeY3ylIys0zBB1m+DNHl7Jw4xhj
	 +A4ZdGPKXJmXA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu3-0004or-78; Wed, 12 Oct 2022 10:15:47 +0200
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
Subject: [PATCH v2 12/14] phy: qcom-qmp-combo: drop power-down delay config
Date: Wed, 12 Oct 2022 10:12:39 +0200
Message-Id: <20221012081241.18273-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011608_428148_C24B82E2 
X-CRM114-Status: GOOD (  14.98  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a8e09333072e..82055d3a3536 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -63,8 +63,6 @@
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
-#define POWER_DOWN_DELAY_US_MIN			10
-#define POWER_DOWN_DELAY_US_MAX			11
 
 struct qmp_phy_init_tbl {
 	unsigned int offset;
@@ -860,9 +858,6 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
-	/* power_down delay in usec */
-	int pwrdn_delay_min;
-	int pwrdn_delay_max;
 
 	/* Offset from PCS to PCS_USB region */
 	unsigned int pcs_usb_offset;
@@ -1031,8 +1026,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
@@ -1102,8 +1095,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
@@ -1138,10 +1129,7 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
 
-
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
@@ -1282,8 +1270,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
@@ -2064,7 +2050,7 @@ static int qmp_combo_power_on(struct phy *phy)
 		qmp_combo_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
-		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
+		usleep_range(10, 20);
 
 	if (cfg->type != PHY_TYPE_DP) {
 		/* Pull PHY out of reset state */
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
