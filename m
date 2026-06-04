Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC4FCD6E6E
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8zqGPU/ZcKCggjMbMoDeF4tzfm3nXU68sTxiW3Q+yU=; b=esqIfQiI3Ia8sH
	JjywT5jSTPJti+bQFvE+azTTZg6H7bg3ODR6n+wPqK8CXA8Dx9ly/xSfT83DD+v9F5Ij/45E/zfxW
	bR327FbhtQZZcshnM1ORH16VX57fNpAs1tUurYdJP80aALe4eQIUH7C/Ro8fxiGzJFZPZuDZV40fl
	xsQC0Tr6nJnOfIOeq0vyAd6Gh8xk//t/g0BD8PSvaied5WniVLxbsxMs1RJXYWwsA+x6tRQXGNK9Z
	gr8jwrGy66l283Q5aR0pngY6bDborKotgUe0EUx+swRUDZSDoWED9esE0Q9/b1qmM+6ZweBmidbHo
	sizrwkdvPplh+iSSjMog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxf-0000000G03M-223m;
	Thu, 04 Jun 2026 01:33:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxd-0000000G027-1rLt
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:30 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6540ntV9313666
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=; b=JSjqWc2fuO5XdgM6
	iv8mYLmiwz27awoomHqBU7JS2Ui5XxlcEOV+W+iTV7FniXPJ1yoMxUTryljX1eSF
	bvpnE7NjyoRJ+9znTFnbg7o+Xim6A/CDE4lT+nCNNY42B+SL+/1NXYLnty1xusYy
	Njlnh2Qciz2ZXXWTOgm21dGnebfRbMXsn76T6teIGTSduvj0fItnx82cVeW8kzpv
	wPPB6oOagEnWByYb+bK9Y/uLrKh0ZmoEnv5dwTnubafvcP+QPlpvSf4B37nDjHzd
	Pt3uwjesRaEUIaRd2U2TBYUEU3WfRc94CpEgQi/MswrZBxKosYN3kD3CJDwGHh+O
	CeUpAg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy5v03un-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:28 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-137dd5100c7so267997c88.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536807; x=1781141607; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=;
        b=fl86CZudZkwFwjUja+DXwj3wCff4w7GVu3L3Yvgm41bN8E877xGfDXxXPTtoo2Qk69
         DEoGuApsGwAMmkjIEqg00CvwFEapxBJtWLMC+2XNK+Be0Vt9pkrLSnqoj5Se0/hHb4aI
         rd7A16P79IBl6H+f9bGKfuZ0+0ofaFObPpEqD26l318vZ6y6tW/oQZqX0Jr/jPyCvjNN
         xw5Sq46k0WSx+ViR4udNArQRSFOgHH/OiBUi1GhGPLUXAWnOTF7jfuDWKS+Q7AvvXyDv
         8znJ9r3yx31RfoA2voGNFM1LaUypu0t1av87Q9k4BjGHlW70x6ZDhTU4hfPIMncv2Fmv
         8D2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536807; x=1781141607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Venx6RUzjC9wNNihizVrtl+8Lnx8Pg3T1wsMj8jld8A=;
        b=peyXxA3e+jA7H+3an50Y0wm59+0NVRBdvTLkUBnNrJyu8hu0O7lCrAOGVERSFnOZ1q
         0e8YX1Q8EalmwgB7plhnQaBH+b4fhUB4R1J3/GnI3AIKa84ok9Gr2+oZsMy3P0qtJqvC
         CCNu2OSrvw+llJU7Vb11qq9BkFVN37HBmkmDnS2mDfVUiE755F1dxA8FghzG4g9EC9XA
         JPtuFN5kROkCzG/QcJYU/qsbyh6a8iSYRNvgyhOxtX3BJER2XzJxu8CfWe53aTp8G2e7
         eSnGwD2yrbMZtG2zR9RedIxTFQ/vxOO5FpBsIRp+Bo3IB9IRVsDQPop7heqnOkMbJsI5
         WYzA==
X-Forwarded-Encrypted: i=1; AFNElJ+yIK6033ac9EEhOiOFQnOCCrjMsv16RAnX0LAZztoxx5Z4gUcSghwsuQ6NUogpj2mmMZefRqQymlo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRwuC0MrRBCBKuWDWqLuQmsr5jPQOd0A0lXPLCa6dWobArv7Jx
	umjlELDMDvo64vpTqQH+34nG9YNunEDpmC8eYMWYqKT8c5opLOxqi/4E+6xe2/blH4+kory/I+q
	leOfjGGc7foZuZRKbDEr3LvSAaZj0bsekbPy8V3co6TYQAYYVGy9OV/1zDlE8DQxuXTEkLWK+5n
	xI
X-Gm-Gg: Acq92OH5MPQQZ8SBN4t71MXxm7EmmjSxWfz1qz7HjRp0XgJ8jhKea27SnfSHrBgaKHo
	A0qCkjzdqimaQK6EEqr/ubAcG+MDwkARFiVgVQAcoqG9q/d9y2wpx3jFig8ptd65yjFaqjpgs3X
	nQXzTkvzTEc4sOh1K5Yd5uPu+ZeEvuQoslfuENxmy9Fqs+Ph+rvYUdHgBugtaK6M3e8yxIRAKuS
	Klh70wZOGyUOQHa6qcl6IJeEkmNjAkGmlU7OarONTLzvpwrQ7zeVpFnLek+kKk+w57BIPoc+48z
	c+OfxrUjUNnJf70Naj+8AOrw+4891n5o1i15uxKqy7XaoCQ1Hl4/bYY0eTUyss3a10vgxngwJBg
	JHFyTHoc/zbtLlQ+x2/wAhTIpCdsPV8qOCYadDQktTesTrHI6EMHGir1/GGuqFePCcKHeVg==
X-Received: by 2002:a05:7022:6291:b0:137:546:9e9d with SMTP id a92af1059eb24-137f6bb262fmr2347607c88.23.1780536807479;
        Wed, 03 Jun 2026 18:33:27 -0700 (PDT)
X-Received: by 2002:a05:7022:6291:b0:137:546:9e9d with SMTP id a92af1059eb24-137f6bb262fmr2347593c88.23.1780536806946;
        Wed, 03 Jun 2026 18:33:26 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:25 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:32:56 +0000
Subject: [PATCH v2 02/10] phy: qcom-qmp: qserdes-com: Add v10 register
 offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-2-be908d3560db@oss.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=3231;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=mETc0jlTLmI462gvqIk7CFJGzUvc8N7VZDu2GYCH5bo=;
 b=qqVc0bY8pU7gFmiGPp5xHwp7Zlvwef4gHCmv+0IeIt8Ts2r1ZkxnvOk3gn9PQ3gt852XAThTm
 IHTv7mfvS6OCbni1Rr8wZANCDE8naKzYZzg8v/8bopWaLoECLysAUDP
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX30BkLvFkIYD/
 Sa7xFkkNUnPGioUqTYrzplX90OfpCm8iJmcfsaonohSkBhW1ovpBxDmPdsk0zm3J+saESi9nvQL
 /cT4RKngWU11PtlWzCvA5YhG7nCDnOIEGVhkPFGKwNat8rHbrl4am3EQeYddZ1nJUbeiQswSahl
 ITFfQz2gtVCYeYxLkDrQxbHbXBFVeJsqyHxap9GOlNZIupNxIgIVemk8gKhhoI3Qb9EiLqL93+W
 5pF5EyypBLuY0BPnDkufqSRLSpTo6g1AyVe5N8uMQEGymN5vSzK+qELFjsdZnbitHrfUE8R4zn+
 l/zJPjMnWzaLkJGTx3Mc8Tb9WIj6PAyaQ1+nfgVXMRtWGPfHqROUBLenCF80vZSoUDJVvT1xlYj
 Rr6y+DLEli5TlP+gXGj4N8ApnQr+s0dOpRKrXakxkXCaq/FzrgVMgZjips0hpJWu6cX4n5hrJl6
 lN9MjexNcjAhfvI2VzQ==
X-Proofpoint-ORIG-GUID: ZnbHaVGO6B7CIRlo6AepGlavICY5A5MG
X-Authority-Analysis: v=2.4 cv=afRRWxot c=1 sm=1 tr=0 ts=6a20d5e8 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=MN0C-abDVP1yrleAEAUA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: ZnbHaVGO6B7CIRlo6AepGlavICY5A5MG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183329_610006_9AA6B5D0 
X-CRM114-Status: GOOD (  14.20  )
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

Hawi SoC uses v10 register definitions for PCIe Gen3 x2. Add the new
QSERDES-COM offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    | 49 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 2 files changed, 51 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
new file mode 100644
index 000000000000..09199e7b4aac
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V10_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V10_H_
+
+/* Only for QMP V10 PHY - QSERDES COM registers */
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1		0x00
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1		0x04
+#define QSERDES_V10_COM_CP_CTRL_MODE1			0x10
+#define QSERDES_V10_COM_PLL_RCTRL_MODE1			0x14
+#define QSERDES_V10_COM_PLL_CCTRL_MODE1			0x18
+#define QSERDES_V10_COM_CORECLK_DIV_MODE1		0x1c
+#define QSERDES_V10_COM_LOCK_CMP1_MODE1			0x20
+#define QSERDES_V10_COM_LOCK_CMP2_MODE1			0x24
+#define QSERDES_V10_COM_DEC_START_MODE1			0x28
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE1		0x30
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE1		0x34
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE1		0x38
+#define QSERDES_V10_COM_HSCLK_SEL_1			0x3c
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0		0x60
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0		0x64
+#define QSERDES_V10_COM_CP_CTRL_MODE0			0x70
+#define QSERDES_V10_COM_PLL_RCTRL_MODE0			0x74
+#define QSERDES_V10_COM_PLL_CCTRL_MODE0			0x78
+#define QSERDES_V10_COM_LOCK_CMP1_MODE0			0x80
+#define QSERDES_V10_COM_LOCK_CMP2_MODE0			0x84
+#define QSERDES_V10_COM_DEC_START_MODE0			0x88
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE0		0x90
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE0		0x94
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE0		0x98
+#define QSERDES_V10_COM_BG_TIMER			0xbc
+#define QSERDES_V10_COM_SSC_EN_CENTER			0xc0
+#define QSERDES_V10_COM_SSC_PER1			0xcc
+#define QSERDES_V10_COM_SSC_PER2			0xd0
+#define QSERDES_V10_COM_CLK_ENABLE1			0xe0
+#define QSERDES_V10_COM_SYS_CLK_CTRL			0xe4
+#define QSERDES_V10_COM_PLL_IVCO			0xf4
+#define QSERDES_V10_COM_SYSCLK_EN_SEL			0x110
+#define QSERDES_V10_COM_LOCK_CMP_EN			0x120
+#define QSERDES_V10_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V10_COM_CLK_SELECT			0x164
+#define QSERDES_V10_COM_CORE_CLK_EN			0x170
+#define QSERDES_V10_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V10_COM_ADDITIONAL_MISC_3		0x1bc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a873bdd7bffe..3ac5af7cde6a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -39,6 +39,8 @@
 #include "phy-qcom-qmp-qserdes-txrx-v8.h"
 #include "phy-qcom-qmp-qserdes-lalb-v8.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
