Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747F3C369B5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOjrPaJnNqcbPqyGNc/vxDb2UZNOCIe54vdSeBoM0rk=; b=QkMtTDReEpJ8EX
	GzQLKvZcxXC99PCSxP2uy7/IUXHVlrjr0h97KHbUdhORNuNWbObFJ0ZT1MW9o52YZpe9lvQL3ifJS
	2AhPGJncuhpPgrNJd+8YL0qBUQlAJQgK1Ae687rvWw+NtCYDN0j1OuFF3/k8EV2Uk0X1U58Gj7kCy
	RrIJde/4YnNdfs/hS5FfeYUo9/mSZBMBerwa69ZJQ9LlwRqKQ8a1+SFMTJww31mk8OfoD3N9Rvptk
	3NMWebQjla3rI2Um7S3sfxozFzoHb8fbKsQsaRGVoSasgg1GsxG8fe49Cd7oB8yCRTB+CpFMD0mis
	cOnEVjakfPGCw6Epx27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IWY-00000001rvD-0sqy;
	Mon, 14 Apr 2025 12:02:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IN1-00000001qWL-0ott
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:53:00 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99md2012971
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:52:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n4eQZ+dFk+f8kp4GW5geWITsRLjJdQNXKTH3mNGn2Jk=; b=mTkFxhfUZmQv+Ha2
	xGxq9rz+GrL/Uut9a67pe4Rwea1aMZqbVA7SUr0/oNSKT+TSm0yKh4GKNe5ium4n
	fJ5gGWs6IRWlmovKIoxywN8RW9LCaR1GrFCTdUAOCdiPLqMUxLrM8yQnC8GHz1uN
	WKMLXlId4KzpusmU33QyQo8Gspy4zo60FdE27iKCGYS1k8SW5hUjLjDgECpZTCdq
	5MRp4Q3J1NgfP3R1n7+fysgbd8Z1dFbSI0YdwsKE45EkplITABo7fFzh8eN48v+j
	U3HiZddGdumtTlpTEiAZsHJsTFbiVteeJvSBfZ+ZeP5UGfhm2ynpudjyOTlwyI+Z
	EIwZtA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj94dgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:52:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22406ee0243so31944785ad.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 04:52:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744631577; x=1745236377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4eQZ+dFk+f8kp4GW5geWITsRLjJdQNXKTH3mNGn2Jk=;
        b=iidFAqu4yNQ54tSNOvWBbucRYoKhS8pbmCV79AtwJnZ0sp0yOpgWPUm+MvPrJs/HZs
         sm6GJxwHwCkBhnEVjeqB8uHelup+VmA2Nq2YmBvMfh7eYebeAEvW3aspZTKx1duxTgI8
         GJSTSpnYrd/E5m5EbLWHVlfn/OkDsBz/GAnE5f35JD+om44k0DX8jCXM6QxVuQpJojP0
         xUasuJ8iqmrB1p8fjAV80fwYhZ2Eq1a1thU6XRNIL1IIgCJPNpYhVxli4jmL5i7CuIIN
         yKZM4mu2pTa26SboldTLSMgPj9+tq6TvxliGW8iOFlvWl94l4Lb5Av+1Z1wP+tXdWZIv
         ykfA==
X-Forwarded-Encrypted: i=1; AJvYcCX9Q+zY+FIhOEREtjYpitdyWW3t9yeK3S/uaPKOVgdGQb9LzqtwGZgCnhHsJwNY+re7wydfYbb46R0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyR0kQO40GV/nfkS/Fq0N1qQZNBq2IY/xMwDwskNKzAlxZMyfAj
	qA2xg5AObFvOO9SXRSlPV/la5BrleOA+P3/hKEn6sAoK/oR0oIaeZNrZNplP3XCx+TywfPeNhUm
	uzK6eSDVPlBbIJXgEpj8GYV8hWD5ht/Dxjzv+V2u1m5sNtOIPs3Vlh59W49CMsD/Z
X-Gm-Gg: ASbGncuoenUXqWbQBQFJQykbYRMYJIT7w+r3QxfsynxZ2dpzlakvfArf+sNafH3SGrx
	ZOOnKSo53qEyNg+iu1KAznu+Mae3sopRSPFSgh1un7h97eW75QVDP2ZmtRyHNXx7S9R7E+MgD8F
	LR5ljNIi31tqmwo3DlJ3kfc9IDkp8+/8ffMDccI47+J4nNKYnNpPflxcb/ukoXU/oD12jKXsk0B
	IxR63QD/f5L0AhvHtqh6WUHqBvSI1AL3fRRfzTisspOY97PAB2+C38p7uJ7A8hdxKPd1CkCCMgB
	N/6vU1AWmRr8aF7nxj4YJWcq7eBwjvUwTF+F3E+EOkud53uXndChfrTJL5ntRl2Bw6TsqFdJsbk
	AnFdfbpRJxlavi+6Q6+eBEpFdhxzA+rA4vpa6/CCijayjt60=
X-Received: by 2002:a17:902:cec4:b0:224:e33:889b with SMTP id d9443c01a7336-22bea4ade03mr182958505ad.12.1744631576769;
        Mon, 14 Apr 2025 04:52:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHsHPFfgUQeWJLdBCHGOe9nTEe4mD33k4b5yyMFUTnsr1hKZT/8yXc+mGOgsW1hkr/LRWb1A==
X-Received: by 2002:a17:902:cec4:b0:224:e33:889b with SMTP id d9443c01a7336-22bea4ade03mr182958245ad.12.1744631576441;
        Mon, 14 Apr 2025 04:52:56 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8b73asm96425735ad.86.2025.04.14.04.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 04:52:55 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 17:22:49 +0530
Subject: [PATCH v2 1/2] Revert "phy: qcom-qusb2: add QUSB2 support for
 IPQ5424"
MIME-Version: 1.0
Message-Id: <20250414-revert_hs_phy_settings-v2-1-25086e20a3a3@oss.qualcomm.com>
References: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
In-Reply-To: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744631571; l=2743;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=6yw3TIsSk+fi4n/Vx0e4/+C/cuCzBTjdJ6X1LsUILcw=;
 b=E0yilhCU1zZvO9ftjOqRNoWih3UVAMwNo7/Nyz2O4KrVW0ZDLa2oMYE+Ao9NUH68MFShy98ck
 /MEmkscH1aUAk7KUB0wthNN6D+ow9navIrnig8fkvvEQB1iP3AeWENk
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: PMjn5rjd0Fb-KOoaycH7coHaf8U99lYY
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=67fcf71a cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=pdtzJwMO8baX11e5YFsA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: PMjn5rjd0Fb-KOoaycH7coHaf8U99lYY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_045259_361694_CC0CE55A 
X-CRM114-Status: GOOD (  12.56  )
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

With the current settings, complaince tests especially eye diagram
(Host High-speed Signal Quality) tests are failing. Design team
requested to reuse the IPQ6018 settings to overcome this issue.

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
