Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F84BC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFRAhPMHYswQx5t3ZzNSrVjr+Bw/wnue4aeHPRjxuPw=; b=zzDXg6iUn64TAh
	+nl/faDoV/AdxyE0NuCg14gqhLo2XdZOVDZBkJB81E4tfZYg8NFGX+iKQYV3Xi9ruy/gy9cXEwlPE
	kdptZLBUxbXgAyi4S7RVshHFH74AhoQOfwP/ptWTkWJuXwbcn8dkGQddKUuA1HsxE8gruNQcGMPfx
	XqOxbUUTpSO9S/MHyB64OEodW+c2Nv17Ihz4BKcaqITOf9r8rnsnlHvT5XmVpweGiGRIgZrkWWYjM
	P1Iy/xB18ixjXaPeCA1ceOGtcIA2Ql9xVbgqCarJcJVETN2ciFNWHuWzee4lkIaS7FDEuzg3Cvih9
	eN+Fvr3wWY4MpxAJy9vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mce-00D09x-V9; Thu, 22 Dec 2022 14:32:37 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJH-00Cp3L-EE
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:37 +0000
Received: by mail-pj1-x1031.google.com with SMTP id v23so2014004pju.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UnBUp5WyCz4krAwRvhsnV8wS00kgXpu7vT2PwLsChp8=;
        b=YdGqbwN+gQqfHCFSWQmyIsywlKkBpIYcrXg3HvTHS9G+mtStS43WruoltROS/uEKmo
         5O0zfwcO568bsfeWlPwgJFW0h5+Mevpep4gv/Z4Kd/4G9UwqYB6lGPf9ennfbbO/autt
         PEFZKjtsvw0sxM5kGviTs1A+k5IR27ckqFWJFoUvTVjANNuoacVT/cHWjAImL+I3Jwxk
         Gi43pb99ZJveG9SKVWrUxZ3GttulbqQJz2lhDE0sxWzxsV3mXop09VXI3g2Irs0LhP+Z
         hywLxlVT/J+vhftxL+uOTDwUl/1ORzp+G6AFRdghV/4n8ZOwmFmKY/j8Wi5PAOmrKWi3
         GToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UnBUp5WyCz4krAwRvhsnV8wS00kgXpu7vT2PwLsChp8=;
        b=NE+xRv0VGaxULePgv/tvrj/dNCnjUwVNqhlxP1C3poS4iIi7494g1Y9gUnm32HcebT
         tA00S8EQ4I8IfSc1oAJyxjq0uqI6ITjYBNMbKkDUQXwbvzgpTzR5gJPM4mPKO+xWq8Or
         /nRfi4uwEDftlcq22CBmiE1Cbt7YeGPwZJrhXibxG53uTWNub6R0yXciyfw3KnyLLzIa
         Of211gIzNUmvtfd9OHTssK4MMGuARSOItBi853xVyBLNir1CdXL8xEBKz2vlbzJhEdVD
         T6VK1UYM+VvMRmRtytAfL3R9ttilTNAR+28SB/LDFvFlJoIYUCT44oJYVJaw8HZ2KWcf
         9PWA==
X-Gm-Message-State: AFqh2kptqTz1QPwNVthb1/1vInz+oXuE+xmkMcqcqaHoxDlD8VxS+rtV
	7sdJjL+ncWhtYb8EeftFa0CH
X-Google-Smtp-Source: AMrXdXvxNWJ3I9wCdsRq+WWRItGU4LaRqqcv3b3NKRJwUI3B0oHtW7J9RE43Xlo2gfcOsBjbHh4h5Q==
X-Received: by 2002:a05:6a20:a884:b0:af:9fa8:ce05 with SMTP id ca4-20020a056a20a88400b000af9fa8ce05mr6825267pzb.2.1671718351929;
        Thu, 22 Dec 2022 06:12:31 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:31 -0800 (PST)
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
Subject: [PATCH v5 19/23] scsi: ufs: core: Add support for reinitializing the UFS device
Date: Thu, 22 Dec 2022 19:39:57 +0530
Message-Id: <20221222141001.54849-20-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061235_536030_4601231B 
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
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/core/ufshcd.c | 63 +++++++++++++++++++++++++++++----------
 include/ufs/ufshcd.h      |  6 ++++
 2 files changed, 53 insertions(+), 16 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index bda61be5f035..fe4720bf0d67 100644
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
index 0a0b435f5c17..68bd822b9c22 100644
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
