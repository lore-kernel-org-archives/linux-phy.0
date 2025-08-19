Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 334EACA0EFC
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+7pTa8UgklqL/XuzsnT1c6seOyanvnO5ojfe4+8m3I=; b=pkbhYmvgXvbjGK
	9dDhVkwUOZI6UNwr+fwPNmIXK1fkVceU/R6its5h02PlbVECn/gAc6R07LfZnroHsXeLXERfc4BqM
	eKET9gsxJrjEyjpDxpLDrck50sG2tz3z/QqFwxby8rZPRATXpKjDU1biYr445gToEKLeU3BvhEa+g
	G+dgyqYHc6wTayPsnmmPqOSO3sRRH5E1UP8cmH6d86wNqBp29Z5igebJoe7/z1d9tx4FMwrXqQcGL
	O+9cysfy/Ucbawbl9Pf9yW/LpY1Jd//Xi57k5M0HTBchWJaNamL8wd4ts0LGcCeDXAfNJZ41JavMV
	HJQN3d92qQonak1CC8jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKdU-0000000AIvQ-3oSv;
	Tue, 19 Aug 2025 11:36:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoJ1P-0000000A2BN-2dAu
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:52:52 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90YqP000864
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=; b=QuS7t/vXgtGLzNwE
	DC3D6MiYb8VKZiZ3wqQXlXM+AiOlFqovFF3hCZvtuuYI9z8vGisW9uKuz1kLSbrj
	uuIkHF8ux5xutPFwZ4u8z3W449QOCXXonIDM8sjvgZNHf4huUzGqjeRGV9pjrOro
	on3QJ/jrdNJAafgGPcaIkbkONhAwkxyueFqOsiw/HGCTmxUaS4bAHzYST24FAfa+
	9zdR1cEwDDfkCeEAW2Dngel2nmxx8hw9ETapMn1P6GnWejaHYiIK/taETIG4vvt7
	y3y+kUxtECy1UeghFJSKMWVYl+G7mORbmO1S3lRjINpWAwZJeRZLIFXsAs6foFbq
	mxJa7w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh0782pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:50 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2e62284dso9403983b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 02:52:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597169; x=1756201969;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=;
        b=GJMRYD3jkegaAbWpYcoB9eWxVyZzvxELQivoSeQxE8Ow1wl8U8nWowTEyJLABfJ9dR
         NgZBqxzZNj/vsCyZNoWiYkLtqK0tbp9CwmHa3cLlvIpmfEocNns3zgQg7dV227RGg9xq
         kEGNqdZE2CgiqkG5dvNsOw2JPTOaWaBziuZN2tHhj/NHAyBgf3f3yoOnC9MBAZDOcxry
         EEFm9XgggT//d5Kw4uDoLRaoWx0pdjVzUXlO/ope8HmRA/Joi08c8QHZs8F/pjmp5JBS
         W760/1Vt91iXtozVTcI3yALFfBjyoXmfGQ/o9/rhqg7Veb1FgxGi1gQEal3xg+sJhc7/
         xj8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVwQFWco5udS6i5eddJbDvjT5GgqQLTu20583jwwCxNsu9i2Irpn17rGsKvqvMFBdnaRvi2/0uzi1c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzK/xIeRlj4jg9Cpz8ZqHpKDPUOuwmMoF9VJsiB2pD+py7MlY9S
	zZIwhbhGZuYbu7fexoA1bcHFsEqiUgwHuSjPV6fkfqOYzBGbC6xjiMW4kLXdliyTB5sxVHvpC8I
	1fYfuw0t+NBkfzX0bPJbsSKz68yMO/TNXrgNHJAs0s8Ez1U98z7bhAI9n3Hp40Esee4l4
X-Gm-Gg: ASbGncsfFVjuRlkdHj/M/HInYIgfZ84RH3Awn2uDuMYhXZNxvQrnwSHaPP+wflkPsbD
	dNaH8J6UKbpuz7IkMhKboygLXut1xhd5WeSlNJqnOCVTA6WCcxVFlbxFx5JFeS1R0li4ejos0/1
	w03czFcxcE8MABm6bKfg57QwM3k94gjlOjifbT9cibg+d808f1joq3qZUfjvyPw46/6/nFM1QXO
	hKgT9Er2re3otvkNk7gAP+ez5dkEPHUuuZsnf2N1pBAjS6BYtMtHQ/e/7AEG+b0CjUNbE7vtxy1
	GAdx8Lw+15FThjrAJPXzHdW4Tl8RoCeLFjq9mR7xX79LU2l8lz4BVJc9tvDbbGRggV9+7pjcR9P
	5i6KF/O5wo5BHIYM=
X-Received: by 2002:a05:6a00:2d92:b0:749:464a:a77b with SMTP id d2e1a72fcca58-76e8110b9a7mr2657208b3a.18.1755597169349;
        Tue, 19 Aug 2025 02:52:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHC4tqs7L+4L2W8YZBIEHDFL+2B641+2LTpEDdlxuZ6UcLQFj7EEmT07mPHXGjmZaa2PlaE2Q==
X-Received: by 2002:a05:6a00:2d92:b0:749:464a:a77b with SMTP id d2e1a72fcca58-76e8110b9a7mr2657160b3a.18.1755597168884;
        Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:07 -0700
Subject: [PATCH 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20250819-glymur_pcie5-v1-3-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1553;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=CEsoc9Uw7D+NpayVYJqV9+VSyLeR0jKm+hdfLxCWqno=;
 b=cCP3EM2K81GKxTUoliZ2LwnKerOSxnF87MByEs1GnCJZiu7AxmbgjaEIbem8nmuYLGzSaArOY
 cQ8AvnwDpmNBgHxgLQRNSvm9/K1VegVkkJVvVVeDJfraMzIcpS0nFam
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: fu-_LFZjc02bB_kCoTZdbyJOdoO6Etpy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX2o9M7jzLebyk
 R9DIngs5LbPnC8eT5ye1+fXOLJucJlUSKFtSVnO3AXUlva8eRQCyHG0C3LCvElmeFWY4BDpksbY
 wwL20BhrD0RHSbeO/TO7A/6qOdqmAttDdYk/3lUG8l6bGVd3CIu6VN+/QZmWNioW8snhJyFGoU2
 72wdFJYnSMiaMA8A05FhNFB7ZfxR0tyh6ey+WjSIaEEr2G6wcGb9oh+XlasZXCUK62VfQ/9kWQH
 X40IS/1r0L1HWxfvGrQAFKKLDfBAN76qTk9y7dLQQ88S7e1Es0TEcH54u8GnxKtlQ9JJqE60Nux
 /IJ7+lzqteTQfrHd8cSbKyWoieKeF8TfpK6hOGx3gjvoHRLb54qtWbZck51TW3i68Xcs5gx7OhO
 fuyDhku5
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a44972 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: fu-_LFZjc02bB_kCoTZdbyJOdoO6Etpy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_025251_796621_5DE63F3B 
X-CRM114-Status: GOOD (  14.65  )
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
