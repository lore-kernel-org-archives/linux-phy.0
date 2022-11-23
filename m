Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC8E3C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/k7WPedycXHt6nDomVVtoPteJnN9xuOZQfK8mo20TA=; b=dkI5C9rgB2LCyX
	27O7k6Uuo1Pj1OiS8ezYaX8NxVp3dtyRQ2kMj26LgYBDOdTVUDjoo0Io7eZRZOLLle1j8d69twZwh
	NW2km8E7pQyBFWbDrRWWisdJeqyLCPRpDCZfEemDIBb65kXGUQlr6QQf3wl97/mNFLPLAusFvmkGE
	Eygr8dFt1On3ahyk5POSC9ed/Lbi3cJPtmdvZQV5OhunvFTjodp8QN+DOTPZdZPtLBSmr6zyEwCWD
	IuRORuoHwPEa+Itx0roRD8c4XsxHWgEUgWDsSjuka7W0eQ5wwd0ihygpyLJKAIyPpxX9O1BxieZeO
	Ns2ztq0ES/JxX9moNQUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWM-00FJx7-62; Wed, 23 Nov 2022 07:50:14 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWJ-00FJuu-Pr
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:13 +0000
Received: by mail-pg1-x52d.google.com with SMTP id s196so16139875pgs.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Xs9R7SPzAS5pOWZNCxb7jU9uBO2AEwyHCVEvHAOYro=;
        b=xnIcVBVVhreHcdS7Ugnx76iz55CIxjVzKcXg+MoU+KmJuWrTaUBEXS9+FIx/Y0u73z
         vdCgbI8cTzTHdjUSxoIi/95NV0Vjlxhc70yIy8lliHjCgDKewiee6q1iEgSma6we3Azo
         T4VlECf+1VJ+oeFF3As5u8ezCHr5bVmigRRYPAG9yTiU46ck8y+wquPdWWK7ITuCm2bo
         sKdQ7aRcs1rNHa5QQO5gIyCNf1v6mp4G8rXT5eEu9GudQ4qf3UTv8vi+wWNI8K440gks
         QlJ1qrrg4bEZYFpqu+Sp8/oFR/Xb+uv91V/siAlNJB5diHdFSyKkPniMWfwj6S3K0bLC
         SJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Xs9R7SPzAS5pOWZNCxb7jU9uBO2AEwyHCVEvHAOYro=;
        b=yoizQWNASUDfp4Sbt5o9ROUvHRo+pJU+Gdb9GEDLLAXFxdNv5y9QqxPItg38kbcY16
         frGgcCkBJni1GKp1x4+rfH1hfB72oAvkf396G3NO5UheVywhIwFRDWE8qdNuoq3GqWL/
         YkkZMw8ItQq7uRLhDiYHmuhkhSJK32/2t0AeAfLX3W8UbDOTHto1kRQl2004Yy5d4dbR
         7BGT57R+gWaIVyLJPMrb16GDnUchodR/rEZZB3d4SBlSpaXPcDZTom4bE3zv2IurWy5c
         /Z0kNIQPFUpdrORNy3yfeU+JOWXdw2xRfHffCWd2yhUPbFz/+3tvtg4EiD6xoKgYWbJv
         2C7g==
X-Gm-Message-State: ANoB5plIqPLp7S/+0rMKHzGvydCv+aLQJKIZga9OzwHKbdeoh6lpfFht
	l72XaJOdhI34vIflOhcROhzA
X-Google-Smtp-Source: AA0mqf5Qkci9MclBetYKpk99wpyqRldXc/tZtpb53k/xKGLez3Vf4fNonMqHr0wE24M73D9Dz1d/DQ==
X-Received: by 2002:a63:230d:0:b0:476:aad3:9122 with SMTP id j13-20020a63230d000000b00476aad39122mr7060304pgj.402.1669189810294;
        Tue, 22 Nov 2022 23:50:10 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:09 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 16/20] scsi: ufs: core: Add support for reinitializing the UFS device
Date: Wed, 23 Nov 2022 13:18:22 +0530
Message-Id: <20221123074826.95369-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235011_865202_5286C17A 
X-CRM114-Status: GOOD (  18.82  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/core/ufshcd.c | 63 +++++++++++++++++++++++++++++----------
 include/ufs/ufshcd.h      |  6 ++++
 2 files changed, 53 insertions(+), 16 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index 7256e6c43ca6..c44ffb63d48f 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -8161,27 +8161,18 @@ static int ufshcd_add_lus(struct ufs_hba *hba)
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
@@ -8192,12 +8183,12 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
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
@@ -8206,7 +8197,7 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
 	if (init_dev_params) {
 		ret = ufshcd_device_params_init(hba);
 		if (ret)
-			goto out;
+			return ret;
 	}
 
 	ufshcd_tune_unipro_params(hba);
@@ -8227,11 +8218,51 @@ static int ufshcd_probe_hba(struct ufs_hba *hba, bool init_dev_params)
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
index 09927a011a84..d3e8aa7a4207 100644
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
