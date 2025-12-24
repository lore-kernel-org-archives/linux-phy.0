Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82817E7544E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHxQFsfn/v7X/dQn4GN0fnwgRwE4fim3wCuxDxYJBso=; b=teMOo96yCp0iEE
	sDEisUI/xKO3qWXKtWbdFrOynWjZD7gijRLhx60EvXpcCu6Z09+f/UKKi6sPcU490egqkS/RUGlph
	MHV/tJRmULIsYoTy0vs3hVXxsKwP7M7MDYnAnyXlbLLKq7oNUr4JFM6lYGnwmzi4Tk+jEmb+YPOIR
	BN7geCzx4IqAhMo2BKb8hdiZmapYC1bx5UZ0ldYgzIu2OCvprpgqRo3yJvI++apc5RPb51XhmjHaw
	3bDilCWOuVXlbJYucWdd1RzGShKmu2in4sc0a3EPKhKiAy/HUfkjBQFRXe36BXMi7mABjdgshjqVT
	TF8QZOzMqsljVY6WsHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlv-0000000GixR-0nyH;
	Wed, 24 Dec 2025 11:11:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlo-0000000GivK-0MJ2
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:11:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7s2WO1056227
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=; b=E7WrapVbftDCcoke
	bubir38oIx1yroTQzjpMIXNbl4JuvaipW7dL/6XYOp+VdLVuAFl7owc8BlfWhxay
	AYqq8/JjMTeho0ticDsqjVtlYnRAjqOWImxpH5Ng+42uVgBSYm0rLDa0k+ToeIkW
	FR7Q32KOwJogWBOAEyMLnr9AG3E+eiS6bcsK42DJbkUDxiPFtBntz7QDDyrjS0zm
	hD4114z+oIF0nbCypKudCXUSg3cgJJA1JThI0Iqh0L9XE4ntFU70EA0fbY+EogqG
	dEvK3J9CFmHE3QbiEJ02apg0ikwNkQFz4T3rWycLVEtqMKCx++9AdoXJWrvW3R19
	V5Aqcg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v28sg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4ab58098eso128736211cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574666; x=1767179466; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=i1qxp0oJTiLENq8Gqno4lM1BYi/CvEqfS49xjsAgTcu5YW3PZSXVFOOVh//pktNvax
         Cne0l7dayxk9BUBw3LBVCUW1zJR82RL42lv0nPjZg36xOvOKFmhhsdi1a0R2CeWzlA2I
         idzezOfAxT6jWQzevsTHUAI0c3h6pyoJ4osoPcO15cpP0g73z67txj1fTfPTLIOPCwxD
         YgzT8RWJOH11Ow/rJSYEwkUbm1neDtP0aoFMYVR5o4p9ESGmLtUzMw3vPu5PVRF3lkL7
         C5oF5oBCN4M0ordJUNA8wr9ujJ/Y0bBgxGt+3N8LYvhCWTghhvOXOwo9c32rfd9I0+9c
         Rdog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574666; x=1767179466;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=T8KaUYyXNgjcTl25hcYBwryEx6LFMFg0iV4IEjUTyfyjMjPPzRuXSw5kq8/C1WrU3S
         +fV7pHqra9gdGa7SD+haMKzB5xgk5IkPXMr3Me9dUF9ZcNyQIidBCI5GZASGMWvywSmD
         ia3Y5MjOgDqkeiB3hr2eldYH/sLYgOw8VM8kmIuNCyBuEsDFwNX/1FpK7zZuWWKVEW4a
         diZb7Pyd7gmaN2FZQEtJCihhnXFyN/NJH6QGRPy89qcehacrwSNvXHmXXjNrdW1uBLAg
         abrgNQEGldsUgDlv4hXmBmg97SqwpC3B4jldx/FhLtwxLAoAKcsMxjpZv9hsmu6KvUJo
         7O3A==
X-Forwarded-Encrypted: i=1; AJvYcCVfEiWQbiKn/b/hPTWbs38c4MlZWx7fLZUIvrCkK7D686SyB1omJG/a+XewQW1EYOLL60KRi6xp3oo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuaKyehce0XOhqv4eVxfQj6+ZHeXnn7ADaOe8OUBIdK45MzZZ5
	lzVO+MJ0YCg+3pl6/MJqDDERwO850imvGqllF02s0W2hbnfpLUk2qfo3gbBw2raiDnVP5am4bPN
	apMy8Xe05PQ0PTAeukNaM6oiLQOLx5958YpQLw2ZylQqgyBrOoKHAlz74IZtWWcdN/fdgHCJ8UW
	qR
X-Gm-Gg: AY/fxX5us+m+y0cCu2jSv0PzC2cRB/KDeA5RHYFx5TVsy1kvl40VFWJyDUAxxBAFRqX
	7/9E/aisG13/hFCCt9n4vR9CPQd4XRaBPsFEA2z3qRl8x3ih2jQKQc/JsIHymnEzGF0TksxFaDT
	hKO9SeKXw13nQiYQF+x1GCnBMu9kaAqpSiW8dQ2RJqzkrRHdtX+zaQ/douP1xVQfHkrw9EXmpkW
	Kr+KRoCC7SWpL9R4CsWgnMbnZGV+oqMLFfyysyL0iD+BjZE0MxZPEC+uVJm45GY8nplcRRMhI5f
	7n7izXmSm1NouSrRefvQGVjci+ni5cTDaGLvC2y4RvE8ZNRfpd/pZVRc98Aj2yd7AjAKILmgeCW
	zbZFnPsR5xGfdRiA=
X-Received: by 2002:a05:622a:4183:b0:4f1:b3cc:2cec with SMTP id d75a77b69052e-4f4abd756e7mr251100811cf.52.1766574666243;
        Wed, 24 Dec 2025 03:11:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXYyrzS66xT53pQffVCPdIOYTk84+cgfuzkec+9VpeMI3P12dEKRhhrCY6x/FVJV7JEkINTA==
X-Received: by 2002:a05:622a:4183:b0:4f1:b3cc:2cec with SMTP id d75a77b69052e-4f4abd756e7mr251100491cf.52.1766574665558;
        Wed, 24 Dec 2025 03:11:05 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:05 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:46 +0200
Subject: [PATCH RESEND v6 3/4] phy: qcom-qmp: qserdes-com: Add v8
 DP-specific qserdes register offsets
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-3-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UObXtePHY5dMQlAbJZdKc4jLD0I2BhVpyz2GDbDUvrM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o+25u3l0bspOoO+djwjkUykCXsuycNSmTCA
 ZtiYmvN/IaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKPgAKCRAbX0TJAJUV
 VmEgD/9VDBM+YyOX9zQZwPJ9bMXNi8REpQh55pD/bgaMV09N+J0SbJRd+Wvpobqn6LsSb1+QGIK
 XSt4mLJTw6ACCxF0IlGtC9S9nqcMhkoPiV477z04U2QkYcxWZmVZna69pkRiAdnYdNLvvFSzO2G
 FN66l/eRHaa6lmfqX3RMVi0udun4do6BXctPSXMkJNIBo5/Zh4KciWiX2hpTLZg8S1TPTEJTH5m
 07spch9uM9hSzVD2X3LgrQd2f4kLJhNEudFVC98eRXI59lyuzB2gxu16ht6SYJLpq7qbLoW5e7z
 t/M8V7l6hj+25usw9V4PibR7In9AkEmBGQbFMXlbVOWs9S38P1tonrGrJXTXMwxVHs15l6MQolV
 G0/xteBjD23dED04wyS2g6wAsCySnJEmn58TYiDBqQKTCp9cFuSOcmJ+hfSyWAM8/ZikeroLA1h
 AYrHTas4DhWZaGVx/0ZM9SkL1o/In86u3S2ycDSB8q+OcW2odDGHE9hY8OmenGhXIKTutObSS1A
 hMF6jjAB4R20tAwHXXG/BqluIIj/6kC9O5G2A1ZbNWIpHWDgsXLBoccyHTwuqT1vsreDhE4e53M
 m4/xMRwzomBt0uKCXf5LI3bk7pZ1A8QclF9rNhPUmy7VYQJWowD7Wzfb9qypYP1a6xJI04PMmHp
 +Ke8/RIXxCYAu2w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX3BSBobxu0Gsw
 ZfePlCYRFCw2M8obtsP5g2v1NXfkgGo3h/xakul+gHkmIOKc74ACvcm/ERQVJ+ZX456drpIkvbs
 llR47cyDVAV+oTXZOdmN7Udj6r7KOzN2BusTve04gLrxljdO7iXR5ojgLcKRBQ1KoK3pdOZjdBz
 xQ9pJjrE19BJSiS9G2lq8iq0lcvR+cbEchMEPiV9CheWwH9m3xV1ikWzlTpLnXHoR25tjzo1uh+
 6Pe/7iBGJQH2L5vuuWEZEUG5mbPx9tMpA6iYpHL67KOYZHCZ9ZmNZdcJ/9WUYtMkTEQ5O26FyVH
 wEhtrfiaZmcSoXnEAPKNjUlEqzaFMq3mMWRVrFTOOBV3IKxYnM61bXln3qWazic4ON+qkhb+6Uk
 UaIi12RqmOa2ioBe7s4Mgdeb4GBJRZh6qZ7KPlKlaM+O5PuMwXMvmLn2sodAIsn6QaXVNPKJTZD
 DhzLM7cSZSoZ8iF9Tlg==
X-Proofpoint-ORIG-GUID: X1zVHgR9A6_pqiPK_daPaZrMAz0kU85F
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bca4b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ibtu9XGAwxROLk4EXI8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: X1zVHgR9A6_pqiPK_daPaZrMAz0kU85F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_031110_260147_6FA1C7E4 
X-CRM114-Status: GOOD (  12.37  )
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

From: Abel Vesa <abel.vesa@linaro.org>

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
new file mode 100644
index 000000000000..93edabb830af
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+#define QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
