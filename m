Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E567D41C14
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 10:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHxQFsfn/v7X/dQn4GN0fnwgRwE4fim3wCuxDxYJBso=; b=RuYgaR9+ATVwuR
	cHVnoPKHUmBTQZM9bBQgCZBvYHQe/2ooX1QDencSrLCQNhhIFvPKW/0kWqSpvp6G7LVGjMrAf2O+5
	GKQFBVnrPFCdbKJejI56eGy44R0JfVpmWGPsb4o/dxZwwtkhlW5woa4IRfkekVjXI2XZwZjWBEb5y
	AlaUMJkzNOjXK3LhgQh5Xhz0MtgNb4eaexpuwIFHHv5p2bgUAxGsB1lPBxL6iruIh043w5ZI5h54P
	7/8GHIVoLTAlLvh+C7mBG431co8rM/gpUP8BQwgEu0DF7BRNGRasgQoFoojW2ZSjFPbuDn/gHJUnx
	hgU8STD8Gkohkv41GwQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjx-0000000GTfs-3GDj;
	Thu, 11 Dec 2025 10:17:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdju-0000000GTe1-3m9m
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 10:17:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZUvi906448
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=; b=oYw4TY0Y2Fw7qSp3
	elmaW6ozxbNQkxi1TIJUiOw1gOuFme8jlPmUzf8rPKzljAerrfgTeGf1cIUNyIUc
	PLeSMrSQLkFeDGrWCraw99XXo18FNYGiDty8xphRPhROnVfeIJ6rixJdkSqE1R6W
	E8MmNo91vN1ykJQlneXUFryNekVgrXy+KQYnWxjNEFW66Aihot6s0btrQix7556v
	tdWCXVnxp9cCIHOaUzSf8L2i1CBTIz/LTkq8ImzsbX8pegroxASPdrqCjNmVkm+U
	tsqnqRfVmkvr2h550MGT1Jr5PlE24FCE0J7Fv3Oob6tUxa86Uoau5B8ppo0Q+nlo
	YkCsPg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygtfhxmw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed82af96faso15701261cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 02:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448257; x=1766053057; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=ieRRuXENpEiIamMNsPD9cr/Gewhhogb4kcBLgqb2WoD/kVMoIof+euUBC5u4PkxGN/
         1Bz2eemLenJXKjErxZ2WRaGMY08vTsQEd+/F9lgxlnvc17LHNB0Y+ZVJIMPZHvunhwMX
         arUlzOQrXb/YsA+osxHfB0BgFdlo9NZdJLQwGysewos7QH1QIYXbdMn59wuhcesy+d0g
         oxXaDTmFWaVGdG6DsaqS96uJmXErqJUvjBUl2jNdNIQmwVB9f3OImSHBxYBaD2wcq/bi
         sFqlW0rA6TjKvKS3qeI97jRkK+EWwXSsolCAN7sLvAqYC6/bn7EpuFjxUxX4YrJ0TufE
         KjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448257; x=1766053057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=Vi8bwsCiq3a3EUOV0qULBcLBAd+NfIJi48xBOTy1pNIPzc/B5Xp9yw8SUf0gXI10mO
         fc8+vOZbehuI5gXaS/yLgfFcqU9jX00N8xzGCtVb+kPPOkG53/OSTOndwRUPR+wvwh+A
         fqJzydOvUrnRe0foZNBJWzKYRppHG7C+EqygnXfHRsuL1fclv+LpVcDfkhflJeHPZmKS
         dvgZG3TeClCGSwKD/ys2KyLPETzIyA1Yq3FmTXGBzowea2QKQurKZPILsxx+GQifxbCl
         ZOwmpT0gD7+8VN0qeyeevhyeBh1+ch6xaAgwJCcUqwj+WR5b0fkIALE999ZAflGrlSTr
         mFPA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ67zoZW5KPMNCFC6JttV8JG7CrzML1O1SGahTTSpCj5MmQNjwv7YehZiX0QzLPuCHdjApfTwb6jA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrsCkvXxV+0rxGKqaClPdjgNsclHNwEza3oLR1AfxRsUThf720
	5UHyAc2hwAZllFZE6Ke5W17o5BgDhPDD04fm6zMg00x4VBZC0ILTfrKC4zGFpg9z/o/pockU7ci
	lmIqKqwbkRrawB4mUy+rPf6gh5IZorrmd7sF9xnE1hiR1J//t+woeCL8BnQsZ2xqgxH7Q
X-Gm-Gg: AY/fxX7R1Fqb6moiVdZNCvxBE4O+gQqrKxPeKrX9c+M7kNyY4KfvXSUAzUnTOFbRxkA
	fHaSkTHntgj5xi5OAwxjQOEyrmN6g5heSpEGpEjc5ihE3v2mQUoVvgoGF/QEbbVyciyNEVSy9j+
	gklD09EZOUbUkEoCfOhRCbT9azan7F6/qhqqUFIvE3DgWWu1PbkBxRwY2z13jSokjoFbnl7Ybd9
	yq71S4AfGYz9h7j1mz+o3aRxOuf7xvBJj8B/beIWQzRos3iCjNikmNskI3KNU6j1/XNWywxD1nH
	h+ALl5I8T3MqszAtecYDxH0Qykp+zwtnXzKRcCouZiLngND4XBlgz6+naH8GKqghPoL4d0aXQY2
	geKM8IyIq9+6ve5M=
X-Received: by 2002:a05:622a:4d48:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1b1b8cf36mr80526391cf.68.1765448257159;
        Thu, 11 Dec 2025 02:17:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQtveon1okQ329ExCBlmVJcHu6Xl1dha8Vjr9xGFwl9yLlNf8RoxdlDNNMk6bct2OLd0Pchg==
X-Received: by 2002:a05:622a:4d48:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1b1b8cf36mr80526031cf.68.1765448256648;
        Thu, 11 Dec 2025 02:17:36 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:36 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:24 +0200
Subject: [PATCH v6 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
MIME-Version: 1.0
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-3-5be5b32762b5@oss.qualcomm.com>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UObXtePHY5dMQlAbJZdKc4jLD0I2BhVpyz2GDbDUvrM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo3LFq4YY58+rairy/2KCqcSw8fcGBT4K9ka
 3KTe/r60bqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaNwAKCRAbX0TJAJUV
 VnnCD/0eGcbJ3G4oVSmUseVCXZ/RpATCvWb+mCT9Rv644utbjLm/y3EIXBma+RCBC1wi1vb3JXI
 bMFZVIt6fhx0GorsPNpPC93ORC/fbSYGYsiwOeHZcrSZZC+sPFOXMIA6qJt7ZHbQrzvUJr9BZ3c
 5+Fcyje0EVPU/nwLVijrUXm7vDKZH7yGO6KBdqA7Qm4Oti1KWabzdvTaJT6nqFeM7rlQQS+wKEZ
 nVqNxECBs/5NYRNzcCOHKfxt+i9am+ao0UvXcjOVycOkRPHrqskbhunUDwfeM8gnbIU/pIQE74A
 fneUb12ggyDtUopua+fVhnk3d7fssI0zvTjPcuc61rSOOc4pOIIFv8HXHnYJMWzlLKd7ZDd5LIb
 VXhVb83pWTKsjZsN4T2WqyNDMwHEkbA7ikRQY27aBHvK6ISSocYyAgVVVnIJf+d/wFGh7mZvqPX
 qe126Henr0U9kvOWqNxllvCcJpr9DvD6VOFeQlVW6OmIr9JEjYSjiCX+QKRfyjQfqgKgboW52iI
 N/vE19dkpCB2xUQHZN//XyfKNzerwTfcnUvWI0WbAsxGWBXX165GV+Q+mn0ED+qJWCs4VCszKrF
 6mvmyjUnis8ch/JnV4QzCrMAOcAY7Pe2eYy7/fdGUVGwoT6svXgPu7hpOBq57C3Ft8PnXwTuNjd
 eZ91uriuufnLSSw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=At7jHe9P c=1 sm=1 tr=0 ts=693a9a42 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ibtu9XGAwxROLk4EXI8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: JRN_XZUXcOhBJPvks_BQYQNOynOG8rS4
X-Proofpoint-GUID: JRN_XZUXcOhBJPvks_BQYQNOynOG8rS4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX7dtRIw9bztTS
 sYaDmUzDJ9MOEvRBlZABXGgwkTjIwVWq47XvsUi9zRRDYcANfIjiDhnKumbZ+QaP6hhJ0+9HF0g
 vm//iSAHFSoBuK07Z9QiaeOsAj2KiSHXP++6IwISyFNvnQ7jHiwuPxbg8G+9fZvkgpUdfCXTAUm
 1GvGyzayiDKZPahTxobMjgSSYoB1R/nnuz5Akx9oJVhs1WCqgT1X73Uttb7gMumYIDeuTFgIRlA
 Im4d6eHzFgB4JQ79FYXHihTI7FkGieEEnAMV3EmmlHqUtoXw0lvgmKr3XXd3V+3KOxnJuHzB7i+
 nK9/tEL2Y1qgvW2uo6m/VXaSLPPA0MhMkaEhAicGqRrvD9YNfYG/O4KivK/EJtj2LBc0u1MpjU1
 rqkXgsIxMy/Erw6pGA2iK/Of4LnC8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_021738_938865_DA6C1A83 
X-CRM114-Status: GOOD (  12.49  )
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
