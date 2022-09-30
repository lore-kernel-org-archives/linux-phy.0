Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320DBC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/7rFn5j7BEOn/qBx4b5OwtwugZjWG/0Uh0ZY+4q/8M=; b=P3hupvPLcGJccS
	NZvDqzz2pDbS+Wakma8bxf8UkE78M+KSOp0teBYK148KimqxZqiFp28Wbg31hOrOptPDgtaQnO+gK
	OCJa9X0tsfMxF2xqzazj/djfH3eoLL1SyhU6E1pzV+SLNd4ImVVZEZOCmXcS15JExYPn7RT3M5gMY
	/j9BCAJEnpftBeMhXlA6qrk7hnOm6TmfcKHdHHBALrhaA77EcYi6ASXTIqfFkXhEt7DyPZ5MWkWgO
	Ee+T7rsI3GPNyvUyhvxW0dM3mjL1ETXqS6GLRHjCTOoOM0as566nD+1jDZB2tZPWu8S7frxiYyLx3
	AkxaRxA44MqDYOLI7idQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECz-008sRm-Fr; Fri, 30 Sep 2022 11:29:33 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECw-008sOw-R7
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:32 +0000
Received: by mail-lj1-x22e.google.com with SMTP id c7so4440151ljm.12
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nSXV1yHLDAgStureWR7slbpjLByUEvjTF6GIuS9e+gM=;
        b=imBifdOy+V/FOVkAVeUs1lbVmHIG3eONjAqhrKD2DMS3Pv8bIbGj0cFSoFrtGaSZDo
         q/HBSjzwaMHH0ytreCHrlKG/Or5JV2I5NpvU889zuXn3Sljf/Y5JrRdgcNQKsnXgpcOq
         SOUIfGPYZ6ncGKeXGr/h3aWrJpJiOmGVEONF21QgkcPk2ohk/zn93sUPfNKS+yvxnzUM
         ra6DNCIlN/aahwmqit7OOo8KgPSvp20eT417u+p3ZQ35tWsqxHLPzjkcvaq4iOILB9Jr
         nkXuOopwgaIEyhdnMuDzm3MaOI2I2+R2Jd8/9vliuk8iVP7BQSR3vD5VE7MO5uTuspmU
         MSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nSXV1yHLDAgStureWR7slbpjLByUEvjTF6GIuS9e+gM=;
        b=i/UWuBKboOb0u9kzzbfeNjjHAB6hCpzfbet4wTyQHMMNO0CBYGQMofDnFht1AmSUp3
         iSYgU0iqwJ0I7aQ7bHLtPR1bccJq7Eh70zrNwPxxDUZFmjXnr8SAD56RsI1V9yk8pMJh
         HVvzNbsnho5Sb7Tmo7ISlersMLWiSeZSCsJON9Lg1klsWxrDFTzPKQVVjGTCYd7hbRr3
         b3YjX8xn0Ys473Rlu/WJ2eSoc0fUjtVo0fYAZU88p9NQSN/rtKd7XJorHYGpBiuHQVAW
         XmF9Xs9fpGDpSnvTDRAnO6W6fZVMBcaqpgtm4iZo9UF7XqRQ0bOMaIgIoNz9Bs+IZqbu
         +sGA==
X-Gm-Message-State: ACrzQf3w6tuAmKNoYarBUetXHCvsKC8MIhDenCGS73A4+9y1jX5Po0f2
	ppTWu3mr/6AqetYSIbatBdvqMA==
X-Google-Smtp-Source: AMsMyM7VuDXqbJCSXBQJg42SaSJQVyiQRZ+1grr10QR8mGZYiyyrDbH4dPitEv2Iy0fJSaI1g4byaA==
X-Received: by 2002:a2e:958a:0:b0:26a:a393:4480 with SMTP id w10-20020a2e958a000000b0026aa3934480mr2673724ljh.490.1664537368587;
        Fri, 30 Sep 2022 04:29:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 01/12] phy: qcom-qmp-pcie: rework regs layout arrays
Date: Fri, 30 Sep 2022 14:29:15 +0300
Message-Id: <20220930112926.638543-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042930_905046_EA83910C 
X-CRM114-Status: GOOD (  10.82  )
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

Use symbolic names for the values inside reg layout arrays.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 32 +++++++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |  4 +++
 2 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 985e81d276be..053e2574254b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -87,24 +87,24 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]				= 0x00,
-	[QPHY_START_CTRL]			= 0x44,
-	[QPHY_PCS_STATUS]			= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]		= 0x40,
+	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -115,10 +115,10 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 };
 
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index c8515f506872..2624a1ec3e73 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -7,7 +7,9 @@
 #define QCOM_PHY_QMP_PCS_V2_H_
 
 /* Only for QMP V2 PHY - PCS registers */
+#define QPHY_V2_PCS_SW_RESET				0x000
 #define QPHY_V2_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_V2_PCS_START_CONTROL			0x008
 #define QPHY_V2_PCS_TXDEEMPH_M6DB_V0			0x024
 #define QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0			0x028
 #define QPHY_V2_PCS_TX_LARGE_AMP_DRV_LVL		0x034
@@ -43,4 +45,6 @@
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
 
+#define QPHY_V2_PCS_PCI_PCS_STATUS			0x174 /* PCI */
+
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
