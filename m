Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8346C001B2
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVWkvxunmBtB48bv3Nx+vMOl5rLMoHhDGpLpD6L0ikk=; b=ywoty1ozEL/VEQ
	ARhb7KcWA4F6590ZSiDDdQIfTyfnAzK2aZ9gkl5RySXJBZm5fBZNShuw8i8W032MfRf6LR7uTEDfy
	WWzd8Jma8pH2du0yWZeEJO1zTfgq1voeGLOEhK7p3NPUpuRBwJ/kIW6+VsAv1WxyJSjrH9R+U+wh0
	i61WlANDMwsP1GXmK1oWNE5EcqsSFxiZbSvrFnIa2ytVevvb7ys/azWkmOxzM89Mi67nH25Gsj/R4
	vDdw6/KrNDwCDnQR6NYHP2QhVlV8RZZDrbQOmnOg0Z6yuc5vhJx7kNEvDJMVXc/j35xN0sQs8wjf7
	HMyKE5lU9D3lRh/luOrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mg8-00D2J1-4q; Thu, 22 Dec 2022 14:36:12 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJU-00CpET-2W
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:49 +0000
Received: by mail-pl1-x634.google.com with SMTP id jn22so2090293plb.13
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBn3zEFmIV6MhSJTCqVfJoKippEJn3UVUNP6V0+D++w=;
        b=wUEp+NmpgcRSpWDAl5gCZLjGhtZOUkb6nH0n9cqBjo1QjAmnGSD7tz6SDlueRbPqU7
         Pg58jvzpbEa5o9H4QDHwvb+xubArD7c4VsVqyoewLiLlPIu9zYu8umlPz6bY+qbSBIKB
         GDEDwBvoMAWXMY87a8AS3OemBzeDMf+zwDx1Ez9qW5ya4vxTB4+8ImILjJyoOxImdKaX
         BjK//SJQUjz4knoV54gc8pC3pwQlKYSVM6w0uFkWeHnXlNNpRiMIK/JH68QdlKIiUcfp
         Z1YOqDt8BL4jrYcv6CQNRYAs+VPHtZS4ff9BvD50/froZGoTp+7WhIjv5+U38QLMGbqn
         1AkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBn3zEFmIV6MhSJTCqVfJoKippEJn3UVUNP6V0+D++w=;
        b=3iRZULV+CB9/2EVnRR3nEqRJDnA6sjd5PG6rQz0gU99Cui9Sv47LVdSzd6x0VHTuDy
         t3fdAebqOuRLLAQgHfAV/9TV5T77t2lwALXLn27qS5iTwF57jIeYmyJB31LQAdNlRCIz
         K5MHm+tWjfygXbwLd5xQL/hETDsdWscowSljkIcUhyTuzFd/8GPZacc43YXSdg83ckph
         COoWas/6jZ80kx+W6YulvfAsFMuQUeQpauojg/id+lpQjxJ2kxNNAdrap0ojb9jVhh5e
         SwDWYRP0CFVl4HHpmHo9hJHBG7VPXgUClwDVc4CcqVGEIa439JKhF08qkgDBLW4G1q65
         WpZA==
X-Gm-Message-State: AFqh2kpq90+bnptH1hcB5IzEqEZg2PZsAPDxwVNp1QAZKMwfo9Alr4zh
	GLtQ5Q5UW6KXK3etpeRRhh0NmgeL7fKcnV0=
X-Google-Smtp-Source: AMrXdXtmutM2RQ/lU4e/I/kqUw5HOoB1HQclleoi8/H3D+yG44Gbrwy7yofMNVMYL9R5pI1N2pY2Nw==
X-Received: by 2002:a05:6a20:c112:b0:ad:e904:f247 with SMTP id bh18-20020a056a20c11200b000ade904f247mr6784083pzb.29.1671718367062;
        Thu, 22 Dec 2022 06:12:47 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:46 -0800 (PST)
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
Subject: [PATCH v5 21/23] scsi: ufs: ufs-qcom: Add support for reinitializing the UFS device
Date: Thu, 22 Dec 2022 19:39:59 +0530
Message-Id: <20221222141001.54849-22-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061248_232046_3C52538F 
X-CRM114-Status: GOOD (  17.29  )
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

Suggested-by: Can Guo <quic_cang@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
