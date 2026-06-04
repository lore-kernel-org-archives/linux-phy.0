Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B4B5CD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqNM5hazy0hxxR8OmERBNzCylU4u+h6SmrvOdJkJsXA=; b=fFzMoUTGyNfdI8
	KmXKqWZi7UUs2e92j81uZzCI9FXWXebG9VdQIgrc21sCL30z+8WNm45n5YNW7C94JZwJatYOwWLXt
	RpODuRJY3mSJw2QBxkUxb8LyezfQANhlSKPxcNgIECWMx9wj/nVjxO3DH69TUbpi1kXtj6r8VS2Zs
	qKR2lNxpTpL1qz7wjZZv2680FMKyyRK99/KcUt3I14F3PQ0+0VcPWhbSDAsuZ5zi5Zy7D1FqdJ+G2
	QvhDXo2DkPgcl2/akV3qksiK7d1VaQDwGMhscwYSWV4Cq1lmO5UgoOP+hIwS2ZzJipTf0237A7e1H
	oxziR4dAqbILngipELzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxn-0000000G08h-0AsE;
	Thu, 04 Jun 2026 01:33:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxk-0000000G06o-2Ge1
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:37 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6540uZRd599320
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=; b=UlsFzu5uCmmAOuY5
	n+UNODU7rmR2+lk0CFS+M5gtZMOnvhOxMh+4eZbfPwGN3UmVTTwwAdb1oN+Jvppu
	2lNxn4PDrTRWl0IJVTtHSel8cuTZ3pX3RbH5EVqNo1h7gbNILkK7plRHOcfTLkgH
	kvC9Sj9KNQp22M4opri/thq0UvrcmffZruOA0oTmzh4TpjVWVMx9iy31Asre/Qk4
	zjuvjWjZxZeKuMWTScFCxmVuTdTtzaqWMzsErWFBCzr5UFJSSxihlIXRsqEjbshB
	lGpu8+qDIdNLh+iHjayzL7YKHud+0t3pUizmsCmrPxn7wUQCLk9kVkeDRuYklc+e
	hqQ0gA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy8m032c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:36 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-13709ab38a8so229540c88.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536815; x=1781141615; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=;
        b=GKBBI9BNYXcsGXfjBhpQ9Uy7zsuqppgLlBzW5bGEe4LcM3I/cLb2m1mTqqqnUJ6ba6
         wH3COYazZWIICrsp6fA62n2IGn1LhzQU1qCFZgknYYzGNT2cai5maq0OwdggrHD/LewO
         CLghK0FXge5KdJm+/vA9Xb+/FB0ixVIzdHf7IrW+BFvvrN2mtYMCa1nkA5QeMmr29mPD
         jpxkSZnidcWxYKbVdtpfRCuzpChyrXzP+SiXoDB6d/lBwEzxR9O+MDJSLtGOuTM/5eny
         43jdxlIvB/guoiIj2FHegOsGQvI3MOzdVhFf+4n3Y2EkOkCAFT8P7W0KmJWWiPYP9e5z
         P02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536815; x=1781141615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z2jDYFyWFwiBr8ROyqOwhRj8gSALzKVWOWbM241VcAk=;
        b=Uxz+gKfhz3cN8BKWI1idhM6g5LlbAnWkbZlmBR1g5RhG3IUJKne2SkL7UmazGvfe8Y
         6TACSBChM3kFZVWnh1fidnZNpt0iLHgePliUtm/ON2BjyAiFQpXM4CIs+KNlUyo7VJ6m
         of7pAuifeTJqZ4LQ749Ck7d2Pf0xk7c22LwBEeujFRiJdY0+ANM3C6YcT14yXzdOdEL4
         cUIwK79xk5ano6X7WYtJ4OokP/aXccDSiCg0zpMWgbMghjO6JMl5A/UVYCB3TYoPcOoQ
         JbhctWOcC1cCJ088/CTzEcJWF30iu+gcUCodKXFfsP4/MsPP3ZyqtiVt25HR1wFDZWku
         T7OA==
X-Forwarded-Encrypted: i=1; AFNElJ8fJqvnvcne1iePAwj6CklZbn9nYr8cSKfRoCz4lw6Sdu+L3fTxiU33SywYFcBRQvYAN2LmGe+6hew=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEOZ9hBi7wOpw9wkHQmLcw9s4haqEnalM5Lty2hZjJiVx7Mym2
	hi3/by3ZOPTqPPCwTwxkxE5xUr3T23MDxJFsUBu9ZkMxup/G653ai8Deidvo+AH5V0TfsWH2jQC
	aR2HdIQ8BCRTQ8tIEWWI8Qb9tkf5r7T85G5yoYv5676X4E3hFGzxchNqjNHM6ApId+EWqWt4PFf
	qB
X-Gm-Gg: Acq92OH03CgvuLpAV1MTQWlpy2GKhVnmn/H1zCgiWgbVMFtYKO6nRY8EYWqZfGMGxnB
	UWZAa9W+tHLhIdLUrOZE5wjhWWHa2N6UlUDyP1GSH2nMt769OwEh6CZPsB3OzCsoX28gMoteSZT
	/PvXQ7V7rMVXGGRlGD2DFk1aNxtNUIY+gnaoWQN4R2LtepUZjfAKUecX7om70bYV2+OKxbANsp0
	Vb/hpkx5rVDU5D7QF6Z1H5Bp7ZqAXuCSacSoNG8MgeiPsGFtiUqv4VK+QS8ht5P+bxwYbCh6nvi
	iLBytfsKmfv5MO17kRM7yORXLqB5JyzPpLrFeASFXo/Rmg1TSxzUatao9cdvYe2IRQBVVVPcr0q
	3qFu9IkPGGA0fFK1CeZr6zlbQL2hHi69+obfo5yLEPTFW3x5QXozesHGyFwqKVyf2duaiAw==
X-Received: by 2002:a05:7022:f314:b0:11a:fb3c:568b with SMTP id a92af1059eb24-137f6ba38e5mr1296348c88.17.1780536815478;
        Wed, 03 Jun 2026 18:33:35 -0700 (PDT)
X-Received: by 2002:a05:7022:f314:b0:11a:fb3c:568b with SMTP id a92af1059eb24-137f6ba38e5mr1296336c88.17.1780536814946;
        Wed, 03 Jun 2026 18:33:34 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:33 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:33:02 +0000
Subject: [PATCH v2 08/10] phy: qcom-qmp: pcs: Add v10.60 register offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-8-be908d3560db@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=1895;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=2ILPtmC6htJwupXVcqBNOJFTUtBdC7zGearGnbGCWow=;
 b=HjtEuYdgPwNBjfNk6Dz/PB9TbjV1eeA6SMtz2P80BbJnR9dKxGj8QiYoQAnQOND8Sn3IEmqH+
 74KD9+/rK2vADK0eZv78mn8nfpzQd6PhC1fRtO5fB9KYTwHNbS6z+L4
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Authority-Analysis: v=2.4 cv=KfDidwYD c=1 sm=1 tr=0 ts=6a20d5f0 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=pc03IfIZ1lXN1Xjd0rsA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfXyERqBJyc+Xuh
 GQai57OO0qywIPdEQJ9tOcVNeAJ0sObzenJiFHrOQBWtb9RI+EM/pAh4ZnoutCxQolvXy2c5jJh
 0LeYehKBCupaBQ3I1NllGF+ft+ibYIBWyaN5e2euP+mvcuw57AQs1H0jtBFoMo/gFa3qOzhYP8s
 3T+DvA4hq0axSNHPAUx2mpLAQV1s778ZWJkws9jbZV1z0+XrLWsorC/50G2P7z9DCMJWOL1nVlx
 BPAAWPKJFCyX4UnvJuiagihzqTvK2+CY+kC70UW+OdH+XFqgMWPTVe0unJCnv2hyY60/S2oBj9q
 YHuk8/mDdFpI4OcUVVWh9yP9FHUCh3B2Mc77WxNPp1zP/gCNJGZ5WHiKYH1pakXH2HlqPxeLZpm
 odUEPzxGTXAi3DWuaZtq+lLcClO61ahrRQxT0+kcOrytEYx77E0jUAEdbWfOH7OGsRLcq7h5msF
 CpQJEWvI35Rwu4u/QPg==
X-Proofpoint-GUID: vpGkIvBrZOUSbpE7SmROwPllB9hUGJTP
X-Proofpoint-ORIG-GUID: vpGkIvBrZOUSbpE7SmROwPllB9hUGJTP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183336_585774_BC6B9925 
X-CRM114-Status: GOOD (  14.18  )
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

Hawi SoC bumps up the HW version of QMP phy to v10.60 for PCIe Gen4 x1.
Add the new PCS offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h | 23 +++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h            |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
new file mode 100644
index 000000000000..fe0279ac4e4d
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_60_H_
+#define QCOM_PHY_QMP_PCS_V10_60_H_
+
+/* Only for QMP V10_60 PHY - USB/PCIe PCS registers */
+#define QPHY_V10_60_PCS_SW_RESET			0x000
+#define QPHY_V10_60_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_60_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V10_60_PCS_START_CONTROL			0x044
+#define QPHY_V10_60_PCS_G12S1_TXDEEMPH_M6DB		0x170
+#define QPHY_V10_60_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_V10_60_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_V10_60_PCS_ELECIDLE_DLY_SEL		0x1b8
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG1		0x1dc
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG2		0x1e0
+#define QPHY_V10_60_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_V10_60_PCS_EQ_CONFIG5			0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index e461a000da48..3a4a0a9a9e4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -73,6 +73,8 @@
 
 #include "phy-qcom-qmp-pcs-v10.h"
 
+#include "phy-qcom-qmp-pcs-v10_60.h"
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
