Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6421EC43217
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWQMr9TMSBQNDbiwdVVxc2MxRKyxHW6QyfmIrm0vFMI=; b=NqFGHQXLUeZsKh
	//f9ODxBIQSNF4TNTCLdmu/9175MJzqH1dDL9psgGVX5n1MXw/NoHW7tTG6i/FyeRPWkzy21tLTpE
	WdbBFgYxL6Nf0dRmgjVf6JzzevVOXkyaELaGm9mwuvRtzIvQgnXjX/D9wjXpNx8Tq3cLEDxO0PLkr
	bacThwp0Ai02KvEt2WJxEY5S8bfqMUA7xyjqjDUUV1Y/KDAjhxYpGu/2ebzCV2IEj3Qj57oEx0ksa
	Yk+Lj9HcyJ1/DEkDB0c6Mr4+zWbmCSYrBiu9OdMTZY/C65sPcYXlYryNjbgs11DZ9iUsS2VnLn3KI
	MLKyRRxc9cTRuIgLl8fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nmv-009KhK-Lt; Thu, 01 Dec 2022 17:55:57 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ndF-009ABn-D3
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:58 +0000
Received: by mail-pf1-x431.google.com with SMTP id q12so2537496pfn.10
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQW21UMpMMT39kQGkUZ44Bi2KAiI76Uffz4R9s7ZIY4=;
        b=uPM5610zPQIlWnYvAfYxvFUjx4KyncZ1u+j8V48Bet9cviXPz+FW5b59cfhaUrklwy
         qi7GFEGjV+XP3FvXov0aDZWRXMokj5ir4KXHzo2R+VWfpEQ+xx8u6VmdTQ69Lv2+rpOR
         GwdyzbX9oI7KIXYTAO8+hXGM3f7u0W+fOk9bYGrpGZgaXt9AHuOK3jIpZiXsF9ygfekU
         Jae9G1erq/N6M7yMsLhO4dIkjg8U05n8Hq7AvsTRset77kX4Oqbvyi2mJqfQ3GfdAX3/
         RVrT6fmssC6ACB0clRYB1jXckqSrkLY8rJlRrjKRNdrsljV3NDwVrc4jN5MvtmOcBoZX
         tZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQW21UMpMMT39kQGkUZ44Bi2KAiI76Uffz4R9s7ZIY4=;
        b=ud2GMF5N0xj4JAxti5iFJu3B1f2nBkB5nzH93BBDmTWa9p2SySUHJFnSPFM1Wvii0G
         XeXbb7iKvKLq17Dp9pFpXNrP+b4GpbR2BAAkdzQ135W38pr/ysMBEefNvNFjJAKQDBjv
         wseRtYLo/Gg0QyW/1u5JcL0kGcX2bLopIyeNt0aqnGs66gY3gYJbN9uZrzvz3ifYWGPG
         dLsaMTrTLIG0bW2D/oTPMD2VYWQunfiE8sLqzajwnAx9kSSRj1HTAT5zNAL8byCAW4lJ
         1Xq08lMkW1jezq/q3+31suExICtzBQWQjJpBrqkrv1cDql9HAA/BCc0Sawdm9i7jCopk
         fD+Q==
X-Gm-Message-State: ANoB5pklLrjaXFbDNBtcsTkvi8rEXbGJcokXMhQAiXt5HdgLTe6awN5x
	kE+vZKsNk0pK5HwJ1dJsge6o
X-Google-Smtp-Source: AA0mqf6SLdlPX+AwZRZI4w6lpTEftQnEJu8OEE6j/XM/e2If+9aXa1pvNUTp+srNEjewU9++T9h7Rw==
X-Received: by 2002:a63:e712:0:b0:477:7f69:2749 with SMTP id b18-20020a63e712000000b004777f692749mr42680821pgi.372.1669916756874;
        Thu, 01 Dec 2022 09:45:56 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:56 -0800 (PST)
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
Subject: [PATCH v4 20/23] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
Date: Thu,  1 Dec 2022 23:13:25 +0530
Message-Id: <20221201174328.870152-21-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094557_488300_2226922F 
X-CRM114-Status: GOOD (  16.10  )
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
