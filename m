Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E1BCCD199
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5btJaSoY4+xSJtzvy3BX+243FMb73MeKjf8pcNwR8w=; b=rwjD6ES/J6QbmD
	MRT38rTZ05J3S44jRwiSp8javV59byc/TSczRVmTIzjMA05+PxSQ1F+xQu46zjFHMv7jt6gs9qt8p
	+Ti3bF+wRpnipBu1tahmmi2xXc8CP/MlYDo4E8KX7RTXggTBNL8Sdjw1EknhbIaGhmaDhju2RhU3Q
	wRfvBjC6vVstty505ZI6bCImu0SLxcMbJxywjSqqr5KVPaYABKUZIFK3YGlu00xDuvUAY+SQo9qNC
	+5pXlXzXb9ydBviNSrm1rS5s02URrWsvELAsiRKEqGPKStfjenM9fSV+pQuk1menEmQoH7lWIPTAS
	Pu4Fru5iJMvB6cr5b4wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpT-00000009KHZ-1W3g;
	Sat, 18 Oct 2025 01:33:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpQ-00000009KFW-3ySj
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJH533016333
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=; b=It2rF1oX3BLd+TU8
	kyLXZGWIHND7ASt9uuxNpKpZ8T1giFdsKSRKC8aurqKTNe7rwKvPZsKYi4RXVJCg
	LscNR5QKdkAq5lzGhXmy+rrKfPexXmdwuSbIIBJJwq0+0L7J+BuI53MOrsgv/+vF
	y3zHJukGY2LaAwRUxd2fBofswTT0Q+6bi4rxWqfExG0DbjoWDiJZZiD0dNWS9fhK
	pBII8wo4S4wrc4ECnmJyobe109ARn4sWQDX/927a0RXQebgzvB2ceTzDQDb+HLXl
	C+Jmff8EO/Rms7QUv5uLQv+fM2WMnDxzE2RZnnCmvMl00WG4CIW9UL3Jktgn+mpG
	TPl6ZA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8vwyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:52 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2904e9e0ef9so46436035ad.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751230; x=1761356030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=;
        b=AUoH9Orq1pnl36kilNOgut+AHlCwa38c26G7ENqlI3HIZT+m/aZhukt7ZY/cQM1RHc
         gC0D+k5x4jfCJRHY0hlr2PCXJAIilXGzYmBcnRFnwT8NY22Of8PZAn7M94mSXhEIvobe
         EAHEbaaFWsjtVcTF099yMhvQNaNTI88sOQAduAgpv2qN2ZztOlKbmnTdQVhmrlGjrVTx
         qch7chLlfCwIrJC0eJiAXW3Y8nSswglroWD1sKhVsYeAa6u/b0t3+HFanZffnEAYwDa2
         H5MROV0qdnRA7FzNcRIN26vGkBo5GSMFNcW3fHx5nD8bIWJvtRBofMm3NL8dwVE7z+K8
         VQEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyumaFpDUJfDoQbv8AMUJpj+5Bl+vXb5bjLt0wvHDFSdm9YbCE1XE/3aw+G9EN8SBjMyAtKaowSU8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi+d5yKnNkWgGAP1RD1UvGvnMVHLWV+4/if4SHZ7FbGUQOW9PA
	iM0QBL9E1VlZR2Fo2FCPAYFVLe6anYHgRC0PH3ZnUNsO7+uebTeZUXoSYJuhfCRS4NXrpacLKsS
	vAtHVeoJkJQWvHfa+w8G3ApN76cHmrhqZRntIv6vNdq2bDSpPvch8JQE/orKBEuROMyrWVLL6kf
	V/bs7pig==
X-Gm-Gg: ASbGnctdkD46b7LjO38O9dH0NNRt5vCrtsVJVRJ6CHfRNbxXizZt6xIqFaM4oQLpRWE
	yUB0zaNLXCmQ99VtyT6iUJuTpejUJ4x1f4sJf4GgsFEtNrKHftzS+q/56Qfdh1pk++JDCrC+9c+
	+yLHG6ml2oq9f1PkoD+/Ft3bxJGVTJywpCc/dYUUrxyRLT4enhvobc9Ff08iKS+GWrGEOZc5lfG
	uqxdFYFRcOpzJZdIUMAbzPvMZkRg0LP/q5vaqDmakt4ifpibisKfXrFIB7RveZFqW/dOmH0Kp2K
	Qkk9cGprK0t+xSbcTMf6ERk8+OdNFVYeUJLtu/86kci7sbCSOLSRC7gnPxeP2xovtaJzCRfOHRE
	8m8BkWZYI7nIE1rKrX42OMZcVTq+EXF8I5sgO0ykE/jXfag==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr72784765ad.13.1760751230576;
        Fri, 17 Oct 2025 18:33:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyqTnRrVLfri2rPa2KLlfbixfUhrUK3J0pAbGviBCAqZVoD1KHQxtnhlTVe79JwMAh+DNsIQ==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr72784485ad.13.1760751230159;
        Fri, 17 Oct 2025 18:33:50 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:48 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:41 -0700
Subject: [PATCH v5 4/6] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-4-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
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
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=229Z+uA9EBUjxLvNJs5f/sN8K/iZsIa19KeM+KZknsc=;
 b=FMk3XJnpt5L5oYFyTSeIgwj4netRzGwWjSHT7VYRPORe2EsVKTIv45z1fdtp+YHxJZXiYEfIt
 o7Izq7Q8MQVA3O4tO25fm5D025He4SOrT2R0UiSf7mQ4ss04x+4OsSF
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: oxsB2JjpZCZDtv2iJdXLUpy02CHOVQ2R
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f2ee80 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX3HKCK/CoDeDT
 UH1xNIodruHaJAGrGHF5N5FA6ZWPmUZaTNLEIdNCpzWnuKXhrFLZ2XOkcSLMXL1puqisSKy6K1O
 q/uaoW42PaAcNYhQDiouihSO0S8lwS4yPFRMDSllUMR5wcr9EJwHtGQejP8KAYsyhc4gcv5ATaI
 gWgxzjmziyBI1SweOYjQSrxipgzo0VdaO8j4uz1Vdgkx8O2EPAIlX4/FBZMc5t5KLimlgAD8cN6
 YGqsg3qMz2FsYzQISjRfsZgtqNSW9duHCgPYtqAM/LC19Q3yRACcJ/8UjrvZCIwGR0x8ZRCtaQf
 pFnRb9gJiO3m4kvd2xpWljwmlKZDlOtnqeiMBFR97DHrHosTEetGx9RYBxhfVm3fhxw5Mu0qiC8
 OudGktwW52PqX7lDfxCMv/wZDng3zA==
X-Proofpoint-ORIG-GUID: oxsB2JjpZCZDtv2iJdXLUpy02CHOVQ2R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183353_116002_A20317BD 
X-CRM114-Status: GOOD (  13.36  )
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
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
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
