Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477AACCFA05
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 03:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH3xJja7uPRlcCiDTPYGqIKdnCagPxb85w9Nu0VY7bI=; b=EsRfBbyLAgJGkh
	KPAtYc+qSDi/qnhG8w6Z4eVwVZCg23RBLwqIVIxROTIiry0tdGavKygjNosMwb7a9bmfe5JDZtoyB
	LHvTsTX5gSLAh6WnbvsMvJOAlyCOc76bStv/mP98DqSrW1S/XExjGmsGG+V2XaGU+GRdHj0PI6+N5
	RSPpep1LqQOMpFc+6ab5EjOKox2UW5ARzfdm0Yi5SznpbYW3fUTgO2XdTVCy5EVTa5xX5LNDpSUyR
	2knwR6Xj9MB2+b7S+/tEADJyWid2au91z1xKig4xfpkleYis5AU765miRryWSfUXBsILhc3ZoulLR
	VzYckxM3SR701AOv6Yfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PG-0000000B1hw-07Vj;
	Tue, 04 Nov 2025 03:08:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PD-0000000B1fc-1EHF
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 03:08:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3HIaqe3729801
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 03:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=; b=c86ZVPM8+sEGy14d
	X7j+lrvw61Yn+iBSOtDnjY6hJ7FhJ5NAtoUwdoQS+rVl3e5KKpCDZA5VaT6+Igt+
	76CZFbKyb6Xg2yyx+7JPkLzzMKX+dq9ssasjOUwN8FO1NREGLicAQy9ZHHkhicET
	L+1XL8yVQs/bzSDF0DussN/pIHMqQlm3ztDilQjuBRUG+xl1NguaTLBXefY8hUfO
	zZPVc1Aza6P2tKlZ+rZe6KOip8KlHsQwZvyVpcP/xiTsr8ex3DfE3EBGsGrDXCQC
	FOvkeFOKAHgBZL6xXlimk41HdMq/J+kkmvBkLkgfczYbHSJOQNVCSVYfj5ttDlI0
	FVx2ow==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70p89d2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 03:08:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2955f0b8895so25443195ad.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 19:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225702; x=1762830502; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=;
        b=MDX5a4Pi1hocxyvHWRNd/ejirSufGlEigLijpnpWHSUAjUhm4BQx7S3AK5XXY0i4DF
         AwaqY1UqUSKJeM6uDD/P2IJZd6ujYxFcppYXf4GwwhQ6GOIwx2L7VBUsNdPdTxncyTQR
         ZFuXs5Qt1DyyaGbMjp6s8x6ZKZWkWpaZfyKEXX0ekMllKDHNfcmhI496e9sMpzHmRFfl
         kvSJB4Udx/WQaXZQxKN37IhVqtXU/ComztfuZ9OzlFPDSBc7uga3N0TBFH87kUSxRuss
         KRtUoFF2c47MYdx5VxzZBlkDJB1ex9Pi2ZlbnUZ6JIOzrlqHGKFLheGH6c/CkIAWTePw
         RrvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225702; x=1762830502;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gIZgqnbDehLdDVMzdQR15Bkku/R/tfsdPjf9QoAZV0=;
        b=Yfc/qXEbNp/sBSFbZ7Yfu6+gXkUrPw4Q8mb8Adq7I5Y4xdXaZFyw6Cf3IJcb7K3qB/
         PmO7KgcLa1tMA4ZtmefOIGauLyAgnuMESA/wSAzMFopHzWokpEsr3fvMZVHc3VmIWMbJ
         qw38Jr2uasBLCFZOF6V72Najm0aSo6IduNlgDg/IWod0FmHz7iwOMdbqW0KDRCdUzZC6
         ZCon3Wm/4YRE2RjaKJ/ttNO4pamCSTWOrYm8h42yXFiKZjnTPPZ5iD7ZnzZa8Gqh1ezy
         lApPh19UvIvWwSo1C56raobYAEP/1iiSV/nfCHw72Er2Oa+M2wN3DvkSil5fq8eccfpi
         FSIA==
X-Forwarded-Encrypted: i=1; AJvYcCXfn3nWF656q1kmc2vvOt5fADfftk0+ILnU+Xeo9AoZQkzqFOAErYQ18q1Fin11gZlbAsS8so2Gsps=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxoay4OGuhRvwBNZ1Rn56nVVTsdZU17fhHp8tSMB+UfgsR/wcUO
	VWlicZprmbVTPsJ8/3HAZ/KRvAfgcbWHXhP6YUP4Viw0YGM+NBMnUlkeoQ/JUAaDxLq14ZpRIsY
	YmO6UoENva2+FjR2pNHd5e7+gwlkyhPhOR5XlZ2xtcse+47oNpSxR9fE01K52i90IiW2D
X-Gm-Gg: ASbGncsuJtpUAxhPIT/EG8RL8nL+p1vqKjfOlX+XEEpPvcxk1G9k0rHZ9hPwp5oOOTO
	478ZJhvNcTNNL5NacEkzbJZ+wRwgk1Gcuk9P3QpbNo8UqIIu63iIBTSuKiW7vF83ahfN8bAtnth
	dPjrBRwk/EPrao7pQfZ4kWYNq3BcHv//RgFcFq4YT1kinGmP5uW4mto0Cz7KbP83/QIOhITqtPT
	FgGkfncVAZUKLrgEtCpXLVnqyn42gPfEGTt6awEhRk5YH4Ys/P4kHJjFcfAWKimmHQnFWTEqzHe
	vWyHw/0qGP+zLl74D7rC562EJgaZzRW+bm8uyr+VPFm6e37LWTV8mqM1Gsa7q8ox3HqpRdrZxkt
	VnHVwX4pTss7///fg42CEetrl4w8PTgtdLzfOdWTASoYpww==
X-Received: by 2002:a17:903:9cc:b0:282:2c52:508e with SMTP id d9443c01a7336-295f94259acmr22552875ad.8.1762225702065;
        Mon, 03 Nov 2025 19:08:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUqO76gElO+ZTKwaGFoRzRUAfzIQanM48EblJ0dw8r4dHbocGwz588y8FBPW9txChSgp/0gQ==
X-Received: by 2002:a17:903:9cc:b0:282:2c52:508e with SMTP id d9443c01a7336-295f94259acmr22552535ad.8.1762225701514;
        Mon, 03 Nov 2025 19:08:21 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:20 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:15 -0800
Subject: [PATCH v3 3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
MIME-Version: 1.0
Message-Id: <20251103-kaanapali-pcie-phy-v3-3-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=2222;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=tUTfOKxSsOuUH1eT8rqZMoSV6/aVUf+8+IW1ySU57FM=;
 b=bD8LEiZbdSDb4JXSLorgM4ilVFgpWOhevlx0yUd3rTWNcTMkjnJJmPrk+RcFLr4Y5Aw2cnv/S
 tRlXelShU8mDefpwRViuaOAu9Wyds0rS2LY06Nt88wJcwLK+fqEnzbo
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: XQkSb0PEPTIY0fhzeFUxKl6gvYTMXKLs
X-Proofpoint-GUID: XQkSb0PEPTIY0fhzeFUxKl6gvYTMXKLs
X-Authority-Analysis: v=2.4 cv=AsnjHe9P c=1 sm=1 tr=0 ts=69096e26 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX3jREK8LokURC
 wse5VDYWCgNnHDzh1ScUVmlRKWtTpqxRclMbxSdu9rc9ht9IBOj96ah9SIPwcYji3WtXMYXe1Iw
 hMyWAPYl1j7ddLwlfIi3NLX81FVGItnrPlPA+DePjHo0BG6O/QcUPukn+2qx3QvGgz/no/KmUBG
 h+RSD8kOErAkclK9ebRlVPrrOnO+Txs+eWuWGRplAto/mRn1RS0z9e5FAFY1DrjYGXFC4aozT6w
 7fNYabiNcdxL7kBr5Jiu9AbDSJPPZXXjfUxnATLYGTDxe4tegl5Fy/kHwV/+wMO/CuGsUdBJd0d
 Bi18uomf5XzrzRdauB+Af/jnmZrWIi98nH+jF7b2br17UwCBxlHnBzUsS3U32uNgIElBdEu052p
 ktfkE7inG75id6UZrYqotdNbr5tjSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_190823_353542_314622D8 
X-CRM114-Status: GOOD (  13.05  )
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

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..1e06aa9d73d588aacc86fc1b87fb17396de700b8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V8_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V8_H_
+
+/* Only for QMP V8 PHY - PCIE PCS registers */
+
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V8_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS		0x090
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME		0x0f4
+#define QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5		0x108
+#define QPHY_PCIE_V8_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
