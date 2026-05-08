Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E62FCD342F
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA0/kqY7ouhxD4X+ptJOX8iDf1GImRZPrUWrWb7IS8Y=; b=FGrwJqCUwS9QZV
	yESmGxV+cWVTFZRoadbY8t1pOXBJFUIqsVD8zKQ8GEuSMEq7jvW8aP10/uxkm05ik7y+OtEcp6Cgc
	/OX+570qW+xJ22ulfmaVT35YcaWkwh7YBWkcImc8eT6iFGo8n1ITTghsxc2jdSe6vH9OV6CuyLPtk
	jUSkPp7dsHr9iWlm9O/Q2h4txZ/EI496NaY03h9yDZX0Szhkyc3eYgRwQxa+B5B/jXQIxUVEIcbzc
	J9yilmovT4YFEUXjzz+N92azSbKqzCOL4wbelfHifDKt2VtQWXXSCpD9j/n+lav/XjKckFO+/t8Sl
	SoxvG4xcoruzabhI4zqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfO-00000007l1A-0lCn;
	Fri, 08 May 2026 23:31:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfJ-00000007kw5-2Epi
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648G2vPJ724360
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=; b=ZzGzBejO+Iryk8zv
	NrxGOg/HcPnkAB43vCr3+FSRlBh2zXs/ubVuntAmrmPVxzCy/zI/tzQqlpG8qFw7
	a7cWqtjmzY+Knfe/6A5xDd3ucuLfy8ZSgK7GcQ6HmXUsE3Geuxvfd6QiSrlqm+Yd
	P+F5QInxSFWhzLwX10ZSQ27vkUy4B2360sY4gCqD36mluTugwdvNWVD6cAe4hAhD
	zoPJZZB488HCKc/qpO+vGuFsdCDdMgyvbRY0RVMXP/T+BxonqhmK789XGcpx10PS
	6bXaDi1K94AoP7kEi4mTS/kcbLYtYRxZufQAcuPY+G7QjmLyk+eGm01pYSzh+Co4
	UXSq0g==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1k0uhb0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:28 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ef62078ee7so3107256eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283088; x=1778887888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=;
        b=KJuR4CaQXDnqlSwK/GleJEvobnSIOQCFdLX9/vsyF0PyUlQ/kJMa5KWKDsXIWUeNah
         G+4qF0ET3N+8A+uey9+UAct/delO2X+jAfY9xwnQJOOUEC1NFaKChbYd3xILSEoeB2/i
         USQVeP7Afvr2rYmaqUwSD3z6UlotQf/swFl2A5u9PhmbgniARApjxdRJxNPUAn/WT23i
         Afzii83L2O2iyuShBJU5IhwyQOb/R3XKK7oYXKVoeIEs6M+sCPUP+Hx6AeWY5B3R+QCx
         Woqc99RLtpJH6rtciyczffjPbDPFFLp68TPKzIOHFaDwVfoDJ0nO79VRe82N5SezLw2P
         TR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283088; x=1778887888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=;
        b=JYmUIxx2Ifz9AXtAIgJLQDQ+86eUZHXTPmSZAPcRLVjZ4lm1NwOm5O0HLgFUZBT1NO
         lbC6K4zW5t706brS9XcDCjnzKtMx8gCa8/eJ6xfI0w8UmcGkDkdXuJZqrF1a0B/y9tbH
         kHIe1HsW9kQfaaCNZvQgMtQG+9HbW1bajYKv47MleQxRlQdcyiJKO6elRx6PLg5q/xUv
         Nd7AbeO+xNJFeOma031/HzJLTPzMLW5YEmFSo/WJDi5lM2uvwzJahOCnQw7pVfCDFU2o
         0RIA/dHwTyzgQCEGeUzbYIIrGxZbUCnKDlP2PGAxBvoL5BFlkW3k5vra8t+TBtx4eaUE
         8Msw==
X-Forwarded-Encrypted: i=1; AFNElJ9KtNgI7JUYg5VhroF40B3emXxfEUkT0VwZf/PdkJfB4QV+5P65Y8tn+NrPL7/NDYlkqXxYubkOaQI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQHrY2CL7GW+Yg+ThQjESfNqewBPZKrptqN+20H4KVa9ceX7nt
	IE+Xo0sUhEU5PrTO40GTF8BpP7BHwkKBJ1x7tZh8HlcI5A+V0UpZc8mPFKkirw9I6ZKhfw3ykKl
	yWTa3rAmhqSIGKalEsN8LUQmWOznP4D/KfYXESGh3BrAakCzPy744BPrMQB+RuwuNzAbR
X-Gm-Gg: Acq92OFFxUjwJzCo2c2WIVNp0olKUeTbgcRtzEZONTmEdAAxVj1JsBvxvoWZ0+NHzkH
	du8zGSPvNlOoly7+pSDIcTVrKnU0B1yuszmJ5D0yYiyWOLgbvEX3x4KMiJDqHtTIBDUTRId27G8
	MNnq6uS8MBYcls5ImhMKrhyxghHXidqQk7csCwxHXfQWOs6Z6t6XKs12qKIDbVEqUTXqCd92eZ0
	2jbfLh0QE60eoXkau3eyYYAj07D1kTj0wbkgX7DeJIIudNxbRhDe9nPxp4shSkQP53e3KcyBDBB
	6LxeRbbdwsw9p4OoA3iIPF+/Y3hVAruwSq82I66fxssy0kL9XQYYk9TKNvBAw4BVOFWiudBeqDj
	PAgKordsQXD46nLkClYihr6Q9Hos/Dh7YrlZTmlKT/gZ3x3KjheejBnCK2/Y=
X-Received: by 2002:a05:7300:bb8a:b0:2ed:e14:7f5e with SMTP id 5a478bee46e88-2f54b899b3dmr6700470eec.34.1778283087656;
        Fri, 08 May 2026 16:31:27 -0700 (PDT)
X-Received: by 2002:a05:7300:bb8a:b0:2ed:e14:7f5e with SMTP id 5a478bee46e88-2f54b899b3dmr6700442eec.34.1778283087089;
        Fri, 08 May 2026 16:31:27 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:26 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:20 +0000
Subject: [PATCH 05/10] phy: qcom-qmp: pcs-pcie: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-5-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
In-Reply-To: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=1757;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=8Pt1Iry46S+aeKxOUquDig1kaHN7zoPCKWm77OKh1o0=;
 b=m2ywsU2DGNXxUhUIuOPFjA9wk8TahhnDTjaoCybhJUMJPNrznlkKV6dCqB9AbtQhI9wBb8wYP
 ZmYnKlb24CKAsDz5ZyEvpSRVU5/3lLltLW8TdnbI4MXydoSx5OR1gs+
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Authority-Analysis: v=2.4 cv=dIqWXuZb c=1 sm=1 tr=0 ts=69fe7250 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=a_mrqaUjlmxG8iE0lbgA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: ciksY3cpeZvB0aOwp-5Uj_bFEuKwttHn
X-Proofpoint-GUID: ciksY3cpeZvB0aOwp-5Uj_bFEuKwttHn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfXxu63JX95f+NH
 PFWXBxUm7ka66YiHPlEKi0csQh8lLWJxyu+fTwul2wdpNakotTLF+heddp5yMKB8Rn7WOi6pD2w
 UI7++LpSq32PS5LOVR9YNxCcZ2vuiV72W3HF6cvnUwuhYSmDE3054cJXxlYUbu2ZRumDnE7ESQq
 WzHXrhC1dAXU8F6qr5TRBymTC3s9pI4J8/Ri+/rT3jE4R1baqMACfPjBPrR6Jnd7LF5m+xw3/Is
 RvXZgZwtJd1pFk/GDjQsJ1WjxTo1wfKrnmNgCYjD4IWz84d4mLP8/CELwRMHAx3Uzt/Jt7usWax
 7j6z+/OP0j2o/fTLGzaweNMhgTf3nH6OICLARwCkXDaMaQEAjHDqbIH9QawD2xhfV+4vqldBghO
 ojvS1ufg1uIs5uZP2+jOSpqAKiRycR84DTTEgrZ3jvI5pawk25lwhIaRBwuuxmdeRb69KnDJoCe
 LpjrIXqVxpV20KNLDYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163129_699552_5A3509D1 
X-CRM114-Status: GOOD (  13.38  )
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

Hawi SoC uses QMP phy with version v10 for PCIe Gen3 x2. Add the new PCS
PCIe specific offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb311..ba17e53d000f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -40,6 +40,7 @@
 #include "phy-qcom-qmp-qserdes-com-v8.h"
 #include "phy-qcom-qmp-pcs-pcie-v8.h"
 #include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
+#include "phy-qcom-qmp-pcs-pcie-v10.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h
new file mode 100644
index 000000000000..2cdcc211bd93
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V10_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V10_H_
+
+/* Only for QMP V10 PHY - PCIE PCS registers */
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG4		0x014
+#define QPHY_PCIE_V10_PCS_ENDPOINT_REFCLK_DRIVE		0x020
+#define QPHY_PCIE_V10_PCS_OSC_DTCT_ACTIONS		0x094
+#define QPHY_PCIE_V10_PCS_EQ_CONFIG1			0x0a4
+#define QPHY_PCIE_V10_PCS_RXEQEVAL_TIME			0x0f4
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG6		0x0f8
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
