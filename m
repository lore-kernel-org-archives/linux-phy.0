Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BCFBC47DA2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFs27owpVDy/hb7ngLxJeDWDmeYE97vl1su0bw/iJRc=; b=y08wKAYAFxo+y+
	CNPeimgp6aTKbSVUpi9MZIDbAYnTQdgdhwRqEiXKX3kIT3Xn6D4sK/rraFJKUO4bp2MDXXA+R9rKZ
	nVABFchqr+xgRADMaAvaS8kt+DowCxSTdBAMjhQ//gokwxNW+H3HZ//LOUlY9kyRH26DdchpdO3gD
	JFiVm0zUAAAHD0S6vfiRAKo8SQ+hSs8FHLoP/CpbxSr1mQyDpbdIumXHdR9xsZOVTPrGHf5QxwKwb
	/rcfnNJurgLELkN/K6WEnXYWScLca2aOniaGmbQYg1jbcvBAJWcZleE09mvpY25Mae9yTyAb1aiHa
	9FXfuutaJSTqSsG9GJng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PZ-006ktF-2b;
	Tue, 09 Jan 2024 03:04:17 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PS-006knq-29
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:14 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2cd56dac1adso17828731fa.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769447; x=1705374247; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TP6GRjzdQEtuwVNJ22A6QSMTAgb1n7vuBGLyOlDRLe8=;
        b=A+p/fLpShdW2FRMXL+RKN7qRHu5Upbt2FsiMm381l4vYcOgHYl+TANDmrv8+wkLUoK
         Y6ZVc9lPNDT8EokaCnTgTSNAV7gIGOUjumN3O3PAcqxbMsMXDyVDmEIsLGSbtCvx9xyk
         E+twxvyNwh4G9mjRFnS0DRW5uqNfCtHLxJVNmFUMu4bgpeTJlRirxGAMWJyUVXG1Ci0O
         +dvTI9PpLJHy9mpOtmfWJntUo15vncdormNCmUI0Qpi2zpf3bJxhdQEvi4ZnGop60mMl
         J/earRu/cxNcsumet1vKW8ICbVdRNqX8wuynAB3o6kZf8oyx/AV8Uz3/LyC4leYj4qRN
         9EJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769447; x=1705374247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TP6GRjzdQEtuwVNJ22A6QSMTAgb1n7vuBGLyOlDRLe8=;
        b=Vu5covN0KT7I8qwhQ15tICSdZLmnmV7D5L673jvfqzwI/gCn9A5afzKHFJ9JIvKgLT
         BhMVZhrBEJxVQ6aoSPnPvGDcLmaYkVWWyDOiWv5XHFzAv9hswhUhvWcPi7pV5z6h53H8
         Hl60JzVfwxGRcL4ObKg3ABYb++FxJYaWz8t+uPrEDI+pzQ/Iq1Rb1y77HaieFAmw3ASW
         d+W+0nNt3+PtRPtWifqo3Be+gY129fxMyl9rp90ba4LKNZ5/NEAiyX19idzkXrNyaKMb
         wrv29rquL+26a5iHN3za5AWIBvJmCLdnfAtNdcNtjXn6bNn8OHRIHPSK5uHixTN0V8Ya
         Cj5g==
X-Gm-Message-State: AOJu0Yw/jxIk0Ps7flMpYJY4wb1NvbOns9A00XOoKVbOhD6srnfrbkUe
	dk4YTrECfxLNJztcQE4mQCxc5SsICKDq4w==
X-Google-Smtp-Source: AGHT+IE1sTVVo8uE8LihK9ZbIhbtt6Rkz8ckVcVwexXuLeDtay3Gex/huWIqtIH9sZYP7VaavAa0iA==
X-Received: by 2002:a2e:be93:0:b0:2cd:936:8b68 with SMTP id a19-20020a2ebe93000000b002cd09368b68mr2630346ljr.56.1704769447564;
        Mon, 08 Jan 2024 19:04:07 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:04:05 +0200
Subject: [PATCH 7/8] phy: qcom: sgmii-eth: use existing register
 definitions
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-7-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=25939;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=MNDcGPi3jXRbFhtBDOtCVwUNUCWjxnA1vYQ96GhwJlI=;
 b=owEBbAGT/pANAwAKAYs8ij4CKSjVAcsmYgBlnLehsGmhNkR88GYVPc38StH2fWtyavmkO8Iow
 +GWvdaBxEWJATIEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oQAKCRCLPIo+Aiko
 1Yx1B/igbsrx78PyddiodJt1Oo2l01yJr7b8eqZ/iYd/wmKjAdMN3eDStx7wxKJjzkkLcyW37wj
 2YpCNZuzKIBYtIkBj6suRvltIWVMsBiDBnWX8TJo4G+oyrFoM5qPo61/UIBN9QOOhFG/R9PUcXl
 czxSiL/BAkzIY191m8feBPUyK2bqA/2a5vQjGy95KFfMuTiwprtpJ0Q3P30VORQIXMgK7tz8NgT
 ScurJUBlPOZ8bwMDAjiidpglysY0+IUU6yRtFLk5ukM/ieBhpLw0FHtWVoC8q7UJhuABn2D5X+V
 iSO7eUleVFlxLq0V3JMi56RfuicDHotVKJb4ypFeKKZtpis=
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190410_712017_A5552CD1 
X-CRM114-Status: UNSURE (   7.82  )
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

The Qualcomm SGMII SerDes PHY is a QMP PHY. As such, it uses standard
registers for QSERDES COM/RX/TX regions. Use register defines from the
existing headers.

Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 367 ++++++++++++------------------
 1 file changed, 149 insertions(+), 218 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 03dc753f0de1..233f9b70c673 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -11,83 +11,14 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
-#define QSERDES_QMP_PLL					0x0
-#define QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE0		(QSERDES_QMP_PLL + 0x1ac)
-#define QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0		(QSERDES_QMP_PLL + 0x1b0)
-#define QSERDES_COM_BIN_VCOCAL_HSCLK_SEL		(QSERDES_QMP_PLL + 0x1bc)
-#define QSERDES_COM_CORE_CLK_EN				(QSERDES_QMP_PLL + 0x174)
-#define QSERDES_COM_CORECLK_DIV_MODE0			(QSERDES_QMP_PLL + 0x168)
-#define QSERDES_COM_CP_CTRL_MODE0			(QSERDES_QMP_PLL + 0x74)
-#define QSERDES_COM_DEC_START_MODE0			(QSERDES_QMP_PLL + 0xbc)
-#define QSERDES_COM_DIV_FRAC_START1_MODE0		(QSERDES_QMP_PLL + 0xcc)
-#define QSERDES_COM_DIV_FRAC_START2_MODE0		(QSERDES_QMP_PLL + 0xd0)
-#define QSERDES_COM_DIV_FRAC_START3_MODE0		(QSERDES_QMP_PLL + 0xd4)
-#define QSERDES_COM_HSCLK_HS_SWITCH_SEL			(QSERDES_QMP_PLL + 0x15c)
-#define QSERDES_COM_HSCLK_SEL				(QSERDES_QMP_PLL + 0x158)
-#define QSERDES_COM_LOCK_CMP1_MODE0			(QSERDES_QMP_PLL + 0xac)
-#define QSERDES_COM_LOCK_CMP2_MODE0			(QSERDES_QMP_PLL + 0xb0)
-#define QSERDES_COM_PLL_CCTRL_MODE0			(QSERDES_QMP_PLL + 0x84)
-#define QSERDES_COM_PLL_IVCO				(QSERDES_QMP_PLL + 0x58)
-#define QSERDES_COM_PLL_RCTRL_MODE0			(QSERDES_QMP_PLL + 0x7c)
-#define QSERDES_COM_SYSCLK_EN_SEL			(QSERDES_QMP_PLL + 0x94)
-#define QSERDES_COM_VCO_TUNE1_MODE0			(QSERDES_QMP_PLL + 0x110)
-#define QSERDES_COM_VCO_TUNE2_MODE0			(QSERDES_QMP_PLL + 0x114)
-#define QSERDES_COM_VCO_TUNE_INITVAL2			(QSERDES_QMP_PLL + 0x124)
-#define QSERDES_COM_C_READY_STATUS			(QSERDES_QMP_PLL + 0x178)
-#define QSERDES_COM_CMN_STATUS				(QSERDES_QMP_PLL + 0x140)
+#include "phy-qcom-qmp-qserdes-com-v5.h"
+#include "phy-qcom-qmp-qserdes-txrx-v5.h"
 
+#define QSERDES_QMP_PLL					0x0
 #define QSERDES_RX					0x600
-#define QSERDES_RX_UCDR_FO_GAIN				(QSERDES_RX + 0x8)
-#define QSERDES_RX_UCDR_SO_GAIN				(QSERDES_RX + 0x14)
-#define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		(QSERDES_RX + 0x30)
-#define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	(QSERDES_RX + 0x34)
-#define QSERDES_RX_UCDR_FASTLOCK_COUNT_LOW		(QSERDES_RX + 0x3c)
-#define QSERDES_RX_UCDR_FASTLOCK_COUNT_HIGH		(QSERDES_RX + 0x40)
-#define QSERDES_RX_UCDR_PI_CONTROLS			(QSERDES_RX + 0x44)
-#define QSERDES_RX_UCDR_PI_CTRL2			(QSERDES_RX + 0x48)
-#define QSERDES_RX_RX_TERM_BW				(QSERDES_RX + 0x80)
-#define QSERDES_RX_VGA_CAL_CNTRL2			(QSERDES_RX + 0xd8)
-#define QSERDES_RX_GM_CAL				(QSERDES_RX + 0xdc)
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL1		(QSERDES_RX + 0xe8)
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2		(QSERDES_RX + 0xec)
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3		(QSERDES_RX + 0xf0)
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4		(QSERDES_RX + 0xf4)
-#define QSERDES_RX_RX_IDAC_TSETTLE_LOW			(QSERDES_RX + 0xf8)
-#define QSERDES_RX_RX_IDAC_TSETTLE_HIGH			(QSERDES_RX + 0xfc)
-#define QSERDES_RX_RX_IDAC_MEASURE_TIME			(QSERDES_RX + 0x100)
-#define QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		(QSERDES_RX + 0x110)
-#define QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2		(QSERDES_RX + 0x114)
-#define QSERDES_RX_SIGDET_CNTRL				(QSERDES_RX + 0x11c)
-#define QSERDES_RX_SIGDET_DEGLITCH_CNTRL		(QSERDES_RX + 0x124)
-#define QSERDES_RX_RX_BAND				(QSERDES_RX + 0x128)
-#define QSERDES_RX_RX_MODE_00_LOW			(QSERDES_RX + 0x15c)
-#define QSERDES_RX_RX_MODE_00_HIGH			(QSERDES_RX + 0x160)
-#define QSERDES_RX_RX_MODE_00_HIGH2			(QSERDES_RX + 0x164)
-#define QSERDES_RX_RX_MODE_00_HIGH3			(QSERDES_RX + 0x168)
-#define QSERDES_RX_RX_MODE_00_HIGH4			(QSERDES_RX + 0x16c)
-#define QSERDES_RX_RX_MODE_01_LOW			(QSERDES_RX + 0x170)
-#define QSERDES_RX_RX_MODE_01_HIGH			(QSERDES_RX + 0x174)
-#define QSERDES_RX_RX_MODE_01_HIGH2			(QSERDES_RX + 0x178)
-#define QSERDES_RX_RX_MODE_01_HIGH3			(QSERDES_RX + 0x17c)
-#define QSERDES_RX_RX_MODE_01_HIGH4			(QSERDES_RX + 0x180)
-#define QSERDES_RX_RX_MODE_10_LOW			(QSERDES_RX + 0x184)
-#define QSERDES_RX_RX_MODE_10_HIGH			(QSERDES_RX + 0x188)
-#define QSERDES_RX_RX_MODE_10_HIGH2			(QSERDES_RX + 0x18c)
-#define QSERDES_RX_RX_MODE_10_HIGH3			(QSERDES_RX + 0x190)
-#define QSERDES_RX_RX_MODE_10_HIGH4			(QSERDES_RX + 0x194)
-#define QSERDES_RX_DCC_CTRL1				(QSERDES_RX + 0x1a8)
-
 #define QSERDES_TX					0x400
-#define QSERDES_TX_TX_BAND				(QSERDES_TX + 0x24)
-#define QSERDES_TX_SLEW_CNTL				(QSERDES_TX + 0x28)
-#define QSERDES_TX_RES_CODE_LANE_OFFSET_TX		(QSERDES_TX + 0x3c)
-#define QSERDES_TX_RES_CODE_LANE_OFFSET_RX		(QSERDES_TX + 0x40)
-#define QSERDES_TX_LANE_MODE_1				(QSERDES_TX + 0x84)
-#define QSERDES_TX_LANE_MODE_3				(QSERDES_TX + 0x8c)
-#define QSERDES_TX_RCV_DETECT_LVL_2			(QSERDES_TX + 0xa4)
-#define QSERDES_TX_TRAN_DRVR_EMP_EN			(QSERDES_TX + 0xc0)
-
-#define QSERDES_PCS					0xC00
+#define QSERDES_PCS					0xc00
+
 #define QSERDES_PCS_PHY_START				(QSERDES_PCS + 0x0)
 #define QSERDES_PCS_POWER_DOWN_CONTROL			(QSERDES_PCS + 0x4)
 #define QSERDES_PCS_SW_RESET				(QSERDES_PCS + 0x8)
@@ -115,77 +46,77 @@ static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
 	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
 	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
 
-	regmap_write(regmap, QSERDES_COM_PLL_IVCO, 0x0F);
-	regmap_write(regmap, QSERDES_COM_CP_CTRL_MODE0, 0x06);
-	regmap_write(regmap, QSERDES_COM_PLL_RCTRL_MODE0, 0x16);
-	regmap_write(regmap, QSERDES_COM_PLL_CCTRL_MODE0, 0x36);
-	regmap_write(regmap, QSERDES_COM_SYSCLK_EN_SEL, 0x1A);
-	regmap_write(regmap, QSERDES_COM_LOCK_CMP1_MODE0, 0x0A);
-	regmap_write(regmap, QSERDES_COM_LOCK_CMP2_MODE0, 0x1A);
-	regmap_write(regmap, QSERDES_COM_DEC_START_MODE0, 0x82);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START3_MODE0, 0x03);
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE1_MODE0, 0x24);
-
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE2_MODE0, 0x02);
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE_INITVAL2, 0x00);
-	regmap_write(regmap, QSERDES_COM_HSCLK_SEL, 0x04);
-	regmap_write(regmap, QSERDES_COM_HSCLK_HS_SWITCH_SEL, 0x00);
-	regmap_write(regmap, QSERDES_COM_CORECLK_DIV_MODE0, 0x0A);
-	regmap_write(regmap, QSERDES_COM_CORE_CLK_EN, 0x00);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xB9);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1E);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_HSCLK_SEL, 0x11);
-
-	regmap_write(regmap, QSERDES_TX_TX_BAND, 0x05);
-	regmap_write(regmap, QSERDES_TX_SLEW_CNTL, 0x0A);
-	regmap_write(regmap, QSERDES_TX_RES_CODE_LANE_OFFSET_TX, 0x09);
-	regmap_write(regmap, QSERDES_TX_RES_CODE_LANE_OFFSET_RX, 0x09);
-	regmap_write(regmap, QSERDES_TX_LANE_MODE_1, 0x05);
-	regmap_write(regmap, QSERDES_TX_LANE_MODE_3, 0x00);
-	regmap_write(regmap, QSERDES_TX_RCV_DETECT_LVL_2, 0x12);
-	regmap_write(regmap, QSERDES_TX_TRAN_DRVR_EMP_EN, 0x0C);
-
-	regmap_write(regmap, QSERDES_RX_UCDR_FO_GAIN, 0x0A);
-	regmap_write(regmap, QSERDES_RX_UCDR_SO_GAIN, 0x06);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0A);
-	regmap_write(regmap, QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x01);
-	regmap_write(regmap, QSERDES_RX_UCDR_PI_CONTROLS, 0x81);
-	regmap_write(regmap, QSERDES_RX_UCDR_PI_CTRL2, 0x80);
-	regmap_write(regmap, QSERDES_RX_RX_TERM_BW, 0x04);
-	regmap_write(regmap, QSERDES_RX_VGA_CAL_CNTRL2, 0x08);
-	regmap_write(regmap, QSERDES_RX_GM_CAL, 0x0F);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0A);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_TSETTLE_LOW, 0x80);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_TSETTLE_HIGH, 0x01);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_MEASURE_TIME, 0x20);
-	regmap_write(regmap, QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17);
-	regmap_write(regmap, QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00);
-	regmap_write(regmap, QSERDES_RX_SIGDET_CNTRL, 0x0F);
-	regmap_write(regmap, QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x1E);
-	regmap_write(regmap, QSERDES_RX_RX_BAND, 0x05);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_LOW, 0xE0);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH3, 0x09);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH4, 0xB1);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_LOW, 0xE0);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH3, 0x09);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH4, 0xB1);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_LOW, 0xE0);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH3, 0x3B);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH4, 0xB7);
-	regmap_write(regmap, QSERDES_RX_DCC_CTRL1, 0x0C);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x16);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_SYSCLK_EN_SEL, 0x1A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_LOCK_CMP1_MODE0, 0x0A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x1A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DEC_START_MODE0, 0x82);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START1_MODE0, 0x55);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START2_MODE0, 0x55);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START3_MODE0, 0x03);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE1_MODE0, 0x24);
+
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE2_MODE0, 0x02);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE_INITVAL2, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_HSCLK_SEL, 0x04);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CORECLK_DIV_MODE0, 0x0A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CORE_CLK_EN, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xB9);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1E);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL, 0x11);
+
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_TX_BAND, 0x05);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_SLEW_CNTL, 0x0A);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x09);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x09);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_LANE_MODE_1, 0x05);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_LANE_MODE_3, 0x00);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RCV_DETECT_LVL_2, 0x12);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_TRAN_DRVR_EMP_EN, 0x0C);
+
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FO_GAIN, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_SO_GAIN, 0x06);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_FO_GAIN, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_PI_CONTROLS, 0x81);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_PI_CTRL2, 0x80);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_TERM_BW, 0x04);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x08);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_GM_CAL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_TSETTLE_LOW, 0x80);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_TSETTLE_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_MEASURE_TIME, 0x20);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_SIGDET_CNTRL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x1E);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_BAND, 0x05);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x09);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xB1);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x09);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xB1);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH3, 0x3B);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
 
 	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
 	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
@@ -203,77 +134,77 @@ static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
 	regmap_write(regmap, QSERDES_PCS_SW_RESET, 0x01);
 	regmap_write(regmap, QSERDES_PCS_POWER_DOWN_CONTROL, 0x01);
 
-	regmap_write(regmap, QSERDES_COM_PLL_IVCO, 0x0F);
-	regmap_write(regmap, QSERDES_COM_CP_CTRL_MODE0, 0x06);
-	regmap_write(regmap, QSERDES_COM_PLL_RCTRL_MODE0, 0x16);
-	regmap_write(regmap, QSERDES_COM_PLL_CCTRL_MODE0, 0x36);
-	regmap_write(regmap, QSERDES_COM_SYSCLK_EN_SEL, 0x1A);
-	regmap_write(regmap, QSERDES_COM_LOCK_CMP1_MODE0, 0x1A);
-	regmap_write(regmap, QSERDES_COM_LOCK_CMP2_MODE0, 0x41);
-	regmap_write(regmap, QSERDES_COM_DEC_START_MODE0, 0x7A);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START2_MODE0, 0x20);
-	regmap_write(regmap, QSERDES_COM_DIV_FRAC_START3_MODE0, 0x01);
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE1_MODE0, 0xA1);
-
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE2_MODE0, 0x02);
-	regmap_write(regmap, QSERDES_COM_VCO_TUNE_INITVAL2, 0x00);
-	regmap_write(regmap, QSERDES_COM_HSCLK_SEL, 0x03);
-	regmap_write(regmap, QSERDES_COM_HSCLK_HS_SWITCH_SEL, 0x00);
-	regmap_write(regmap, QSERDES_COM_CORECLK_DIV_MODE0, 0x05);
-	regmap_write(regmap, QSERDES_COM_CORE_CLK_EN, 0x00);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xCD);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1C);
-	regmap_write(regmap, QSERDES_COM_BIN_VCOCAL_HSCLK_SEL, 0x11);
-
-	regmap_write(regmap, QSERDES_TX_TX_BAND, 0x04);
-	regmap_write(regmap, QSERDES_TX_SLEW_CNTL, 0x0A);
-	regmap_write(regmap, QSERDES_TX_RES_CODE_LANE_OFFSET_TX, 0x09);
-	regmap_write(regmap, QSERDES_TX_RES_CODE_LANE_OFFSET_RX, 0x02);
-	regmap_write(regmap, QSERDES_TX_LANE_MODE_1, 0x05);
-	regmap_write(regmap, QSERDES_TX_LANE_MODE_3, 0x00);
-	regmap_write(regmap, QSERDES_TX_RCV_DETECT_LVL_2, 0x12);
-	regmap_write(regmap, QSERDES_TX_TRAN_DRVR_EMP_EN, 0x0C);
-
-	regmap_write(regmap, QSERDES_RX_UCDR_FO_GAIN, 0x0A);
-	regmap_write(regmap, QSERDES_RX_UCDR_SO_GAIN, 0x06);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0A);
-	regmap_write(regmap, QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00);
-	regmap_write(regmap, QSERDES_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x01);
-	regmap_write(regmap, QSERDES_RX_UCDR_PI_CONTROLS, 0x81);
-	regmap_write(regmap, QSERDES_RX_UCDR_PI_CTRL2, 0x80);
-	regmap_write(regmap, QSERDES_RX_RX_TERM_BW, 0x00);
-	regmap_write(regmap, QSERDES_RX_VGA_CAL_CNTRL2, 0x08);
-	regmap_write(regmap, QSERDES_RX_GM_CAL, 0x0F);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A);
-	regmap_write(regmap, QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0A);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_TSETTLE_LOW, 0x80);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_TSETTLE_HIGH, 0x01);
-	regmap_write(regmap, QSERDES_RX_RX_IDAC_MEASURE_TIME, 0x20);
-	regmap_write(regmap, QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17);
-	regmap_write(regmap, QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00);
-	regmap_write(regmap, QSERDES_RX_SIGDET_CNTRL, 0x0F);
-	regmap_write(regmap, QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x1E);
-	regmap_write(regmap, QSERDES_RX_RX_BAND, 0x18);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_LOW, 0x18);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH3, 0x0C);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_00_HIGH4, 0xB8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_LOW, 0xE0);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH3, 0x09);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_01_HIGH4, 0xB1);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_LOW, 0xE0);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH2, 0xC8);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH3, 0x3B);
-	regmap_write(regmap, QSERDES_RX_RX_MODE_10_HIGH4, 0xB7);
-	regmap_write(regmap, QSERDES_RX_DCC_CTRL1, 0x0C);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_IVCO, 0x0F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CP_CTRL_MODE0, 0x06);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x16);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_SYSCLK_EN_SEL, 0x1A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_LOCK_CMP1_MODE0, 0x1A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x41);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DEC_START_MODE0, 0x7A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START1_MODE0, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START2_MODE0, 0x20);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_DIV_FRAC_START3_MODE0, 0x01);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE1_MODE0, 0xA1);
+
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE2_MODE0, 0x02);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_VCO_TUNE_INITVAL2, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_HSCLK_SEL, 0x03);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CORECLK_DIV_MODE0, 0x05);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_CORE_CLK_EN, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xCD);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1C);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL, 0x11);
+
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_TX_BAND, 0x04);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_SLEW_CNTL, 0x0A);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x09);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x02);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_LANE_MODE_1, 0x05);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_LANE_MODE_3, 0x00);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_RCV_DETECT_LVL_2, 0x12);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V5_TX_TRAN_DRVR_EMP_EN, 0x0C);
+
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FO_GAIN, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_SO_GAIN, 0x06);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_FO_GAIN, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_PI_CONTROLS, 0x81);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_UCDR_PI_CTRL2, 0x80);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_TERM_BW, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x08);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_GM_CAL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_TSETTLE_LOW, 0x80);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_TSETTLE_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_IDAC_MEASURE_TIME, 0x20);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_SIGDET_CNTRL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x1E);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_BAND, 0x18);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_LOW, 0x18);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x0C);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xB8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x09);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xB1);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH3, 0x3B);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_RX_MODE_10_HIGH4, 0xB7);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V5_RX_DCC_CTRL1, 0x0C);
 
 	regmap_write(regmap, QSERDES_PCS_LINE_RESET_TIME, 0x0C);
 	regmap_write(regmap, QSERDES_PCS_TX_LARGE_AMP_DRV_LVL, 0x1F);
@@ -313,7 +244,7 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	}
 
 	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
-					     QSERDES_COM_C_READY_STATUS,
+					     QSERDES_QMP_PLL + QSERDES_V5_COM_C_READY_STATUS,
 					     QSERDES_COM_C_READY)) {
 		dev_err(dev, "QSERDES_COM_C_READY_STATUS timed-out");
 		return -ETIMEDOUT;
@@ -334,7 +265,7 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	}
 
 	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
-					     QSERDES_COM_CMN_STATUS,
+					     QSERDES_QMP_PLL + QSERDES_V5_COM_CMN_STATUS,
 					     QSERDES_COM_C_PLL_LOCKED)) {
 		dev_err(dev, "PLL Lock Status timed-out");
 		return -ETIMEDOUT;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
