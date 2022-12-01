Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD32C47088
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oX3tOdjKv1JN12htSmd4os35dHzZqqXFr9uvrDYzJYY=; b=R6jYdCadNEnRSU
	f+LlMKiAnSCsAShxbws5Psi6df5edHlMr9ImR/nKpRq9YZg3oJGbL9akMmtkIN+Jo2+SYmB2ERhHK
	MUqDoWE3w0jGBlOZUGeRymwG/BczBBDqMJepUZzmoxKe2JobOMf7afAdxM5WJ86+5tMQ3s/vGCc69
	SmFl0/ZcHxu2aWP6N5L1pXQTit9/5BzEJJuw1kCkVg2n40tT43eku3zT5MA2u10sO2yIBNJrmYsJg
	1r5xIF861fLJGZBWEpxAhgPoER/5a901tQlLLHELHBqdnhwMVtaqE5Q8Ki95xiXBUnXmu+KvD+dHZ
	NA4E+0dUzF+klSYxKYcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc7-0099La-RR; Thu, 01 Dec 2022 17:44:47 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc4-0099Iq-N1
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:44:46 +0000
Received: by mail-pg1-x531.google.com with SMTP id s196so2288606pgs.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/BNw/j/jyyiC6Nde2Mk6v6dKHHqRWva/o8+iSkZe08=;
        b=VkALK2zJnqUvofpKNzlp4vh4yPYZ7VRwFNZOMPsnXGxrSdZ2HXQiwxrOwQvBqyTIoN
         +C8vtvUZDt2Js6yqWsQwGZDL5Y9KLzeaGW0yPZnq9906hh/u4ZvoEl66lDOcOzuEo+Ln
         8FSbdy81bmwKX59FlZi+O84yZwEyqbaROC/cse1ZhsMJj9k9Fh5kbAAvZgTAvxCGdJ6b
         iTlvlkingi72L2yaQdBp999tZ3eaoTy7Qb2k1L7vdS3XVr50Ee1LoQbVp4YvY8na7o94
         +uVyR8FsmEUgPH8zG/xJkZkyc6IE/sXcpqhOXbjjFXk2ZTCwrPGulsTSeAJcwAVjgk6j
         WsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/BNw/j/jyyiC6Nde2Mk6v6dKHHqRWva/o8+iSkZe08=;
        b=cZkt4PzakAIftxCakg95qgKi/FLxO/oWqtgRYCFTMVbcfPFSEADlHKMwopBVySeOyK
         0pI7ctNRtufueHcfzW22LEB+D27H5fgKcnO/pDUcvZ5JlPjrtwp3n7t0pFsdsAtiWWks
         ZSEa5dFDsZo8MR+SfoL5CSgNXpbnJGjt8/ReciKl32JVij/p8X7An4m5xEW6JIbhtLfI
         eP1XOjsBVI6eduGqN+8d8t7WckirFBDDUE+ISsOJMYhY+468L7Wb4E5x450oMJZPNQ+E
         wjdOtZKEakYLQei65LnXbV+oWUm7xOoLjjkbLobX8TMyytMzVuk/7SGjMCgC64UJq14K
         OtHQ==
X-Gm-Message-State: ANoB5pkspoHoCO6PDrc4mAzrD4rp0bggqDHS7tDJEIPYNukyMmMKBLyO
	REwVE9H46sOTty3/7WoXirgh
X-Google-Smtp-Source: AA0mqf6xV5CiNhOXSOwJd9AqSTlFTaoJjHREQvuOzcYW+q7bae6vQ0BHQv5u7CMeWrtGKQX66+M1TA==
X-Received: by 2002:a05:6a00:198d:b0:569:92fa:cbbc with SMTP id d13-20020a056a00198d00b0056992facbbcmr48793744pfl.77.1669916683821;
        Thu, 01 Dec 2022 09:44:43 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:44:43 -0800 (PST)
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
Subject: [PATCH v4 09/23] phy: qcom-qmp-ufs: Avoid setting HS G3 specific registers
Date: Thu,  1 Dec 2022 23:13:14 +0530
Message-Id: <20221201174328.870152-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094444_937008_A9614A84 
X-CRM114-Status: GOOD (  10.56  )
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
