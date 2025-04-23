Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDF1C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIaABzAiDRQGOcp1vDDk9R3eziZPf5E77NyOVkcRflM=; b=AvXcixuQRIrk2+
	g8rKvdPz+HFPrUc04cQHY0kFL9F4wbHOzviwFt/VPXtGiDjZTJ03M3I+uLf9VjssqwkfiyY9kSfox
	u8qWtZ02wuYlttgIh9W5p889Smc2KPBoWcmXxW68YYQZ7fHfw9bX/ScjBKiSexEPPZ7PuyxbQWmC1
	rYL3gR4ziBbHmuXugqIjxsOOY2hA6MS+bQKc/opEURjW3QsaXcAm3/std5pFqjTLjH9HeHL2yqojy
	z2oSO3px6aj2GJmpApuPD94Y51r6IBOce66AYirMy45fMcD1ft7lk9jFbwzTzznKrxWIawXDGz9el
	ZQ8deHNr77YOLXZBmXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnD-0000000AXG0-2tca;
	Wed, 23 Apr 2025 13:05:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Y5K-0000000AIPS-2VuZ
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:16:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NANgpm022421
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Y1JwMtd4uK16pcTQ8YY60okLSHQtu11DwqQOIErEiE=; b=iqe1tPyoM59zRd4J
	Ibubj1eI4GdFGoZbHFt91/6+Hkqok32FvrMOtIeQp/XZ9OVOFJx3HGqfo5h7Puo9
	Ngv69N4hm7jDI1v0Ieb5iEp/xxe2wnmtbjb6S+F59OmTRpWBdih5WoEsz8JTItxf
	Knfp5V3oTc6NWsNJEqGF52pAq/vss2LTS6SlWqKwcevQNpOc3HU7e6j127VqR2aM
	HE2BFSZ71gR+bH2Cl909LjFX9Q98DRk9qAWLHk2rwuz+VrF+3IPRO6JAjLDkMnm2
	WEH0h/g+uUseqMVzhIxHY49xFvFNsrP9fjj1irVShpzlVtTuFCmalVPcMWDZGMDe
	S5IpLg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh29wuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:16:10 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-73c205898aaso4634055b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:16:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745406969; x=1746011769;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Y1JwMtd4uK16pcTQ8YY60okLSHQtu11DwqQOIErEiE=;
        b=da/Ccm0nqEEqo9bL2qLAci5tTGgHH4LgdP5dnLEKJD649PJuv/a2XEs77lX7h6PUeE
         Si5pnNUEkQqyyik1WmSGjl1ML5DVwV42iP5cG4xUilo1Yvvf9VHhDxeaeYvSgvh2kJPP
         UjW0s4kmwV0KsIO0fPZcVF+3hR07RLqZB2ozN0KC80Ysc1Jdxv9ncmi0BDvkvoD6FPbX
         wSuQOaojhwjwNiQrAsIK9orRkKzqab2xKeP3X3w5x5EFdvB9g0vJtnygOrxsbhaZlfzP
         YBTgUnBlWmuxngKZqoVBtW7M66779moxhSycs56s0RCZR7MNDVOyFN7Tz8K0XWNO89tR
         q2Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVoVAYeh24MqMxLUK8HDDR1kzJ9Tl4SVd/HcHQOLgbn1cMKGNSqEPmB1aMSVNgsG8aBsp1ExB3oUDk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0VZBoQr83fgOy6LVTGuY3mnplrNeAPxbrvtSZVrNAIzphbnOn
	IjUfO72UROM+XfJNMfcx2mNuXatW+Tyt6wDXAO0igaIcUMqWujmQYxnqBRkUnyU4v9l2xNkTmty
	A8nscl1cuwIQmGcTrfrm8L2OpURFeJD1aROY03LxDH1OxmHsIkdNBAwhssgvQ3LoQ
X-Gm-Gg: ASbGnctVbv2+VtTy6TUYXaGHa82dEe9lvQalWuotGz6U6XTzRiTN5XCTE9rjf345Bvv
	/mxNezXOCT8TEKjMNsaT5AjsQppUEWqMf3Lc1m1W+D+hnLZN9atJxSA349otARvFFWENp22s5IW
	/E2A7PhIcw3ZlxGNHF3Iwxb66PaKEIRHGyy+tYovEtuBczTSeQJoS0LRYZuNnNfzHWByNKcx8y3
	UbWAWm193Hu0W17dYir2q1Y0cF7YiiGt2qusapO4lHm65sQLIjT8Hfn0IwURHXpe1rfYY9mDwTz
	+vYOnGcsvMWCOZjBy2M1ynwcp2hJGUggL/zk/uscic94QA==
X-Received: by 2002:a05:6a20:4392:b0:1f3:418c:6281 with SMTP id adf61e73a8af0-203cbc25d41mr26711600637.4.1745406969170;
        Wed, 23 Apr 2025 04:16:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIgeTg8nQyicE0E2gbgH4aTKJoTOrELpR/ZGQokExKHFkOwkPkoAk07Qr9yJ/+8LmKu70/sw==
X-Received: by 2002:a05:6a20:4392:b0:1f3:418c:6281 with SMTP id adf61e73a8af0-203cbc25d41mr26711553637.4.1745406968764;
        Wed, 23 Apr 2025 04:16:08 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db13c5f8bsm8787322a12.35.2025.04.23.04.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 04:16:08 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 16:45:44 +0530
Subject: [PATCH 2/2] arm64: dts: qcom: sa8775p: Set max link speed to Gen4
 for PCIe EP
MIME-Version: 1.0
Message-Id: <20250423-update_phy-v1-2-30eb51703bb8@oss.qualcomm.com>
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
In-Reply-To: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745406947; l=1327;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=Ao/qnVJ2ED9fYS1CHDGACWoxp+R0Ll0MvJG6b2vG1bE=;
 b=JFxcl+90IRUx26htP38D0Tn3drRo2Ftyrk2iITfbsNyYcRHp5k4/eMCl0QH0DNaU1BRZOYIqV
 2iW1NZeYcsvA6WieFd3lrevbrrjLH/DfEwH9AZCNXTLd6WdkN0CrfCW
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: UVArBgxSu7PHilLWXhALc_zNIo4plWF2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfX9MKab4CQtpEp SjQorvhFY3hzD/T0jY1PJ5h+yQO1Nz9AYSJduR9z98qfFQM0ej1Z/xQNZIiqFtRi8FQkES5TAkq svaBnFYvJb95m9FFfuxXiY1mAUiuSeXBv/CRsZixRSKQPq3EupjeekU5z/o7O6YjWH0KxDTpDTN
 jjxn/M52qbQjcw6bj8vNJjM2a+nGbSNpxzKEbYfFJSSrClsrOrMGKFABKFLyg2BOKY0yvkkLnL0 1LbsoIvJmZl4UhPb+pl3uDDe+bSEoRwJzRt5yfoenvCZM1PsUt7w8E6R1g5htaG5BsnaajwvkkX PT22ui1qJ0n0OZGKQW5mF0VC0HvI3ip7UXv3SF1ztri2iOFqyUTYfM7/k3MKBdYukmpVhKezHS2
 aAEhIrGRvmzTDH8CRwyiyWO2zjMN3h/TdZIonZJby07/go2wWyS2nG3Q/3w4O/um/o1yRQ6P
X-Authority-Analysis: v=2.4 cv=Tu/mhCXh c=1 sm=1 tr=0 ts=6808cbfa cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=o35e_me_ocybVmOQpLMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: UVArBgxSu7PHilLWXhALc_zNIo4plWF2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1011 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 mlxlogscore=999 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_041610_671334_9CEBEC7D 
X-CRM114-Status: GOOD (  15.74  )
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

The maximum link speed was previously restricted to Gen3 due to
the absence of Gen4 equalization support in the driver.

Add this change to set the maximum link speed to Gen4, as Gen4
equalization support has now been added into the driver.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..65d9433a298f80eb782439120ad9c3c74025b441 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,7 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
+		max-link-speed = <4>;
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6620,7 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
+		max-link-speed = <4>;
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
