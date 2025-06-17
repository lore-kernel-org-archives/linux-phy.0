Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87FA5C7115B
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KnG6ZDTZjAi5xQxb/7UErf4vMzhBSWyUPEChddO4F0=; b=IAK8yvfGngFh5a
	e+5HIxWANcp/qs+xbRG2s3Z5/RkiYpfh8HlEwzumBcFSwwjU8iDnmtTAquFK/xZxNVA1DsHLrBb1A
	vd/37T4t7sz7MdDPRo2rrAhJB52Q+5mXD9UComGJOWwXny0mvcW3aXJB1uauU0sLakHs0p6rZYTaL
	vEF8mn/f4HO8oHqoe3+BG/WEZ7KPomIACARyZVpF0dLPLq4S38c7f/iRiHU274QviL4PwWlNiSEjq
	3Bhr6b8tGlTJqRUZGL/Q+WjCpAJ+42u8bdKp2509uH9s1L3Iz2OsLf7ev4YLy5L5Nf8z5B5MPnVkS
	oiIIa743Y+i8WMnvvR+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRUg6-000000073jp-1EM2;
	Tue, 17 Jun 2025 11:40:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRUeG-000000073OU-217h
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 11:38:41 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6hqkQ029581
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 11:38:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=; b=Pv2HGJLb0ujpvUug
	aBY5StzqZyNFOhoEhNVyf6QJBjObmvdgiAfGiLGApPJCdDV5WOdIEjtbEi6dxiys
	bcHP0FR2RgmcsUlC1z/yd2kQojrKoJBR3xU/BaWuuBqaALFvo9m+j6nLindT2WA0
	/d+ZFvOA67G3r1dUw+ffR7DPQXV0GDyoQbSVA80rHPTba3T2w2t0qrZiMyZFxK7i
	tZyxHOZkvFwuoswI2mw9nIEHUnHWsIhBEwVyVK1lsgkdNkFDtF2HK0AIOkdtKq/Z
	2pNfFUFolikPcl/KHE7YJKGuQDcRkpJYa8sGfHMEFj1VA94rez1V9pXOwOO8ZAYj
	vBHnMg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h983bk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 11:38:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3139c0001b5so5565018a91.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 04:38:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160318; x=1750765118;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=;
        b=Lw8EJ343aU5kE5LhjYSIctdDK2CdDmjsClWhloyvE0XaHYp5dzcdj7LqfP1cJ4fnfH
         ca1DgjYi7pAABGlkQ/QIiHbvEH/Ck3bazF/sF06jgknDIMclOtu+AusRMbgOaBIfFcCC
         8IYaS3Xy7wfnlzUZg+DNF4IMpbpOdliGzULQc0D0SqEAa6EfYi5nunFU4q6NGNJ+NHo2
         Bt7vZPvjsgUUQjaIxjDf+toxfH2capcHUcMKbjuIUMe9E0UcU3U6oU+WPkCr8G0Pky+s
         wn1Z6Ru29Yr93mv/a7P7OCYuaiftQwqjKqYQAq16NKJU5KvDz5QoU2JGHbAWacnYuPIc
         zcRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLdXokYZhbnuPuoYvTPCYqdTXH7LN9NR5pJ5W2d/rFUclaXN1lQ+QRzU3x+fPLnalM6R0YkNhd50M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxiL4S1kZUywbIrqchSZ17qoIfQ70GKVo3pnWSsNFvxJmhKoYAP
	GaGaXOI+Z5B7AsT6CIKJ2TGbUkHfsqtEUwtUIebc6Wecb41FhQw2MLwlBeeWZDhdkzHzZeFxaFo
	n2QCJJG/qz99tm3UZvTEoVm3KKH11Vo2RjLSXBuhYJM84955WOWW5os/hwFo7W8z4lP4l
X-Gm-Gg: ASbGncuPBV0Dx8C9NMJf8L1Kwlv5ujF3wFyW85CWMBOUgMZ2grAuXmKtiOS37qAjJ+Z
	KqjOz4FjTTYbImw295/IP709Dw878r8+1NWKvihArkHIEghDdya6/s0B4bzQiTwNAm5HhZQe7Me
	WUXSGV/PI+GYp/1pJqF7xyCGf1TexzEHfshxhNRt9z4LehiJ2QJm3IYXmLm+ahb6+ulWlYFTu50
	4/67TjVWxdbpdby09arJo4MseU1ysruDg9M7x8ECCH619/eL1AZaATgyqQDDpvkBRyAdJMzZ+jN
	gQLDevX1uw1K76kVVAtMfqMGqzc9IRLqomdhHw+deRIIDIc=
X-Received: by 2002:a17:90b:5241:b0:313:2754:5910 with SMTP id 98e67ed59e1d1-313f1cfa246mr21138952a91.15.1750160318214;
        Tue, 17 Jun 2025 04:38:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZvtNTDKTZTtHD5HPpQivCD86gJ7dk0yjfKZ6IrQ6RrlfuiDM/2UhTEwkTqMMtGqXo4L6SMg==
X-Received: by 2002:a17:90b:5241:b0:313:2754:5910 with SMTP id 98e67ed59e1d1-313f1cfa246mr21138909a91.15.1750160317775;
        Tue, 17 Jun 2025 04:38:37 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a1919sm78246895ad.66.2025.06.17.04.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:37 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Tue, 17 Jun 2025 17:08:20 +0530
Subject: [PATCH v5 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
MIME-Version: 1.0
Message-Id: <20250617-update_phy-v5-2-2df83ed6a373@quicinc.com>
References: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
In-Reply-To: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750160301; l=1245;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=LUKDegSuWnJr6hX0g+GfZVrGfuVOoWm4/cMbstjOQQ4=;
 b=D8AYtjEvErNGeC4xuDdT2pk3k6RbH1ce/6zGxI5y4AN2K27UNlF8f2EN+DErCWTaZe1HN8ays
 t+bojCYqqOUD8V1A53RcPVMw3LK4oKE7gy4wJuk5jG1ULyRbK/LeBLM
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: 1FG2NRwozVPBo8_7zaJm_oGK7JVOp8xO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA5MiBTYWx0ZWRfX4NV/+RmvD0MI
 2zMpiDAa+H0yJ5LZfUfKDYwfbtoN7TpxD7QjXsqdLgv3ZZYwH/HKxafy8epuUTfE4+jYjUmF6i2
 CcA9mMFAkpeQo74e9Pp5NcQosv0FNwqMm+5qSV0QqTmVL/qNQBEWKOKYk2tr0Ztbc5Z/4h7Ibs3
 DNKMtjw0Y594NjTHrqtWVwOglvqbCPHbIfgyWjPrCArEVATKX2yIhnHOJ6RyTy+LScU5k0DTmta
 DSWOyNBz8DliMcCLRr87RbFlP5HBC5v+YeRn4QeCiqJbDwDTMUXB2wX457NOti1WiyEe2teqybZ
 MJX5vwpn4Ev3aTRxggrE2kRTMO7tjattwJHsmotxk1VMbgrD5qwx7ZPPncQdD8d9LsV3cDkN8+L
 0DkuiFTiklQthlcuC/LNk6IO5XkiPxRW6lEp5ljsVft5RAvOCDnNgH7jy+h1Ya2qZ3Or3l7i
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=685153bf cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 1FG2NRwozVPBo8_7zaJm_oGK7JVOp8xO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=973
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_043840_645652_730188D3 
X-CRM114-Status: GOOD (  12.42  )
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

As Gen4 equalization is already supported by the PCIe controller
driver, remove the max-link-speed property.

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
