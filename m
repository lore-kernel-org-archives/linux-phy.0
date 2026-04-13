Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E55EBFD04
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n40i2jHjErv+z6LG/Lw6gpr1z4eGtwX1nI0K3lakmhc=; b=fi7717n/6UOcnM
	S77eV3iujnh0pmqORlevE/aTKPm9DF8hE9BX5LFx+vOJ4+nDNmIpbpZSEk6z+s00ORHNnCoo59PTx
	O6YGHsxP5Zsp/Om2gyJ7jr2ljrEEhO8iM451BsWtxtf9IiyuuKupZtdfvnfMO4funXqq8mxB29WfC
	gRRKhWer5VV4vu5z3BHXTqpfq4Aik7oeS+OZgcDfcGuIWvsNzOhddgB/vnSlPS6KFxsYRjfu6QcOF
	tTpKObRxzTiWkLv65Kb7iBshwKDRT+Svzn37/WsaShMpzdQLKDd7L4BLpnumpjyweN2ipnqH7owFY
	5m68zITjFRwlcTy/uciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAke-0000000F4pk-1aTl;
	Mon, 13 Apr 2026 06:26:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkb-0000000F4n7-2yAG
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:26 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63D5MtYu531190
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o0ChrIXI92w3wnHh44UR0UZJ5/mqz0aRl1oZbZGfcV0=; b=kbBmCDs6iQrXsZy8
	MORp8K9I8a6pIa8f/XwI7yk+R7cEk2YcmXIDqYHdvlq07A1FMgsQcgiIfRCmD17M
	Z333M0qr6pRSPyA+/Ky+zgHKDIn5V9UdJxOA+AOyRPt7UtDFeFWIE2yIG53U+ZPU
	OSawZ9gXzrQBZx3NsYIzfaVNdYzw3SqdiNNog/IvAdfyMWkY9/L8m5BTfkkCZPHY
	I/lmjF9zRD1CVqipGEAsf3+3Lrj+b6ysOv3wjkSsBrEFh1ZjrXT8mhTNiJKL6AEE
	VfUCi9vzxQ2Z07IkIuy3SX72fCCYi+cwz2y5OcCClTCbDx+iNiYc0s4yLG6yg+n+
	1b6JZg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dff2bc0ya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:25 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ba8013a9e3so4591896eec.0
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061585; x=1776666385; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0ChrIXI92w3wnHh44UR0UZJ5/mqz0aRl1oZbZGfcV0=;
        b=j5Fcat8FIMmzSi9PiUAbFNQWnQI3Kb1BPnydu3LyaF14CWdB8sQiDhMYTBw28K2aKp
         PAdaBJNlRSG/0qtQe62MR32moQG5ABN2cEsNqgJbmyZghwoeWqCPwvxwRS7p0l38PVnU
         Am0YbnUfHOxX86e84te5g/tMcLLBU4wNHc/g07TmH17/VqAdqcIy3VgHbz7h+Glwm3Mh
         7UX4xi9yB5CL8iPIZfNU/hVo34NPUIn3PGDa5gfF6ecGoyyHT82ObiC1JDYB1SCqMJJX
         NlnB3NS3aX70s91iy3ISHHCEYK6XqxZ0aefE9YfRszv21YfnbyJQDIvOU7mvRsmPngaP
         BUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061585; x=1776666385;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o0ChrIXI92w3wnHh44UR0UZJ5/mqz0aRl1oZbZGfcV0=;
        b=JAA3G3aAPqa7wBO8spJXooMeqfAWGAG+APGUJupdNg+t76SiZBGFfnkPlY3DgGKm5g
         iNFDY7w9hi66aTwGqocn6HPw9uSjQarhjNWKjrX4vPNSet2FuNe0Rt4Uec/Dfed/iLAZ
         Q8pROCe3BwLjtF6ipdP2y4XCP3spOixCoHhDrSlkpl5ZlQqx/1ErN6VP+7/h3DKYJGQW
         pZv33GFn83/+lXZeg/xIR5eDlBTwlEoiz+6dcpR1Lqq8CiwzDfg8um6GHUN9Qy2hcH6m
         ycYKOaAHawuYc/qpDqwqTwvXltPfa6b8Bf8ehvXXNKbL5TyDpbwDl5twWO9aDFvW23p8
         lL/Q==
X-Forwarded-Encrypted: i=1; AFNElJ+PBsqvPMCo7amltiFtIQTJpJJO6MY9F1BpcZ9pb+hZHxangHO5T/A0lztIx6kblcIWzwLY//7O8KE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNYwsfSIQBKJbD+GbJ+m7YicMh2IgRs3MIvzLR+eNa3aF7Hiop
	y0sOY2JglsRHzDCfKJ/UFf3uNdfzydB3BOmBBuY7BBe3jddIxdAaksIISEBCYCG4Ezf7C3Bcty2
	bBMO9+bYbtKlMLDsLrjEF0o3wPi5krxiJYTT4IGqySbZxkMtFr7YjLmXOTbf1UzQrM25u
X-Gm-Gg: AeBDieuUebrosQqz3GbWrYJ+0OMMdCF499jMsCNBs+8oODh5YcvVtlHOHA5CtyJ0lZ8
	tC6qfIQF9sLp8O9p8td7+edfU9vTabY/uq3H7+1w1qnyHCXQkXxRWaBO6PKsXLfmsDUX9MCUa2i
	8HnI0Tqu+aVvTUpqz9Le9yexwB2tIfBPPJ/RHj+v2wlxdd5WI1bSz6TyahqYoRbphQ2MzpXyKZ1
	mJEupipa73j2zbjjKSLSsABzEifQD0ULFi5Byrzpx7RWgErjITrvpPow3EB36WxR5Kt2rhKZ+WY
	S8CLSl2EkPxiaOM/g4MYCZai76M7zCcdtx5Tx4AGY36lAPsTxY5H5Hk1d/m1gj0CgSWvJqddpoB
	Obor8tAR3TU8vYMy2AlY72k7C3Wb/93HCxab3IJ/axsYoLXYkVu4sIEOSj8/SpEwl7/BW
X-Received: by 2002:a05:7301:4b12:b0:2d6:526c:55cf with SMTP id 5a478bee46e88-2d6526c5a9emr3905374eec.9.1776061584485;
        Sun, 12 Apr 2026 23:26:24 -0700 (PDT)
X-Received: by 2002:a05:7301:4b12:b0:2d6:526c:55cf with SMTP id 5a478bee46e88-2d6526c5a9emr3905359eec.9.1776061583920;
        Sun, 12 Apr 2026 23:26:23 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:23 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 12 Apr 2026 23:26:00 -0700
Subject: [PATCH v3 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
MIME-Version: 1.0
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=9785;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=6j3SACKkrYFjJa5AOGKpOr8QZ2eMgNzhp49WGgxvD2U=;
 b=Eq+D1zI8XyP7EndVlHUisT3hzQ2nCu1TxiSOUFw3E/eD1ssg5FWrAM8AR6eGye22cXONEqljG
 fwgvFMP7PFeCFLuZIDYJc80Z3baATd3/LP4iemCeYjc/LgAbcusOXMb
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfXzB3+88kCNE5O
 y/g5KcHb+ztst5F63YI6dFZickcepdInDJV25PY2qo2y9E+esUhRORtvIa7zfl8lDSEv4Pljoh8
 Dm9ac4Lw7jgj8W9D5cvfaXljdVJYN4LLpzOk0B4kCMAV9t+YJWW9cirXVEdjuFL+1l7Q4+VlHGx
 4JG4n3gk1pMip/EckEYhcawlQB4TG8JaUzcG57RSc7UmcA4FpiB5qddVscsKy8lGlGh0eebb/MH
 bRcWENofMyBdWMmt9fYgwh8k57K7xnQS5JydVx9HCfMoq2b38fL1ubeODVzo25GVrrVcPNczWBo
 eTq6ftggXb2biA9AYoL4Qd7quv9yLLz9m0dHTSJTEFLKVmXwHHakNszGWUye1us2yuHiU6FfKFm
 DE86aW8/wOAzsghEHucXd3fmYbZgesSdUCER9Z6oNkcYS/Gm/frdzbauusAHQmL9y6wbCQau1fO
 Ntlbaguyt6MsCZv466w==
X-Proofpoint-GUID: VWHFRGtPCd1ARkVcw7mky5rohrZioJAw
X-Proofpoint-ORIG-GUID: VWHFRGtPCd1ARkVcw7mky5rohrZioJAw
X-Authority-Analysis: v=2.4 cv=W4gIkxWk c=1 sm=1 tr=0 ts=69dc8c91 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=hXbwWmyv05DepBt-Dp8A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232625_770170_6DA9F7FF 
X-CRM114-Status: GOOD (  13.34  )
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

Describe PCIe3a controller and PHY. Also add required system resources
like regulators, clocks, interrupts and registers configuration for PCIe3a.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 316 ++++++++++++++++++++++++++++++++++-
 1 file changed, 315 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index f23cf81ddb77a4138deeb4e00dd8b316930a2feb..c15f87c37ecbad72076a6c731f4959a1a8bd8425 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -736,7 +736,7 @@ gcc: clock-controller@100000 {
 				 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
 				 <0>,				/* USB 2 Phy PIPEGMUX */
 				 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
-				 <0>,				/* PCIe 3a */
+				 <&pcie3a_phy>,			/* PCIe 3a */
 				 <&pcie3b_phy>,			/* PCIe 3b */
 				 <&pcie4_phy>,			/* PCIe 4 */
 				 <&pcie5_phy>,			/* PCIe 5 */
@@ -3640,6 +3640,320 @@ pcie3b_port0: pcie@0 {
 			};
 		};
 
+		pcie3a: pci@1c10000 {
+			device_type = "pci";
+			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
+			reg = <0x0 0x01c10000 0x0 0x3000>,
+			      <0x0 0x70000000 0x0 0xf20>,
+			      <0x0 0x70000f40 0x0 0xa8>,
+			      <0x0 0x70001000 0x0 0x4000>,
+			      <0x0 0x70100000 0x0 0x100000>,
+			      <0x0 0x01c13000 0x0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
+				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
+				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
+
+			bus-range = <0 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <3>;
+			num-lanes = <8>;
+
+			operating-points-v2 = <&pcie3a_opp_table>;
+
+			msi-map = <0x0 &gic_its 0xb0000 0x10000>;
+			iommu-map = <0x0 &pcie_smmu 0x30000 0x10000>;
+
+			interrupts = <GIC_SPI 948 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 949 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 844 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 845 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 846 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 847 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 942 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 848 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 849 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 850 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 851 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_3A_AUX_CLK>,
+				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_3A_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_3A_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_3A_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_3A_WEST_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "noc_aggr";
+
+			assigned-clocks = <&gcc GCC_PCIE_3A_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_west_anoc MASTER_PCIE_3A QCOM_ICC_TAG_ALWAYS
+					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					&pcie_west_slv_noc SLAVE_PCIE_3A QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			resets = <&gcc GCC_PCIE_3A_BCR>,
+				 <&gcc GCC_PCIE_3A_LINK_DOWN_BCR>;
+			reset-names = "pci",
+				      "link_down";
+
+			power-domains = <&gcc GCC_PCIE_3A_GDSC>;
+
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
+						     0x5555 0x5555 0x5555 0x5555>;
+			eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55>;
+			eq-presets-32gts = /bits/ 8 <0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55>;
+
+			status = "disabled";
+
+			pcie3a_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000-1 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x2 */
+				opp-5000000-1 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x4 */
+				opp-10000000-1 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x8 */
+				opp-20000000-1 {
+					opp-hz = /bits/ 64 <20000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <2000000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000-2 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000-2 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x4 */
+				opp-20000000-2 {
+					opp-hz = /bits/ 64 <20000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <2000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x8 */
+				opp-40000000-2 {
+					opp-hz = /bits/ 64 <40000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <4000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000-3 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000-3 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x4 */
+				opp-32000000-3 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x8 */
+				opp-64000000-3 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 4 x1 */
+				opp-16000000-4 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x2 */
+				opp-32000000-4 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x4 */
+				opp-64000000-4 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x8 */
+				opp-128000000-4 {
+					opp-hz = /bits/ 64 <128000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <15753000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 5 x1 */
+				opp-32000000-5 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x2 */
+				opp-64000000-5 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x4 */
+				opp-128000000-5 {
+					opp-hz = /bits/ 64 <128000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <15753000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x8 */
+				opp-256000000-5 {
+					opp-hz = /bits/ 64 <256000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <31506000 1>;
+					opp-level = <5>;
+				};
+			};
+
+			pcie3a_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				phys = <&pcie3a_phy>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie3a_phy: phy@f00000 {
+			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
+			reg = <0 0x00f00000 0 0x10000>;
+
+			clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
+				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
+				 <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
+				 <&gcc GCC_PCIE_PHY_3B_AUX_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe",
+				      "phy_b_aux";
+
+			resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
+				 <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
+				 <&gcc GCC_PCIE_3B_PHY_BCR>,
+				 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr",
+				      "phy_b",
+				      "phy_b_nocsr";
+
+			assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
+					<&gcc GCC_PCIE_3B_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie3a_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		pcie3b_phy: phy@f10000 {
 			compatible = "qcom,glymur-qmp-gen5x4-pcie-phy";
 			reg = <0x0 0x00f10000 0x0 0x10000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
