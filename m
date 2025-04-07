Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65DC4C369A2
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 14:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZKFB3SmmYkMBLdOZpUasZBEEj59+pLK00ZVxM8s452I=; b=UViLUhZ2lz6mDD
	EL8mAPjhBtmfBzHUnaKpHyzfVPLg19CVymvJeErmQTQqdGeODaD6KWI56LxH7VTw/oenzUR+z5WrP
	aqrYQIh8wcQVCWdJZGDuhhz3vufzEy1IB+818DlOof18T4+KejbvA0qIXoBlatewBkSzsDyvESdEg
	o1c9sgkgwbYpgB39VhfjO7GGYlFxh9ctFaCENc22kWqf1niLbUQf69gdSkjH+Ho1MFxjzpIJGXUdb
	wTewQ8mOKTW0sNJ3MZDh4jgHCf4fVRVgDzNP4WGnrs54c0YPqz5R21WUGqFGOKe2Ag0io81ZVtPcC
	o0uw/8NkA1BFi6lVxtnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1nQD-00000000ipp-3lc0;
	Mon, 07 Apr 2025 14:25:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1nLt-00000000hY6-2GJi
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 14:21:30 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378dlih001359
	for <linux-phy@lists.infradead.org>; Mon, 7 Apr 2025 14:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CwSbBrXfS6Q75dvQ5OFQ3E
	oVcgAuH0NLnZgqci7OVjg=; b=jtqTBtVlFDFJgHBmqqQzV5HufjZLaHfkqMRXhH
	PUwBsuxSbPJntYnsZxrmNvkx3BXivkpnE6QM8M74ect1CMYSXQv8DmwTOz0zwyfp
	YkMbRZiEV8WwRZnoHBGN/YWBX+eROMAWCy7oIQfE2FAOqBPDbQPd0xQcRpbuvJDA
	ZycY+guOzTs6zVQrCzdZOGzOIHjKzF1tW/T3dHmcI3yB8gCKvTLXyrDqX9apQkKM
	+Ro5WUGWnGKpTqlUe67e5o7tYy8WhjJc2QF0gjV0qO2v+INQtvklLoTNs1mkfS2u
	XHkX4nzxP2YDjMSAbbxYETOakQV+90LMAFHHnC7OvFUjuHOQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twtavg92-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Apr 2025 14:21:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2241ae15dcbso52707595ad.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Apr 2025 07:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744035686; x=1744640486;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwSbBrXfS6Q75dvQ5OFQ3EoVcgAuH0NLnZgqci7OVjg=;
        b=rIC4Jy0iuO1YiLZ3qoywChSWjBnsnmAqwriOI0Q9Pl2eyWRZ1i+jGsCgazCHlCrFz+
         hBOUOptswXrWguz4iTElqe+uFkL7PiAm0yCyHbCoLJ2FaqkzNzsPC3l5JzH02vmF6P3O
         6rtSIs+qtSm4H6DcAohj/43YP1XZXpmHzA+3c4Z2VP//VifQH0RozF2BjtYzZHdllYQm
         nC758dPiD9GE1cuxt453jgALrb2PpSI+EDZ4YKaav8jNWIb2RH8VWRfGlY32q56fImFi
         Wu4Vn3aI4dqmFA5YrQqlRmukk/dFIUtyPyTn9GH4ZX+JyMLK6M3LItpxTwuENIdVrAKV
         v5nw==
X-Forwarded-Encrypted: i=1; AJvYcCXVtlNMnTYE14WEw1/1Btmb8W/zacEE+FIA+roBm3azHnNM7pSnVZ+uWH1XEiZ/dVUqMgisSJg+jvM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZvtrUO5s9xSpFPmCcWRIRt7qm+UhEqmfmo/mgpdLj9Ab7EYow
	2TQ1/eKDHCA+DVf3VHFbseGwsAnSViTLUE4edUOO8kUZVJHkxh3BhtDl/Dp8x8nwKzB1tQFXd3T
	C2tq668cGJSNjD3eEceHBPFgcVQljvGQKJxd13tDoiKrVO9+uhe3q84Y9Qk9y/eLy
X-Gm-Gg: ASbGncu13f0u+iPsOeVvHmXTinOpy5p3kg2tbtnE95Cef5rNvgHDLo2NDd4rm3h8sNg
	1pitYewq1KcU4LRTADsI9H1Ab685UX1g67NTPedkU07rqubnDcRpkwbGaVUR3ebYT7JKCQKxsKl
	5x2pRSk57hYpUwgdUxY/uT+orPWJVOQ2ffTGXzyggSpCEOvGQk7XlBVyGczNpuUU32O3vXJd6DV
	4DRc6pzYoWqxM8rFyu4Dba1tmOtdsg4p05b+hq7y/kdWeDvdpIU1TjfWgVoTu76Yg1eEbBSHjLu
	I+yaoptq6q+GK+57qSju2X5EH/t3HOPhOGnSbGdOeHv6DRsKkSCpbGSTSTCyb/YVaychIv1bBui
	9u1zQrDWDRLquRkVH7lAKRrNnJxQBzqGiwsg2Ac0mhTjRYIENYaI=
X-Received: by 2002:a17:902:c943:b0:220:c86d:d7eb with SMTP id d9443c01a7336-22a8a0a381cmr158971165ad.36.1744035686116;
        Mon, 07 Apr 2025 07:21:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHz1xFJAWKNFlff2dP27w7LQzbBRsHcd82SHSqknDBxkMIW7Hb99wQELM+zJzzGCvqq7OP4Ag==
X-Received: by 2002:a17:902:c943:b0:220:c86d:d7eb with SMTP id d9443c01a7336-22a8a0a381cmr158970795ad.36.1744035685713;
        Mon, 07 Apr 2025 07:21:25 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739da0b3feesm8774877b3a.140.2025.04.07.07.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 07:21:25 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 07 Apr 2025 19:51:17 +0530
Subject: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
MIME-Version: 1.0
Message-Id: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFzf82cC/4WNTQ6CMBCFr0JmbUlbFcSV9zCEQJnSSYRipxIJ4
 e5WL+DmJd/L+9mAMRAyXLMNAi7E5KcE6pCBce00oKA+MWipz/IkS5FCGGLjuJnd2jDGSNPAwhZ
 dhabotK5KSOU5oKX3b/heJ3bE0Yf197Oor/t3clFCid5KpY9VZ82lvXnm/PlqH8aPY54E6n3fP
 1gCGVLDAAAA
X-Change-ID: 20250407-revert_hs_phy_settings-f6b9ec6b2297
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744035683; l=2972;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=dzE1HWCAbIlovD3ylh8gnjP7z03csLo26efJxL1PvO8=;
 b=hDsoWguSNfzwvOHoNVYe3omJP1fRy9CR2nBN0ll9hxrZVsbYN7jwZADIXwVsYz0swcJLnUtB6
 AyHzKIZ3uwnDqvjh3tqWccv3NUzyhTPpsYcwCJ6gcYar2Odhjp/Bf35
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: xAw3S7DEBqF03KvEudc_PxEChXTa20Fq
X-Authority-Analysis: v=2.4 cv=LLlmQIW9 c=1 sm=1 tr=0 ts=67f3df67 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=EUmpfdxrmR1wFgAKqUcA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: xAw3S7DEBqF03KvEudc_PxEChXTa20Fq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_04,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 clxscore=1011 mlxlogscore=999 malwarescore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_072129_585178_331CB34B 
X-CRM114-Status: GOOD (  12.29  )
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

Update the phy settings for IPQ5424 to meet compliance requirements.
The current settings do not meet the requirements, and the design team
has requested to use the settings used for IPQ6018.

Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
IPQ5424") and reuse the IPQ6018 settings.

Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 1f5f7df14d5a2ff041fe15aaeb6ec5ce52ab2a81..49c37c53b38e70db2a1591081a1a12db7092555d 100644
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
@@ -955,7 +930,7 @@ static const struct phy_ops qusb2_phy_gen_ops = {
 static const struct of_device_id qusb2_phy_of_match_table[] = {
 	{
 		.compatible	= "qcom,ipq5424-qusb2-phy",
-		.data		= &ipq5424_phy_cfg,
+		.data		= &ipq6018_phy_cfg,
 	}, {
 		.compatible	= "qcom,ipq6018-qusb2-phy",
 		.data		= &ipq6018_phy_cfg,

---
base-commit: 2bdde620f7f2bff2ff1cb7dc166859eaa0c78a7c
change-id: 20250407-revert_hs_phy_settings-f6b9ec6b2297

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
