Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F1C606D80D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=emi3ANKX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=hxu3c/hb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ph9V4xF2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cZIzzpJqta45181HjP7gvf/huXOuu6KNwrm6bYYkVO0=; b=emi3ANKX/+M0w4W7tMRDjX74Vo
	WGGaM7QHRAWef/Do7W2/ucD7chapKyxC4bNw/v2Xa8fKgQcoQPouiT8LstGOluU2u5fh5nlYVywIM
	YF0jaGf53a16mX9Swe/j4xVcTpMGWMwAMqjUI2y7uaJLLaRqGrN83dSKp4fkP2p5LD+57v+6fh2IF
	QHI8wRNjeftp7Ra6ex9qngA+tYvEIKSiHb1g8Vo3Iqa6tK8JVRntYwU0/SB73sc6Wpe9ge9sCnEjD
	nlbGQTKXMWrtddy50sBT26e2Rij87mMJkFWHgfOsfmsi9Do6otZqyJfqaBT4HTnKfZOfTbGJQ9PuZ
	2k4Ps47g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMiA-00000003nou-121T;
	Tue, 03 Nov 2026 22:10:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMi8-00000003no9-15Qn
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 22:10:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LKtIk415302
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 22:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SsugyDwccLy
	3pMH9vThYKW+QiCws2a471g5HurPgIdw=; b=hxu3c/hb20igTZkufbJ0LqVRs4r
	wLrWqhXIjS4Cu1pd9IoaytvkL7f+quiw9G91IzHx9lZEPMfguRO2UIUUqo+9AH/N
	WPbLih1IaiCUEK6dtqPItq/y+fvhdoXWi4N5Eh3Q0Ztk4AVNBEXQl2W7YuzlNa9Y
	eou09PyEECW3zuuPpZ31HL3iugxHP8XzlfJ4M7dGxxK9Eb86+lc+pOQKM3AgaXtE
	Tn/veUKmlFnAC4dgdw5B3XLQiNHgAkQClh8NtTEXyVlgDfyHtCpnH5Fe4BFUFe5M
	viiWEmid2oSv1p+VfTFC+m2GluTpdlB8cyNMFCHmVTtQNPRP1ftfFez/8Ig==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqkgp99wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 22:10:31 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-35cbea41088so7784eec.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 14:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793743830; x=1794348630; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SsugyDwccLy3pMH9vThYKW+QiCws2a471g5HurPgIdw=;
        b=Ph9V4xF2OpARHsfSdJFsDey2BzUB1hXZj+OxCc2mU1ztHdnFQLEwSjJFhVt7Dv//Wg
         cV1LnnEC/C+hP/yxc6ZcY5REnOqPURr5WBlzv8s6BRxnuvOs8Y1CdGL76aEPOmuAikUW
         ZkQmZxdrBUYyUlHZTRCeHTBYY0CW8gLkF1eNRfXF/HV/wZ5OxeHDcWdilYRlCT6xS8rw
         6ReYd1ev2T3NJwqA32o3elZx4u0O+WaREcxjJFaAqUxEI1y9fOm6V5Q3neqLypNkkhnA
         qe60I+9//978BfYXBGlLx/ZMdVsylfDrQoO3EnSp5MPKUcR5ouakpITZrqUY05QJSoYx
         OSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793743830; x=1794348630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SsugyDwccLy3pMH9vThYKW+QiCws2a471g5HurPgIdw=;
        b=fOu9iDU/0EfqB33z5wz6YwZqmHMicEeFrRfITzqM+YpC8DIrdkIHEwTRTwXhpeohEh
         jc1Gkjmvkr2jG7GhCTAVkptxmZ2ZsjBSMuq/5gvyi2owLD+0kASsh6AdDVBwLpj2dpM9
         bNsgFMJwUWI2nQI7ymdi8R4v9b0EnF5ExcULqZmzayvPpI/dx6H9um9PA2SqXUbLfVZa
         8nZEqeq025aVv9esYtUH3tnSTaFfAWZ4Z2A4fUtLxObr9Jm/N6+9HzhQmD6XPq8WDByL
         YCcVWYzhX9Zgp34piwIvOUugsQq1msmVGSLIJJ6gecLB/P4fkfSSoCOpbPTDTfz2N3+L
         09JQ==
X-Forwarded-Encrypted: i=1; AKwUvBydzTXNB58o4a1iYfHVEa8fIv6+RIgTCNkE+H2Mt4sbB1ZLP6f+FzwktyGGfHv5KOTAL2VdioVPVJ0=@lists.infradead.org
X-Gm-Message-State: APuU4Z+W29auFdx/0AS+7YpGnKA8T0lEGD8sKb4MvvLacCs0RdJw/13C
	tbGcTbzrpojTtoec+YGn2g9TakxzHoz6VHtpB2rgAf84iJZEtPnSaUOQVjzxMZA3Rd7RKd3gzFw
	YHPHIMELGF2hkfZILH3Uj9V1CovYNxF9nTPIiiAL1KUVCScEt40VjvneVfdhFFreAkAxQ
X-Gm-Gg: AYBFou15U532MYVNbxP9hrj4G671NS/hoU/UtA8aJnGx5InP+CWp0e+AipAZWMJxFPC
	ASx9l1bj7zYub4emfJYdKIZ/E0635ok0QZdOlDgkB4l6/cwcZOKIVDeHClUovj3BGtTr3CGl1EQ
	VMPBd+wwJe4q6OOOcu4n/MSvcs4bLRcLl0dECtNignLylrs2Rrtp6zEeLbFJxBI2XcTnqQNmyxQ
	/qLjxIxT/izldeUljKof4fhZ2lX1HpyOP3/K/qpjkd32A6qHZUPIYAKsSSE4KOe4lvWGJXvxlfB
	FUig8/YSc7oOCBieywmPD+uXhVk7d4OK83bW8KQUhIMJqc2mYtpMLMagMqgBw8VCiO54QPk3+sx
	g8AkHmidouoR9OvBJ2bVOMz3yHDxAAMNo/midI2FWS5ECthreafuGHqzNHFZqLLGHugyuLolJhE
	Ju52W6T6aZw9Cv8NVkCJjRZTZOlj31
X-Received: by 2002:a05:701b:418f:10b0:14a:8df8:56c5 with SMTP id a92af1059eb24-1ac5dd5a055mr21906060c88.26.1793743830142;
        Tue, 03 Nov 2026 14:10:30 -0800 (PST)
X-Received: by 2002:a05:701b:418f:10b0:14a:8df8:56c5 with SMTP id a92af1059eb24-1ac5dd5a055mr21906031c88.26.1793743829568;
        Tue, 03 Nov 2026 14:10:29 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c4706bsm2137312c88.15.2026.11.03.14.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:10:29 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm64: dts: qcom: lemans: add CSI2 D-PHY common-phy providers
Date: Tue,  3 Nov 2026 14:10:24 -0800
Message-Id: <20261103221026.3662383-2-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
References: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX4D5xN1piNk70
 gx5ZjSWkLH1A464rM985cbJnLOewJE0V1ORvugocftj4jnwG1wPrudpNEiKesk90v5ANso1HE2R
 vfkspXwTmeDkIg5Ps4HzcbIc85x+ktcSW0B21RWQkj/artnvNNo+F9Cm+38NgUiAlrZ6LKhY/Ei
 xKa0PsKRdskfYkyPLGAOpgzvMpgy7FTdDGK2yvvClbzyfahkU1aDspAmVivumSti0WS6ZI4mZ/v
 ygJ1CMAjrsFITeZeFsPIiI3XEXCow0WWSplaBk3HDP51gRHj5bZCRGZ+DBnPZr0cBrYcah+kmvC
 yPMJJm861Zy6SFZstJWlwzCiG5e2CNovLfJxBjuZ2p2wT0OnGTO7j03cuBrW67R8p6X3c4pP8xb
 fM8YWs2j4bR9Gcz6pyees+YszYgBDCJ9scBy9COElADwLRrL2PYUFXu4LiwBlPMJn6gqPbg43Gj
 iKFNmnOu2EIfVtGE6Kg==
X-Proofpoint-GUID: lgqwVsHuITQ4W0cSx49ohpBLwwAv3Knv
X-Authority-Analysis: v=2.4 cv=Yoya1IYX c=1 sm=1 tr=0 ts=6aea5bd7 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=WG68aFPFCIj822xaBb8A:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX/ALIdMa0iJ8E
 ombCznH6UjIMWKydBPiE+2cACiDS4G/4bqaLRIKiSIxXC0FIWz/wmdJdWQZCpyjMPYd3lJJ3KQk
 zhlUPgmPClVJh637W8YT4K51PDYksIs=
X-Proofpoint-ORIG-GUID: lgqwVsHuITQ4W0cSx49ohpBLwwAv3Knv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_141032_414254_05451370 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Expose the four SA8775p CSIPHYs as standalone qcom,sa8775p-csi2-phy
generic-PHY provider nodes (csiphy0..3) at their existing register
addresses, each with its own OF graph (port@0 sensor-facing, port@1
CAMSS-facing) so camss_detect_legacy_phy() picks the non-legacy path
once a board wires a sensor through one of them. The camss node's own
reg-names/clocks/interrupts for the CSIPHYs are unchanged, so boards
that don't use a provider still get the legacy binding.

The provider nodes are disabled by default; a board or camera overlay
enables the one(s) it uses.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 140 +++++++++++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 1fdb72fa5518..2a30bf1c82af 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -5164,6 +5164,146 @@ cci3_i2c1: i2c-bus@1 {
 			};
 		};
 
+		csiphy0: phy@ac9c000 {
+			compatible = "qcom,sa8775p-csi2-phy";
+			reg = <0x0 0x0ac9c000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy1: phy@ac9e000 {
+			compatible = "qcom,sa8775p-csi2-phy";
+			reg = <0x0 0x0ac9e000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy2: phy@aca0000 {
+			compatible = "qcom,sa8775p-csi2-phy";
+			reg = <0x0 0x0aca0000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy3: phy@aca2000 {
+			compatible = "qcom,sa8775p-csi2-phy";
+			reg = <0x0 0x0aca2000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy_opp_table: opp-table-csiphy {
+			compatible = "operating-points-v2";
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+			};
+
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+			};
+		};
+
 		camss: isp@ac78000 {
 			compatible = "qcom,sa8775p-camss";
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
