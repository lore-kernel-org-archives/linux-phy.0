Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C17D6C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX5vhnSBhMLnv2oHENnN6FQOxzFq+cFLxf9X6nYRrn0=; b=ecOx273AWPHUKD
	uPCagwMz5jjUJ2zTWk5+XqhYk0HBwvm1JD2uONMNe/6spndRIpYv1x/Ke0V/G5ZzqvXZzbgQLbSFT
	6xz/5SkcZGJrvwPvjryoD0SbwKBDqEZnYBWSFPrWBX3fbMENxunBAvz4ZLaLMEzPsh2+KpXC/1qMv
	DPJw8xbAv1eutdTsPwmQcASHLbQzqSdHeHtad/I9ppm9EzDPkdI32FBoqzpBWhq8BgAWIGSC0U95E
	+Ccvf+0OwU1d/LFCp8Jct4b1z+4JOe2sh5RIRZlxAu6BGmBLKFikukcW+6A/MCRnjDWhwfEKgYIC7
	RvIMu6Y82T4uNTm1pUqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFR-00CsmK-13;
	Thu, 07 Dec 2023 13:17:01 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFN-00Cskv-0V
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:16:59 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a1f47f91fc0so37907666b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 05:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701955015; x=1702559815; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xa8dEiJBLLbSr7oah32Ga0X1ZeGdAWpw83zp+j4JJbo=;
        b=RQiRxwCDImzP6qO+9j5lAeiyuyNr8WmXedIXoXyzZA78VgQNGf34nuSB73rrmbgeKo
         9vzPGQcneeblOdTUSxsxzUqJO+aoGOYHTprXk1Or6L8847EqLMxJq53SARhbSYosXja0
         VEWnT4WFBHOxkSMH4vwATENeIuivV19hVxSwWKLp5JRXvtDfYUEnnyCg2J1+c6myQ7op
         ckN1phbm23Lkucu4jk+MWVf8SOJtUm0ZPds8TKDJ4lCDoUB/y/hzLz0I++4Fk/Q/26rI
         RiegYFICtzNtGKpssujdKs27WPuho2w7CbjCex9NZsUlzFZc9xVARySMXRLNQPcpnGJv
         PBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701955015; x=1702559815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xa8dEiJBLLbSr7oah32Ga0X1ZeGdAWpw83zp+j4JJbo=;
        b=jMKGMvnMlEbblm94oaYONXVElKvO0ge1H9t+CNnJDtqTbKXmIZ6znDwC90XDj9hyFg
         hCSTtr8xIKtqqI63YowkcRW5z29GUQF0ORUT0TF2KXSCCnQhzWHkNqtpTXg0wyPeFpf8
         MhJiSu5dO1pPJD9jpN9+7UC/tWxYlfndYtxKoezGWBb4V1MDpa2tZu/mXeRr+GAmnUee
         4nBWxujg5dQMIn9/PxtTfFVEqs9FwWvdVExzwlJ8UNcpE8fwr3fBfoKscUdISTA2Tc+I
         cYcipeM1qNcBzvy+YyuAXFJKOXlAMJ7x4tNxkYTSlSVgZ6hphx3NN7A3EKr5uPQ+jF3s
         Kp/w==
X-Gm-Message-State: AOJu0YxaxGQncxPEUwTct3013PTEgabcYCqu+8hsmGoPBPOlAL7M8xgj
	zmisH6GWU7oFYhNW2MQaBlQ42Q==
X-Google-Smtp-Source: AGHT+IG15kT2pKDMzRwHSb/NPezO5Ylenrg4443rNYfus3P8jJGTihOZ4yDoYeJFQwGxrO6H+9Uk9w==
X-Received: by 2002:a17:907:1705:b0:a02:9c3d:6de7 with SMTP id le5-20020a170907170500b00a029c3d6de7mr1659766ejc.13.1701955015652;
        Thu, 07 Dec 2023 05:16:55 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id d8-20020a170906040800b00a1d01b11498sm815233eja.24.2023.12.07.05.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:16:55 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 15:16:42 +0200
Subject: [PATCH 2/2] phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys
MIME-Version: 1.0
Message-Id: <20231201-x1e80100-phy-combo-v1-2-6938ec41f3ac@linaro.org>
References: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
In-Reply-To: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10078; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=9u9h0BUCZSXarv4yUlcWGSNWlUA6PKuleUPhyX5kOIY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlccXCdx88JbstPs/KccvysAbmS59toQaIYTNbr
 YJdTY2+lvOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXHFwgAKCRAbX0TJAJUV
 VrMVD/9/9ItOLcRNESeBFzJH3jwTHYq+gQ2ADTcWsWrt09Jp5Eby0zKxON+VlYvduIfbM6ifFRj
 L9El68TCi4V4tr5xtGBsQHJ3X1NdU8GEj4OZqCAjHuGxTKoFzXoCGKI5BEMovPUIZAX+cIu1U1f
 TFgPWzsKh5ar6PwFQPgfgbV6kGDUBp3KFTyLGufaIo0mzS1fhvbpIBNG5Le2WCM9JxabhWQrTAB
 KAimP1u4r0o3ltdS2m0K430D2m47f/tAeC37CbXhU2Pe65n4O5s7Yz20G9Ph+P3CTAOIryCJjJe
 BDxUuh/zyJ48CX0iSXYoJCLWAPDQk6qfFMuvnpvQKmjbBZjJZSlyPBZVdwj1Lakf79v+728K7Q0
 ZC37jdYAnhiSN8mQUcY6hX4hV81zokKKzW1EoZWzA6K1Sdd6j/M4iQ0DTmoW3Ltzk6a705tzwAp
 CESuYNH3wiC6M9TD13RJKPaOVC80BLRB2AujPrJRTsSQMyYu++itTfMNzennt6l0NePLk66wLJ1
 k/g84PmspwUAM3fKqCE6Fu1ML3ObRZn4ZVziepB3qpY0kIEhva6XAcpYrPShEYVaaU4nyYRfAKN
 +S37S31QIdMiRCXPXbPVjZj0NEENPL0J5TqkPcuVCiTndEDCLzX+CKbZ7EzY3PYUbd8WL3ALqHx
 +jUy330nfpErhpA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_051657_251918_73DE2C53 
X-CRM114-Status: UNSURE (   9.09  )
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

The X1E80100 has three copies of an USB/DP compbo PHY, add support for this
to the Qualcomm QMP PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 170 ++++++++++++++++++++++++++++++
 1 file changed, 170 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 0417856b8e7b..cd88f7b51088 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1203,6 +1203,127 @@ static const struct qmp_phy_init_tbl sc8280xp_usb43dp_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_usb43dp_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0xba),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0xba),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CORE_CLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x76),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE0, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE1, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAXVAL2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SVS_MODE_CLK_SEL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
+};
+
+static const struct qmp_phy_init_tbl x1e80100_usb43dp_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_TX_LANE_MODE_2, 0x50),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_TX_LANE_MODE_3, 0x50),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_RX, 0x0a),
+};
+
+static const struct qmp_phy_init_tbl x1e80100_usb43dp_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_SIGDET_ENABLES, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B0, 0xc3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B1, 0xc3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B4, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B5, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE_0_1_B6, 0x64),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B0, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B1, 0xee),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B3, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_MODE_RATE2_B6, 0xe3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_IVCM_CAL_CODE_OVERRIDE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_RX_IVCM_CAL_CTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_RX_SUMMER_CAL_SPD_MODE, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_PI_CONTROLS, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_PI_CTRL1, 0xd0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_PI_CTRL2, 0x48),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_SB2_GAIN2_RATE2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_RX_IVCM_POSTCAL_OFFSET, 0x7c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_VGA_CAL_CNTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_VGA_CAL_MAN_VAL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_DFE_DAC_ENABLE1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_DFE_3, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_GM_CAL, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_FO_GAIN_RATE2, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_UCDR_SO_GAIN_RATE2, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_N4_RX_RX_BKUP_CTRL1, 0x14),
+};
+
+static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RX_SIGDET_LVL, 0x55),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG2, 0x30),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+};
+
 /* list of regulators */
 struct qmp_regulator_data {
 	const char *name;
@@ -1684,6 +1805,51 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.regs			= qmp_v5_5nm_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v5,
+
+	.serdes_tbl		= x1e80100_usb43dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_serdes_tbl),
+	.tx_tbl			= x1e80100_usb43dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_tx_tbl),
+	.rx_tbl			= x1e80100_usb43dp_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_rx_tbl),
+	.pcs_tbl		= x1e80100_usb43dp_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_pcs_tbl),
+	.pcs_usb_tbl		= x1e80100_usb43dp_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(x1e80100_usb43dp_pcs_usb_tbl),
+
+	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v5_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v5_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
+
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v45_usb3phy_regs_layout,
+};
+
 static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 	.offsets		= &qmp_combo_offsets_v3,
 
@@ -3562,6 +3728,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
 		.data = &sm8550_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,x1e80100-qmp-usb3-dp-phy",
+		.data = &x1e80100_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
