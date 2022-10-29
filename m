Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A2DC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLV9iX+CSwhlFhZ6HwJImym+pSdUwRS2CwkeqWNdDtQ=; b=cJfLSAkx1lBBib
	tGZtKnTK5knGcGcQvNo+hubr3Govyl0t0acJi82036ASC5PMoMh0PCCfEWtlJMveEmiAS2Fvdd9qQ
	8zMNJdrUOQk6T2Tcyx4h1ydWJibKhwECPZO/+F2gKNX7UlRcnBF5K0cyPKj0eWBe80ihi5tkkz/TX
	8+zcpv/yZZoWlTIrHaGlEd7LMBNG60KR47WWhtWStG1mVNT5SmOi44DkVH8gsTuP6Pt+2IpQMpJcH
	/fymuDwlHV/ghnpcx3jhvkr+26w12EEqwo6+3gSHiAwWj/fo297rGCcq2eNVfmx6syj5RJocCZJTV
	6cUymq1nM3SyxaQrKGCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomep-006UMk-7N; Sat, 29 Oct 2022 14:17:55 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomen-006ULq-41
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:54 +0000
Received: by mail-pj1-x1031.google.com with SMTP id j7so3299910pjn.5
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9w0057GHgoZKWtXZ1+4u/MPirSR8go5oWQPd2eE2mI=;
        b=encU76jKBrg6lH2ISMpQ/N7b4auZ2VydelAwmgOx19RnLM1oiSnBRWcM11Xqmvc3Cg
         EKkic2nHjmIz1GFChzZ8WjMeqZLnln+gDPxjo1o547phYbrMlpKwBLEn5PgEEKr/FZdI
         1kZP888PIFaxLbzbKFqLGoZgFlyCuvge17GdEAxRXwUPywc8a5Z6ILYxviKf2QD4qNnD
         UlFfrt1Kbu+I4MBrU6N2Bqian3JljYN9ydInPZj3ilaU1a+wDVzSqyJB8ICfyQja0ntX
         1099u1qHn209NgN/wtUebb8DWjq1ilbpQpz7sxbSQqHAB3yUgmu8BuXmIIOh/h1hI0DF
         BRSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v9w0057GHgoZKWtXZ1+4u/MPirSR8go5oWQPd2eE2mI=;
        b=ATYCcFmJEt8CnZNgvDXMx+ruFgsjlKU/+PrbY2brbsVvIAwf9ZEuLHxEPyxqJ66QHl
         ITJAfawNpyCshaoHQy9UNhq8Ysa3Vc6tV2ZCRNiFp1XExaRmcL7cpld1CJDu51Y7YPG2
         Y/ygDOvGQcmppumaY+jfrJDOaaIsnax3wA9B2ivMl1ZnoYDM4tllyexqntIEhj5CIb0G
         qyDR3fL+yfSd35oxQ6oOjouF5GhhyU5Js0yHBLK1rM9t0rQ/E5jb9vofPemKM7XnC9gq
         TL7FWvjScnqCDnXrEssHR/zGggEgxAZhYMGqdoZ1vsduQK8dagFwUuR+KX5kYds5Bped
         U9kA==
X-Gm-Message-State: ACrzQf1vmBoElxY+kKGwQQFmcV1+SgH0OD9wntoA16+end6JZmJjgoId
	eheLVCJNMTR7fflTXN0jsWXt
X-Google-Smtp-Source: AMsMyM7JgKncQxD+5pXhQsXTkWwf5sEiBgn85aqK7sxksdsAEnWD9W1u57IbDiP/N0nhOGC+mz8f+w==
X-Received: by 2002:a17:903:50b:b0:187:11e:5f1f with SMTP id jn11-20020a170903050b00b00187011e5f1fmr4643202plb.41.1667053072648;
        Sat, 29 Oct 2022 07:17:52 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:51 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 13/15] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
Date: Sat, 29 Oct 2022 19:46:31 +0530
Message-Id: <20221029141633.295650-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071753_179547_80D5E9A6 
X-CRM114-Status: GOOD (  16.31  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 36 +++++++++++++++++++++++-------------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 28ac5f0ab2bc..f952cc76919f 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -278,6 +278,26 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
 	return 0;
 }
 
+static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
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
+		if (hs_gear > UFS_HS_G2)
+			return UFS_HS_G2;
+	}
+
+	/* Default is HS-G3 */
+	return UFS_HS_G3;
+}
+
 static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
@@ -692,19 +712,9 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
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
+		ufs_qcom_cap.hs_tx_gear = ufs_qcom_cap.hs_rx_gear = ufs_qcom_get_hs_gear(hba,
+									ufs_qcom_cap.hs_tx_gear);
 
 		ret = ufshcd_get_pwr_dev_param(&ufs_qcom_cap,
 					       dev_max_params,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
