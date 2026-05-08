Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F84CD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOufFLSVsmGIX+HpxJMJ8Emw0TAMteAikmwiNQcONl8=; b=kAhvpV99ez6pdz
	SYguk5eRXKCghlA9n3B21+rmr2NODeM9glGjh2eqfHRb5sXbC4xGnIoCYkf/lAbAhBmNMUBADaI99
	YpY7pIAslekKtCqlNnLbgK8P9P5RBze1jcYW/Z/VGiQwdwXrBBXbpyx/I/uO9+q0uPl9upq20tp1z
	mRhwrDVp/cdrqYkf1uO9d9ii8ux2v1KSFpFbV+VqFarWoP7x8SbYCD1LGhHZxyL89sZOY9jyI1B5r
	pbVlvWNTK30+eba1lzIA16RiONGRh+xcHaki9SQJET4BwRMGrOI8iLF48g1MGOudML8oUBfVZKla9
	m6Ur9yZGWDH8qjU8+E/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfL-00000007kzA-3Wn0;
	Fri, 08 May 2026 23:31:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfI-00000007kvk-3KSJ
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:30 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648He2Nu874583
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=; b=ROPJ/LjCIc1DR3eZ
	v1WNL9kdHP5iNDEDcHBm1qIGwEe19cdwPtdEgvleGl2iK+fLIPPuvq/ZysX+hIct
	7o/7ux6OXmfEvIzg/9Xlpd2xkHAKpmHYIQPeUQPHsCRzNYEyphET4Ly+lmuKuHi4
	t4j0ieGhHjnpN2wKx7JEB+x+uh1y/3p72ukGSkNlQQAFEUn+uH0H6ChxTxBnA6c6
	yOU5N5ORLiCJpvtLVB6MGkRNhVXkvrVZkaKG762zMqvNIyVU40XDwFRFsm5T0L5B
	XVGyZtnPFZ5YqK4PME+w56TFQ+xY3OQ0nh1k6MkVkmdmuh8yApinxKHIx5+OU2qP
	IaiguA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1me80xcg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2f525565b33so3354355eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283087; x=1778887887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=;
        b=YEe4SkeeIVICYPRIq6BN2QKt6znJTp+FrwpERKhCuFbc3by2mXFK9rC1HV43G1/Vs8
         L5ah8Lf9CyyBxfrE6P12L2U7VnJjU9A5UTgMJ3GBbgxg8HQluWE06DlOs9ISOqHJ9Gq8
         l8rHfqJkTX4TVYJIcuWyJECZaDAK6fSwJnufLJpgg3T5UZ3LgYU4GmLv3Ij/8c1EkQ36
         kAzuJWqHPxR2BRfgEwmgGG/VMcWdHRRO0+Z3Kf1GFwandyWrDxQ4oZStl3c4d3bN1wrW
         iIpXBT0GTKQiuSgRJwppcaSLdFu7l1egq15rEpl6K+/caZbMC25xpFwfkNCBYhERBTyl
         GD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283087; x=1778887887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=;
        b=T1iOYfR3VjWdI7Q/8m9ZyMS5u8wcamL1URc/16ec5QkM+w5opLXnb3nCRww5fL2e6p
         xrY0yHqU7EJdrBKftDhkQdUggmmMW42uLcMwmQUej6HKO0723jwqa3nwLMH3St3k+lxk
         hjOsb89cwPqdJmeur63cgvBGJhrniIZSCemkcWe/k+jaYidb+vQpnANz2ZviC4WSSxax
         ctLcGBVNMkJ0Co8lGakKNbOhZ38h+XDYvYx0OeWEcv2gkVIjk1qSwVQ/4hsjhfOGy6si
         4z6rcDsUxjyLGnxTELpI5XZ317AfYsCnn2BHDOYHEzXn4GtzVgUaywIxfNJu0N3buiDu
         ijmw==
X-Forwarded-Encrypted: i=1; AFNElJ9licoc1X2J8p+iFsIrkyOwzcdmUpCFKO7I+P24xL4YVa6umRzwkoonyrom85NV7xliR9MJbeqagz8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsogHBCaPqAR4jXpjoStdmpcZ+WrwB9K8rbojDRm8+CjqPP/Ft
	e4HSwiQnFulB15ftXbQD0X+ZmIBo48wdm2aYMm5eFGQr5Ksk4ESs2SfwQf4jFtfp/xuxPVHkDvy
	K0XjhA1j1TwI1GMEfalifAhYI4B/v/JBfe4OEB9YBESBhHnE/M+wl/Ax9rOdBiepINC7p
X-Gm-Gg: Acq92OHgr3LG840udYrO4y9q+VmVxaityzYg88JM5wl1ww+1HQf6VRhJbUivd51H5CT
	gtrZ2TGxMPNJWa91QhNaXIYug46df9pDMDDCY5DbI3m6N7Nv4yJh8QFdvZNSgzCvxwxg5BsOybI
	atNl3S3HZfKWcZLfg6k4Asm0wp6RioOyxJI8Cm0AlY6kiBPQfRNkAKDCzQvzPG7HHiiCG7JWkOQ
	ZOu8W3gVyx9OUaXUDuis2nKGS+utFaVf2IhDNGfqUYgms9sXVv7a54TzPNzjWm55A3HkLNN7rfH
	/wZzFiePXlcmTbCPnyM4Eq+CDKo09orv7MzkGqnuP6tFRAv0lGaBcl8qRhvSkClXQVs4gZIMnaV
	qjMqu38fYWA4PZQz+LxjhLNh7j3zo0d0jMx55qIYru1b75oWY2efO0qaytFY=
X-Received: by 2002:a05:7300:a984:b0:2d8:df01:d9f6 with SMTP id 5a478bee46e88-2f55034e59emr6633374eec.23.1778283086836;
        Fri, 08 May 2026 16:31:26 -0700 (PDT)
X-Received: by 2002:a05:7300:a984:b0:2d8:df01:d9f6 with SMTP id 5a478bee46e88-2f55034e59emr6633361eec.23.1778283086298;
        Fri, 08 May 2026 16:31:26 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:25 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:19 +0000
Subject: [PATCH 04/10] phy: qcom-qmp: pcs: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-4-237b894353fc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=1794;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=cIrdj8/8qr+RDIhnZn+O7Cu+D6iGtXuFpw2ZdlFjXfY=;
 b=DZrp6nGndGGIUXZ2z75/ZcS2WjopRR3r0Xsvb3cmS+jabNrLAgCtaAcPUoKLvM8PWYZ55UtWB
 yB2Kp5XKO8sBIaBPBHWVWreIFMhtj3iU6kJtEvXIcuMNmDCFXGW6/Hp
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX4X/dWUXehyGs
 Nm2gcoyNiZHnCbXlorYer8ZTaPiGnetwEqEBEkIfPlfT2XT83mIOZbS8RKM/cxLIh1yVX1gLvr7
 qg5lNAdC29phHII9RgXPOdKvFjz3HnEOndUGbIuiIfWNtPoSN/iMmmgotosf60fBH7bwKgPj0Zg
 NFHQ94wO4qlYWwejAgKx5bANC9pYSIL7Sm04La0E67K/4txCk3APW5ZDjpsJknBiqMCY5OEYrZE
 r1SmD0aIPJJWi1kIVcSyWkzvon52SgbwNHTQ5NQ0Q1E2DbZNIm/RXUtWC0HBPjy/FzZV6fEBgcY
 BkC6jQye3qAGEUZxYyZ0Cw9KOUvD36w31HTr4itwCe9fz9QOv02wty2fxEo9QVD/oSxeUVARiga
 6WpbYCDWmy6nu3FgIa0LzdLB+/89ccs80s18LI5FPbX42zJFYca42uaYn9aZ4rtS3gRIWGZ5R+w
 LS8QjsQaWBo1hdaLPKA==
X-Authority-Analysis: v=2.4 cv=BsKtB4X5 c=1 sm=1 tr=0 ts=69fe724f cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=TapfYG-AjLmxlko4O74A:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 3XvBHqRPU7IG8ZAOkVBbWqnCshDwz5rn
X-Proofpoint-ORIG-GUID: 3XvBHqRPU7IG8ZAOkVBbWqnCshDwz5rn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163129_436343_8222F89D 
X-CRM114-Status: GOOD (  13.98  )
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

Hawi SoC bumps up the HW version of QMP phy to v10 for PCIe Gen3 x2.
Add the new PCS offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h | 22 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h         |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
new file mode 100644
index 000000000000..6faca6d8736a
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_H_
+#define QCOM_PHY_QMP_PCS_V10_H_
+
+/* Only for QMP V10 PHY - USB/PCIe PCS registers */
+#define QPHY_V10_PCS_SW_RESET				0x000
+#define QPHY_V10_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_PCS_POWER_DOWN_CONTROL			0x040
+#define QPHY_V10_PCS_START_CONTROL			0x044
+#define QPHY_V10_PCS_REFGEN_REQ_CONFIG1			0x0dc
+#define QPHY_V10_PCS_G12S1_TXDEEMPH_M6DB		0x168
+#define QPHY_V10_PCS_G3S2_PRE_GAIN			0x170
+#define QPHY_V10_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V10_PCS_RATE_SLEW_CNTRL1			0x198
+#define QPHY_V10_PCS_PCS_TX_RX_CONFIG			0x1d0
+#define QPHY_V10_PCS_EQ_CONFIG2				0x1e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 76ac72410d31..7af77572970e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -68,6 +68,8 @@
 
 #include "phy-qcom-qmp-pcs-v8_50.h"
 
+#include "phy-qcom-qmp-pcs-v10.h"
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
