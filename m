Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18000C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjkGeLVVpuXnEVrrK5o7zqlK4kmGJGkN33OchIktDQI=; b=pEE/tvtfbti5F4
	hNBnUKsEJ8dMrDWJLQqVViZcHpeB7H7XNFkXZoSkZc/qrxtn3SnvAgPpDg/C+O2gnJ/p7NKJjRDrZ
	cuuZ8VMqyCDLium18+AY6y7b21dxhQRYn9E4fUA31IhW3o9W7dCv+5n5RIBeiQIboKqYAOITXTcEA
	l3CMCyfjutEs+X1mEbAcV8oYoGaKF5fH281L75VwIPOU/fVuM8V32lyL6V1IEbwNXayDkc5oa1W81
	jr3yfKi14DcFjudz+TzudrGV9y1Lbown6PB6mIRlWKKJJzckdZfPea5I0w9JjRLb8QmD/To+PXdlm
	V7OGz5OHHS1lkj0UK/Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYP-00Cxa0-M8; Thu, 22 Dec 2022 14:28:13 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MI3-00CoGD-HR
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:11:21 +0000
Received: by mail-pl1-x634.google.com with SMTP id u7so2094674plq.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YvxrIOSMwPwfBmbLwjUh7RSQgKGQFWcoHbzhG+iF/Ko=;
        b=WTuaje8tBT2fOIy1a89lMB6i5Ui5tAVSKgOIChDqLuXMxQfla11Z26p3l/4upQXjty
         hQWeqnUOuLVzQxm/O1+zc9CT1O+4OI5nySj2hdFdrLYHnYTHJoVhQsKKLkD+wvc/dW83
         u3derLOcuSM4NHgyZ1D+A5NXU5HpWnDP7XStujDSVyEDXWHbPkrgm5DGI0fx5xyEOcsX
         wwI9tvGlrHeleujah3LHXJmJO3vehHZh6xYcInFXHu3xjMTkIB0ZIOy8Rx7h1ASPJVlE
         Ob1CAvP6zGAFCKiupTAcbsYV9foos269qV9m5jKYxNicOVBTd2ElbPW9T5wHcpy8MX5c
         nkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YvxrIOSMwPwfBmbLwjUh7RSQgKGQFWcoHbzhG+iF/Ko=;
        b=6pbF2Gqw+knPPx18mJLiOm3ZMMCOUGLgV81kp2ubDNq+SMPhN5Z7FF3c6nTwhd6cQF
         2b/P6yc5Xau/3Y0155YHLpfES7l3tJEYnTzY72icH8mHgTUyFc1izfNuvENZun9kQb8a
         nWgkjGXXuB/L0TdL4ZG8l7cNB1JrJvSDxwDdDpkQcAwUMTiKOSTDGcXlFDJkpcgf1HSN
         FyuQLtZ3Rwr7JRUM/pJLstvAQvx1Kb/0yTmmnZ+uboTZBWd8M6RT8VnabnhYKgM/TZyu
         iMkQl3EtytZHrPIzbLyU0yhAUKAnp9/KNaOS4/AbQefMTpXLqb3TvaSIQ89OpO1uJWQ3
         boPQ==
X-Gm-Message-State: AFqh2kp4RWwRL+TDGXbwoio4hSC77yD2FlJvx3x4eN/o0NKLFQc53gLc
	G9cSlKTMbl6JWmJ3cWVJ1ECR
X-Google-Smtp-Source: AMrXdXuIDJp7seq7NruDAODEgmaT+tpNvsXqsojyyuPeLQ3wM9nFLZgl91mCfYZlnbwQbD/Vfa7yLw==
X-Received: by 2002:a17:902:e382:b0:189:db2b:93ad with SMTP id g2-20020a170902e38200b00189db2b93admr5438517ple.2.1671718275957;
        Thu, 22 Dec 2022 06:11:15 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:11:15 -0800 (PST)
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
Subject: [PATCH v5 09/23] phy: qcom-qmp-ufs: Avoid setting HS G3 specific registers
Date: Thu, 22 Dec 2022 19:39:47 +0530
Message-Id: <20221222141001.54849-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061119_671323_1B9C9C2B 
X-CRM114-Status: GOOD (  10.64  )
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

SM8350 default init sequence sets some PCS registers to HS G3, thereby
disabling HS G4 mode. This has the effect on MPHY capability negotiation
between the host and the device during link startup and causes the
PA_MAXHSGEAR to G3 irrespective of device max gear.

Due to that, the agreed gear speed determined by the UFS core will become
G3 only and the platform won't run at G4.

So, let's remove setting these registers for SM8350 as like other G4
compatible platforms. One downside of this is that, when the board design
uses non-G4 compatible device, then MPHY will continue to run in the
default mode (G4) even if UFSHCD runs in G3. But this is the case for
other platforms as well.

Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d5324c4e8513..6c7c6a06fe3b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -567,13 +567,6 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_DEBUG_BUS_CLKSEL, 0x1f),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xff),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_PLL_CNTL, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x16),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xd8),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_PWM_GEAR_BAND, 0xaa),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_HS_GEAR_BAND, 0x06),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_SIGDET_CTRL1, 0x0e),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
