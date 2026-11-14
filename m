Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B460B606A335
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=49bXri5A;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TvXxghXl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jWGqBhXw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5yO/G5sdytCGO3Xw1RgPYW/OQ/6Hehr16zoFBm5+VRs=; b=49bXri5Auww8Qv/zmONv+EOXvb
	yKqruKMCX1SjMBkkt4jwoFb22YknDKJr7Eeo1MTTEiwrhH8aU0EZJqx7RvQhDJeZf+Ug/ROW+BmlM
	NLAtu7eAW/zAzU7m9xuOoK27C6ARiYC41eYqxAnAZbY1qILGhSPb4iufDPKJ0pHvJHJS5U+VnCfRE
	XttFP9KqrwbdLra9Vlc9Bk/kOMmLuyriJljeFtpevEr10hVvh9OeNf+qz8JL186vF35K1bsR05dch
	gHRo/aPKAXlcRwE/3N8Yvo2h01yN1S8ex7mzo6HbTus8IPIq5VKIrpXrkYH9rweY9jzJDk73GaN4W
	aqZPjOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2L5-0000000F04k-20P1;
	Sat, 14 Nov 2026 01:13:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2L2-0000000F03o-0Rno
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADMc2953759729
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xa2yBRKrVwpDPP1DRDU0RWXac09ILbJ4aA8qjd/NqFA=; b=TvXxghXli/NERShK
	lRziK11vQKFCUAa+qIOXMaTzIkMb4BTPYIV8G33dXQ+OJH7zkjmQNVV6M5paWk3P
	+nS1ozi3i2XQKnZ+aCUhJQmM8bUzkBQUT6WM7DmlGncUXHo9pw4VwDA06kQSeTAT
	hCC4Jn4OFLzUrKLDMWY3IiWcavGGZpP4m2YaTNx781hsV3yhSeRAHT4Y86muQrt6
	2wcakM3THVAMa7Td9kGNl5WMGjl5js0t81qUiy2jQuUBytT7+WbBygVQX2QXRg4m
	DOeLC3SaoZtJsPBE1cPOtcAJMrl7bZX3C4Rysx0czgeAcNtJrS86/8gmM2G10u+5
	T8AJ9w==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hx662sqe5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:50 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-341eff9e381so2338465eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618830; x=1795223630; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xa2yBRKrVwpDPP1DRDU0RWXac09ILbJ4aA8qjd/NqFA=;
        b=jWGqBhXwoeILE0o4pe+7LebwUYeqIYcR6r4L78SkLzIpXAbFmSpnYl4cmYq0/Qh1Ob
         ocXtfRQypYhf0z47e4mjcywCMcb+9rWfjjKXKW1mxFYBa42XI5auYGxbZKPyM5YrBQ5K
         RuIHq7HUK2/iuIUCilmOQqh9MKIlzJQ1x8G6CICWvUD9QdyHzNTBrYQM2YmPhUbYzE5X
         4BjnuhGGWUHxHJnhdypLWQOj04Pm8J0FGN/28gJ3RdM5EJziv13iWlES13Okm/ZSno7D
         UNvDFBXEh+Xq9AGGeCpduIqP5zUfky/kg6O7pypNSqUESnYbHHmneiynJArEMG2oz+Gl
         R1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618830; x=1795223630;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xa2yBRKrVwpDPP1DRDU0RWXac09ILbJ4aA8qjd/NqFA=;
        b=dtKc8lfbPlj9ircavwuJEk6SC+2x0zTk1ZZogqDS1zm9ETiohr+0VdlOzW/G+favYB
         OfXyOHWaPunzHhkeoTfK935kxGBBwWoKk7vFhUrrD0VmsRcSeuD8kHj9ZwNr7d53aShb
         nNizGxS3YkxhMq0guUhSP1GYBc7yA+KLRut+rAzc8yHZXjcWgs64I/9XMoLQDaZqQW4g
         ro9qGvpCSrkyqJe9FxJToLGSQNceK5s4i2Pz6RcnvUPJieigAzhblPCEBF0sj6koejoO
         2IzFqzOyEpIp0SNVP1M+eyFp6P5KhVEzHl81kViDSJdGXKu+NOr0TDExVydGJFycAwkX
         334Q==
X-Forwarded-Encrypted: i=1; AL+hErGPf1cLWy8eGufn7V2R9CDI/jWCVZM9h+b4PUqeSIp7u0SLEbuwjyqYD17QaC/eymLCNHIfKSv4QJY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8JU8Rx7cgJTQ6p2s0cBtnGHVf17k1+HwzmVl1eNYIRtV5VrKIx
	hsIh+cgK2qztYJv/OAat37XCxudXYuf34cMZxTxeIIwYBWVByJ/me0avseEF2W8XVRFoyiGUY/v
	BGrifNIqSGqzYplKbTigHh4/ApQdBdBrt+7rx9PbcxBdaz9bv4vd1SHkBeIW30eU77AlJ
X-Gm-Gg: AYBFou3pEY2aKM0+zcHDLTuIWI8o/L3e7sXbYwA2YGDY3vFvLu4TdpjtO8RLdih0oA6
	2T24dkJUnZ2XU5wyqXFLx6/HjJnnlR7C1OGNPXpTvvLkjqC3NM6VmF3937mP15bBFg33paBIf3c
	aCg1pSTulGbrrZPssmrkzayT1iVFBLng3s6SbbDgcxzAgFwwc+HW6nxj48tbp3yN/S8ji2pva2n
	YIAiV05yp4mLz1umOvnDCDNpJXcefqSzXTLrQnXvRvUaqPmQ+ivTC/rdm+RfAYXqAZRPB3ziyKZ
	Um0SDATlTbgOpv5O95sy+CocmSoj5HYyEGb+2xjAgDlFlSXhGbmRRJ/CykYRDmDRuXgupgvtUBO
	6Ey/5wfLcL7tsoblBowxhlbHowRXv0enFJ6n5/+Fz+1ODdILc1k0yf92hndG5JGw0Ps8O0wDtkB
	sV/RCExzhh
X-Received: by 2002:a05:7300:d406:b0:35f:2bc:82d3 with SMTP id 5a478bee46e88-379662913ddmr3152194eec.15.1794618829724;
        Fri, 13 Nov 2026 17:13:49 -0800 (PST)
X-Received: by 2002:a05:7300:d406:b0:35f:2bc:82d3 with SMTP id 5a478bee46e88-379662913ddmr3152165eec.15.1794618829039;
        Fri, 13 Nov 2026 17:13:49 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:48 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 06:43:08 +0530
Subject: [PATCH v3 6/6] arm64: qcom: monaco: Add PCIe Endpoint nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-monaco_ep-v3-6-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
In-Reply-To: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=6008;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=7vC19cFzK+ATwY4+JnGLnuv6fmnvDEYRfdiPC1jqRUs=;
 b=G/pfbCt2jLgsf31xuUH3byqHYChDhpZsp+OkgduHkcPs1DmC8KjFn2AQeR3/kTkn3Dxjfow/j
 n2mNYlPmIX0CaCNx8W6aPCXZQp1DW8LyXpGBauxMIiqtqCCYmNA1xk2
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: 2inH3zWli0_ybc-WwiAUOB5oM9HB5aHd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX6Jl7k85lgWBI
 K+S34QdKye740thbTRfny2j1p3uI0+NJg0oe2aCGlY/rBFt+VX9Jsnx4g8wfqFV3Ds3MnucuOI1
 1MzQEy2qqP7SyY+VrYtVbQuG4MWnV7rACD8abZ695V6uJCu8G1q6JKUhNMwJjOdKGAewgbo8+NM
 uFEF1pFxaBdB+YKjYBMdAWPNLXbyV1iqDgr0mm2k6sODlJDLD5S9Mm2/UKBpfvshu8SusNj1YTn
 2MOms3K7DSbLVlZyrbql6l7oYd2VhuEAag055OB5bLdXmSN0rJFlv/QNHeAYmmZdnHWFzG9N2/1
 bKaJkQzXzbfeAVUVlWP2ulrYsoynPRrkDkgZqyt79fB6y4IpjHvK0kapFqAEqEccB3UXfe5cGuF
 Z4gG8fqZ/0pPXidhqnph3Jz+SBGBdDqrEEh0qQidN3bolvfsM4CZOALfVdWRGWamcM+YkIEXhzI
 tz+YCEz1hkzHq3D1joA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfXwNJNWBIBzl5Z
 +NbAr7z/mDo0syqxkxUMUlcTqNrcM7CqxNh9bBl2wCkI02tA0lbD6SzSJ3WGaGC12r1neTu/mvN
 aEMV2boaUorngyeLj+XjuGgT8Nf0QF8=
X-Proofpoint-GUID: 2inH3zWli0_ybc-WwiAUOB5oM9HB5aHd
X-Authority-Analysis: v=2.4 cv=M/nYuCws c=1 sm=1 tr=0 ts=6af7b5ce cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171352_294865_9DB150F0 
X-CRM114-Status: GOOD (  10.80  )
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

Monaco has two PCIe controllers that can operate in Endpoint mode.
Describe the Endpoint nodes for both controllers, including their
register regions, clocks, interrupts, interconnects, IOMMU mappings,
resets, power domains, and PHY connections etc.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 147 +++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index f27f0953ab9e..4a1325aaf072 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/clock/qcom,sa8775p-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
@@ -2406,6 +2407,57 @@ pcieport0: pcie@0 {
 			};
 		};
 
+		pcie0_ep: pcie-ep@1c00000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf20>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x4000>,
+			      <0x0 0x40200000 0x0 0x1fe00000>,
+			      <0x0 0x01c03000 0x0 0x1000>,
+			      <0x0 0x40005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0000 0x7f>;
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+			reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 0 GPIO_ACTIVE_LOW>;
+			pinctrl-0 = <&pcie0_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <2>;
+			linux,pci-domain = <0>;
+
+			status = "disabled";
+		};
+
 		pcie0_phy: phy@1c04000 {
 			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
 			reg = <0x0 0x01c04000 0x0 0x2000>;
@@ -2597,6 +2649,57 @@ pcieport1: pcie@0 {
 			};
 		};
 
+		pcie1_ep: pcie-ep@1c10000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c10000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf20>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x4000>,
+			      <0x0 0x60200000 0x0 0x1fe00000>,
+			      <0x0 0x01c13000 0x0 0x1000>,
+			      <0x0 0x60005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0080 0x7f>;
+			resets = <&gcc GCC_PCIE_1_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_1_GDSC>;
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+			reset-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 21 GPIO_ACTIVE_LOW>;
+			pinctrl-0 = <&pcie1_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <4>;
+			linux,pci-domain = <1>;
+
+			status = "disabled";
+		};
+
 		pcie1_phy: phy@1c14000 {
 			compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
 				     "qcom,sa8775p-qmp-gen4x4-pcie-phy";
@@ -6239,6 +6342,50 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			pcie0_ep_default_state: pcie0-ep-default-state {
+				wake-pins {
+					pins = "gpio0";
+					function = "gpio";
+					drive-strength = <2>;
+				};
+
+				clkreq-pins {
+					pins = "gpio1";
+					function = "pcie0_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio2";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
+			pcie1_ep_default_state: pcie1-ep-default-state {
+				wake-pins {
+					pins = "gpio21";
+					function = "gpio";
+					drive-strength = <2>;
+				};
+
+				clkreq-pins {
+					pins = "gpio22";
+					function = "pcie1_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio23";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
 			cam0_default: cam0-default-state {
 				pins = "gpio67";
 				function = "cam_mclk";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
