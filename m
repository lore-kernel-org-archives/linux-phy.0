Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E62DCCD1299
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8lAfDhUKyn3rxHlpV9qdW282QdTzqrEgb4xEMB/eGo=; b=37VZkltpH8xFx8
	VPJe6xZvB+fWXlMzfKK0m42Dr/saF/bbUm5E9n3eTm9I5Z1U/4YabnaVmmmwG5eWnFRc7sNHZywXc
	RSbMVhAIUiYFVKEqsH5Eot80GL6GcRViSJf165ZrJaDX79iH/5O5lafUISYMrV4WLGt8zcBYjFbr4
	N2TTYQg5Nyh13X0rt07jouN0o6FwhCIELpLdt1wrlF6iIi/XFJ+5Dd3aXk7nB1JR0TTnrM29QHU88
	U3Ux0LXDIbNYDUHsOEW4x0lk0ur1GQcFL7nCbrI2J63dfPFs6cjMmcaVsP5YDNHHzlbNwBA2/bofi
	45MEB6Pg5GWDDHlDtTgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEm-00000002pLt-0TOO;
	Thu, 04 Apr 2024 13:34:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMC2-00000002bTS-2nMP
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9BAojM4xoHm2Ccy99OQ74TIvmgE7hETV2sx3J0iKu4Q=; b=rT9xWtrb+53jSlhvzRheuMwEv8
	gcl9iRbzfJvN1ozPQZF3sRV/Ikx+FiMizLt6RkZyXt1wjPJq+jPlypCEr2chs0jmR/qTT3wAbulqJ
	fIPRhW5L8Gcj6UsRbed/S4XzRUiwUqZbB6fqmbSEXIlwobovrAhiAtOs7tEGlmmmun18C9DluPW8d
	Y22U66Y18J3aTgvwM5EK5WBzI7RnnFdfbuqY6a2gBw5wh2Dbb254KZzoN5RgBuPrfZdf6K+AfKmds
	idRMMhyyuviVtW3W+E1qn8W8TkIXeRKPtb2puB7hiSodooaQUkb9v5ztdStHaDG6WF5qO7ok1cpY6
	eO3kiNoQ==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBx-000000052Kx-1QRp
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:45 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-516d0162fa1so474959e87.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233659; x=1712838459; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9BAojM4xoHm2Ccy99OQ74TIvmgE7hETV2sx3J0iKu4Q=;
        b=RH+bZCHbFxWZg5fBNc59LskkTk/3SeMgVGiUu3vyM9JyyZ/MlIBGLe+t6yP1ToM28T
         HmG8AhNX7S5hJwBv4AoLPy7PXD6erlkbxJw6K4mn20v0Ci08dFpKje87bOLeKTPv3CRj
         JRvDPx11HZx4WU58m6EeTb6n7XYy3XZwhypioA2AOqptXn48fJlqD1Jw9xKeV2AQpaRi
         RqUpz2h+2TmQ1knLI5EG5+ieywhC6uQJhJXD0ccMsa/g3w4g1A9Uwj2cWL28UjWbiyo5
         3b1XovyJ4FdR4ir5Yi2Fq6ASL6FYbI86Blk6nDXed63Zica0G/gxc8k9Yw4mEPztJs9j
         EYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233659; x=1712838459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9BAojM4xoHm2Ccy99OQ74TIvmgE7hETV2sx3J0iKu4Q=;
        b=AuzXySEqXK/aVsIzbZVvvIAE/dsKPDem7GHVy3zjy0LsUcpTwrTFHG2TEXaSwjuEOL
         +YOeVwt4Y5e6qD8rpsPKX7OifzNqUWWFjVOeBab6y+sxO/c0yLv4JovJQ7o15ApP+k59
         rpiYNoJMD2lp2pOFNA955QmWQSZC7ceIKyX/Xw19Jazmv/WU1GZQwTicjzzx9il1Husj
         V6mRtdqc+1jErxg0qiV5f9WhydTX66yhpvm05mhwoFW+XfOnWctgWp7QD09QmZxfrDea
         wl65sgevXqRC+A5E6Sf2gK1Tc4KXSuUbG7XeBIfzSbN+wF9DPWK0Tpoqbtm0ZwMqXe5O
         SaOA==
X-Forwarded-Encrypted: i=1; AJvYcCXVpAc5tTs8E9m03YdLLBLpXxkNuVGcpBT/SYXXkR3AvCpjzoyJwA0WRenYEQrt0Hpuis8SZ/E3AptdwekP6gWyn1XpYYI7b4LVJM/xGg==
X-Gm-Message-State: AOJu0YwyWvn8LU/kJMphQA7sIdCY0OLgvpj75kAYz9OjMGGiDxo/tGSX
	1whMkHpmHoF0T+7DJhdkJ1n3A0HYuorn/K9p+KZW1cxDGdsnB85IWOGsXmiLRDY=
X-Google-Smtp-Source: AGHT+IFWRg92YYObkcM0WI/QjuIq7kZXN3Mzv35q9+lvmiNw5458eaH5o7p1h5LYypdyPkvX2i3ypg==
X-Received: by 2002:ac2:5233:0:b0:516:26cd:da71 with SMTP id i19-20020ac25233000000b0051626cdda71mr1865615lfl.3.1712233658831;
        Thu, 04 Apr 2024 05:27:38 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:38 -0700 (PDT)
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
Subject: [PATCH 15/17] scsi: ufs: host: ufs-exynos: add some pa_dbg_ register offsets into drvdata
Date: Thu,  4 Apr 2024 13:25:57 +0100
Message-ID: <20240404122559.898930-16-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132743_415788_64713566 
X-CRM114-Status: GOOD (  12.90  )
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
---
 drivers/ufs/host/ufs-exynos.c | 38 ++++++++++++++++++++++++-----------
 drivers/ufs/host/ufs-exynos.h |  6 +++++-
 2 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 1bfda9c75703..065258203836 100644
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
@@ -1486,10 +1493,11 @@ static int exynosauto_ufs_vh_init(struct ufs_hba *hba)
 
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
@@ -1513,7 +1521,9 @@ static int fsd_ufs_pre_link(struct exynos_ufs *ufs)
 
 	ufshcd_dme_set(hba, UIC_ARG_MIB(0x200), 0x0);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_AUTOMODE_THLD), 0x4E20);
-	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE), 0x2e820183);
+
+	ufshcd_dme_set(hba, UIC_ARG_MIB(attr->pa_dbg_opt_suite1_off),
+		       0x2e820183);
 	ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0x0);
 
 	exynos_ufs_establish_connt(ufs);
@@ -1655,7 +1665,9 @@ static struct exynos_ufs_uic_attr exynos7_uic_attr = {
 	.rx_hs_g1_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g2_prep_sync_len_cap	= PREP_LEN(0xf),
 	.rx_hs_g3_prep_sync_len_cap	= PREP_LEN(0xf),
-	.pa_dbg_option_suite		= 0x30103,
+	.pa_dbg_clk_period_off		= PA_DBG_CLK_PERIOD,
+	.pa_dbg_opt_suite1_val		= 0x30103,
+	.pa_dbg_opt_suite1_off		= PA_DBG_OPTION_SUITE,
 };
 
 static const struct exynos_ufs_drv_data exynosauto_ufs_drvs = {
@@ -1729,7 +1741,9 @@ static struct exynos_ufs_uic_attr fsd_uic_attr = {
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
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
