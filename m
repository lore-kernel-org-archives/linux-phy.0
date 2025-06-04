Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B65FC5B552
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 06:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KnG6ZDTZjAi5xQxb/7UErf4vMzhBSWyUPEChddO4F0=; b=F0peVOgHPAB6zB
	+Gza3bPo5YRU1hKaVVMnET5AN8QA5NZdK/U+nrf7x08Qljh6Z6biRhQUPUwv4i0cmuGZsZwZXca16
	Jk1Uzuh/gRj+ahtFl62xA591R4gdB4NtCwgOfve8UdD8SIqztuqKNsijufgbqTH76TIq32bYL+59p
	AqoNL9QcSOIU8L1a3CHEcVq/zQZcBljbiz+H2eKK3QZu1tS4vOlgBBbzM4/2o6pPlOGHNPH+Kun+Q
	c/UQv67YQL4WmtnkZd1zbWR2MIEfnGuSdrOkGlCQNEk/xXSygXj2CogmmpTBcmIgUYQ6rRSe9jOrV
	R1KL/bMPhkFGsNbvAAYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhjZ-0000000CgZ8-0kmN;
	Wed, 04 Jun 2025 06:36:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhjW-0000000CgXX-3LOG
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 06:36:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553KKkeE002165
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 06:36:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=; b=A+DW+7NfbnOVrecX
	Q/3y9hyWuoVEq1tSMIwYUgtRV83bZz7TCEntCV4GgO/zu6ko+wofK1f80tw8SBQF
	H28UK8Xoi78nzTw6yyJxLddZTrTneDGDFcR6EIZy/JMgl8seqQaFVLYY1isgBiFH
	hDaPqNOCoh4OefL4k77lmszkc3qdTVfIVBXCXqAPVzeYjwpw5AV9vWJv7sULrakO
	ftFiufoRx6clDrHMSFQvY8AlC6y9yLBmqaO/qr9wdsyTQ/oAwOu6zmqXztsnla0D
	1n1uXsySqxkjzluwvUJXq+zsWXFAHKomv+IrOsbezlrZWITO0WhCUo0icglZtiM+
	2Z6iMg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8td3qs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 06:36:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31315426f13so218164a91.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 23:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018976; x=1749623776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=;
        b=qbZ2ixzORACraWLkD4Vx9r1QToQTt81K7g3D6d/feH0BFEx/jmSfEaOsY4lzPQURvc
         Vsc96nq+tScqW2wSq15/+IKecIelIOQ473yCKyQyz662eVo03TRdEbIgoiZW3ge3A4SX
         LCmGxQnqdc982FGOGiVpF/ag5lBXURkWYX8w4cRdjwxleHmU9//jsoR32N/n/et2uxwn
         2sxMryocyqC8OBM9COxkvBz9nUK3dZ4q7EyIQ5hfJVpQyURdm68KHp2xnVI5aE++wFO7
         SYEEV4B4JrFfcp4I7L6sSQOdq4TOS4ktr7yakZsRu5cW4s/tBbAYKK5F/12phBndWfkr
         VD9g==
X-Forwarded-Encrypted: i=1; AJvYcCWBxvYQlCXZ+X4oCb62Hcwk2TWfX26MnjuRWtmQX7GRW4BzGswa79arHnrxKLBBE5pAiJd3O1NZSvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqIkA/doTfkeeVuyKoXEz//OYzx99t1iqrZfkS+3P7zvmHqUPP
	DbJKYaVzolcCuZzex8pLjkBqXhQvWSwyue2OOU1dkRvffK5FoteHPg2AzY9t8c1cjJzLVmto9jO
	f5w5mGu/ue99mhJI3S2vHHL7OCs+ZutLMZveKtjMYsyN6f7FMdA5BnHy/HmzhseeDpTde
X-Gm-Gg: ASbGncsbSheuG3dVJKB+R9swhensZryUSv9ZZnCQSOoBG/YkgNgG+FjPU7v9Em5itkN
	IgLYdKRJKGsyh3KR9DbVSOieOSgotfQqHrHZMc8/FycJR/wjMDJKVYxRlR2ECJ/QBAaxZv30ztK
	j0KibmkVbc7OoBgt8fcQzWUqsQKsF9cDoUYHHKtQ4uYmmAbvgSkyViQFb07lrO7O2pQTwdDM+GO
	STEn+RDWAlS1qc5qekwMslC6E1ZzxM9U77V58cbutlENrPOTEyy/qC+keCYc3YbIW1vgCpUpotE
	KHBxsRml2lUz1aZC2AE69d7rtVcErJ6FUCP9
X-Received: by 2002:a17:90b:3d90:b0:311:d670:a10d with SMTP id 98e67ed59e1d1-3130cdad83fmr2116103a91.26.1749018976302;
        Tue, 03 Jun 2025 23:36:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErugzH1I0kOV1ZKQianUQa1udSChg3Br+Vd6Gcvz1HCaUItCnG3yPgl2RgODUZkyEd/0WlHw==
X-Received: by 2002:a17:90b:3d90:b0:311:d670:a10d with SMTP id 98e67ed59e1d1-3130cdad83fmr2116074a91.26.1749018975912;
        Tue, 03 Jun 2025 23:36:15 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2c298esm8286693a91.15.2025.06.03.23.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 23:36:15 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Wed, 04 Jun 2025 12:05:58 +0530
Subject: [PATCH v4 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
MIME-Version: 1.0
Message-Id: <20250604-update_phy-v4-2-d04b12bb89f2@quicinc.com>
References: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
In-Reply-To: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749018959; l=1245;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=LUKDegSuWnJr6hX0g+GfZVrGfuVOoWm4/cMbstjOQQ4=;
 b=ga9wKHPtEQhKKr1XnSo5DF/fyNhWYMWOOB+cY7IY7PY9EAcbVbRqkScCf9ZdnY/CTgyarhQyN
 Ou4mVQc4FvhB+agnjJWbXJump6NS+JbgDG+AzaahV89xnBb5zvNioYF
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA1NSBTYWx0ZWRfXxjk22/s9Lg7J
 UYR5ejbW0dDm6lwLavF9gRp0+aimlIvAd4W0vhkzhnMHWt2VleoPT3OtUddM+ZcTCi7VcYY5zHH
 oJoJARRxNVTNFTRm5sARkyFfEE24rO8zhtBCZVI4aew3/SrL/DNMmBa8ceoNqFzO2G8FyZkY+As
 6OhUUuPWqxgRuMXuPmmRKNd/ke6kHVZCgXM5RbhJZ6R7H0FblpeZ57lX6nfS9NChf7CVoXQ678d
 6rzrUR8IFLN2GqyCH4X/MttluOOpW/P+BGrKr/YJoQKQmMG22aM8lI5zjG//F9QhsUDg/yrac0r
 1l8B28fSrBBAohBlTzpkKFpkAOrj86YFdHYlJ7ps8suen+9Q/1Os52ERMgUMgq8SMY58v0Mh/vo
 YJpzKsAy2yFHZMwHbrLP62ycbPO8JTuajhCrD8ggvHBZ7E4gDVJm1X6ouvccclg5xZDGy7xa
X-Proofpoint-ORIG-GUID: jo0Gn1Vh-pVVfEgTNhpFYHXTxuvXDlOr
X-Authority-Analysis: v=2.4 cv=OuxPyz/t c=1 sm=1 tr=0 ts=683fe961 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: jo0Gn1Vh-pVVfEgTNhpFYHXTxuvXDlOr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0 mlxlogscore=946
 lowpriorityscore=0 spamscore=0 mlxscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_233618_976749_8A21AC07 
X-CRM114-Status: GOOD (  13.18  )
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
