Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 094C6C3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3UjsGf5vBSWmPB4qq86RD5HQRJ+yTR77DLQ1quh0Ng=; b=3zqn2pr72wvlWq
	gPE94nWD8tI7fhRdUAbvaaVGD60L/yv7Xh/FA0Xv1qkGaeTWQy6+KOXuNXu0EtFBcJP/yzIS+mBrd
	K2KGJd7aUccH5Hm75tGQo1WCmJarLvjoVCdo1EfaiHDNOXHGs4bzF2x4ALMmyH1vRfM1gmwfIuQXE
	1vZI5tL5h30KzWTlnn5tx55lf76f8hj13FxLGoeozd+3F2BQ2sWrDnULXpHCazKFpcI8PECrGgayN
	ChyrR+YgpaJGTdzQtf/prQAJH+AfqhtiPrWLf/Kol4XHT2ludGBRX+HEJHqmL7AQH8hNV2worhJu6
	/3fQZ3Z++HO1He1Ge5Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB6U-0000000F4sn-110w;
	Wed, 14 May 2025 12:20:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQd-0000000EuVs-3DAl
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuna9013086
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 11:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=; b=UTgJrQ5kDIgzKLg2
	IMmfmq6Y3nB2ARIKT66Wc64+ZdDRSS1DdA9X/aEfYLnzFo/UJevARklyYRRxGDjg
	qL99bSEY0FBHDSBHxpsZc41SmszxIlmvJaDg6Jr7N6N7pDyNcCSKjrlANyljQu+S
	jduDsXouiP1SILab/iryYqCiUTt99eOnBvQrvrykVZvw+MpkdLUKyD5gKCqOAtiG
	Ba37A7Ek/TKTUI6tZdjug0FGKCtBENQohzxcxDubuw/I4lHF5wk83crRL8xsi/r+
	YCHBFxwYte+LjIw8CK5zGnMcbWJZ/eWsMKW41mB0j2GoWO91PrICb8quZ1ZKPiyz
	GLikZg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmjgp5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 11:37:38 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-22e76805fecso96026825ad.1
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 04:37:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747222657; x=1747827457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=;
        b=M6G80ZKP10pM3ciBttVfivu9YNd6a/8JIRytDYL8n2ioEhxL429AzDSvTSyO6RZZyW
         qko4Hmxk1+2r8+yvLREgOSnIxSKHzrbirDZ8+YPS0RsYOBxaCgGh2L/QdHVHWSYDb4Mm
         h8PLOj8adRMb9jaDSuHUfTnB4kQ3PwAxEmzaSufs7+Hkt2eR7moWJwuBiqJJVDlViuDt
         jLbW60Yd2PA7ApZ7LnAHrucKGKC7UO4PIIaiE70UN3hz6tJvhId37wQp0rZruyv1EUtL
         XA2U81E/8lgZdJ2zDuYfK9AvhAlhtJK6St84Tbm8Bejne4v8i/Ub6BFPmwZ+gcdXwT4x
         fNkA==
X-Forwarded-Encrypted: i=1; AJvYcCUVglRr2imS9BJZaa3+tyuHtbrQQBCddXvpYv6KjJkX41L3LHYJ9OikFsmU7e+iSEwzal6yDAwwUuE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2/5BBCYWncw68A1skz7ApMj7uwJDZbA+8FcyPJ2BW5Z0mGbCe
	VCpAT5NDLKD+a755+crBvz114jyJE9ZJQXY66X5ghAAN12nwcYTD+1wBVEfRu4u7aG1UMPiP1gb
	jx46Ch2jYaAFlx1IwbHmcBCvlI7Yq3LQvULZcLC4xQXyWfPg1Gto53EHBYY84CfhK
X-Gm-Gg: ASbGncu6Od5Lca/wJuf0BC+pNCeqOaHTWiZo5qZwgl6h7MUNoaFdl7ZkO6axJHs/1a2
	YgLG4W+2BlXhTTlcAaH7mVRFdy/8dg4VP9YHBEKDURYUvJUJVvh/ymW02W4lJteyr8s8GxnySBi
	8pgJwGgpTLkkS2FUs97wBbXSn2eNBs7F6X2PrR9dZoj8MkKgWdTp5Z2o0GINPlssTgd0hGKA0JT
	fplnTeysvU+OiM+LEj598/mdh8e390otTAZoBIDk+6VEMEzH4iBkLG2FyNHiXLo5UQeOSJKOhXc
	z+L8E+6YX5mU3EsSh2ykgFzZRYOlV8foGd0Z
X-Received: by 2002:a17:903:f83:b0:22c:33b2:e420 with SMTP id d9443c01a7336-231981168b4mr43376485ad.7.1747222657568;
        Wed, 14 May 2025 04:37:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy2ANRp1W7Xo4zQgSDDtOxADd63a7Iad8Pfvn+HNLrKI1GCN73ST9TXZ0ahB44k/Td+ySQ4Q==
X-Received: by 2002:a17:903:f83:b0:22c:33b2:e420 with SMTP id d9443c01a7336-231981168b4mr43375735ad.7.1747222656913;
        Wed, 14 May 2025 04:37:36 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2349ec78c3sm8652783a12.31.2025.05.14.04.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 04:37:36 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Wed, 14 May 2025 17:07:13 +0530
Subject: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
MIME-Version: 1.0
Message-Id: <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
In-Reply-To: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747222639; l=1254;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=ZrWCEywu0mWwC+jWkykM+m7UXWwtOyeU4GP0qpQ4gdA=;
 b=JrrlDAXLbKSAfIOjsEe36TVtTbiFuAkW9tkOnWiLEx8yebiEDELOZVbKb97CtcLhNlAK+CzAl
 ikKgVQ0DPySBsHujx6ShsWlrzSlE+8TqZDEAq4Z7/c5rV+dNAXOe5ft
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDEwMSBTYWx0ZWRfX/NLOBaz5TVPV
 L4eRL0Om/2xk7uYIFgSzjixcm5Yc9x5fjGANeQnm/3zPHanQnlWLMKRam5V75Lwel931kc07qDA
 66YcQF+g2bsd8EE059j0VaMVsAstveqWDZONcA1iIX2bjS/AH+ZuRRFLcNVcgwrfOm0c0M7Ggt9
 ddl7y2/c6JuvLtF8JTT2Lg7WQrAsHc79VYRmQcbGJN1bWn+Cvgod0gV7o+IgBZw3Heg21OIFaV/
 cGPdX59+AAjCByKYEJqyLby0BIf/K2KaiSPb9YfAIpR3o/6w7HNzC0HmXSdLucl7VqfS+0LqG2Y
 54ZNstoWcwbrzjwE8gEBZg6Yw8OnMEEqNOeYJwD0pfB4Js1Js8OmAURuh0rb6IaWBfgakHiz/pG
 7VL+rnPgLiG+QzVU7OqGyBGgdBjaqsjmUhoB1uQD91hwaUjYqdGH7nuhe9td27iq9Ltl3F74
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=68248082 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: adUX6AVRuHZJ02z8m5TgWY9zM7Es5_Xg
X-Proofpoint-ORIG-GUID: adUX6AVRuHZJ02z8m5TgWY9zM7Es5_Xg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_03,2025-05-14_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=995 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043739_815639_EBE49799 
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

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

Add change to remove max link speed property, Since Gen4 equalization
support has already been added into the driver.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
