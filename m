Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8D78C6FA90
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGThQ0gN9snr6boSjEbvIybBgEttqCIIt3SB1ll2Q6I=; b=JkiJFcvlJzaGg4
	OsgG/vXGHAMWijnfichNiluDfyCO5xX5rQLAVGSj49KhF2NESopJTppuyiK1rxO6zMj2sN1xpuTk9
	QswvlEEum6dk7qqb0ByhlF6ncoZJMBak3j79EuraCThF3Bv0cMA6Vc8b0MV2GP9mv/VK1u8WM3RTt
	juSyhoVz/YQZqzWGvZU7cFQRa6vOcc+lfAlzzKNkggVfIvarY/ilcRouJl34JVhHflVJUy7v6+Gcn
	HcKuw0ClyI6XTqk9d5ncLtMuWlFwSGUxskdeMg1qBcGWCiajkC38O1sifHaYmuvs/XBP0140B9LUz
	6MDHhGTlZJG2HE9pNH/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cNd-AI; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCG-000cJo-S9
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:34 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a14so15908137ljj.8
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=a7EqG/1VYfnHhAxJfXc3Dru7bP2iZl5ghSTkhGzgxos=;
        b=lWNlIFMziG4oYKmPgbm1C+wmuIF9M1PXDOEfhKfxFV0Cm2/C6/wXmCQoGbfCQSaIhu
         eRe/yp+RAu4vHjSDfd168wNPnlxNStdxKTdxgusowy0DPPb/Ws3YnVpxtF+0UY4tRzdd
         kG+igkVgYumiI7FgoLnfAF2O/ROX9DdV9Rq0RLEL1WUWMQtbkQUTO2o9tFRMfzQ6reOG
         GxkBLUZqLygmloieBsHdZpfsoE6XLOOFSkNXp/rYSsVlqzpuO//4hpa+oFNLEGYAPayp
         8WE/j4+j1y1mD3MHWwysKk8OeqIdT1v3kGg94Z8lfIzZBCXF/7uqr0+hRTHXNr2Fg38g
         VRtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=a7EqG/1VYfnHhAxJfXc3Dru7bP2iZl5ghSTkhGzgxos=;
        b=JiMSh0sgnNcmJYWIEx37VMxC4nCdT0yA0WAZhyOG6S3S2KnfC0pu1wz1gx5OQd040X
         h8r22BEBgCWudwPJ0O6BUAsPRd3DPv2As3PrS3KSOizLo0d0TmEoAIPb7DWYWSAAK4jY
         mRpWRcBtSFQVlUUOmDVshjyxfKRI11cgIVTufCjM9RqLKDRTmfhX1hniO90XJ7dVeAA4
         3rpNvxPWvzXyvjhvM3dkgltUx/7Uw6qevP9yNg5i4J7iQ/EqL3e68/xVtSpojYHdrtZG
         ncYBxMputhEnPouMXAFbcH40AMaEkRR2nOiTMbOLaCBH9gz1OUopjw8OoQ//YiOWQB7U
         0Z1g==
X-Gm-Message-State: ACrzQf2nrizSVUip8iIBlQrh1CRsyuRMwlTOGOO4BzhUFlObmoaoFPtP
	KM/hgYODbvx1vwgKrpNahB5Jwg==
X-Google-Smtp-Source: AMsMyM75yM+rQzz3RDnnBhWsmktro9/Vk1Zk65IuLrip/eTLsRBqz/7hL5cHjXSl9K47zUGkF9Vlvw==
X-Received: by 2002:a2e:9644:0:b0:26d:a785:f5ba with SMTP id z4-20020a2e9644000000b0026da785f5bamr61693ljh.364.1664406631600;
        Wed, 28 Sep 2022 16:10:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 17/18] phy: qcom-qmp-usb: rework regs layout arrays
Date: Thu, 29 Sep 2022 02:10:13 +0300
Message-Id: <20220928231014.455201-18-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161032_932994_271DD6BB 
X-CRM114-Status: GOOD (  10.05  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 64cf43901d64..7cc53765b300 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -114,23 +114,23 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
