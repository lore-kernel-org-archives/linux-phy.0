Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC0FCCD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79pOQeJk49C2GRO8sqU1+mO7JvlZKskyOW7UJQGSsu4=; b=Pfn65sKjWtukOa
	5Tg3Sa+7rQuBnVzV1EZsp9i7v2qQxeZfdNKkEVTR8hVk3hsyUmiHud+WCms6kIOiT526/UfdnOJ89
	HmXUbPWOR/pkh6POfwQ3VW15KbmdQJ+cDKgajp1lUl/XdYQeI/16exNkIF7HoJTrYLVSFNfaRDQs4
	P934jHiTHE7r6txxwL9K7tH4vhRZFQXlo8ac6okR5/8FeDmPBpmWKmuWiRpwVGZkNUeuFpDFApiGM
	Ov6o3SsSbefvxVMeYilAZK8FZ5QQhpW+TeUZXb4oTPrLM/Ph2rurmMBUVZJqy94E5AsqMbMmxCYqZ
	7QYMAfhXWAPSPjdVvH2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEo-00000002pO0-1Ufx;
	Thu, 04 Apr 2024 13:34:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMCA-00000002bYJ-46Ww
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nulPP/bnW9gjSaGFikM9U9ezRPOINd4ZklcGR1nnNMI=; b=HxfpTv8P4DLP/ghH9VqvUgt2x8
	pMnMc+X59YwBj1eUzBQljh3xxYEO7ZrE3MK5Pn6I1VXtmgY9Y0VclZDPER4x3/pRV3aP72COXYAcL
	rA6q3proS/wISzlGWOY6HHF/3sgSHRnoDAMT2Wx6/R2haRjqBYvFdgENZl7HvKC5MvUyQvMyGT4iD
	Spx9BtvJF3ZTBf51qgFIS1a2YGmYZ0AVB7qcGnef0mc7YY7lf95DFqYZpJllTyiCHnuvNV7A5DW7s
	YImgumu/BMeGwouw0k8YRprdTcCddODB7aExyQS4UQmxDfv2NVLK3QLkroqML5jVtRQbQHN5yOPQ4
	HD7/hDgQ==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMC2-000000052Lw-3D1m
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:52 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-34005b5927eso597720f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233665; x=1712838465; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nulPP/bnW9gjSaGFikM9U9ezRPOINd4ZklcGR1nnNMI=;
        b=hugllJBzy4uNTC4G5L5i7wladWQgpHrYj4vFXyRjzdV8f4atorD2qksLp8DdO7GFCt
         bQIoQbJcsg1Rn1wd/Jlrn3UTnne6cb2hB/InnRngeyYcnrxXNgHaA2S0N9tISINnFYx4
         NjTXfwvfjUYbZEN/l1ybyOLuGCxUpHJRIHoD3tDAiu+6HifEp0c5k9pwVYVrA3g6Civj
         cbvFSrJTTdtih2aY3pMk0Rcf7TSknfHVbNj7rrqQIKAJx6wQ88IpnWnNxcyX3QnzAJrS
         QiS0BENjoucfrA2xjIpct8YZklwdb1DsAkFzF0cAKkIToM14G+sInY1nSWw1ERav9Tzc
         C8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233665; x=1712838465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nulPP/bnW9gjSaGFikM9U9ezRPOINd4ZklcGR1nnNMI=;
        b=R8hhhSRG8utW1OQpQ6hVP1cXlGyX6xJ5utkKf0vAsDOkqELetSk8Yr8Vz0FPO43SoX
         +UoBPfJsAQUsDyefUfKvfiNsqTa/mEQWGtnq5YbmN4Ce/eyHPn75TIIps2w6uf+6xwZI
         1ULVL6Hoc99rT03n+/iYROYyRk8PKMW4+U3lEDWOTcfuDXIaAcR6n/Me7AJPCJLTGfqX
         kVJOIjqhTCQKJkFtBUCu1jRGwmMke1LfbGbnso/Swer8KuvmbmTRTRH+tzM3iohbJNAJ
         OH5u9R1Mr+FbpfzSEP6kBqea03qjs+dnsB35zHTXsOEJ7/v3yb+suETXK1AdRw0NYtQ9
         KuZw==
X-Forwarded-Encrypted: i=1; AJvYcCVPAmSq/sa5N3JRo0lkSAWksy3ggktNdacmoYCGZv7Qs6eNzVdEIxggcLuIs5bLorLzSiu1bdlq5L3GkjRQO+Rt99bCSh7Erp1KnIkX5g==
X-Gm-Message-State: AOJu0YwpVQog3KIfzdY+x6T2p0MLs9ipE0jLMES0yMdVcbi98wSG/jCz
	4rwwSzEwRXJpUQA9fUQxxPQORD6d0CYJnaqGX2zR5qJn3nt6h+hOHLS6vKnr3PI=
X-Google-Smtp-Source: AGHT+IGtWWF7hHJ80R25mFCTJapY8yJWNz1hDpaBVAMpUm4GYqvrKlnXOTQN4iMPv2vCohiwhDzIpQ==
X-Received: by 2002:a5d:6542:0:b0:33e:72f4:d6b5 with SMTP id z2-20020a5d6542000000b0033e72f4d6b5mr1690088wrv.66.1712233664985;
        Thu, 04 Apr 2024 05:27:44 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:44 -0700 (PDT)
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
	chanho61.park@samsung.com,
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
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 16/17] scsi: ufs: host: ufs-exynos: Add support for Tensor gs101 SoC
Date: Thu,  4 Apr 2024 13:25:58 +0100
Message-ID: <20240404122559.898930-17-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132747_274718_8FD8AA65 
X-CRM114-Status: GOOD (  17.43  )
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

Add a dedicated compatible and drv_data with associated
hooks for gs101 SoC found on Pixel 6.

Note we make use of the previously added EXYNOS_UFS_OPT_UFSPR_SECURE
option, to skip initialisation of UFSPR registers as these are only
accessible via SMC call.

EXYNOS_UFS_OPT_TIMER_TICK_SELECT option is also set to select tick
source. This has been done so as not to effect any existing platforms.

DBG_OPTION_SUITE on gs101 has different address offsets to other SoCs
so these register offsets now come from uic_attr struct.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 146 ++++++++++++++++++++++++++++++++++
 drivers/ufs/host/ufs-exynos.h |  14 ++++
 2 files changed, 160 insertions(+)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 065258203836..f3f6219f0920 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -61,6 +61,7 @@
 #define CLK_STOP_MASK		(REFCLKOUT_STOP | REFCLK_STOP |\
 				 UNIPRO_MCLK_STOP | MPHY_APBCLK_STOP|\
 				 UNIPRO_PCLK_STOP)
+/* HCI_MISC is also known as HCI_FORCE_HCS */
 #define HCI_MISC		0xB4
 #define REFCLK_CTRL_EN		BIT(7)
 #define UNIPRO_PCLK_CTRL_EN	BIT(6)
@@ -138,6 +139,9 @@ enum {
 /*
  * UNIPRO registers
  */
+#define UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER0	0x7888
+#define UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER1	0x788c
+#define UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER2	0x7890
 #define UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER0	0x78B8
 #define UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER1	0x78BC
 #define UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER2	0x78C0
@@ -938,6 +942,10 @@ static void exynos_ufs_config_unipro(struct exynos_ufs *ufs)
 	if (attr->pa_dbg_opt_suite1_off)
 		ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off),
 			       attr->pa_dbg_opt_suite1_val);
+
+	if (attr->pa_dbg_opt_suite2_off)
+		ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite2_off),
+			       attr->pa_dbg_opt_suite2_val);
 }
 
 static void exynos_ufs_config_intr(struct exynos_ufs *ufs, u32 errs, u8 index)
@@ -1592,6 +1600,96 @@ static int fsd_ufs_pre_pwr_change(struct exynos_ufs *ufs,
 	return 0;
 }
 
+static inline u32 get_mclk_period_unipro_18(struct exynos_ufs *ufs)
+{
+	return (16 * 1000 * 1000000UL / ufs->mclk_rate);
+}
+
+static int gs101_ufs_pre_link(struct exynos_ufs *ufs)
+{
+	struct ufs_hba *hba = ufs->hba;
+	int i;
+	u32 tx_line_reset_period, rx_line_reset_period;
+
+	rx_line_reset_period = (RX_LINE_RESET_TIME * ufs->mclk_rate)
+				/ NSEC_PER_MSEC;
+	tx_line_reset_period = (TX_LINE_RESET_TIME * ufs->mclk_rate)
+				/ NSEC_PER_MSEC;
+
+	unipro_writel(ufs, get_mclk_period_unipro_18(ufs), COMP_CLK_PERIOD);
+
+	ufshcd_dme_set(hba, UIC_ARG_MIB(0x200), 0x40);
+
+	for_each_ufs_rx_lane(ufs, i) {
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_CLK_PRD, i),
+			       DIV_ROUND_UP(NSEC_PER_SEC, ufs->mclk_rate));
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_CLK_PRD_EN, i), 0x0);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_LINERESET_VALUE2, i),
+			       (rx_line_reset_period >> 16) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_LINERESET_VALUE1, i),
+			       (rx_line_reset_period >> 8) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_LINERESET_VALUE0, i),
+			       (rx_line_reset_period) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x2f, i), 0x69);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x84, i), 0x1);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x25, i), 0xf6);
+	}
+
+	for_each_ufs_tx_lane(ufs, i) {
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_TX_CLK_PRD, i),
+			       DIV_ROUND_UP(NSEC_PER_SEC, ufs->mclk_rate));
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_TX_CLK_PRD_EN, i),
+			       0x02);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_TX_LINERESET_PVALUE2, i),
+			       (tx_line_reset_period >> 16) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_TX_LINERESET_PVALUE1, i),
+			       (tx_line_reset_period >> 8) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_TX_LINERESET_PVALUE0, i),
+			       (tx_line_reset_period) & 0xFF);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x04, i), 1);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x7F, i), 0);
+	}
+
+	ufshcd_dme_set(hba, UIC_ARG_MIB(0x200), 0x0);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0x0);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(N_DEVICEID), 0x0);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(N_DEVICEID_VALID), 0x1);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(T_PEERDEVICEID), 0x1);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(T_CONNECTIONSTATE), CPORT_CONNECTED);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(0xA006), 0x8000);
+
+	return 0;
+}
+
+static int gs101_ufs_post_link(struct exynos_ufs *ufs)
+{
+	struct ufs_hba *hba = ufs->hba;
+
+	exynos_ufs_enable_dbg_mode(hba);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_SAVECONFIGTIME), 0x3e8);
+	exynos_ufs_disable_dbg_mode(hba);
+
+	return 0;
+}
+
+static int gs101_ufs_pre_pwr_change(struct exynos_ufs *ufs,
+					 struct ufs_pa_layer_attr *pwr)
+{
+	struct ufs_hba *hba = ufs->hba;
+
+	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_PWRMODEUSERDATA0), 12000);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_PWRMODEUSERDATA1), 32000);
+	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_PWRMODEUSERDATA2), 16000);
+	unipro_writel(ufs, 8064, UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER0);
+	unipro_writel(ufs, 28224, UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER1);
+	unipro_writel(ufs, 20160, UNIPRO_DME_POWERMODE_REQ_LOCALL2TIMER2);
+	unipro_writel(ufs, 12000, UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER0);
+	unipro_writel(ufs, 32000, UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER1);
+	unipro_writel(ufs, 16000, UNIPRO_DME_POWERMODE_REQ_REMOTEL2TIMER2);
+
+	return 0;
+}
+
 static const struct ufs_hba_variant_ops ufs_hba_exynos_ops = {
 	.name				= "exynos_ufs",
 	.init				= exynos_ufs_init,
@@ -1719,6 +1817,34 @@ static const struct exynos_ufs_drv_data exynos_ufs_drvs = {
 	.post_pwr_change	= exynos7_ufs_post_pwr_change,
 };
 
+static struct exynos_ufs_uic_attr gs101_uic_attr = {
+	.tx_trailingclks		= 0xff,
+	.tx_dif_p_nsec			= 3000000,	/* unit: ns */
+	.tx_dif_n_nsec			= 1000000,	/* unit: ns */
+	.tx_high_z_cnt_nsec		= 20000,	/* unit: ns */
+	.tx_base_unit_nsec		= 100000,	/* unit: ns */
+	.tx_gran_unit_nsec		= 4000,		/* unit: ns */
+	.tx_sleep_cnt			= 1000,		/* unit: ns */
+	.tx_min_activatetime		= 0xa,
+	.rx_filler_enable		= 0x2,
+	.rx_dif_p_nsec			= 1000000,	/* unit: ns */
+	.rx_hibern8_wait_nsec		= 4000000,	/* unit: ns */
+	.rx_base_unit_nsec		= 100000,	/* unit: ns */
+	.rx_gran_unit_nsec		= 4000,		/* unit: ns */
+	.rx_sleep_cnt			= 1280,		/* unit: ns */
+	.rx_stall_cnt			= 320,		/* unit: ns */
+	.rx_hs_g1_sync_len_cap		= SYNC_LEN_COARSE(0xf),
+	.rx_hs_g2_sync_len_cap		= SYNC_LEN_COARSE(0xf),
+	.rx_hs_g3_sync_len_cap		= SYNC_LEN_COARSE(0xf),
+	.rx_hs_g1_prep_sync_len_cap	= PREP_LEN(0xf),
+	.rx_hs_g2_prep_sync_len_cap	= PREP_LEN(0xf),
+	.rx_hs_g3_prep_sync_len_cap	= PREP_LEN(0xf),
+	.pa_dbg_opt_suite1_val		= 0x90913C1C,
+	.pa_dbg_opt_suite1_off		= PA_GS101_DBG_OPTION_SUITE1,
+	.pa_dbg_opt_suite2_val		= 0xE01C115F,
+	.pa_dbg_opt_suite2_off		= PA_GS101_DBG_OPTION_SUITE2,
+};
+
 static struct exynos_ufs_uic_attr fsd_uic_attr = {
 	.tx_trailingclks		= 0x10,
 	.tx_dif_p_nsec			= 3000000,	/* unit: ns */
@@ -1762,7 +1888,27 @@ static const struct exynos_ufs_drv_data fsd_ufs_drvs = {
 	.pre_pwr_change         = fsd_ufs_pre_pwr_change,
 };
 
+static const struct exynos_ufs_drv_data gs101_ufs_drvs = {
+	.uic_attr		= &gs101_uic_attr,
+	.quirks			= UFSHCD_QUIRK_PRDT_BYTE_GRAN |
+				  UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR |
+				  UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR |
+				  UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR |
+				  UFSHCI_QUIRK_SKIP_MANUAL_WB_FLUSH_CTRL |
+				  UFSHCD_QUIRK_SKIP_DEF_UNIPRO_TIMEOUT_SETTING,
+	.opts			= EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL |
+				  EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR |
+				  EXYNOS_UFS_OPT_UFSPR_SECURE |
+				  EXYNOS_UFS_OPT_TIMER_TICK_SELECT,
+	.drv_init		= exynosauto_ufs_drv_init,
+	.pre_link		= gs101_ufs_pre_link,
+	.post_link		= gs101_ufs_post_link,
+	.pre_pwr_change		= gs101_ufs_pre_pwr_change,
+};
+
 static const struct of_device_id exynos_ufs_of_match[] = {
+	{ .compatible = "google,gs101-ufs",
+	  .data	      = &gs101_ufs_drvs },
 	{ .compatible = "samsung,exynos7-ufs",
 	  .data	      = &exynos_ufs_drvs },
 	{ .compatible = "samsung,exynosautov9-ufs",
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index f30423223474..1646c4a9bb08 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -9,6 +9,12 @@
 #ifndef _UFS_EXYNOS_H_
 #define _UFS_EXYNOS_H_
 
+/*
+ * Component registers
+ */
+
+#define COMP_CLK_PERIOD	0x44
+
 /*
  * UNIPRO registers
  */
@@ -29,6 +35,14 @@
 #define PA_DBG_OPTION_SUITE	0x9564
 #define PA_DBG_OPTION_SUITE_DYN	0x9565
 
+/*
+ * Note: GS101_DBG_OPTION offsets below differ from the TRM
+ * but match the downstream driver. Following the TRM
+ * results in non-functioning UFS.
+ */
+#define PA_GS101_DBG_OPTION_SUITE1 0x956a
+#define PA_GS101_DBG_OPTION_SUITE2 0x956d
+
 /*
  * MIBs for Transport Layer debug registers
  */
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
