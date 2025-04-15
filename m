Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CE5C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 04:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK0ok9gwYNRWUq2FuHY+aMjIDejjf6K2oyq0acUN5pQ=; b=GIFZbIGIDL3gbE
	mvus/CWVir+Ra/SJoKjrDHS61zq+D47VpE3KpwpMCLS1p2qsmTL3sgQgY60gzGbm/MBNqjnA5m2Sb
	OVeVguLo5yBbfQh/cx830mrVGtEvU/o9u1ksFJixPP3cm/bEzGMJpXD7fmhChMoXlsBkqYKxZ9JFV
	sgla8VpvoSBMM/EzLkYN0Fus/npva8n1TeONqbI+6VI82+krHndOzfx5j+MgHl02kbiW9n56UhPHZ
	UyCB7byrsupNspr3lGWwaavJ2FjmyT7W1OMDxnCK3WA5FEtUq0od6bYb8y1Z3YEHeafBwoY614uY7
	F9C1IOTbgX33DZo5YxWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xp9-00000004Qlg-41Gm;
	Tue, 15 Apr 2025 04:23:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xp7-00000004QkU-1ggw
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 04:23:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15Mf4031247
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GeEaOL0Qs4hs+SU/rpDGpjPNr88zN29VG/gv5mZS6+A=; b=WhpHH49b83dosjFs
	JBKo2bxlTeSl+A/oNxR/Gl/FepbhxIlh2ALb/jKlzSfsx/t3QEWnQ5QKEf9OCopm
	QeLCMGM1mgQf1fOOtrpo18lZjke7DlltXup8MPVxxsib9LqMyPzhV8J0+TBjDAyx
	3IPmoI/Hfay06nT+G2nzIMrRkuSlfLJb3ObJCF2TQhKvRYPQ1e4FW+ATBJHbKORE
	ATQ/V9yS5z19g2FhK00SY+T8qh9bGujya+IaDSQRiUJf3XzKJUqf02o2RtOBlJ9E
	XBWoHuGg5wcl4ztJQHkE2zxdLYO3QiUcKQV48c96/t/XU7tEljm7IiPfIqMZbMCu
	mCgsKg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs16nq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:23:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2ff605a7a43so6645602a91.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 21:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744690978; x=1745295778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GeEaOL0Qs4hs+SU/rpDGpjPNr88zN29VG/gv5mZS6+A=;
        b=vP5NGDKLwcKrKtRGKuMmND3+Z+IEAqi95prCo1dhYx56btVYYb22XvC3sYwfYusCBl
         UGd4siUfiIC3EafonHgcXIksh8fT/DEPOY/TcDSSPBAX1aENRSYT1Kc3IDrsOsRNHLdN
         JXdLVV9tYBcrwM/0xhZ6j3mYuxkv4W3eYsksQcuL1424jLg0aYNzG3aLKKZhz5R4tWvo
         YDT13hmWwOmUuJm7Xg9nFar7QOLtotySFdmceu9DhOtbJGBwXtyh3bxsE/bw7701RmVh
         I2XEQBF9X3rOtL1mTBhfp+pj7Tm72y62rR7sRs6jqyVhAXki7JqNHuQXbMCq49Y5vBJ6
         fIMg==
X-Forwarded-Encrypted: i=1; AJvYcCVvr2xakp65Pie0la7pJgkgOSbGp1QV2PfGpEX9M3EIKx24gWM6R/JSQaSftLLU/CKtwdHV+yOWm6k=@lists.infradead.org
X-Gm-Message-State: AOJu0YznC0ABGyidkFQA2DgtH8C8a9jM6HYTTTXZEVqpyEbbb8c6r0gV
	bW9GW2wQql0uAflQy2n9CHTwC9Fw0HYFKlGWCrP/DAxO5W5mahMxQmVfKTYXG4iSFgs2X23vt6j
	ZzNqtf+EqULv3oUSGiMTsljYtuuFpnGGUM2y8wRTfxEJmOvGzEZxB3wLMHAWG7UMk5Of/qp2l
X-Gm-Gg: ASbGnct3eLmljkD/PQ4IABmnLYymlB2MtVH7hEepO2fgMf9KfyogOoJ9LQCXFXuDc0e
	CoyJL9XUh5Z6KxihSkPXNXeAFlxVEklPF6pKTtb6+fJLpHU7VBVn9tDxqq06Zjl3+6z9+rTcLck
	53oseT+fwrXV9J00DtgD7vAAjVL3pmCR3kmo9sZ46l/zjN4ph0e0VFAXKpkJN0r4Yf/o4OGdX0w
	K7p0pW+tiGw6AdU68sXYB+oB1Ibw8sLcBDHeOnrihy/m/tU7vuLcBH3WZjcgfqULLj2wJY2R3n8
	q0txylBhF95IxrMf8wz+aoN0Oo0HhIvdCS+VoE6JDuaCARkLJMoGkSuvX8lBHy42kJMYXg4IM/4
	k0bMNM1Nrnm345XrKSGYzx1UTBFToZATiwnjrOp5NEZrZq+4=
X-Received: by 2002:a17:90b:264b:b0:2ee:5bc9:75c3 with SMTP id 98e67ed59e1d1-30823624847mr21215606a91.5.1744690978267;
        Mon, 14 Apr 2025 21:22:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfzmI2PN9J0on7oIn9TCegSFtS2nGZIR3JI74YzgGuLcOcaB78BG8y9xVSSNYw+WVZn3ejDw==
X-Received: by 2002:a17:90b:264b:b0:2ee:5bc9:75c3 with SMTP id 98e67ed59e1d1-30823624847mr21215588a91.5.1744690977892;
        Mon, 14 Apr 2025 21:22:57 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb5047sm107381865ad.170.2025.04.14.21.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 21:22:57 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 09:52:50 +0530
Subject: [PATCH v3 1/2] Revert "phy: qcom-qusb2: add QUSB2 support for
 IPQ5424"
MIME-Version: 1.0
Message-Id: <20250415-revert_hs_phy_settings-v3-1-3a8f86211b59@oss.qualcomm.com>
References: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
In-Reply-To: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744690972; l=2765;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=53Z3eEzhZkA+Kuk3g35Mhd2tAh9dKGMeWsA+KWs8Eeg=;
 b=9MlHmVy3e6PakAX6zsceB4h13UGLsnzgyqPWBby671dtyrJtc11S+q/Cd9QZXIwDDJOZt/3+X
 Rsi5npFEq6wARZxTIq+qff5z0YJNKqEKC048h9JsqhtbroF/BrlPFme
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fddf24 cx=c_pps a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=pdtzJwMO8baX11e5YFsA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: ktC-COeglWO4O_LzYRwGdOjoIGIWfVck
X-Proofpoint-ORIG-GUID: ktC-COeglWO4O_LzYRwGdOjoIGIWfVck
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_212301_572516_03AE5CCB 
X-CRM114-Status: GOOD (  12.01  )
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

With the current settings, compliance tests especially eye diagram
(Host High-speed Signal Quality) tests are failing. Reuse the IPQ6018
settings to overcome this issue, as mentioned in the Hardware Design
Document.

So revert the change which introduced the new settings and reuse the
IPQ6018 settings in the subsequent patch.

Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 1f5f7df14d5a2ff041fe15aaeb6ec5ce52ab2a81..81b9e9349c3ebb4d303cb040b5c913336bb6b6d6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -151,21 +151,6 @@ static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
 };
 
-static const struct qusb2_phy_init_tbl ipq5424_init_tbl[] = {
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL, 0x14),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0x00),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xc3),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE5, 0x00),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TEST, 0x80),
-	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
-};
-
 static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xc8),
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xb3),
@@ -359,16 +344,6 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.autoresume_en   = BIT(0),
 };
 
-static const struct qusb2_phy_cfg ipq5424_phy_cfg = {
-	.tbl            = ipq5424_init_tbl,
-	.tbl_num        = ARRAY_SIZE(ipq5424_init_tbl),
-	.regs           = ipq6018_regs_layout,
-
-	.disable_ctrl   = POWER_DOWN,
-	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en   = BIT(0),
-};
-
 static const struct qusb2_phy_cfg qcs615_phy_cfg = {
 	.tbl            = qcs615_init_tbl,
 	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
@@ -954,9 +929,6 @@ static const struct phy_ops qusb2_phy_gen_ops = {
 
 static const struct of_device_id qusb2_phy_of_match_table[] = {
 	{
-		.compatible	= "qcom,ipq5424-qusb2-phy",
-		.data		= &ipq5424_phy_cfg,
-	}, {
 		.compatible	= "qcom,ipq6018-qusb2-phy",
 		.data		= &ipq6018_phy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
