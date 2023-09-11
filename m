Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597CEEE57DF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=583+wlsnW5T/+F40s711ffUH4S1HISL3AWneZf/HNKo=; b=vMkGGoLcTXuYaO
	63zWtOIWD5g27M0gHfEKgu1rJpPHC/+hTou22AlPGt94ho9kaYGrgGxnCb3pNz+ma2vy0hs5Xlk7+
	BWttXAyoYwZATMvzm0XHHjcMuOzglsdUJHf9/Au71jPsIkDe9F4g4yHSeu7/+atJZPCCPemmb/e0A
	lYDlJ8/y3Rem7UanDBsAkSllgo9EIL/5ux0xt/ajw5iuPmkTJG2PlYu4kjOst6UJ/agtKIk6mdFkH
	wRTaOQobFx1VgSPEPNsXMDSd0oo8SCYI0q5V2IXRlb9tn+bMJF6f/DaF1ubXlMN4HqiP2IBs3g/Yz
	z2mTUWE95ZooFLb3SNUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBs-001FeW-0I;
	Mon, 11 Sep 2023 20:07:24 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBo-001Fdn-2A
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:07:21 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bcb0b973a5so79087431fa.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694462839; x=1695067639; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jIPY3ZeD9RZYBeo46KSBRi4oVhTY3fvnq69UA3KgJ1g=;
        b=rWSoU2GP7vRgHKgc/9ciadr1ci7hI3ugwCfJRAcDAMYDYHTmhlRxeiWl0pPN7wqGE3
         AJ8Esitl12Q7xIAfnpokTO3QmQYXglH/ygSzoXgk3Ovxe55eWHyy2sYEjgjI2Iybb3Nb
         Zfgf0CcUjZOY/4ru+QfLuWkBhwReJ53L5DoUefsfOF5iNz8ZHnuLQpWGL6g4H7KvPHmm
         sHkrcRL5CZRtyio83JCiwn+I6HhJtYGmZTzLn2gI8n9rL7oY2AWCbvksDZ/rMnrKMEiW
         fJ6tq7BqyUssC7NtnZ5Ao6Bx3zOM27QA9GA6x1HQi+UA84P+LTlMK8LbrweVQGvjr2/d
         c+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694462839; x=1695067639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIPY3ZeD9RZYBeo46KSBRi4oVhTY3fvnq69UA3KgJ1g=;
        b=kgNfeAp1+ECfMhNvZq1XK6CJAueCbvH/tOTqd/V+jJoMc0zyT6SvHhl0BTvRU34Iuv
         9UnR2BZ29s2j0D3CY1Y7bFiNxkq2tdg9SkCgpoXwYycRUozueYUrfp7CzkpJo0mumyH0
         q3fpdpWpFITxR9jpR2ovEgCTbUstdDNeF/wLRIIY4TMaXUGh+yy6CbhK99aetgR2CBmE
         GVDqwVcFRuDew1UY5c8XeJeLCsAeLEFlF/pfXq6jsr4kjnSsz8zJAbt9lBCgefXqtqn+
         5kjJchYDYfkPrgakJetPcbZ7Eklsr/9ic1VQdwIMpxmkCrPLIRo4BFbhqLUfSHj5eXgG
         ZlDw==
X-Gm-Message-State: AOJu0YyRu0sTRghGClft603ndYsrU7n1008enXh6Xh29rABy0G/w2JUi
	tBjpxWOR4wByo819kaEIpZ1aZg==
X-Google-Smtp-Source: AGHT+IE/1HDfzOTAP8eklU+C4JP9+PukuBtRDRhCVtswxDlcEQKjXGZUD+Jm3ckfgmPb3O6tj3N1rg==
X-Received: by 2002:a2e:86c4:0:b0:2bd:beb:4aca with SMTP id n4-20020a2e86c4000000b002bd0beb4acamr8490191ljj.13.1694462838979;
        Mon, 11 Sep 2023 13:07:18 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id z19-20020a170906715300b00992e14af9b9sm5753258ejj.134.2023.09.11.13.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:07:18 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 11 Sep 2023 22:07:14 +0200
Subject: [PATCH v3 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v3-1-34ec434194c5@linaro.org>
References: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694462835; l=2669;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=P24s4MTH43feXZouHmdX2bCNRD1wRxSGhxRPf9k16jM=;
 b=vMUGLlQHGkFe3DFvN4KoE43ckcfBy/90CByfwT9ra/44i5nIRrzDaj7uPHK5DAfehq7nCPHRW
 o4m2sVpOy/EB97pa6o5MRqcmKaH1gWQiL5iXtqQOBYA0yNQyDQQyedS
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_130720_708069_339E4439 
X-CRM114-Status: GOOD (  11.48  )
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

There are two instances of the POWER_STATE_CONFIG1 register: one in
the PCS space and another one in PCS_USB.

The downstream init sequence pokes the latter one while we've been poking
the former one (and misnamed it as the latter one, impostor!). Fix that
up to avoid UB.

Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cbb28afce135..8fd240dd5127 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -859,10 +859,10 @@ static const struct qmp_phy_init_tbl sm8550_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_EQ_CONFIG5, 0x10),
-	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 };
 
 static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 	QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 9510e63ba9d8..c38530d6776b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -12,7 +12,7 @@
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
 #define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
 #define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_POWER_STATE_CONFIG1		0x90
 #define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
 #define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
@@ -23,6 +23,7 @@
 #define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
 #define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
 
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x00
 #define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
