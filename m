Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83695C677F1
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DGoa4UWDzIIgdw5bcNrjWA09XTU9zvLo/nZ+wcyWFQ=; b=3gXQBkZ+QmqT4Y
	b/fDTtce5XR//1pEuRkPvliCtMUaT5e3AN66D98fzlnAYNi5upwFHM0MlbsiEnKxiX7mR0RnGug41
	uXp0F48A8bqn5a2HeuAxgbWevdqJKfm1xCovMuW2LW88tH0vujIn3C1pIl70uNzyMVjxzBcgvaaOV
	Pma1SO7Lr30HGKVCEDlWuLOUJM+ySvSU8QbtciLRnNKjYj9LceFU9iRFOohfVC6+gedK2VhW+FJYP
	CSW1ZD6TosfhxBfX/c2BBbmuXqzj0f7eH1Slsa7i5EI/M5wCmTjk7HdrMYF/m2VZyFLT5JwmqALNn
	E2N9z2GzSHdbxbT+cE9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagp-005OEB-Vb; Sat, 14 Jan 2023 07:10:55 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagn-005O5N-MP
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:55 +0000
Received: by mail-pl1-x62c.google.com with SMTP id p24so25540743plw.11
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5raPJrrsiQNPD02gu+jM1wjv6y1XVqaQRDV5bGNbhh4=;
        b=p93XF7t971NizNHgDlkNAcXMBDwlYMIDyahoGu8el0mdBGeTFmMCPEFCasywcKuw58
         EzsNhp5SQC4Eo62DTJPRxkn+6agtWKT1wrzTkVMenFoxU0dty9T1pBTzQEeNSGG0obZW
         IFu2dEQMBzTpcDcVBWTU9hrjKYO4ylz3uNBACMZl3lZiWIJMeg3gU57TZmS/UchTeH97
         x33m6G8Hpr3Yl+tEvV8UriL1h1zpyCJ878J4Jb/E59EKgaM5VQ71YzdFP28KEpHLKJAj
         dZGkOcCWtinxOx5G1yUNG/SElmPfSpmX3U3IJO4PoaxZSCJ9bqMHJ8gujS7xdjbE8DZi
         rBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5raPJrrsiQNPD02gu+jM1wjv6y1XVqaQRDV5bGNbhh4=;
        b=N2AReFWgU2uCS1l2+aw1MZuaUYdGh6/zxHeZI9uQgcudNXtJODju4qDrDQhp1ny7N2
         /5R4SCJKRXF13OEJLMEYbI2xMIwJidnVH+KASSxClDJXvINUI8/55NGq2vR4lK2GjGBH
         fdcXvtOMDFmSHiY18ZiB23NY3k8lq+GL/NA7M2UnDpNzqrLadNudFyUujpEt7okxHuR/
         dJDkUys692aapIYuMUzlSQejlLm8SnE2lgfvKHP89L4K+Lwrhag23eVfsq5tlWILjKei
         2FbKNoP981Qo2pugiotyjZlbXDiSy/mSnEWUzjEmvBCkQ6TVSZtwQxHlcO8nBA5Y82d+
         G4Fg==
X-Gm-Message-State: AFqh2kphDUB1GxoINtoDCkuLOLe8L/q1ZfwyR5JzrMxGTKIshhNygps4
	IjMHPKXZnxDboKkyNY5jh8Ml
X-Google-Smtp-Source: AMrXdXv1NX1zhWx+3yhYc6dTdtOwsnyRUF53uLkgQaxS5LEkQgK2uYFakIHFK0qaHmGVp3Km14M+CQ==
X-Received: by 2002:a17:902:ce0b:b0:194:4a85:b72c with SMTP id k11-20020a170902ce0b00b001944a85b72cmr16282818plg.32.1673680253206;
        Fri, 13 Jan 2023 23:10:53 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:52 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 09/12] phy: qcom-qmp-ufs: Avoid setting HS G3 specific registers
Date: Sat, 14 Jan 2023 12:40:06 +0530
Message-Id: <20230114071009.88102-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231053_748383_D7AA79FF 
X-CRM114-Status: GOOD (  10.36  )
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
index 152b1b367df3..421359ca62ba 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -572,13 +572,6 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
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
