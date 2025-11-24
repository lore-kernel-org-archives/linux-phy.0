Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E5C9CFD340
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+SeWek2UivE+LDPFVzSULqqwSsU/oJlK8BU8jmumMQ=; b=Cwuwrd9FBLkPU0
	CW7hMs3zWnrzLPlcAAPlbcapeFx+efZLqcBfXzBBrWcu7XCqN/knCD/0+NoV4ijaTBBCS6xeQVGdG
	EMfI7n0ahPVgL/VPnAfCBek7qGuqkNO8nRPMbz/yapshhJr8iDYV4ppP3oUoC1Zs90qxLXL++Ikj3
	TTZ5oL8h3CMG8X9Gp7HTumEy8Pnyq+qF0pmqATAFvirgUnngQcHJ4zgaxYg5ynZshZUZ+/v1XacY3
	qYhmxDj5G8A5LjUdz7zOpf3sX78k9WHuraT1yGyDq7YmP/xbKmDL850NEnmUeFSdd5WZPhi4LtF5a
	Oz+MGSUQ9/DlDfMFrBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlj-0000000BQEB-1PzR;
	Mon, 24 Nov 2025 10:26:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlh-0000000BQCP-2Ax6
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO87AmG2498183
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a0cP7KG5XGPzFEgyuSubAATVYJZRm7RU2yMGXybKWxk=; b=Z6yqkHI/9IoxN/b+
	v4tNpuxVBresVw0pzM8gjJG74w1xf8km7Esl4gwrJe86A7sVpAaQi/imNvQ2u9U3
	N3Gj7BomdTnIo++zeoaW/uNfPa6NhIvSLKTvtKdjQen8c89BwRnKWdd4kFO28aRD
	Yu3cBjbx0Rc6mvZGKn1DzJrevOGJbTc911y274AjNMFirSzCjlbImsdecJSGvygr
	b0KwCFsQeCF3NFqQQfni1V/BOMx/2ZQ4RwM32HEvegpt1LHvmZC4S6varcqdqFEG
	kZ70tLSpSgv1AnZruscPLL/jgu31h9f0FLDMTxGLPXIWFm4pbuyNVtSlh4R1hK8x
	zyKThw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69evka0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:01 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-11b21dfe94dso5110875c88.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979960; x=1764584760; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a0cP7KG5XGPzFEgyuSubAATVYJZRm7RU2yMGXybKWxk=;
        b=NWnnOSdkAaTzqTX50Tx3OZSB3PsYT56wPNm9uSQAxbwMaEl6AOjIt6/BywHYjDJalS
         cI0LoZIanoiZFvE/RBk0oL460sgE3e+nRkIO7oZfAA0JD14/SAVHPmwc++ZGMlOicMbX
         nT2LRUlpnsj8mDc43v1wnQADL9GkPmn7OI1i72CgWZNYmGim3vNB7ABhL/EgBYfyQnpP
         VA54ZOLIRrtZ4g7HUq4t+dVIVTxLB+HKNkJd6D+of2SKGqrafPn1pZJByyeF4ZbwLpmk
         TJdhjoatMcS7HqwYHyqStkXraWxn92qIgdzdRTu71DXTmEHVowW8MijB26kxN9LPGOTE
         vwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979960; x=1764584760;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a0cP7KG5XGPzFEgyuSubAATVYJZRm7RU2yMGXybKWxk=;
        b=l1FXZVpGF0pB5biXLyAyR/pkT1qBp08/AYpHSt0A57tSHbQJAwlSpbJ13wK3FFuI50
         LITBToud7sw8fUDomrBN8RUeqP1w8ZSCrEuFXk2b7KqGAEKw0L05HyGQ6Y8zOhVVXXYg
         EszYMzB6WBF13ltSi/jQrcyHtYYxP0WLA/e4vXwCWhsZxNpg0pnoNUl5V8gfyHrm/j09
         JNgj2qBJKu6cOYz39kbv33yxNXm4zZA6puzX5GOFJUwVHKYzUvGIof9b/IdlNEavweJy
         dtJeLnB2j7Pj2JUn4VWCtFZt3PzP2A8+OiF1x5skM8P0QMlgkdzuD8sSoJUL4h4sEcbK
         uANw==
X-Forwarded-Encrypted: i=1; AJvYcCWPlR9PqBEVCXR5fgUzDMcc/mJ72XBeW08iMozVWc7vl8uEEWRqeM1sk3j2TFa4xdIlcw8RPbEYmFo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJOcY4oAwEgbdEGIn98VmOuxOB5Vqd/8bVuBMLqLgQRTJ7jZ4j
	Ce7PcSMVRafrgfGmYbD6UYjzOAk56sofwOpD0RQOJp8BYVCPCtwVkpXQ2GPTpWtL9BfVOCVZirB
	1T2/DGve3DFkckri8/XgOfVg+oFHuB5/cv2qgw2SdjCK+bJIFgwhAsMnl64H9KV92f7ta
X-Gm-Gg: ASbGnctJ4/jBNmZLyDLwCAHxAGaUYIyS4AySl+lxB165nrGs+4Q679El87rbiCHGUWu
	fBkw3ErW74PujeHwdAfc/PrywvlQ8C2ncBtdq71o46M/hhTp1IWL2f9gecefF6GZ3NnZMNimO4m
	0suzc/GlhEhMlFV2Qop3GnmShnLX4IX2/XL0vt9rTHl7zUeQFpcC5gk3duzTT4PkUv4ZOaOhoyQ
	+rYO1OeW80oaWWJIER2eyklz/YxAiMRD7qUh5D24/rNifp3/+G3ef59q+AoR+YBkX5ATM18uEY7
	FxGrLn9kRpesDJRxIrvDWIeyBzf0hW1COj48Di3T4AsUyhHvuLVAraHK2WGGFzG3dMR4tjBbZVP
	x+ratka6CeWhDulpeTHtyF2lplqJPv5UweEudEGT931zP5x8SEwSeriEJ
X-Received: by 2002:a05:7022:ef04:b0:119:e569:f84d with SMTP id a92af1059eb24-11c94aefc95mr8190744c88.4.1763979960363;
        Mon, 24 Nov 2025 02:26:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdhovbLIbzLaouS4rYw87KKgwH6OW705IGi/jjsPtVjtD4CqTIs6zBsXMI90iVURkVxEyrkA==
X-Received: by 2002:a05:7022:ef04:b0:119:e569:f84d with SMTP id a92af1059eb24-11c94aefc95mr8190718c88.4.1763979959814;
        Mon, 24 Nov 2025 02:25:59 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:59 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:37 -0800
Subject: [PATCH v4 4/5] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
MIME-Version: 1.0
Message-Id: <20251124-kaanapali-pcie-phy-v4-4-d04ee9cca83b@oss.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=2730;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=MUl7sxpCGM2mRJNbw6AcjpDD+FtJcW1uPf/khbJ96fI=;
 b=BkYKecPVH89PY7Ryzk+OiDHWrcgLtU1eUfK8x1zcYwXK036i8z2qWhPH2AhWXVfizUDCym0vw
 gDmpyCuccy6AV1S9rvVXv7YMoV2V65njpzXuV38FkpbnIFF0Yk1asL7
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfXxwsZKic6zz0b
 UhxDj3O1bxngVR5lTU13pcDFrutWPzZ8ndzEWopSF8xmBDsInPBWHDDjbwlzaOyUlmvIBV0O7yN
 LhyNEh/nhpX4vLN/Rsj5cEKBqpH38rJmclOGMwm1jEbRJ5iSmegYpzAbcKztLEpmB8HsGONxhYA
 Qk9GNiBxITs5nwudbm6iryF3m+WELLfug5xcXKNp9yimLYIqoXfupE7mlHrQDqz8tiFIaR+0yRJ
 vl9CcptKkbVGMqKeiwyvpFiWo0Ut+Rl0s5/LEcxIor4AvZuIYWLZOEmTP08CIz/ytImVocuUAD+
 L4yPoFHxIHSi5uexwadlB1aeKsNx2o3Fmu78WDRwefrMDcz9vHCIncH/rKTDkAbOHF1uTUzasHH
 XmS7Mm8Y9snIX8TAMvFYWJ21Fgikmg==
X-Authority-Analysis: v=2.4 cv=cMjtc1eN c=1 sm=1 tr=0 ts=692432b9 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=cXB1dxBGfnZZ65A63A0A:9 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: BLAr3zLeyiUwk79mBEKdHLeQGjd0sQD_
X-Proofpoint-GUID: BLAr3zLeyiUwk79mBEKdHLeQGjd0sQD_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022601_563188_2CA4E059 
X-CRM114-Status: GOOD (  10.68  )
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

Some qserdes-com register offsets for the v8 PHY were previously omitted,
as they were not needed by earlier v8 PHY initialization sequences. Add
these missing v8 register offsets now required to support PCIe QMP PHY on
Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc521cb66562a5b6bfae8dc8c92cc1..d8ac4c4a2c31615fa7edff2cd4aca86f4f77de66 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -33,6 +33,7 @@
 #define QSERDES_V8_COM_CP_CTRL_MODE0			0x070
 #define QSERDES_V8_COM_PLL_RCTRL_MODE0			0x074
 #define QSERDES_V8_COM_PLL_CCTRL_MODE0			0x078
+#define QSERDES_V8_COM_CORECLK_DIV_MODE0			0x07c
 #define QSERDES_V8_COM_LOCK_CMP1_MODE0			0x080
 #define QSERDES_V8_COM_LOCK_CMP2_MODE0			0x084
 #define QSERDES_V8_COM_DEC_START_MODE0			0x088
@@ -40,6 +41,7 @@
 #define QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
 #define QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
 #define QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1		0x09c
 #define QSERDES_V8_COM_VCO_TUNE1_MODE0			0x0a8
 #define QSERDES_V8_COM_VCO_TUNE2_MODE0			0x0ac
 #define QSERDES_V8_COM_BG_TIMER				0x0bc
@@ -47,13 +49,22 @@
 #define QSERDES_V8_COM_SSC_PER1				0x0cc
 #define QSERDES_V8_COM_SSC_PER2				0x0d0
 #define QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define QSERDES_V8_COM_CLK_ENABLE1		0x0e0
+#define QSERDES_V8_COM_SYS_CLK_CTRL		0x0e4
+#define QSERDES_V8_COM_PLL_IVCO		0x0f4
 #define QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
 #define QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
 #define QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define QSERDES_V8_COM_LOCK_CMP_EN			0x120
 #define QSERDES_V8_COM_LOCK_CMP_CFG			0x124
 #define QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V8_COM_CLK_SELECT			0x164
 #define QSERDES_V8_COM_CORE_CLK_EN			0x170
 #define QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V8_COM_CMN_MISC_1			0x184
+#define QSERDES_V8_COM_CMN_MODE			0x188
+#define QSERDES_V8_COM_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V8_COM_PLL_SPARE_FOR_ECO			0x2b4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1		0x1a4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2		0x1a8
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3		0x1ac

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
