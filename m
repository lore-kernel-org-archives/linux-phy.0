Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C72B6C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKGjIDomV6dABLFHQmqUSJBeWeVfWUDTLuFWOy+Ud3g=; b=Dpt+EOd/+kLyqQ
	OjRsbPITzUKX6alcbrgE69mHC4F1GdeBbaxxQ+WLiOBzBrwayCAt8upz8+gef02trWa4yyJ/lQwoM
	vietSUJz3OLFCuMoCEHqzt8YLtx4AV6rigp41Ree+TFGxmk5KCrCQ1z3d4emC1SBWCDfCrwIJYlI9
	DJPDExSanZPPaDghhVYe5o6gbNx7ud4GNi3EKaR0kkIl2WIj0gry0rXNW9ZTvc72TdHGiq7c9lFBI
	eWwxLzew4VQGde9kbbPT4PF/Bz2AvgsfHTKPOr4qK5Ea4DEQux/RiUYW7kbwk+yF5VV0aK3GyTxN6
	yUAC9XJXuBR8Weix2pcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHx-008mFZ-Un; Thu, 10 Nov 2022 19:32:37 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8Z-008fcf-FU
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:22:57 +0000
Received: by mail-lj1-x229.google.com with SMTP id u2so2071713ljl.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3MfHFl5+9oIb/dyhvDMfo1zDB+ckrHol7IiWxVPsX08=;
        b=tgLzPj+IYlTKIrVvOpxTHHbhUcNUwXijR3/SJfroscCNy0N9PbXO7hDJlhg/QBZBJk
         VUFz3PqQnigOL+vCrZ1BRLq9AvQxTi/SX/qVofVJMwU9AATm3PMlBJ37iGmlI2Z3mtZA
         Fg95toBl/t8H4Fy1UXx2rG0yeOwugQtNs0xLHVb0EOEnmGfWaEDItscqez4TqNqHZX78
         sOSWiBwZOgDZMK/rqcdnqf6fJqMhGvU0CnV/5EJcrOy8IkP08gA4SetEsOdQljj6YBzk
         y5pQdM3ulNvZxEFrV87aIQiHrIppVg8gDnBP8HexV98ml4l1r+wbe5gp0i4E2UkZ32UX
         jtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3MfHFl5+9oIb/dyhvDMfo1zDB+ckrHol7IiWxVPsX08=;
        b=ZX23/9OYamUA+zwI1PZoA9VQh+gZ6r7cnExbOGOxUCNB+w4q3WQBX/96S3zmtGgGQ/
         azlEZv/RRqzW442NHB2CU1duMsR4aJQP+M1ONgxChyP0VmapBU7z7KcdxgN3oAkvAIfg
         vfDfUX7WMITdI+6M+kT6olPnJk7iW+a6CWrTxB83QlaDB1U3P5bfN2K0dxoTjNuSrTQR
         0ZEYN3T0jpSn1zCHwAxLhWcj0J/CHKJwGm8c11dwHE4DUhRKB96ruOcuoucrL78BBDtE
         fmDoQ0981j6tywUex64fkldk0/UVoeW0C3tZKfk0MFvAzFXBOPjHAvm883kgdnCAOFFe
         P07w==
X-Gm-Message-State: ACrzQf39MnwDn8TknlVesd37zC2hhYTsw2LOJnF8KDR5Xgv7uAQFeGZk
	IELeV3kopINW7b58HpNj6vl8QQ==
X-Google-Smtp-Source: AMsMyM4wTvoQO1C+IVec0e6vFvBYZQTDcCQwCyuIt5m9rXKfIHcA+NBp0E/IGWj1qjQVwMvwTJEzog==
X-Received: by 2002:a2e:8e90:0:b0:277:4145:8205 with SMTP id z16-20020a2e8e90000000b0027741458205mr9041688ljk.50.1668108171559;
        Thu, 10 Nov 2022 11:22:51 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 03/13] phy: qcom-qmp-pcie: rework regs layout arrays
Date: Thu, 10 Nov 2022 22:22:38 +0300
Message-Id: <20221110192248.873973-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112255_563449_D5C3D53B 
X-CRM114-Status: GOOD (  10.23  )
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
index 8fa66458c259..7de0ac23ff0b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -77,24 +77,24 @@ enum qphy_reg_layout {
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
@@ -105,10 +105,10 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
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
