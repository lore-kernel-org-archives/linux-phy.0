Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74844CA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh53H9FfyqUox0tE9jPMF5aARTq7b72ZEj1FLT/BdXM=; b=hrWxk26+CJqxCi
	SpcFBh4haoPN5TvH4A4qSsznpF8YJy9fFe9V4bAmG7HCCUWoLjRZJNfvM8P2TnzDRfOU/RW35JjB4
	FasuCNvq+JCz8oDtENAqDsUvs3WCOiL7Bz6ZAH1XJ7/8ieA9h7dQb/m/BQPexcI+OFZCru/OmNM+C
	qyeDX6q2ensvceRHwrfxOp6xrd4S8KhPfEKyKg3j4bGxbOtMBCEdqS+lB6bf94sNMR8EePHUYYYqI
	Y4N+MwPCksgNb/J5cv2sVsJl9z1JFJpvm7YiET7m7ZVckz1QoOo6tFuKyWZuzSNhSDn9KTT3fRLbj
	YC+sfukw6TOEwKCVMZzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmm5-0000000AdfU-0dcI;
	Tue, 26 Aug 2025 06:03:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmm0-0000000Adci-1uc3
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:03:13 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4StCc025091
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQ8qWf1BjUWyH0kwW3Y/Fg9kx15qSwsugIaZ01MX7o4=; b=VFm5ATKfASULWytl
	+mbVQv1PYpvkOHxvBDdTIMcQhZbl8M2m9k4Rj9HM7OYT9RM7G1nXMPk+EFhTRv3C
	cRGIEYTqCQpxmteSaF4y8pPo7irmIlRfSirx2P6S6OkyQmllvQy/szTRXmY2cn8K
	mf7k9JW9zkRfEOcD8/JC1mBCw3OT53DfoIDBXkrWlZHDLXahYCKkpy2HNUXcjKGp
	6H+8dzPb4EpFIpoTTgaamLawKGJx5WRPfmpJuS8+V5J1Q0EnBrmTv8FpZJZFQ4fR
	UE9XUBbebwjBcNmwtpQoCLwJ5+HValHF5P+0z/gvWr2LEgIszn0cFgjfOYmmiX3P
	y8F6cQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5um7qtu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-246eb38205fso17034315ad.0
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 23:03:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188191; x=1756792991;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EQ8qWf1BjUWyH0kwW3Y/Fg9kx15qSwsugIaZ01MX7o4=;
        b=L08XmQXYoA9xozs1fdUm2TZ6SnnS0zvYyW4W1MAssUsOnQh7foi9ySMG1sZL8Q/WlU
         TDNTC08HO1bOV9JuGG7aJFmKH0kB6TR2rN8IONZZWdtNCTRzLw07AyAG7owguggPbnXJ
         5aiJHXB5imfNzFAibftKuf1OXhcgClD8s56Aq0auKsWz31OmeolfOjoQpLcCk1T7Ma1A
         cVvgGbR0Wt8PNy4T+tcDH+RVVqEBDfDnKuq/Z5IcyG5flK2sAGqdBRBfR2qdGrcLC6b9
         h7RXe/X2eZJ/Np0B+lJuyb9EoIeHB33ghqHoNasjtL47lLV7wbcma9McTbxUxW5cmSvr
         4JTw==
X-Forwarded-Encrypted: i=1; AJvYcCXqsnjFHz5YToXWTyH/RLlrD0j8U3fgTuHPcUwnj6l54AMQz5hEKNMiHouQMG6GcgE1u2jQU1xykBg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+pRC+Su9AbWRE7b2WoWU8LBGC02+p2vtcb7NeUlN5LX92Kgrc
	XcH3ukMe9FJ5sRyz2uu+2ptye0gXt/k5MYCAfIV47Xoymarm0k9laFWQwteIQHTUoS6XQsZ9x1u
	5tkWL6J3mXnQXpc5WNexV32QoO/gb5yJNTqv2zqHHEQFLySQF2GaNx7k1kNuqYLsff3FK
X-Gm-Gg: ASbGncsrrMKt4C7IV1Y+KIAkb6H/ycaDdsIqWGhMriGnyXIc+30SG8Ar+eLbYC2inLx
	zXxv+ZueC3rF3PzkZ+oo4DmFpeU8JxDBDpDns30D0J2f6zmRny4jEUCtQuqQka3DdzxiO3zQqlo
	Wshhby0CFV5w78s3m3shi3+CwxvhHXMjopWf8r1ap+Ng2G8hcyW9cRKyZ2fIw6RghAdgT4eWjEY
	s/gnqSR3WZYsLFiSEeXh81M/j92oQl3RzdugsivhwPAFUcVSclTk0vyd8EOTOrl8rVwCM1pr79z
	o6vFDCBurKHbg7j/jujAwXneLZU0rKndBVQW5/BmoJQCEJVjZu6PvtYU0fvGvmhcxTYZbtuI6Sz
	BjIQXenn2yDsnAis=
X-Received: by 2002:a17:903:38cd:b0:240:3c0e:e8c3 with SMTP id d9443c01a7336-2462ef8580emr177832325ad.51.1756188190765;
        Mon, 25 Aug 2025 23:03:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAUELHtk5K6KRa6C1C1Au2wwI+x8CZXl27V1FbFgEQCwGoYHIKELa3efUez6ZgqI049IYx/w==
X-Received: by 2002:a17:903:38cd:b0:240:3c0e:e8c3 with SMTP id d9443c01a7336-2462ef8580emr177831725ad.51.1756188190255;
        Mon, 25 Aug 2025 23:03:10 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:09 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:01:49 -0700
Subject: [PATCH v3 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20250825-glymur_pcie5-v3-3-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
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
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=1620;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=xFfJjLvYqUF/UNP8tW/CbteYsphSvzn4abnhCjQHkoU=;
 b=Qs01wuS9m1UMrZwLtH1ruCc370ngOt8oQwHvNAqEnU0hUprid143sfRe5X7pool7NNgfl45vw
 RqRIgjvPW9+CHp3WK1eOTu3CiRCBopkm9FcVVZRBXFbXUdPCnfthxaq
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=VtIjA/2n c=1 sm=1 tr=0 ts=68ad4e1f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMiBTYWx0ZWRfX9EkmkokTO7VS
 h1mgrYPjlHp4GYpvoteH+M7PGSaE9eycFfUzHecKlejI8KXMK7VC9Y1gfomwEeRgm4lEwt4mELl
 bWtsxSLmF0jSdZooXtfwhvXSCfxM4pMAb0EQlMR+S/Bj7qjKdxFOcdkgIyKBrGZbcKN0yh509MJ
 5I61iqtxUt+ZUA1zP80HW3/m7GehqYM7sMHc3Ib09iEXOmGivM/P/mMngF1P2kPi/uwjrNrlUnz
 sJfPLB/6XQ5hnanAHJDNsuEi5jNCXzkYvIyXLQyWF7GFvJsHIVf2l3G5rw+RKdK9vDwU2ZCNyyb
 v2CrfW3S6UcCFSKbXP5YfIYYvHavh10TwLdTjPrNp5atz+kFxRSNVcwtPxWWkXKoslyaXf6s2rr
 yiciS7zZ
X-Proofpoint-GUID: J3FelPsQoLG_jInR2ybR_-CsWNORN9OP
X-Proofpoint-ORIG-GUID: J3FelPsQoLG_jInR2ybR_-CsWNORN9OP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_230312_534553_56F8938D 
X-CRM114-Status: GOOD (  14.57  )
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
