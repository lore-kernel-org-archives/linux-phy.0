Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E09FC72C5
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cjy02V589rByXyl5azq0mJdF9BBgJ0Zi90Fhtfylaek=; b=L6cz+3P78jRsdA
	Cv/xl6dQxdRW0s5ZeH1HID8R0+gwYbuud4CpAEuLv7p4+tZMfdVQd+ZSwwWI+nBo/WELj46enm2wa
	tX2mN5Cc2UOTqAIPWDIw86xvr2TCZwtM52VfITTEd07pFVmPqhJPwp+tkqLgTkIkg5OeRuZ2VQ9Pj
	KaTBks/GzGA4RmIQJLi4grVz5jHtsvD0WT7tQ0AKczfSKJZSBw/hJWGJAYBFZw7a0BiNuWCTcm5E0
	YIu+haDfTXfOEH6cU9WcTANZEJf353svpbP5XMsXsIHBhgpfcoRKcL+gNGv/VH4S+LTOCiDbpMRMG
	kaOCGvq5r0xcD6k1guxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVp-0000000GAuQ-3EKk;
	Mon, 23 Mar 2026 07:15:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVl-0000000GArN-3tgb
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62N72ASK2508391
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SgDn8OJd4WnbYqFuVGcJwMaHVJjwUPEJ89RBmka3pF8=; b=Zc0uTu4kLtW7l3X/
	rsckvt+skS0X/Q3TV+lOmev1NkJOYFz481hQ/zFIGjGXBkB99q4Oguok98Bs2sUl
	oFVb6MIKqrHJSw5gdUBIxSK+UyH8egzq0qSmWba6rdz7ucQFh7n/g1clLjGr738e
	te+jY0d8CKt2tTZsvhamKyjpBXqODQy1tjzCzuX93hQKfApN3eJykOniDiT3VWbX
	Juae8BgioAt8pmxd1oiOGxMSLwUAU6d0+12U25X/hWvAxdRs03+pRWF9oy1MzzTd
	HsPdPjcoG1iEv+0MJPLUWOBfEV6VYiRaN2l3AN4ZSx/U2aujLKNMmPQLot3YmWGj
	TjFWXw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1jb5mb2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:40 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2c0cb775215so5747356eec.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250140; x=1774854940; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SgDn8OJd4WnbYqFuVGcJwMaHVJjwUPEJ89RBmka3pF8=;
        b=SXAMNeVfsJKjizxOfsZZXwZbOqMCEJHhxyx9YdE/QtgTTw40v8F9dLu79PPQd9i/CO
         YLqzmggZwq959T0QWt9arW+zOlpsUROtJnAoYN4fg0i8QuJwZ9NaYeBcPES8sEHjxtah
         y55hjkUrzxtE3XofStE5DdL3mjGXzSCpfNV3Lt3lXVSegcovUatU4SZQKE5k3IGxXSfi
         dr0kGrnClmBB9VCZAoaV7nLc5eOKQzeYSf2FTVEGzcdlzPgtFEDdRmXYbs1pUuz2coCl
         Mn3XyXij1gU08iF52vbqhh96lZoxPVIQvX1U+1brphyqZazsDAaFhQDxYQLiWGm63aqr
         JhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250140; x=1774854940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SgDn8OJd4WnbYqFuVGcJwMaHVJjwUPEJ89RBmka3pF8=;
        b=pJ0Saj4/LXFI5MiargcdAsk5wFXOB2ylHw+8Ub+o98IL8G4Utliv61G+NCN4x8gJ6i
         0RAcxhOYD0cGPNzu1ITkwMLgMCiJLyz7KWTVTYdEXGTCgqunCa80fDZDpbZFpsn0TESY
         tz2Ue67xjgbK08s7IhPcxn9Ah20rFHeR1C6erxeDkprLCtMbSMqSIiaRcJ966ETGD3Sg
         8swCMZnp/3dNYpRQwv6HUzbpeAd7CG6NbInWRKF8EnAuPL4Iy3zieTWZRlJCLlRTpbMG
         81rw3Ed7RE9CjR/7cqb+1ctiCnZ3yRwEOrQubfTHGPGhUQv1z5DrjqgVy5JNSdWKnEiu
         pqMA==
X-Forwarded-Encrypted: i=1; AJvYcCVloAf1EM2wufvjVxl0okd7r1iPXMTNGQtfQtqIDnwODHvw84YIULT/2lIW/yEJonqR1xjtyFznTWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPWftorDgJtoleMuZCcxUK9EFRJOS77MRzdAvPj5DqYhpXFo36
	oeImX1c3UPs9e5UFdoGFoPl8HEn4rlv84k6QM7ByMAjld2b8olPo4rgoRKBbjCa+tJ6/JzfncWx
	5wQz9XgVqpPauTRABd8ICKAyVXhJWA0b4msTFYXzfYjKa/Rj0sqfmj6LWrNhjiiL8qhBy
X-Gm-Gg: ATEYQzzMSA0IzPQdU/orn0Kp4UW4TF6YeEXJEFmA93r5PQiQqDuYCushHEeaIm8j1Vq
	jVTCUKK4zEZG+2vGmAQ9hLvVyi7dxCiDWcNP+am+qDJLI0tuFjZTkHHRoIlHNuQyBs7gjYcFotd
	qnVimQe8h2TDnXE2SDdxU3ps0AtaBARxRBsyLxeSNwrfLEVU1DCTH0A8CjAVBZbmPBT3JCx7kHY
	6uDL+10UER7pzaj3WX7IngyiYamz4hX6C5mB/ARq4cNzMnxb78yL+thZmDhMkDOx17L8h3bSz7q
	ZkYrPZhTh0HnV3cLyORS2TdFzR8keBeKmiLyuC+pzMMVozDZfJbATkFoaLNgeN8SNAMGVqY3hYa
	pveXhFoSpxQ8FvX5uYTJNIoNGZSwKwLKjTYikra+8lV67ym+rDpo4P8JbQr0rTg0fSCDA
X-Received: by 2002:a05:7301:408d:b0:2c1:6ee:a154 with SMTP id 5a478bee46e88-2c109809f75mr5318451eec.32.1774250139835;
        Mon, 23 Mar 2026 00:15:39 -0700 (PDT)
X-Received: by 2002:a05:7301:408d:b0:2c1:6ee:a154 with SMTP id 5a478bee46e88-2c109809f75mr5318439eec.32.1774250139266;
        Mon, 23 Mar 2026 00:15:39 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:38 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 00:15:32 -0700
Subject: [PATCH v2 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
MIME-Version: 1.0
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-5-ce0fc07f0e52@oss.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=9744;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=m28kUgWbv2C79AmyaEXsT/zdO8tQfwDSXBdNXUyQAew=;
 b=I2nvudpb/twE1JVQq95WFHAt971EO+IUtlvC1TO1EhRqyGi3Bi2405/oMWhTge2FzZgHvdjOJ
 4+MBgDQs7DUAMUqBdmsGkoCtwJefGWZoioT8VAHAIyNqkCXvthN8Aty
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aJv9aL9m c=1 sm=1 tr=0 ts=69c0e89c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=hXbwWmyv05DepBt-Dp8A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: QN-opvjusT7OnY019KRnLICsehx2VFYF
X-Proofpoint-ORIG-GUID: QN-opvjusT7OnY019KRnLICsehx2VFYF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1NCBTYWx0ZWRfX2JH/S9f882XS
 qjdwCDk1b7X4zwTw9wJ4oQzA6ccUDQzIwZs+vUX3b1G15KxFxHE3ow7LTywD9Tc0pY6P/Q7pliw
 9YPch39KCKv2EB/0p2NCOoOiIX4417z/LS5B5+bE59Nw6z07kRRGgGWy1hBD/vpSUvF2LdCNKec
 7ABzpUUio4cv9z/oqfYKeKtjhmYeqC4Cc2yj0J70We6i0XwhXbqIeCdrOx4TKjDsD+VHSphVnqm
 xFJt806UeAeV/L1kdeIO13PN1sNfZoVUjnEcWiKWzq8E40YBu45TUlkvvDjcWZHDxQfm0CDo/Qk
 vvqJPk8KXtDS3AJUcq5oARh7Zih4sviAKMMCKzYzqNxgxn+09xHZKQjkSww8jrf8bq9PlfYdayU
 T0pkNraKidO5Kt1jf7uhZhsaKTdgRFIX7lA9Ebgu4yIqxnmNZ5GrK9Eqq4/M1t91lfcEX/b5xdh
 I8VLVG4VEui8MFPIiVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001542_102547_1D5B19DB 
X-CRM114-Status: GOOD (  13.73  )
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
index bde287f645ee94116a489c55be3b7b80db3815e9..52104607a1713323fdfe2e7de710e38c1e22d06e 100644
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
 		pcie4: pci@1bf0000 {
 			device_type = "pci";
 			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
