Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 224ADC43217
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJnGg43twSyAmxAm6GhpM6EzF9KPKfd1o/KiFOlRO7Q=; b=b8GVOK9LkgxiKJ
	RIGKliGa70ppVg49Stbk2FqMrKniFCf0aQnV4frZPAUqTgiH7V+8lNV2f/74Z5ggblTWiO/WLqHw5
	QSXLtRoSUHO89HiR8/0hB/cKam6vjkoPE/rXqn2YQ97DmMxSZjPV0PH5mrZJ5uPQcThHQwG3VLGXS
	q3U6UCTIEEVg8usUmGtnE0FJkIqzZTm7QsfMciNl74xeM1lVQONgOueTiudrnvOFkTHtbJvpl9RcO
	7cPL/cfCq66UkuFlbZtcOCtDUmsCIDVwqPlFcMyy1H9W2fgZuQPY/SDBbyjfAyfn12jMdZuoaRGCZ
	EoryLkAk+CwlYJ9zqbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nms-009Kes-53; Thu, 01 Dec 2022 17:55:54 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nd9-009AM4-Ko
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:53 +0000
Received: by mail-pf1-x430.google.com with SMTP id w2so1022627pfq.12
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+a+h42fy9GjOTea32LS7GN+oEWTDG5o4oBP56ao/Mw=;
        b=AX4O85ALoJesLtLqBEOg/DhUkKKW3meVzBnuog7JrhO/MhGJLQp9AMhmcA10OMeMjI
         Unv28eUYRvrOj2Zz25LNnYU0ZbvfT40/O7M4PxhOVZTm7/Gk3VTA8/E1i4k4HpdCnD7U
         UbmJ675Zdls+aoS87D7gKCDK5bgnyKL6i2v6wTlTeJYfGWVtJs59psQrwMw+7Cdbsq4g
         koXjyn82aCADRUU6CAo+QdJ64YSa5X0u9MVXyVcJktKSY8I3CbotELyrtVHYv+JOduy6
         eWld9PvRjbMKxAuqJlB2ly0Giee8PVaVbEqvqsXfD21mczNFNsa6Apu9jRPlJzHV2hE1
         /7Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i+a+h42fy9GjOTea32LS7GN+oEWTDG5o4oBP56ao/Mw=;
        b=zC4mNTokfeLypWlcifgAa8J0O6JF8Y7A/res8JEAZTwaivmw3pu+8RLLyFyDNG372Z
         hzM+xZB5aniSBSwOz45EdatFJwKULcO/5K8W3K5dxOaSriOHXdlkEbxCHpIeqV5Uk+31
         zPrk4VMotwhPNNm5PWBX2cpUsPP4f9h4rXsRplU0/x96PVPXSBf+H6Hv1Wzes6qBLxSP
         sdad6vRnOoBd1PEYvdlNGXXUDhVrVtkjQeCI9DB7L8rHmcBRCy72REr/Us2SNPaM6KJB
         xZzoOMCG33bm0pISm9K4NcU3WMhsIBj20NZa1Zlm4DwFOUXUi81JMZ+BaNoT5zd6cqPt
         e96A==
X-Gm-Message-State: ANoB5pnmgVoUi61u2wNmtsSGwHwNb0Nf5xxUH4y+F5vQJ583csMUxlVF
	G/atXkKr3FE6dyL/M7GFVoot
X-Google-Smtp-Source: AA0mqf5Zsy96QHugifWJdaVWtT7tWpYRjhZ2KaWZb7Q9QMiTO3davOp+yFJQRm/lDG+Qw/6itKYwAg==
X-Received: by 2002:a05:6a00:1391:b0:575:eaa:c28c with SMTP id t17-20020a056a00139100b005750eaac28cmr23788242pfg.76.1669916751018;
        Thu, 01 Dec 2022 09:45:51 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:50 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 19/23] scsi: ufs: core: Add support for reinitializing the UFS device
Date: Thu,  1 Dec 2022 23:13:24 +0530
Message-Id: <20221201174328.870152-20-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094551_718153_32D9FA25 
X-CRM114-Status: GOOD (  18.50  )
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

Some platforms like Qcom, requires the UFS device to be reinitialized
after switching to maximum gear speed. So add support for that in UFS
core by introducing a new quirk (UFSHCD_CAP_REINIT_AFTER_MAX_GEAR_SWITCH)
and doing the reinitialization, if the quirk is enabled by the controller
driver.

Suggested-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/core/ufshcd.c | 63 +++++++++++++++++++++++++++++----------
 include/ufs/ufshcd.h      |  6 ++++
 2 files changed, 53 insertions(+), 16 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index e18c9f4463ec..55714accdfd4 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -8153,27 +8153,18 @@ static int ufshcd_add_lus(struct ufs_hba *hba)
 	return ret;
 }
 
-/**
- * ufshcd_probe_hba - probe hba to detect device and initialize it
- * @hba: per-adapter instance
- * @init_dev_params: whether or not to call ufshcd_device_params_init().
- *
- * Execute link-startup and verify device initialization
- */
-static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
+static int ufshcd_device_init(struct ufs_hba *hba, bool init_dev_params)
 {
 	int ret;
-	unsigned long flags;
-	ktime_t start = ktime_get();
 
 	hba->ufshcd_state = UFSHCD_STATE_RESET;
 
 	ret = ufshcd_link_startup(hba);
 	if (ret)
-		goto out;
+		return ret;
 
 	if (hba->quirks & UFSHCD_QUIRK_SKIP_PH_CONFIGURATION)
-		goto out;
+		return ret;
 
 	/* Debug counters initialization */
 	ufshcd_clear_dbg_ufs_stats(hba);
@@ -8184,12 +8175,12 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
 	/* Verify device initialization by sending NOP OUT UPIU */
 	ret = ufshcd_verify_dev_init(hba);
 	if (ret)
-		goto out;
+		return ret;
 
 	/* Initiate UFS initialization, and waiting until completion */
 	ret = ufshcd_complete_dev_init(hba);
 	if (ret)
-		goto out;
+		return ret;
 
 	/*
 	 * Initialize UFS device parameters used by driver, these
@@ -8198,7 +8189,7 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
 	if (init_dev_params) {
 		ret = ufshcd_device_params_init(hba);
 		if (ret)
-			goto out;
+			return ret;
 	}
 
 	ufshcd_tune_unipro_params(hba);
@@ -8219,11 +8210,51 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
 		if (ret) {
 			dev_err(hba->dev, "%s: Failed setting power mode, err = %d\n",
 					__func__, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ufshcd_probe_hba - probe hba to detect device and initialize it
+ * @hba: per-adapter instance
+ * @init_dev_params: whether or not to call ufshcd_device_params_init().
+ *
+ * Execute link-startup and verify device initialization
+ */
+static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
+{
+	ktime_t start = ktime_get();
+	unsigned long flags;
+	int ret;
+
+	ret = ufshcd_device_init(hba, init_dev_params);
+	if (ret)
+		goto out;
+
+	if (hba->quirks & UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH) {
+		/* Reset the device and controller before doing reinit */
+		ufshcd_device_reset(hba);
+		ufshcd_hba_stop(hba);
+		ufshcd_vops_reinit_notify(hba);
+		ret = ufshcd_hba_enable(hba);
+		if (ret) {
+			dev_err(hba->dev, "Host controller enable failed\n");
+			ufshcd_print_evt_hist(hba);
+			ufshcd_print_host_state(hba);
 			goto out;
 		}
-		ufshcd_print_pwr_info(hba);
+
+		/* Reinit the device */
+		ret = ufshcd_device_init(hba, init_dev_params);
+		if (ret)
+			goto out;
 	}
 
+	ufshcd_print_pwr_info(hba);
+
 	/*
 	 * bActiveICCLevel is volatile for UFS device (as per latest v2.1 spec)
 	 * and for removable UFS card as well, hence always set the parameter.
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index af8c95077d96..443403d3be72 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -595,6 +595,12 @@ enum ufshcd_quirks {
 	 * auto-hibernate capability but it's FASTAUTO only.
 	 */
 	UFSHCD_QUIRK_HIBERN_FASTAUTO			= 1 << 18,
+
+	/*
+	 * This quirk needs to be enabled if the host controller needs
+	 * to reinit the device after switching to maximum gear.
+	 */
+	UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH       = 1 << 19,
 };
 
 enum ufshcd_caps {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
