Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C13C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ0VNMigRh6+FZeR/gbGWzFPDhafxu9OOmuGzhll6gI=; b=OlGiIMAm+BYaav
	/CKMEWJWn30sg91Maw5Yb5pN8/Pj3VlnUwKJhaU9aT1xVga+w0tP/Y7zC5PEQ2LF7LTxhowaxHH0t
	WpaQ0Bl2Kjg+N6NUS59QneWiLrN14mRtNHwbF2p/ORTl95yOlF3tf2DNdaPyCwxb2mb4YZ+6tZ3QQ
	eZAs+JwWmAMnZ9bSaurhjjkya8Rk0sdBTp5WbONOvsAUob3S3hpDFTMCZAfvGKEUlQq4+Ma1IZ48L
	CsbpgASJ34DAxHJdKzREn37Z8ptPcRysqXhOQ0Ar8kXfYf1ubznmDm4YCsJSMFGa6yBc32AkUmriU
	aXZ6N6ufru7vQiu8QrWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWY-00FK3p-Di; Wed, 23 Nov 2022 07:50:26 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWV-00FK1h-EM
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:25 +0000
Received: by mail-pf1-x436.google.com with SMTP id b4so496573pfb.9
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uk4luKF8t4ifNKen4Qh4OvqAisGjZ8ae5pMGODayTWw=;
        b=N1BMzP3fnBp21+uZE5n+zjSk0+TSsCpwu5IpNglZVltoxGRcxfpfcbSvJZZOCYzYYU
         MU33WkMY5G5+DhTvFjV33dZxuRamOZBvMb5NnUQhwFgJngDpVKCJSSnvkZSyh/kngO6h
         Af9KAy+nR4p+Oo3t9F+oOWzAHqqABmJU9rYDk4sDmmnFY6407EypqeTse8Qyg/CN9FEF
         EBWtK9Gs6V7zVZZLfEz3NwhRri9b7imRhmWhGK92azUzhW6dDsI6tIQrc+8w22Jl4NHp
         3ANXIrkn0dCsvDgr62uVoAeD+kSVVwCwLhyoldmuGmPvG1rLZbGhYZGemkuY0SN6rV7n
         WUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uk4luKF8t4ifNKen4Qh4OvqAisGjZ8ae5pMGODayTWw=;
        b=Xl/FIII+VLaIPOxw3cTbyI+h0vks4dakFXctFDUGLdgETCOXJAtQ49ZQdSt/7UHeCy
         yKEHwYRY1tgJ/KXLzgCkwVIBj6ySF8hBfu/arfXHbjjECJ8SWTW0Zw/k2xBN5hC7RqoT
         KriwT7WcRHJhiuW9CCyi7eRIaF+1fDgMQLC06SLvuCTwqBC06yI0DDOpEKbtmUkOO6Oh
         DqJitLUI/er75FXRvqsAUv7tWfxmDBUWxruA8ccMkZYqqpWH6CkFjzLYw+MP2f0BpNFh
         gHvH/JOuisXU85IjBYobZ88tBB5cRrO4/NcTpqMP0fFTHiuUG0tcPWRajxptOF+pu0do
         9/3A==
X-Gm-Message-State: ANoB5pmCCqz5q3ZTzmQibgg/lS5EJ9XJnIsGbgGbK01xQeYCMvYVDPgm
	GL01f/kI4PCx27cesAG8WLeo
X-Google-Smtp-Source: AA0mqf7da5sZKLT7s6i7zvfLHItWQvjLOdsAyHCV2RWyrTZWvAw7Fd7hnX8C7gpDI3NKE4LSFwDrdA==
X-Received: by 2002:a63:d712:0:b0:470:4522:f317 with SMTP id d18-20020a63d712000000b004704522f317mr14809770pgg.129.1669189821982;
        Tue, 22 Nov 2022 23:50:21 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:21 -0800 (PST)
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
Subject: [PATCH v3 18/20] scsi: ufs: ufs-qcom: Add support for reinitializing the UFS device
Date: Wed, 23 Nov 2022 13:18:24 +0530
Message-Id: <20221123074826.95369-19-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235023_500718_024B0000 
X-CRM114-Status: GOOD (  17.71  )
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

Starting from Qualcomm UFS version 4, the UFS device needs to be
reinitialized after switching to maximum gear by the UFS core. Hence, add
support for it by enabling the UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH
quirk, implementing reinit_notify() callback and using the agreed gear
speed for setting the PHY mode.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 26 ++++++++++++++++++++++----
 drivers/ufs/host/ufs-qcom.h |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 919b6eae439d..3efef2f36e69 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -302,7 +302,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
 	struct phy *phy = host->generic_phy;
 	int ret;
-	bool is_rate_B = UFS_QCOM_LIMIT_HS_RATE == PA_HS_MODE_B;
 
 	/* Reset UFS Host Controller and PHY */
 	ret = ufs_qcom_host_reset(hba);
@@ -310,9 +309,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		dev_warn(hba->dev, "%s: host reset returned %d\n",
 				  __func__, ret);
 
-	if (is_rate_B)
-		phy_set_mode(phy, PHY_MODE_UFS_HS_B);
-
 	/* phy initialization - calibrate the phy */
 	ret = phy_init(phy);
 	if (ret) {
@@ -321,6 +317,8 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		return ret;
 	}
 
+	phy_set_mode_ext(phy, PHY_MODE_UFS_HS_B, host->hs_gear);
+
 	/* power on phy - start serdes and phy's power and clocks */
 	ret = phy_power_on(phy);
 	if (ret) {
@@ -723,6 +721,9 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
 			return ret;
 		}
 
+		/* Use the agreed gear */
+		host->hs_gear = dev_req_params->gear_tx;
+
 		/* enable the device ref clock before changing to HS mode */
 		if (!ufshcd_is_hs_mode(&hba->pwr_info) &&
 			ufshcd_is_hs_mode(dev_req_params))
@@ -836,6 +837,9 @@ static void ufs_qcom_advertise_quirks(struct ufs_hba *hba)
 				| UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE
 				| UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP);
 	}
+
+	if (host->hw_ver.major > 0x3)
+		hba->quirks |= UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH;
 }
 
 static void ufs_qcom_set_caps(struct ufs_hba *hba)
@@ -1044,6 +1048,12 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 		dev_warn(dev, "%s: failed to configure the testbus %d\n",
 				__func__, err);
 
+	/*
+	 * Power up the PHY using the minimum supported gear (UFS_HS_G2).
+	 * Switching to max gear will be performed during reinit if supported.
+	 */
+	host->hs_gear = UFS_HS_G2;
+
 	return 0;
 
 out_variant_clear:
@@ -1410,6 +1420,13 @@ static void ufs_qcom_config_scaling_param(struct ufs_hba *hba,
 }
 #endif
 
+static void ufs_qcom_reinit_notify(struct ufs_hba *hba)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+
+	phy_power_off(host->generic_phy);
+}
+
 /*
  * struct ufs_hba_qcom_vops - UFS QCOM specific variant operations
  *
@@ -1433,6 +1450,7 @@ static const struct ufs_hba_variant_ops ufs_hba_qcom_vops = {
 	.device_reset		= ufs_qcom_device_reset,
 	.config_scaling_param = ufs_qcom_config_scaling_param,
 	.program_key		= ufs_qcom_ice_program_key,
+	.reinit_notify		= ufs_qcom_reinit_notify,
 };
 
 /**
diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 7fe928b82753..4b00c67e9d7f 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -217,6 +217,8 @@ struct ufs_qcom_host {
 	struct reset_controller_dev rcdev;
 
 	struct gpio_desc *device_reset;
+
+	u32 hs_gear;
 };
 
 static inline u32
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
