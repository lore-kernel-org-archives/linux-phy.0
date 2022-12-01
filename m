Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7446C4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcO9luqmXe4OXYfznzMtycGMpYilDepnFysi+Ywly9s=; b=1r2kE5nZqL5Tla
	e5NdG4R7/A1V7Z2iPu4f17OLGNMaeYQ+8niHXVF3PkjO0pxAA+0aD+5ZQzHIJLp+8cucuw0ZcbeqP
	0+irkdJ8x+ndAMH4yCaiFS6uxf14NIYHSlH2Pn9lzDn1g14ecYGJWtF0OW0hR0TsUSCAySNhGEZft
	r4i8aeS4WBmQI+anSn/5pVDLh27KBm0Eq7hmpe1cgeMjqciyXGCmewCKuL+rq5bFAIHCs47jz2YdE
	h2kArCiShf6Bm9/ZeaGjZKbU1voeOr9J6A0LwSWVWcqj1C3HNDhdkQC8fejCcWl4prikkQyIxUbvc
	v1VbLv5uYa5IUQqsnByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nce-0099h0-83; Thu, 01 Dec 2022 17:45:20 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncQ-0099Vh-5Y
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:07 +0000
Received: by mail-pl1-x634.google.com with SMTP id d18so2331043pls.4
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v+yU2PJqff6HfxgfUe/14S1MmfILPlp3TneaSoyB8Rk=;
        b=sEKTEWor//XX9CNzxptWM0Mo/cKJyH2gerDuz2RxLVjhZ8YWVP06Jd59QJmMEVv444
         46wR3D+yUqZNMuoJmddiYWAAZJFQTBWMFRNDscVmo8NJYIIGL3HbxUanHl00GdFjGQTW
         lnrv7dRZrL/jG49nJcU+7tWYLtFrKdgjrt9dDBT2XCHLugsdFjH3D3JvfGJMOH2Nsi53
         hTw52lbl+CgOtSUVMnpdvSv8btjrwSCARToMdMOpcAktPNaqb1qCGhw/hvXJRnWcV7g1
         2AJ2iWImbu0USd6w+3ihsrIHB4MLYVtbZyY58dqu/1UcFKqQEknJbBzI+zYPjsHDfkRN
         Khww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+yU2PJqff6HfxgfUe/14S1MmfILPlp3TneaSoyB8Rk=;
        b=cvMC7J++Qf/07nuLhGLnVTIu8q4GOwjKGYYghuMBYpMRyoTvorpipbL6nxW5w8CwsC
         SA9JSVBuEmMMVDOfwQTzIzqvf41HKr46/GqNmZVQqWoHMXZsuOmoVlk5VnTIY/Wy6aFH
         vSs7TiG/uMQTVmkt1Xo4teTS3Hwu7DQd10A62SUdZ62NDqSzC31rYf1kCeBHlBHgatpk
         NPNtZjIEgvRtECXD9dWuVVPfvA7xT9+z9aBfePUDeYpMa68LDgEensjaDLpY3lhtLU6i
         5idshmPSkvOF3oNbsMDBi737WLRAS+VQU8NFeSoGUYJ1DmZxCFWJ4wHzWEEcUb3LB+iC
         t7bg==
X-Gm-Message-State: ANoB5pmBBERHf0UA/kbHe56nuZBt6xtRIL5uq3sxOD8iptQEdfkvMS9A
	vPdzRHca6kulvpZbOW9+k9I+
X-Google-Smtp-Source: AA0mqf6uYy4xVgPng+hE048oDwzDISVi85FyfyOjY1+PAxX0iUnnssKYNkPj/txIBloDjOhTxOb1pQ==
X-Received: by 2002:a17:902:f2c5:b0:189:1cc3:802a with SMTP id h5-20020a170902f2c500b001891cc3802amr49657068plc.56.1669916704143;
        Thu, 01 Dec 2022 09:45:04 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:45:03 -0800 (PST)
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
Subject: [PATCH v4 12/23] phy: qcom-qmp-ufs: Add HS G4 mode support to SC8280XP SoC
Date: Thu,  1 Dec 2022 23:13:17 +0530
Message-Id: <20221201174328.870152-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094506_349433_BDF2C0C5 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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

UFS PHY in SC8280XP SoC is capable of operating at HS G4 mode and the init
sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
reusing the G4 init sequence of SM8350.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 96e03d4249da..9f5526758985 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -763,6 +763,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 		.serdes		= sm8350_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
 	},
+	.tbls_hs_g4 = {
+		.tx		= sm8350_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
+		.rx		= sm8350_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
+		.pcs		= sm8350_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
