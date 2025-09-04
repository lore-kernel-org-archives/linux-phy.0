Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F8FCA101C
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh53H9FfyqUox0tE9jPMF5aARTq7b72ZEj1FLT/BdXM=; b=gi1XdX+rEKXqG1
	57iC/WSsULeL9KYeQdjNHgiuTwIzslxkOPRdfoEawUt71SsTD9Wc0dZon5mHzzPqjYg/HXM0bfklz
	6tpCgyopNMWDMm8gUMKlMfU1NM9ahYWbmLPN9wqFvAjepm4YPYYRJK1r2567IhbaI72iuwlpGPYY1
	C8DYmLOcetmP9RWf7fktc8SXEEx80ZvOlFZTC3JPBC3oTzRqdSHbMEDP3V/z9i+GzAYjayTReul/C
	eJod11zAPMg2ofaygfJxbUGwWvAXFcR3WTC9mdy0GlBCbSgt1qbgIVPN3LdpfJabqyGarqY+rZ+td
	3HOoif2LijBts/T/FSLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3S5-00000009WpO-1TJQ;
	Thu, 04 Sep 2025 06:28:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3NR-00000009V5o-0qC6
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:23:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840gZrL021590
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 06:23:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQ8qWf1BjUWyH0kwW3Y/Fg9kx15qSwsugIaZ01MX7o4=; b=iScYLWICqKylT/0k
	+Tan3MOfV0oRkU5E5JOJ77OZcfUMUN4l8MK7uW1ehAofakPzmZslyZM0oaIP9wFt
	AyE/5xnsoUH045SmB+sQ7QZuOat6g4hhNowJHnXIbEl4FndZuJr02ty5i+ZEGPNL
	1FQT1dDBS0mHHIrbraFsCeGGmR+kwycFDlL8/nGjObWVFbBJdEQ/hN4z6IgmGZ0e
	UmUxIghWEu/3GGjPnEoL/i9US5UsEFnS5/kaa4444X4GkhMYSMne9qz2qjb6E3Wr
	Edh2oZdeTZ+NhtVSl6R8VT5GclKDvdPczA3mWsVIC5Nq2VX7zuktpYxVh3x5NjOL
	8QNLQg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0epje3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 06:23:20 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-772299b3405so1219593b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:23:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756967000; x=1757571800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EQ8qWf1BjUWyH0kwW3Y/Fg9kx15qSwsugIaZ01MX7o4=;
        b=cvUFe/sIkj9w7ecef3QMm557K7e7HnLaqdtxvaQ16JvWTdbi8e3ZMTEBdiETwtc7No
         z5oK4++MFqu2b6EhthyyWOTuja1347bUr4qpo9Is+t9vyF1E0869NfH8jMqNjp8qNfKU
         kyTWQTE4nklsddnXi+MlHZB6RC9CmDszJAxGHXE5/u0iz3+VWx2uL8nMPn/bdwECzyIu
         +hlV4AxDjljOtVpmNgx0Gf608mhps8TnX9Gxgsuv6X/Q79DwqL0ayEK2qyFenop6wMjd
         AptSmAUxjxNjCrydZXvDfOmOeo4Jr7iVK+z3DBJPciWC9jD/g1m+8tA1M/8t3PWLMmRT
         Dkdw==
X-Forwarded-Encrypted: i=1; AJvYcCVZItfoyJR6D7hTWdE36QfqmXJPi+y8y9lnH9EfXk9WkFUeDbVZk15M+bmVqYujT4xki6lW4E9Zu8A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwubycTKPvEgYQuC+CMdPp8z4O5VK4KsKeXdOEx+IuzkSaP+R0N
	Uam8lu2JYB2i/62v7+drGTGJWn1o8XnYNcLjBa1MBa3EC2V5JStm7yyoli09LUMlD4dFoWUiKpx
	epq7FXsTqtHCPXgFdDoxsyTPtDR19YbVcnyoENlLxRjG9S0tFLBfqBv9uwN2Y+OTpGV0J
X-Gm-Gg: ASbGncvwc/JY2wT+vZ+RJqvwP+YxQ+FpE0XnPic/lEya9fa9sYY6LJRrXLrCx7dd/OT
	1dzN7ZdO3VvRQigxaOQxYzkgsAgm/M4S51aCxPr9U20Wc0zHhXf7CR6rDwfJA5IRJ9oL3Orsui9
	26JXUd5QghOk50fLz+lubs2JBQ5v6v04PRdoADi6VYCX8ZWQloUkwz9mhekYE9Q805pI3MTPxm3
	BuO/3SDnF6Hs3ARVwLLHvx7SjBCX81IEcw/+ZYchkYbadPYk3FtAtQQa7FWIz8AK2pVAHogb/5T
	P3rvMbF20c8g1pdQzh/vg6JZnrkVYcTEV3UdJ+KiFKxca9fMCLpWSsqgPxEHVDuOv8PAjE9uDBK
	13g1rYTxjBYmUQtg=
X-Received: by 2002:a05:6a00:23c1:b0:772:750f:4e2a with SMTP id d2e1a72fcca58-772750f515cmr9977015b3a.31.1756966999932;
        Wed, 03 Sep 2025 23:23:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBEhddvj2BAWEvjtlsg3CzBDQV3zetF21ks8UWuz0syC1AhGFrMTlPaUQXPTXeoVafLZdKSg==
X-Received: by 2002:a05:6a00:23c1:b0:772:750f:4e2a with SMTP id d2e1a72fcca58-772750f515cmr9976967b3a.31.1756966999306;
        Wed, 03 Sep 2025 23:23:19 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:18 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 23:22:04 -0700
Subject: [PATCH v4 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20250903-glymur_pcie5-v4-3-c187c2d9d3bd@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=1620;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=xFfJjLvYqUF/UNP8tW/CbteYsphSvzn4abnhCjQHkoU=;
 b=JrgkscigcxP6Od78ufkTo6BeM+OoND0K0nfSNw0w+4/Ge9W17jsil6lRlN7bwDb9l8LBABFGF
 T1Ai0Scegt4CK5AtW/A/B5CNmuS1e8wKqh4v58XzE3zELiuJcb/+W85
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: dlxFtTLJu--4DxFGKEQZpgfmWD0JK9ke
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX9lqnwdT2ojL9
 MqisyEWdpNNRYI4h4yqXlu+Cu4OlXE6obv8ImiaUf2nT5+yeAKbVlti8g/CuqN3NSxA/UkeoggS
 lb6jXXdRBeEzWbt1PE8FIYdPv4lPgeWzx2Hlnl7wpPQUL8TXenctiUodhebFcSQgWMFX0zj0LG9
 ryHiafDYrqnH/OXtalc63ZR8rMLOHKzEqXOuyK+DQ/zaAA3X7itmf/7sA3HN0KY/0O/PB6MiJsx
 O5dVb8NyKIyJUHRHIqz0t+47LBOBClIftGcg0UjyTiqI1cdmfQOU2oYVquEOwgisic1GEnjgQ6v
 qRFaQ6KCMKm6uaTzRGv19Tttxs/ETK138taA9CHOBjZC+MuNQIwprefvb5MAkpvgoj9A48kqREe
 XZohZZEW
X-Proofpoint-ORIG-GUID: dlxFtTLJu--4DxFGKEQZpgfmWD0JK9ke
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b93058 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_232321_249532_04799696 
X-CRM114-Status: GOOD (  14.96  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
g5x4. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
new file mode 100644
index 0000000000000000000000000000000000000000..325c127e8eb7ad842018dce51d09a6ee54ed86ff
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V8_50_H_
+#define QCOM_PHY_QMP_PCS_V8_50_H_
+
+#define QPHY_V8_50_PCS_STATUS1			0x010
+#define QPHY_V8_50_PCS_START_CONTROL			0x05c
+#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL			0x64
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f58c82b2dd23e1bda616d67ab7993794b997063b..da2a7ad2cdccef1308a2b7aa71a2e5cf8bd7c1d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -58,6 +58,8 @@
 
 #include "phy-qcom-qmp-pcs-v8.h"
 
+#include "phy-qcom-qmp-pcs-v8_50.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
