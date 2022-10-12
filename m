Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16156C4167B
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ukGxjJaIw9EPjG3Ut3jTwbc0kxx+I5Ro/K5kXjyQ1g=; b=2NQCNh+RzriodG
	PJg1I/l7o2D+QeX25C90bQahJ2LFtmS9IpMWnS1iA2bQq0EWdj6AVq57fm4Sf/0aslKPEWZ+Ou1jP
	LlHzl4UD49mQDVJR2Ol/vMAKPJX2IgYSmD+IKU/AAqzOPmLCTmB5Aw/3iDL+woHpBf37m1tiA+kV9
	5y3X8N4L7gUUUCJpY6hePDOYBGQS60zBlmEKlyEHNsDqZcavUmdmKegVthQ2mklMrw0fyzu3A6Xhy
	4mrDSw/uT7z5GLa27qw2eJ2Il6kVeR+Rnxl5ricXf223SHhdzSaizyMxJpILgOUoCUOiCGxM1r/gY
	IfgxqchIxtWwW151UV8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuU-007If7-DC; Wed, 12 Oct 2022 08:16:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuN-007IYn-UN
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6F1B2B819C8;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5A69C4FF0B;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=nTh2lwlRgXzKhugVBnE4PFdAg98XwlPj4nCwR3AOzzE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V26VyxmGvzJtCCfXWYvJQZ202ubdjNhF3A6hQUIgfrcSuYzCZXvUSWJrxWm7aTaqW
	 jabUc3iCA1i31uOrLoAxVoOknyaKLEs3FiMzhqNPVpUASSNT9o+UUH46bwR4B/qqxL
	 xbl8hasI32R4ncgkYzx8TZK20vSsmbS3Mt3yG330M9rv3TjVEuTY4V64fz3ygfjQtK
	 NhAZGus73/H49RS3AD+foR+btnqcSbdoONdSxFaqFVFaVW4eZLwODWlhZ5yKJd8DmP
	 Ten5QREBwpblP2wovvm14eK777eJiUn3I+J0ip0BPXez/0Q8KA1/HshxsshvBrMU5Z
	 SR87MmT6vmktg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu3-0004ox-Cb; Wed, 12 Oct 2022 10:15:47 +0200
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
Subject: [PATCH v2 14/14] phy: qcom-qmp-usb: drop power-down delay config
Date: Wed, 12 Oct 2022 10:12:41 +0200
Message-Id: <20221012081241.18273-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011608_359730_890559B4 
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 35 +------------------------
 1 file changed, 1 insertion(+), 34 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 57dda1ecefe6..751f628710eb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -63,8 +63,6 @@
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
-#define POWER_DOWN_DELAY_US_MIN			10
-#define POWER_DOWN_DELAY_US_MAX			11
 
 struct qmp_phy_init_tbl {
 	unsigned int offset;
@@ -1452,9 +1450,6 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
-	/* power_down delay in usec */
-	int pwrdn_delay_min;
-	int pwrdn_delay_max;
 
 	/* true, if PHY has a separate DP_COM control block */
 	bool has_phy_dp_com_ctrl;
@@ -1660,9 +1655,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
 	.has_phy_dp_com_ctrl	= true,
 };
 
@@ -1690,9 +1682,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
 	.has_phy_dp_com_ctrl	= true,
 };
 
@@ -1744,8 +1733,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
@@ -1798,11 +1785,7 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
 
-
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
 	.has_phy_dp_com_ctrl	= true,
 };
 
@@ -1833,8 +1816,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
@@ -1864,9 +1845,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
 	.has_phy_dp_com_ctrl	= true,
 };
 
@@ -1897,8 +1875,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
@@ -1928,8 +1904,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
@@ -1959,8 +1933,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
@@ -1990,9 +1962,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
 	.has_phy_dp_com_ctrl	= true,
 };
 
@@ -2023,8 +1992,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.phy_status		= PHYSTATUS,
 
 	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
@@ -2205,7 +2172,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
-		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
+		usleep_range(10, 20);
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
