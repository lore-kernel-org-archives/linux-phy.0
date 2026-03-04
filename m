Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126F0EB7EA0
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3oFSkIq+RWdglzny0+8x3BbQcArXxhxBbmH/VIK/9M=; b=44rnzQnyHRE+Qv
	KfCMPOMwDSOlsFMPV2Wfmq5dYYzTaMuiRo7b7rs2Gl7aXbXHWLFSGTWnch+U93R194w2b5tSJLJkR
	R6g/CML2bhbxQHchzeYsNgt/RkrjkUaDXE9YvVzrmO77e6K8dK7RAGiwhVGM1Idl5VIzzjrqMUSSB
	ptvfFRkvH1qxJ/SDaNg42eAhJC11i7M3IyJ/caH6B6QWxysltSVK5kQ+vkGg6YPX4dI96uKKfYiVw
	TvUWMm/58nJ2sriqAJ0Sqe2oDDiW4cPtOnG/kqD9UTsqsOthnagO8qZxA5AFyAnGQgSPDQ7+9RDNs
	a5gRArArtPSvWe6C12qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUd-0000000Gjce-3QRs;
	Wed, 04 Mar 2026 08:22:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUb-0000000GjbU-17Aj
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 08:22:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245T8LH1073670
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 08:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pxTnwxng3P4cmtDs562JCOYHIIX20oMYCo8qBo+bkCI=; b=EhjEjEuSuYF8m6ew
	gdlFT30+pVKvxmwgVr4IXyygCkE+o2uQ8MFBS17c3U5vfFPwT4HrO5YkGIhskhRI
	c4sKp3ButfOn5djgK5aYszpEY9SjZwl4+4ELK4MiOQy/8sm/OPXtAx1UyHEmYWjg
	pCaiA5JMYHya0eKQjVOwSImLfWfQ7zHh4O1eNpsfucZjQBJmxmJ6l9KR1pwqyX58
	S97jAo41oD1mmEmtIn6BcpahZ/xqxswZ8C/64o1T7/sqGYgSBAEmE+2KzAC/i14V
	HvDXuXnaLXICZ68ciI6wSNqTOnbZuL3fo6gdEQgrHjYWFU6PqWMJbSZzpKmkaBWv
	yzzFtQ==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfguv6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 08:22:04 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d18d6e6541so32309029a34.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612524; x=1773217324; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pxTnwxng3P4cmtDs562JCOYHIIX20oMYCo8qBo+bkCI=;
        b=PDbDhjntrEkl8rKrxcAOhY0XAkjcwV8Zu16324TT5RPVXoLzvY2V5QChQhaniLCAGI
         IFOVdU7JK6jvvgkyc89G/qLLjd+uBRCH+hCxQZfZW3dBJcHjd/LI893WbTQsWM4yNCSg
         BqDbf7glpGnGgzcLBbvzvy+vdMkUc/dK1dT2w98PGf3RCydwz4jUWO3CSpz1K9LQwarH
         Qh4t4eX+tryDROF5fc0aiMOJxGWlvZikDlx0GUv5ru9rAeQBG4LMNKBg+/50z9errR6L
         RATgBOmGLA9dmU0qfNBv25XBK/U+ign+I1OtYN+yQeKpqz1RWH9jvWRONSsYptM0Mbg1
         NmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612524; x=1773217324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pxTnwxng3P4cmtDs562JCOYHIIX20oMYCo8qBo+bkCI=;
        b=Q4vHn/6Hd1SbwXwxlGvnJEvbqLBTR9d+OD2hNlAqC1Wx2QkuYT2oWsNhJNPfxxzhTL
         wBCVHeZCY/No4fLKaEmGDDUpnjvIGokkuIz2GctivRW7r+hsHGfw0J8e0mqGfrsJxbv4
         VAEp5qBmBs8nTe+TaBSXOpMZZIfbKhkU75ePRRCg2CG856Zzt7F3xCBsBtW609txvxzh
         I5eigJR3v/J+1zXBECanmZk2dkR8y/WFFOVgrCXiEm2MUjSd/n9eei/bhu2RjvfnvX/0
         X8tVdeGcOa2bsUF2zKtpf754Woeo8+Wrdr2ATRHbfhZnZ8/ukEm0chNA2rIVeGNtqXwd
         BgsA==
X-Forwarded-Encrypted: i=1; AJvYcCUomKo2jb6glOqNF0QKKHmt51XnhSkFut1GTUZ4V9yrEqiaFHfOfBNqg5/OEwtyKI8y0gaymwVmXhk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAPIqSxba+YCtnIExQVNXD/QoBYNynHbMmqnK/CK7wy2ilet5L
	bINleLs+YksqOKOXlm2WnUNDpbnXwGKTaLWUbjEyQ88BV8VxPLkUY85bKt+GDdmpchOXLRk88lr
	+W3aZm/7NxJucCg3wI8v72yCQ2Mme0UMtRWaFNSHG5FNnbyHifn0Y4EMPLBWjXeTP2DJf
X-Gm-Gg: ATEYQzxiBkqkeHGUimeqaivl9y+oqJ9VZb4ilkJ2Djb5CbjmvNvvKihf1nnRgGUA2pr
	e4JRVF8IyazYYue+QrAi2zWkRa4XAOhZfea20V5Zkasg6ap5ijvWg7ThtrcjGbGPHQTBbyQcGWk
	8OG8ufESTumacU1RF3MScna/TAIjjvQapO4tLbl8B+aG9WUvdFGvJjn7jrCXDVtlQwcm/chog9O
	w5mAMcEazenzcMYh5Za06J2u021qUtis0PcTacVPihEU+x+vVZM+7cDAc0r8R1nqacwuqCwfFs0
	2F3ryWiJVudaeJR3zlm1fhoW2VG1HI98DFMMs02yKqTankRddhsOZRC1hPuf8/oFzHzff9BF8aR
	FACjTaGnlRRdkti+paV1149s9dR7w/qF+V9VnKQvYPyg3httpjIPeDxLoDwwPXjTIHY0X
X-Received: by 2002:a05:6820:2103:b0:67a:405:7ff7 with SMTP id 006d021491bc7-67b176e3330mr937396eaf.7.1772612523857;
        Wed, 04 Mar 2026 00:22:03 -0800 (PST)
X-Received: by 2002:a05:6820:2103:b0:67a:405:7ff7 with SMTP id 006d021491bc7-67b176e3330mr937384eaf.7.1772612523458;
        Wed, 04 Mar 2026 00:22:03 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:22:03 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:59 -0800
Subject: [PATCH 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
MIME-Version: 1.0
Message-Id: <20260304-glymur_gen5x8_phy-v1-5-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=9719;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=CePg7dQ0vJpQa3SXW4kxYjj7WXb0JcqLC2YXxOGT+EE=;
 b=hCMaiSxdCo4DP4ycMiEX8qExZXO+VWfrot14h1UEc+CNTH/sh60qtKwcYATrjo6Yvs93Hl0a/
 TCg/nQgzIGUBTltURCUkg0rC/IqzpqKk5iCjr9KPXChhVBs46IdZV8X
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: DH0-9c-wvgUiJq9pu5PGmj71hBVVF3N-
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a7ebac cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=hXbwWmyv05DepBt-Dp8A:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX7+QAAQEorgk7
 Lq1DkH2oTE/IffnalJg86j/IJ7sC2n2IzZqs1HZdje3lclQdUjaq0sQE3fkATSUb+aDXF07yCAc
 gGYbI6xxMyHXdrF106t55T/EMqqzQgOn9MNJQHC8Y33G3qO37Te7pAnkueouC3JStPq3lHDLBtS
 fJlA5dnSbinv7c+wcLwRjHGX+PfOjKhSm+7UVtOslTtotDc4l6Wz8KJLLP0AZ4WS+mHKhfuP1l6
 N30NO7b6dQ5k+9ub7nI64rZi3pQ80zW4upSAIodGFOpxkE8mlMxiihXmDY/bWjk4wn2uK0DE6zE
 x7CYWL/PNWitwP+djgG3W/OpamXypaQ/GxiqGM3dLIdbhBp4oOqyed0WKdVd8ijQjuoGgycwM/r
 UTLWEikg0Y+H45+3gbmxaZXLScZGYQBWPSTnS9I0DjYwQDk/WkuivSNSdsqyPZQ+cyIPEx2iwH9
 uiHFjw5B8caqErGsosA==
X-Proofpoint-GUID: DH0-9c-wvgUiJq9pu5PGmj71hBVVF3N-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_002205_319698_E2474764 
X-CRM114-Status: GOOD (  13.51  )
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
 arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
 1 file changed, 313 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c85447892c0661f83171eded94f3b..9b8037007c61b9fd1090ec10f6c8a8c1b414b7ca 100644
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
@@ -2360,6 +2360,318 @@ pcie_west_slv_noc: interconnect@1920000 {
 			#interconnect-cells = <2>;
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
+				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>;
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
+					"cfg_ahb",
+					"ref",
+					"rchng",
+					"pipe",
+					"phy_b_aux";
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
 		pcie4: pci@1bf0000 {
 			device_type = "pci";
 			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
