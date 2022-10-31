Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68086FA3749
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaEJ9xF22AMlMj0bUxV9wSm4pokVS/MvvcZj9QYyenA=; b=G6ob95QeJdMyWI
	Cy2sILqf6Sk7TdA7pxdmNurKgIsPZ3whPSOd5jGW5p5oL18Y6oUOZH324gNWiHR9Yzgdhpd/vgp2V
	nfFL7h2xXhKroKrqabAkw2s+V3R7G86HxWaZEEcrRqJZBCTfNUQGVr1uo105tEv5RlnFPgjxx/2iA
	/L1FThoQ6u5Cs9+yufjiDGrekWUjutLhZFpgDkani60WQl4nR2aKvjJifJ8T3o4dk3EAe4mlBO1YG
	M3O/ej+emNvZVSWIof8KdS73qHWJB4maVJabXnax53croxXFJfMoAn/r9mDcnnZC0NyfNI0M9InHN
	32lJMrWUt1gcxnALIPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8x-00Dao1-Rq; Mon, 31 Oct 2022 18:04:15 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8u-00Damp-L1
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:04:13 +0000
Received: by mail-pg1-x52c.google.com with SMTP id s196so11365709pgs.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n09A1w395FEb8CFGE5mj23N+JsxXbyTWGm1Z2TTn0mM=;
        b=GS8oQJDD8gziLB3T6WUk5TbqFCYkzq8n49LYkyJ+Eq+mA1nyAmGsKjbf6xVjwj8bdy
         XocrDFfUr1eGr0a31uzd20iFSjCtGOZjOYqAPw8501lWH9xTFfJEg1NFkOStwrEoLsSV
         iCKPKf5st2Bjc6Aj1BGkVvaHCPyIHVT67bl0HLtbbrZfj4Q6Wy/PKDCbXDx2nX4JQ1y+
         o/XkuII+bdxqrvmv9aXP+yIqqKiesoZeR2Z/sci8gJltFT09BT7MS0IAlG9NHcRgNXP9
         6POsfU70sxDcG5QvrkFmDTvKpeVBuP6kbg4GQVGAOnJ7+IGUj66m2+o5ePi6C5yJ+h5k
         dJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n09A1w395FEb8CFGE5mj23N+JsxXbyTWGm1Z2TTn0mM=;
        b=5lxWuiQzEehZEG9sr+C21D4zcofX4dxZh6M5AmDHQmb69gZK9c4AQn4KhEHuD3D1VL
         SQ7sahp7s1qFuGXDc6yKyy/8NOVI6kITpHMrWGh6hw74QLaic+TY4QqjhgDAoUjLp1lz
         3sGcarjERUD3t0ttZfxanQO2Q/J2cURaHmaR66pOUDnTDnewV2yjPcHZsB1jcusVPAp1
         j6726Jev34dLST9/fK7BXlldE1UQFn2KX+k4ELMnzlJy61GjPx+ycVi1JvF7g3rUrRSP
         tutJrX2BRqRX8G0oN3JXr0sv+EH/A+ZCE61Ynjy4nn2UPHofNfqFO8qlKe4K1Gf4lFKX
         fi/g==
X-Gm-Message-State: ACrzQf1bZuhXUpqE7MrYvoUbPXaBM1K1t+irQr7E4Bh7t7VEjymOY9uN
	CnmPrqhxvjZHi/HwYZ9VpyIp
X-Google-Smtp-Source: AMsMyM7iPUdZa99KX1tAK/e56i8Nrgz82UzEeY//bWaCEa59H4AXLhQqaUBJo+M0tlSC0DVJaN4vNQ==
X-Received: by 2002:a63:de46:0:b0:46e:c3bd:e47d with SMTP id y6-20020a63de46000000b0046ec3bde47dmr13398495pgi.609.1667239451578;
        Mon, 31 Oct 2022 11:04:11 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:04:10 -0700 (PDT)
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
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 13/15] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
Date: Mon, 31 Oct 2022 23:32:15 +0530
Message-Id: <20221031180217.32512-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110412_706950_5B5CE101 
X-CRM114-Status: GOOD (  16.54  )
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
index 38e2ed749d75..c93d2d38b43e 100644
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
