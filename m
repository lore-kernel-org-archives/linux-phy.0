Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC6BCCD195
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMS2r3I0cVa4asLU835nuhBg9rWqIrawWdgKY8Yj27w=; b=3QUyIFtvh7cbAy
	GVF8Un39UO1P1R+Gfkx8HHC+4YHf0lo/rH5QEG3mR6HFY0Jrt1Vv3lQ0cfBS5NwS3Ls+K1Da3L/iW
	1pX+3z/7X2MrxVIqJO6dmXqrtqE3nd5GKa6fQp+WGGhamTMNVgb5FUYqzV6BvhD+K00vGh8eNEs+G
	QklIEOVPc0juMGPXo6xcHj4qe1KpYYOibNVbRiZGe4d6E4zrZbCkXXGsaoLrtfPyUW43VBzylp0hP
	DVbUuGb4eTkSacgBa0It5L9pLO9ZsCiJAH7ZWRE/6N60w/3lynexyLfxfY1cUuv+3CZe/4z/sgbqf
	9ZxME6dx+O/XxV1PCHSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjb-00000001Gzr-46Qz;
	Wed, 15 Oct 2025 10:27:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjZ-00000001Gxh-2DIi
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s9kX009128
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=; b=a624hECUukizheV0
	yWS64yVjp3Qbi171HjanD/LFFY5xBd3FG2lInQfvtNdzGsct0euWTf37RyzW2Xen
	9o96f9Z80lKThQ2KtASkZZ9Jrr+k90qNY9tI9yIJXQzS3+eh80Y2GeAG1g9GGe25
	/za7Za/W5xdQqcR9ZZNMinGQ9nuadUjp5RM+sV6DYqPRFm3QM8UkDZVD1ImhB2/+
	TpXzujdCyDsG4SJ455SW9OK4EGNP9d7f91whiP2UBO0Musq2IDVZdBImaYAAzW0T
	Jx3fAMiNGtnn9ciNLbUejSiVCIjRfAjsldF5RmL4XWwxPJEftZlr0SegBGjL3NOq
	kGSexA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c404x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-330a4d5c4efso10092728a91.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524072; x=1761128872;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yjl88K7Ikw8V3LFOUdPS89IWYvnp87gV7OPjhtKIs8w=;
        b=phJbHdUdL8onZ249weV/1U1xP0clEn0yPKUVk77Z88KRb6HbGaZIVVhf+yJvUQzYYP
         DKXFqA9F7jxpeA5mRpd4BctVkAxSpqMHlf+E5l0Zw3xRFcbfDSUPHdQlv5wqKRoay2m5
         3eHvAkUJvYrz7JYeB5kZd5zby5Czlw204mIfrX5S0RdxT0a9nDRaNBVh5H3ew32YqGJF
         iRn+qSmbfU4iCTiL6AvxsnwnHpchpXr9S2m0imkOXZa9jxDOWsJw2OlzQXZY1PlsDsid
         6xTLTvXTT1OHVTFO8e4k/JNpS0qkBxxflYTTy6E8S9mD/fAzkN4D4PhhANC9yynnKB+w
         Z8kQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCElfFmA8ofgMHDg8n/lMO39xJWWMxCJS8SPX4cTXhpe59qwGpzMGIiig7lgMlmo5ED3MdLf+n5+Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwadkqUj7XH/HjGLmOQlFv6pRevgbEGX6Qkh/fFyt54tvZT48xr
	m4AYaRZp4Ctv6dg8YSkqlTH0MtsSk/ruhahFfmNXOO9poQMeIDQ2Rkq9G24CiocUuMxvOtxVgrG
	eWt2ZthPhhqpJlbO6MPlq1xFSe2sV7WSU7t9DU8qtXWM0c8850ay3p4Vt0n0e9IwKCYYv
X-Gm-Gg: ASbGnctSzKXynVvmCLVBWoTF5WwvE+IDmIXTca9BAo8kFQmYi+4iPJkcJL4nv9FuZWr
	sqNc6agM4bsSC483O6L49PkGjIhK69uSSYW8TdoYuMbDdVT0cLr5GWjiaHjpj+6u+GKyZtxPcPv
	5/egb9RUTUscz3Na9MmBhJr+Ygg7lWwsPv8qaBoycdFjcYvcmu0/vPNxamzj96DSb8Y2EKlnGjA
	JWyDpVKxeMxRfTLyEWbvYIW3ygcFyMbemk/lgxu/JGzPjMVLS+Bo7/h47jY+fd9gDOTk69fWJ4L
	cyaSMqFdEJwxSL196OC2G7GsJb6AoLHflNxpGP3F05kFwZHO1VdRqZXPGzTEgR3css0WJXWjhWl
	kyiu4+MveByY=
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr41660797a91.17.1760524072074;
        Wed, 15 Oct 2025 03:27:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaGE1eV8QgDqYcCzex9aLZOSqQiClr6xGs4Bwkupbg1LRZsCr/YWo9gF4NMS13X3Tdo0Qtxg==
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr41660764a91.17.1760524071592;
        Wed, 15 Oct 2025 03:27:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:50 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:35 -0700
Subject: [PATCH v2 5/6] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
MIME-Version: 1.0
Message-Id: <20251015-kaanapali-pcie-upstream-v2-5-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=2673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=T9q1inJlwTfg/gPd7Q+2RMAg+x2qnIVhHI3ir28H+W8=;
 b=FSVreUOSMjgVvSzHgFaVvIdo32swwpmWF4jW1euXOvwatbjnV0GCIi1uitQCmwF2gT3x25vM7
 XR46OrTTYHRDK7Ud0biRYxskMm+IH0SRkpkjL0y0oBbwBntxXSP++re
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: VmC_JY5R-9AdAh9zKeZD2CqzmViyBCAv
X-Proofpoint-ORIG-GUID: VmC_JY5R-9AdAh9zKeZD2CqzmViyBCAv
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ef7729 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX5oCuM7DWAfqR
 5Kg9fHhqnVet/mJl8ju7zIl2n7olFwMWlDrmXwrzwSYONccb+ZbO58YYHgHHnMbb6mR0sM4JHDs
 lt/ao0OUzohkB8Ut9WOel0ay9IMkxSOMLpjQqHaoNHNZcQREAtp8syojp9gLzrK3N+siU2va4NO
 4KtknjAqbRjn2gFTKb8hEkSzqsFz3WYBN6fq6Ds18Qji9LWsxhvb4WoREMnlJ9370BuI+SWhbZD
 v2LiYZLfr4WfRkAY7Eepkf69U99PeEOZdnSebvvgaCu9tOoq9Ty0Gn1qUv71NUMbflISdKr0sLY
 y7ys8dZZQRYunvAx72OC1GKy69Rcr2JAVV3QpssTnuYwbIr0WG6Ceoj8Im8weP9ozwtEJ0pt+oI
 3jt2TWfGlHBUbUmHXsigWEp6VcYiyA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032753_576024_E35CFA38 
X-CRM114-Status: GOOD (  10.55  )
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
