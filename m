Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B14FC4167D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r35ykLkClNqamZH5cwDGVilO8ozTsr5xNYNFqugaG+8=; b=gHBZUOubKknjaP
	mxil3t0qXb4mtlXPvataWmGg6gVzKiPHoxQe3ilhcw46IWVNUaCZ99HQdPKLWRa07hbDDzzLBhFaY
	VJIAHupbwrVgC0q68nLq/npGoCJllWL/5KiTkz8VCx95wMPvMw4zzOgu2j2tA6MAScOtJ3pwH5U07
	01c7fcqMmp2CsQDpzqNsNlO7eXpqX4o/Hg5Oj8FwrRe/ddy+dJl3HfOWnt5+3UrrxxDZ3R0Pv+FS0
	K+VFAYbzsj1UjmQvX2ykR2b2yzJUiweRbohh2yp67kYoD53ZoLpORyxpoCqAmVJI8Ek+ACYUNCZjJ
	LxmCOJc6K4soa7U1Qjgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDI0-008mI9-DC; Thu, 10 Nov 2022 19:32:40 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8c-008fgv-Pj
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id u2so2071991ljl.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9UNEaxniJOxIl+QL6sNoKeigaRuo2rRI7gSKa+ok2k=;
        b=o72ve42icHxLDj5FZwq+pKY/ukybh2Nu8l07aSzB+BUAoSOSAL426WT3GomtmXe/ny
         1GI2gafHQlG88aDv73/Aik1BP5J5q+mvN0KSMDmtazuxOA/uubGD8cXu1txuElZ33SgR
         NxwfBYRojMA3qSODkhBqw6hXbsdoPjIBfI6WJPhgdp/loGPjAyCFCdQ55ss/2vS4LB8e
         laVQeC/CJ9RWetpZsSIvCai1Gkk9Ios3ZVNPBpG/LEgfkbSCVLZ3dNblXdkGCiUbdjhL
         sJZzMpKJ4HRRmKBHIv6sqWAVaOv6es+/K4NA9g2NsbzaPGO/unIxeSpN43pmt6d77mOX
         qQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9UNEaxniJOxIl+QL6sNoKeigaRuo2rRI7gSKa+ok2k=;
        b=G0q6JAuFpbIC3s/YLcsAf+DUOHTBgWA01sHprGCfycOJZyvp6SGobILBm+uBtEyJ5x
         VW7k4PCR6y1oPevbEeh8srf75kjrcGhJ2u0NIH8dHZQ718pht83ZuuWnEDh9DJB8n3CX
         KssGVQqX8I0OFxuj0FVuzaeCXwkXzdO2Z8UVDEYYJ8UCYrUGrUCbmRZSmMyVImhBRuEY
         LRXv5HWrhvGdVJCb32VyelNF2fQdpseAJzpJJryDXaf7ELBs4R1xP9rd1prVUQmUK4Nk
         s0o8ebgheJusUzaqPXXGnsLinDJO5xFt5fzIK/u23hR31LxGMWNPsO0OypUCjDaT4YNT
         LH/Q==
X-Gm-Message-State: ACrzQf0c2nbmsIdCOdD5Jsyx/ngla+0CyiTcm3ySsRDZ9e9TFwQN+JFj
	duShVqXgnKVzqgNyWJA2BgyiYA==
X-Google-Smtp-Source: AMsMyM5degi54WIP7HEpBXlWnCtt9i8SZcMzy3L8X1MChmcxnRhCILlYG+NheM4IBorsQA2JoRGzmA==
X-Received: by 2002:a2e:2e0a:0:b0:26d:cfc6:d6f7 with SMTP id u10-20020a2e2e0a000000b0026dcfc6d6f7mr9503834lju.34.1668108177276;
        Thu, 10 Nov 2022 11:22:57 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 12/13] phy: qcom-qmp-usb: fix regs layout arrays
Date: Thu, 10 Nov 2022 22:22:47 +0300
Message-Id: <20221110192248.873973-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112258_945332_6AB8A2A4 
X-CRM114-Status: UNSURE (   9.91  )
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

Drop qcm2290_usb3phy_regs_layout, it is a duplicate of
qmp_v3_usb3phy_regs_layout. Introduce qmp_v5_usb3phy_regs_layout to be
used for sm8350 and sc8280xp.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index aa6db5b679c0..74c04cb497f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -127,13 +127,15 @@ static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
-static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
-	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+static const unsigned int qmp_v5_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+
+	/* In PCS_USB */
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
@@ -1662,7 +1664,7 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
+	.regs			= qmp_v5_usb3phy_regs_layout,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
@@ -1878,7 +1880,7 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
+	.regs			= qmp_v5_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
 	.has_pwrdn_delay	= true,
@@ -1904,7 +1906,7 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
+	.regs			= qmp_v5_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x1000,
 
 	.has_pwrdn_delay	= true,
@@ -1927,7 +1929,7 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qcm2290_usb3phy_regs_layout,
+	.regs			= qmp_v3_usb3phy_regs_layout,
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
