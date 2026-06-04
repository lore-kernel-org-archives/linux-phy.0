Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F027DCD6E6E
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA0/kqY7ouhxD4X+ptJOX8iDf1GImRZPrUWrWb7IS8Y=; b=AeuOmBn5YhP2gh
	YzktYSE9dI/EJprEuCFgvUPHKo5xRZiamLlErAOV9MOs9ZyFi+I/3aX211dNt7iDVLGnumfurThFD
	xYV6GKmPnK2UpnsA+Z62p6+lj9Ggvn8KoDXANVw7wAEXzMZoRpNBhN1QGGteWKn6YuKRwuIrmB9Jx
	7a5NNKeIgURAILUgpyWnXP08qkuC4nQR7GCqAbml/0EkwbOMLuWNQVvhirp+a6e/uHfvb/itHMzLn
	B4coqdvORSo0W9v6iJ1bxec87HBlEdgh+EAqJ0Y7bYwyPsy3g96bE03Ohjt714Sv6DQQboZvrYMJA
	+so+28mNyV9QqQsnC3vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxj-0000000G05y-2xP3;
	Thu, 04 Jun 2026 01:33:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxh-0000000G04P-1n7U
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6540o2vo313865
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=; b=E28ReFj5GB++NHXF
	FJbxXkLsvKYcVZKiQ6SAW57C7NUrFmlwQt7WXGchTn4qA7g+YGec4JlLmJpoxBid
	UU3De9veeSXK9OoTdCDGrwdFmXFW7WEDz5MEuv1oJzl8iVI/Itzx6imPxA7gj+Jx
	A+JEM7sxovu3T49L094ZAuC1JcSMNQfJeq52Ma78efZfTDyKWfAlvqftFamHGGBc
	g2cKk3skUn6TM1+/Dx8hioRYlZktpfIJPH93IlmvPzhAXOGMF/9Hb08h3vF8MWMp
	Dgv2CdrkfvdrBY8MuZdA+IeYj/ZF8IXEMgbslOs3r+ZeRbLBRQoaiGRw+uNmDUJW
	ISRhbw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy5v03uy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:32 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-137ea73393cso764428c88.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536812; x=1781141612; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=;
        b=QThFhgPsP8zFJaI2wZJ4aibI1cxvWOFcBmSxyoJVpQ6zn/DnqnkXIr9zfcEp+rJF/A
         PmC7WNcxzFstcOVK1hI09zzd3pJVa5pKoghIsBkHCJgyI3+ugleTd/NBApic5KFWNwxw
         n9knWp+4423IAE1acAeWmVZvKoIQBY9OWL8EpncINrK1SgCIsJto1kmYDhLhTPEUw6zW
         e8VNhBE4CateNbv2xNF4bgiCAoE2XGStIh89SHCOTCDSAaOrC55me4LEVjEEy5S1YUpR
         S5bIiHav6KvZUf2i4GEpepQ1C8emqpjWDbmBijYRNVbJ75hDXvqdPIForqfKVY8oShsG
         nRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536812; x=1781141612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b2mlViog/YyqHq+jcQTv7WnwnY8MfXhr992hmCBoDqw=;
        b=TN25tOQPjyqHFMfSRn5XhsG+wv1LM18T0APaJ0aYDaYgXNkSsxFpQziydN+vMQaKDh
         Q26cBvR5kikgnLpGbE1/KMtrzl0LO38O5FZz5qc0RuZIfuTwIBwI8Mxz6Y8OLWZ4KzL0
         RWiGdmZdV6m7N8pviy8l8dXEyJaXXHC6X61dF03U8P6D6wpRNfjC79Y7JZQg/xrkuRUy
         htUkv4a8gCaxwEWLsEP/PUCHi8KIflpQXMogtlLtZCkXCB2wFjMhlsuwFrnv8p3tcv+a
         1JpeOmeKA8R3ZRihDPCfqtdc0ZKjqC9wL1rPUiXKpL6maXSir2rdjPoDRumhu9dHTzh6
         f8vw==
X-Forwarded-Encrypted: i=1; AFNElJ+IZfh2o8lX/JP1aWp2DJ3K1BcY6nUtz+JeAfmxFsuOIzjOIwcwYAsFQ97SwmmPk/VkCED41rXG/AE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWBzTjUaQr/LJcDsLyNOtlSZwdZK7MveGslrpEI+yHLliXRsvi
	2/nyCKkA0Yp9I8kE2zBO3aoDYxVeOv63dUz0DhzV51SmjMqkOUrTeAviEwoamgxpwSn2cKILbr0
	Rm4NOy3xGualffWhPJ6Vg+3clcL04tJX/JY3VmBudkM6HiYBWDXa/7fHxuLnw479YnfSYTxWfUZ
	Lu
X-Gm-Gg: Acq92OH4uqN1A57kntYRVjJD5/lcEFEP+mF52/EF+T6vS7Yglo/oqRMKi9xqvPwiA1N
	w7MLatB9jzOqhkfvt0JBojjqRgRJEIPy+is6ByetCYxsbJyyNJG9Cb0k5tJrfzGzuuzB/+qMFlZ
	UVuL1oPF94GVwgFO1GmAR36Rk9z1adrXLYYv41UOhiN7DbzmT0H2iUKkzcraEZehIkMW7tj1vxJ
	x3t4wme5S0OSmoa69AbcL615lsa/1a+lL4fbjcqeza6dXukQlXBVMvJqxv9OpC96ffn66XrtukF
	OAUx9oyfMhoO35bNIe21GNo0BuEwyeni05s9RkIYeqU9xfxAvvxHDptTKbI6EjSZUjEINRyX5VE
	R2dwxhvYQPFue4fX1QciEkByO0mhPGFdmknPTw6JFZQO/yT0psla3BjGIBsY+6QiBWXqb0g==
X-Received: by 2002:a05:7022:fb04:b0:128:bae0:e03c with SMTP id a92af1059eb24-137f6bd9131mr2680546c88.30.1780536811558;
        Wed, 03 Jun 2026 18:33:31 -0700 (PDT)
X-Received: by 2002:a05:7022:fb04:b0:128:bae0:e03c with SMTP id a92af1059eb24-137f6bd9131mr2680527c88.30.1780536811047;
        Wed, 03 Jun 2026 18:33:31 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:30 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:32:59 +0000
Subject: [PATCH v2 05/10] phy: qcom-qmp: pcs-pcie: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-5-be908d3560db@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=1757;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=8Pt1Iry46S+aeKxOUquDig1kaHN7zoPCKWm77OKh1o0=;
 b=5g+laxlLXY1H2s128u8V7xGg8hyIWr/D5b/yY/GQ3MFsIkfv/m+5wFzfth1ukGv+sM761EUTU
 TDq170rYxDRChHfESgc721HP3SrOGba05rIN6T/hmBe90AfN1RGkZsg
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX0LH1SVVoIkqd
 HTeuDd98CVv0geJD2QsLhq2QgMOQz3g0ZVr6gw1q1Jul521IVPxF3OPYOY8YQshJ+DeXnWmWCWo
 KQ4XgvJH8eV/Yq5KxIJNm+ugoK3YCcVCAHXE+HxeNlZpmIqXdKX4lk5ECQ+SiEOQ2bTMYTWmSab
 QL4UT26zqD8h/6aWEkKR0Fm1p/Xw+6waGlCM4l0Orm7zGWqhIeWpD/EQ+Ae6GadXxpDOH3Q1aH9
 GsyC7aqwgHG4O4lkH7GvprpJUOQnpDAyRul5Y55nJ8aYn0cDNArLkfdz87T67SWvXSGjYNT9Zfv
 1Is0m/nEwjO0i50kXknpA9wZslrkmsWOINNvKIGJ8UcuWAG0v0noZxI7hRjmJPYLqxkqVKL3Ub9
 dBpwstSSSu8Fx+yhMggwwhLKJ6i0aOT91iPTOF1UrTdTxnOca7wG2PXdPnuCnB4DT/QI/0h/UB3
 Cf4ulbnphX4gTNiK5fQ==
X-Proofpoint-ORIG-GUID: c-Rc8eBsDE77ZTmHt0R8MQ9CSTAxfTyU
X-Authority-Analysis: v=2.4 cv=afRRWxot c=1 sm=1 tr=0 ts=6a20d5ec cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=a_mrqaUjlmxG8iE0lbgA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: c-Rc8eBsDE77ZTmHt0R8MQ9CSTAxfTyU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183333_592099_D596001C 
X-CRM114-Status: GOOD (  13.81  )
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
