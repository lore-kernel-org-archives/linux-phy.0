Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1534C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STyZjqynh+FdJXiBObCL3FfTAeurCZ/HVXcjYuKHS0Y=; b=Dq9eKtzTRfk2vT
	dAqt1/KZsrVV+Vm1V/pn5OQIdjVI3G/ozVLJ0vEZJi2gluOMcS6VWNjXXQ36FQRsgkuANwo/hQjpL
	JW+LIkPkQ/CKGgdHj/6+uutCaT3+F6qTimM2iFgiJKF/d80sbzjvbSzNheFAtpnniIlFBGgEw7WTk
	aUJf/VCIpOYE5QRx98u9wInEToxvz87O38jwQGBzPBpTe/5ZD4i3fasFPy7wLeb/xJEvyOIV/3Avf
	fzvfvT/1tf3CTwxFPdaiWQhRatPdO64VRHrw5iZadcF3sTcmh5HGZALeDRt4/VQDTgW4CEsLXiZcY
	wQIjB+vlWxKTNRtBYd3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mfe-00D22b-MN; Thu, 22 Dec 2022 14:35:42 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MJP-00Cp8o-AS
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:45 +0000
Received: by mail-pl1-x62a.google.com with SMTP id u7so2098192plq.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SPN6MvsLleyjqtpg7glkpxk2Wcr9bYRBKaDcXVrkxao=;
        b=vSlLDPBkg+X0ZBxJOz0DTSh8gbGqwFDw8UyYr/ADDQaA8R0hwaZRRaMpkOy6O4o0sp
         JGqUgdcaT1m6ws2nPfO2XNoFBQ14GrEDWqdYaVwKauZGyoTePtC/skYEx0T71dwuCFi2
         Hnr3gUVFPrG8fdACGv8bvmF3Oap3mjD8CIvt/XZM7TWFXQnszK3IDSrDHj6NIZ7XZDJh
         +rNo8mmnfwme1AQ+x7iJanAPi2bj/RikfdCgKVauk+geNc3jTLWTfH0Znkhi/yoGkg2K
         sHahEJ0OTclZuxC6X6J46uAV8ATkrebW6Qw2QQnUFLCWkP+gG8NF4vEtRYtVWNs1UKpK
         4DQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SPN6MvsLleyjqtpg7glkpxk2Wcr9bYRBKaDcXVrkxao=;
        b=WPWccADevNyHiERE2Qt18qnOIKQOluc/3KfOA/elkgWdJzuQNZK/44/F6KzPX2xRCs
         jCq0j+6eQRDpsLLYfPoShIDbAFUATAa+XpRuwNBcSj6tLmlF4ENo+QVxNKwsdgKd8uVP
         BB7WH5FuMmshifGtiLX3EaBQ2Ndcc7qenuv0TqKbSDVZnMd5eS7sAr575BM7oXPtxf7Z
         LsjpQmI8skAuYWaYEu8V09q3O+iEOFZwxzQpCRGLL9KcnrGwM9JI8gAo6X+Rp8Hd6LUR
         UFjRZRsMpC0uNo7OYBDzo2M048JRaNmVSot01gTf8cHMboj8gSoMT0kF2Mx74EOe43V5
         +wmQ==
X-Gm-Message-State: AFqh2kp0fItXCIbpvwXxn+9+LK4Y2mDcezbBeX/xVxPGCl6E8ZE4DS7Z
	2lCdvT5jWvY8h0XGzs8gqcaesgB2CWp1u5A=
X-Google-Smtp-Source: AMrXdXu/KaxPoteqxf49QCt4/X1HqUCw83tcdIDod5MMlfpjrw38HLDXkcil1XByhafZ+tCJCx8c6Q==
X-Received: by 2002:a05:6a20:d695:b0:a2:c1f4:3c70 with SMTP id it21-20020a056a20d69500b000a2c1f43c70mr7254391pzb.8.1671718359483;
        Thu, 22 Dec 2022 06:12:39 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:38 -0800 (PST)
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
Subject: [PATCH v5 20/23] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
Date: Thu, 22 Dec 2022 19:39:58 +0530
Message-Id: <20221222141001.54849-21-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061243_549555_EACD71C9 
X-CRM114-Status: GOOD (  16.27  )
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
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
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
