Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD10C10F15
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpzht0ptdgm30lNkoBdG3h0C0jJAVk4r7CEPh9nzoG8=; b=iaBmmmka8hn0zs
	tw60NNqZCWfEOieF9jXyCs/xr7i/Q6Myw9Tq/brrc8b+5DV/A5SZfvNXocjP+bmhtjYOGI8LWvDEi
	iF2CaWWzDOCbFBCeWEubrlMqY4M96ZnPJwQRJNv4ECbcf5ymahG37EAMVp/2+vOEgvkV/de3vwpYq
	z7Jq9QAVm1SVajI0rnCfRai0oJzKIqm1E+kW5pArkyK8hjZrQOOe8o+fkH+U8Fhl6UdpM6FEqoRI+
	R+kRc1j49SzXAc47UsIoFNK0uQ5mdEA2XC0NQEEoWaN1fBfvGgcsf6cGqXkBv374O2n07gbrz7PnJ
	vihGay1JW9JrUBMPhlbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6y-00000001TSb-2ymy;
	Tue, 23 Apr 2024 20:51:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN63-00000001Spa-396g
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:38 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-41a1d2a7b81so1445835e9.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905434; x=1714510234; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wg6doAvmwMbN07RQYwiVhFUbCIPMhfuvbRuHOazCfig=;
        b=kXdV8UWONwV/wOnT8ICW89BMov1IjSh7y/Xzc8eTwwosJCDxp0et/Q9GiO99nMXfF9
         ED1spgzkO7kJRz/pH+TzuQt9RbqUXAvp0Kg88Nuh7uxpSe8F4SYA3B1VZbBhyrSPrZU+
         FuP7ZGBtPVhWJ7tbbCxlgH+oqQEirYCag0Zk75gv6WMyjShrL+3AIgOL/vvbfp+bYq9f
         sZH01BhHH/FGm0pAFj+XwK3athVdk4Tr273sy8iQiinFOR+RK8x38cr8tIkjBC3zB0jf
         T1ReodFenCiwQGAKsWw9TfPJiHHtxGlO94l+Rl5VVsZMHf+s1JYiFF6q707iYU5pCfk+
         JvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905434; x=1714510234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wg6doAvmwMbN07RQYwiVhFUbCIPMhfuvbRuHOazCfig=;
        b=UqcFHuPVxBtDUyrDP3zdTWjomnuzRHteVd2B73G83GVNfzR01baP4ONwSpJ+zwo6cI
         GbexlD4YdJn5a3FiJtjDM/rGJPwSMILu1x6V1ll+L4iSyzu0PUl/NrBwRU7iewMM83wD
         SQfdCZ9QB4czBOxFL3B6xuPDFCoL4V9mjuGRR9oj7OTrPvT5NEEhochPYPMyAKp4Yn0V
         ula1h8B8LR8DEVv5sTBZIPX3EITiNSyo+8xg6bFakbGaAan/ylcHWJgkX5fYNfmgp/kY
         rgDZud3FjrwPJPYAqko3k8GdoRjW8paz3yqlM5sCjlnJHvb9B77nWaaGVEQLwRmULLb6
         QxrA==
X-Forwarded-Encrypted: i=1; AJvYcCXlaH64ejPJVcav3zs8Kx/qU/x0zZs3Nvhf6qa/+eDbg+DjpwbyJuCoNTQJhzo2xQCN/ARWi/zmbrk2Ib24QuZZox0YCgNfjCYOYp2FFA==
X-Gm-Message-State: AOJu0Ywq8JLKiRoVOuqw3T4AGRkB+ufmnoGmDA7lJJ42JRJyTcPm1x0Z
	z4BeOA4Xl09R3xUsOaLqPof3jLgLTq0Wz7ioIbDxAyrQkRutvNlHlVRz7EsBx2Y=
X-Google-Smtp-Source: AGHT+IHpTD8Cr6M+2NTSC2u68tqVshhxaSxl/CWxXXjFa2PJ/gU0r5d93Exaf3DmIOCu8zZKCPtSxA==
X-Received: by 2002:a05:600c:4f06:b0:418:d3f4:677b with SMTP id l6-20020a05600c4f0600b00418d3f4677bmr347958wmq.17.1713905433802;
        Tue, 23 Apr 2024 13:50:33 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:33 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 11/14] scsi: ufs: host: ufs-exynos: add some pa_dbg_ register offsets into drvdata
Date: Tue, 23 Apr 2024 21:50:03 +0100
Message-ID: <20240423205006.1785138-12-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135035_976718_94AFBCCB 
X-CRM114-Status: GOOD (  13.12  )
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

This allows these registers to be at different offsets or not
exist at all on some SoCs variants.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested-by: Will McVicker <willmcvicker@google.com>
---
 drivers/ufs/host/ufs-exynos.c | 38 ++++++++++++++++++++++++-----------
 drivers/ufs/host/ufs-exynos.h |  6 +++++-
 2 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 66093a905986..c086630a96e8 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -308,8 +308,9 @@ static int exynosauto_ufs_post_pwr_change(struct exynos_ufs *ufs,
 
 static int exynos7_ufs_pre_link(struct exynos_ufs *ufs)
 {
+	struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
+	u32 val = attr->pa_dbg_opt_suite1_val;
 	struct ufs_hba *hba = ufs->hba;
-	u32 val = ufs->drv_data->uic_attr->pa_dbg_option_suite;
 	int i;
 
 	exynos_ufs_enable_ov_tm(hba);
@@ -326,12 +327,13 @@ static int exynos7_ufs_pre_link(struct exynos_ufs *ufs)
 			UIC_ARG_MIB_SEL(TX_HIBERN8_CONTROL, i), 0x0);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_TXPHY_CFGUPDT), 0x1);
 	udelay(1);
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE), val | (1 << 12));
+	ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off),
+					val | (1 << 12));
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_SKIP_RESET_PHY), 0x1);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_SKIP_LINE_RESET), 0x1);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_LINE_RESET_REQ), 0x1);
 	udelay(1600);
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE), val);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off), val);
 
 	return 0;
 }
@@ -923,14 +925,19 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
 
 static void exynos_ufs_config_unipro(struct exynos_ufs *ufs)
 {
+	struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
 	struct ufs_hba *hba = ufs->hba;
 
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_CLK_PERIOD),
-		DIV_ROUND_UP(NSEC_PER_SEC, ufs->mclk_rate));
+	if (attr->pa_dbg_clk_period_off)
+		ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_clk_period_off),
+			       DIV_ROUND_UP(NSEC_PER_SEC, ufs->mclk_rate));
+
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TXTRAILINGCLOCKS),
 			ufs->drv_data->uic_attr->tx_trailingclks);
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE),
-			ufs->drv_data->uic_attr->pa_dbg_option_suite);
+
+	if (attr->pa_dbg_opt_suite1_off)
+		ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off),
+			       attr->pa_dbg_opt_suite1_val);
 }
 
 static void exynos_ufs_config_intr(struct exynos_ufs *ufs, u32 errs, u8 index)
@@ -1488,10 +1495,11 @@ static int exynosauto_ufs_vh_init(struct ufs_hba *hba)
 
 static int fsd_ufs_pre_link(struct exynos_ufs *ufs)
 {
-	int i;
+	struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
 	struct ufs_hba *hba = ufs->hba;
+	int i;
 
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_CLK_PERIOD),
+	ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_clk_period_off),
 		       DIV_ROUND_UP(NSEC_PER_SEC,  ufs->mclk_rate));
 	ufshcd_dme_set(hba, UIC_ARG_MIB(0x201), 0x12);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(0x200), 0x40);
@@ -1515,7 +1523,9 @@ static int fsd_ufs_pre_link(struct exynos_ufs *ufs)
 
 	ufshcd_dme_set(hba, UIC_ARG_MIB(0x200), 0x0);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_AUTOMODE_THLD), 0x4E20);
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE), 0x2e820183);
+
+	ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off),
+		       0x2e820183);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0x0);
 
 	exynos_ufs_establish_connt(ufs);
@@ -1651,7 +1661,9 @@ static struct exynos_ufs_uic_attr exynos7_uic_attr = {
 	.rx_hs_g1_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g2_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g3_prep_sync_len_cap	= PREP_LEN(0xf),
-	.pa_dbg_option_suite		= 0x30103,
+	.pa_dbg_clk_period_off		= PA_DBG_CLK_PERIOD,
+	.pa_dbg_opt_suite1_val		= 0x30103,
+	.pa_dbg_opt_suite1_off		= PA_DBG_OPTION_SUITE,
 };
 
 static const struct exynos_ufs_drv_data exynosauto_ufs_drvs = {
@@ -1725,7 +1737,9 @@ static struct exynos_ufs_uic_attr fsd_uic_attr = {
 	.rx_hs_g1_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g2_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g3_prep_sync_len_cap	= PREP_LEN(0xf),
-	.pa_dbg_option_suite		= 0x2E820183,
+	.pa_dbg_clk_period_off		= PA_DBG_CLK_PERIOD,
+	.pa_dbg_opt_suite1_val		= 0x2E820183,
+	.pa_dbg_opt_suite1_off		= PA_DBG_OPTION_SUITE,
 };
 
 static const struct exynos_ufs_drv_data fsd_ufs_drvs = {
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index 7acc13914100..f30423223474 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -145,7 +145,11 @@ struct exynos_ufs_uic_attr {
 	/* Common Attributes */
 	unsigned int cmn_pwm_clk_ctrl;
 	/* Internal Attributes */
-	unsigned int pa_dbg_option_suite;
+	unsigned int pa_dbg_clk_period_off;
+	unsigned int pa_dbg_opt_suite1_val;
+	unsigned int pa_dbg_opt_suite1_off;
+	unsigned int pa_dbg_opt_suite2_val;
+	unsigned int pa_dbg_opt_suite2_off;
 	/* Changeable Attributes */
 	unsigned int rx_adv_fine_gran_sup_en;
 	unsigned int rx_adv_fine_gran_step;
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
