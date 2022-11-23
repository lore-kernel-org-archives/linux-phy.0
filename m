Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46FABC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWQMr9TMSBQNDbiwdVVxc2MxRKyxHW6QyfmIrm0vFMI=; b=QSEKoCPIpmWk/T
	Aiffi5gSVG5luYgG1DgXm4NeYntm5e2maTYm+HgikzTKVR+OztDgSanLsvAc5j7BO0KV8XMNVqqRR
	b6pxQ5iYHgEdidJPusJ/2kSEsPb1dqj44ldgtM8e72areccMIuXXr9D3TkYhJTY0PutRIEZafjTu7
	RPdf/qiDYch5YRxR4rmi0d0L3YMG3AFiPTFxmivovORAZIEV/I66fX2QkTRDuCNexO2cqCO0cxUon
	INgDKQmJBEWBVM5Zb7cP7rizAyYdSjf09qI2mTI8vYVeoON7cVuaw6kBbfjrjP8kh++YRUnlFBCiL
	1g5ne4QYAqsfi6pykMfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWR-00FK09-Mf; Wed, 23 Nov 2022 07:50:19 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWP-00FJyE-8y
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:18 +0000
Received: by mail-pj1-x1035.google.com with SMTP id g5so111955pjd.4
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQW21UMpMMT39kQGkUZ44Bi2KAiI76Uffz4R9s7ZIY4=;
        b=Q4uifVNUG8xLZiw0nKZzqWhlsFQVjN7R7zmwgdRS/fTSn0Pz18mv37YJD39o+JlZ+U
         YX50U9RmFIiBE5gaK+qWmu8dehcTfKoU1BOe+NxgY/P8qv4PehJ3qfZDfW4HwQ/uSNLF
         SO5irDbKFTLjuwkrCMMdtgUjo/xb1StQ14ri1Bxv1UkA/bIwjVqyt+gMUVpvegQ+Peff
         qG4EAibX1FxdFxy8A92f6uSiv92YFS5FM3PH+5SGqa7OLIVqu/yGOPBW3106ZA1Dj0nN
         or6T2UMyGk7jCA89uhNo+9K4YwS8Q70+I2BoLGhEhoS19d02r0QG25cSU+dfJA25+76c
         lyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQW21UMpMMT39kQGkUZ44Bi2KAiI76Uffz4R9s7ZIY4=;
        b=Ayn9G9JCdGGAX4yt2XZvlpxEQHpi6mes0j6mDEmYl9mvEc4AbBVB0DTp6YIrpIhKlA
         f6LR3vF3uQt6fE7US7ocfevYHZ/VZFiMZYBpPduhZZPqWEZANss03GEWOYJEbA3tzJnK
         txvJ0yHVNY3F9k2r/VVmK3Uv9/KSb66imOe7zgI8ZbZGPdC5vN4a6DIXRBVcGS5/V3pM
         zueqP0V1xq3JaHQFNqHw3Ivo/YXyYsP4aHAFEsRmobzqhYiZLAP61vDgoUpGetPyjnyK
         KZbsm06LrgoVeXANZMUgP4fkOCKD2H9sQAr//YamWNChNHhLYiMc7V+i3de8jXBsGedz
         mocA==
X-Gm-Message-State: ANoB5pnwnfyzJytI4Vq7iVhaWzbUVaKhkmt8HB1kWesGe9l2uvq/2pzP
	058NtDB5+i0KoJ3L+UBnk5ZP
X-Google-Smtp-Source: AA0mqf5ljrSPGVNBRtykID1TL3/cGOrewa2yjiZmVTTVZrWsBIkuV1+BoJ27rIUb9wyuYvjPhd49vw==
X-Received: by 2002:a17:90a:d811:b0:213:aa8:dda with SMTP id a17-20020a17090ad81100b002130aa80ddamr30077911pjv.111.1669189815878;
        Tue, 22 Nov 2022 23:50:15 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:50:15 -0800 (PST)
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
Subject: [PATCH v3 17/20] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
Date: Wed, 23 Nov 2022 13:18:23 +0530
Message-Id: <20221123074826.95369-18-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_235017_339892_F5A2BCFA 
X-CRM114-Status: GOOD (  16.58  )
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

In the preparation of adding support for new gears, let's move the
logic that finds the gear for each platform to a new function. This helps
with code readability and also allows the logic to be used in other places
of the driver in future.

While at it, let's make it clear that this driver only supports symmetric
gear setting (hs_tx_gear == hs_rx_gear).

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 34 +++++++++++++++++++++-------------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 38e2ed749d75..919b6eae439d 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -278,6 +278,25 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
 	return 0;
 }
 
+static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+
+	if (host->hw_ver.major == 0x1) {
+		/*
+		 * HS-G3 operations may not reliably work on legacy QCOM
+		 * UFS host controller hardware even though capability
+		 * exchange during link startup phase may end up
+		 * negotiating maximum supported gear as G3.
+		 * Hence downgrade the maximum supported gear to HS-G2.
+		 */
+		return UFS_HS_G2;
+	}
+
+	/* Default is HS-G3 */
+	return UFS_HS_G3;
+}
+
 static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
@@ -692,19 +711,8 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
 		ufshcd_init_pwr_dev_param(&ufs_qcom_cap);
 		ufs_qcom_cap.hs_rate = UFS_QCOM_LIMIT_HS_RATE;
 
-		if (host->hw_ver.major == 0x1) {
-			/*
-			 * HS-G3 operations may not reliably work on legacy QCOM
-			 * UFS host controller hardware even though capability
-			 * exchange during link startup phase may end up
-			 * negotiating maximum supported gear as G3.
-			 * Hence downgrade the maximum supported gear to HS-G2.
-			 */
-			if (ufs_qcom_cap.hs_tx_gear > UFS_HS_G2)
-				ufs_qcom_cap.hs_tx_gear = UFS_HS_G2;
-			if (ufs_qcom_cap.hs_rx_gear > UFS_HS_G2)
-				ufs_qcom_cap.hs_rx_gear = UFS_HS_G2;
-		}
+		/* This driver only supports symmetic gear setting i.e., hs_tx_gear == hs_rx_gear */
+		ufs_qcom_cap.hs_tx_gear = ufs_qcom_cap.hs_rx_gear = ufs_qcom_get_hs_gear(hba);
 
 		ret = ufshcd_get_pwr_dev_param(&ufs_qcom_cap,
 					       dev_max_params,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
