Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E38C87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7tdbXdLo6j9OA81BuJwq6QtyNIVnissOhh66O/61ww=; b=oEgEURwQGk8Wyb
	elttjVsXQOKsnZPjXLRU7jNjOgS9LRK31eE+z9Np0BxsqwNgqnDMNVT5TBAFQtasygpjOyRxN4Fc/
	Gtx4mXnsWoveWLU0s/0xtiXF0owsDcctyAdFOac2SKSD2jQ8YkRdDyvzx8poHIDMwBz/H+tqg/kvP
	EZ+GybSP2v0tJvHsRM0RehEnsiS68DrrKSmevHurYRRV8l/ijz4TR4Wp3+A7Ds23qqG+MOm5AU2JC
	quWFQ/dyYhADKj/3DXJh9YEJgz9PtxYpak93TCH3cUb+PJlmzaB7fURIE2cptUJpM1T71EwYLQtu7
	6dDeLNFKvfa4wPAGmVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMy-00000004LIh-2AZH;
	Sat, 09 Aug 2025 10:00:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMw-00000004LHk-2fZa
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 10:00:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793Lrm1012631
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 10:00:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3DzTfzNGU9TUNj8yG+LjHihLJBg2bD1OBKZ3ujvNs7U=; b=LbIg18zHA0SJf6rN
	edgjpjjhYs1xnlmKCjs5j1ZiTcpQQ4cpPJFlMGqn2XTZF0oKecmwkE3lZ8pJPzEA
	TJEfbkwwh392XpMnnu7U7sNWRtFeHp2IBk4X4KjMMJ78iAmPwjI07TUtnfi+iWFF
	HIjRtB/a7R0UYXxF2+GFm/by5JZ6e92wyaLqrNFqwjiX5Z8D0PDaEPxFVRlrNUJJ
	tG9c0964js3iPbuf3g57NlN64WVAm9EB+YiQ487bZlr/JzStbub2Zjf80ZKg9eby
	IXI5gJ38EcjDZLSEYnMZs/CkH9/NKlg/RGgv419jaT0Jgj+1B/RXLcNqeuN1yN9K
	CaWsMw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fgna9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 10:00:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24283069a1cso32171635ad.1
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 03:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733605; x=1755338405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3DzTfzNGU9TUNj8yG+LjHihLJBg2bD1OBKZ3ujvNs7U=;
        b=vIYbtijuME1Zbx1I2evqkm0b7AT7V3n52grih3zuy8clwSna2lHDE9Phwh/VKblAHP
         aTPyM9CC0tA8ZwHonnH5aSBqo67FByE0s5zF3jTf8dpczr9JxKmr9uQ63oiYwXQJndD7
         LzSZLLhmvJ7Axgo+1y6b+8sD6SKICOR+zOwTWUmaL6WY1oFqMw8pQb417DTP1Erqns3/
         +Z15sUyvaPktrWd1fuus2/OS/Bp3oWrxftdzh2w8RtbPw+L7Pp6OtrrzNQYFSeu1Tj86
         CzIzSPItpvcYqza1GTKi7pEXnhQ/t//uHaZV48g6hiBkr4q0KlAT0LySvUMKNp4Lx0DH
         eijw==
X-Forwarded-Encrypted: i=1; AJvYcCW7HgK0EDlJhmXWTVt8sMZTx5r2rVT+DwbCLKq1CBFDSX3ksfiYjO64Jm0lAg06J9JZ5wSNUnNZgEI=@lists.infradead.org
X-Gm-Message-State: AOJu0YydJxhobPbuqVDnHsXKLoyjwtDu4FAlFtcKxFEargLkA0tC9PEb
	b4OO/7c6Cmij4VRjVRYEsUDlN4RZGJ8Rj7WkrhHodn7+FSFk7D3nucjiWcTfDXWPhlU2r6cC75J
	0q/Z1oFeA9J8/+sWcyb514OZo9n7+04Uhh9xVhXdXda5zu4pEg2t59GtglrxaH/HvsFZ2
X-Gm-Gg: ASbGncvhJVf3FOYLsgszkfZCHb574JjSEShM/Cgg9jggrakQ8TKmSLypdHmE9TJQl/S
	MxoGRLzUgBnyfbFvRWDjnaVdAD3vcgE2D5XVG1a7VwdfxpxkrL3gNqCekoI6sBdUnDaxrpiSMZ3
	/E8jfS5GQ89QqyQvKmUhVFfXJFpc3+XLXMcN1GayJH6gAJcP2ymKR/cIVJOwjHln4dEc1YxGNEo
	PqdPhl4n/bAZZl+r5XM/ugaiGuYP1DuKA2jECDqhAADD9GlhyExy6a84aiCC665zl1BexICyc4n
	6TAe64sQ0Ud828jK+hZUp+98W2NH4KJc5CPmiIVRBvHrRxWWi8Xi+i12wgwTz5cbkrb+IR8XpRo
	=
X-Received: by 2002:a17:902:ccd2:b0:242:d4a4:bba1 with SMTP id d9443c01a7336-242d4a4bcc3mr20365105ad.30.1754733604620;
        Sat, 09 Aug 2025 03:00:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZhff6fQ6+7IqKvsqZxiXZ1luTL0i0xHU9ilWAXrb/w8hSkrSgYMxl2NvJxbHAFEJQ1Jj/3g==
X-Received: by 2002:a17:902:ccd2:b0:242:d4a4:bba1 with SMTP id d9443c01a7336-242d4a4bcc3mr20364905ad.30.1754733604138;
        Sat, 09 Aug 2025 03:00:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 03:00:03 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:19 +0530
Subject: [PATCH 4/4] arm64: dts: qcom: sm8750: Add PCIe PHY and controller
 node
MIME-Version: 1.0
Message-Id: <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=5708;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=GpGvaCXgyV/HzzH3H2kGZzDRJpcu2NiuY/Il8jkwfI8=;
 b=4GGlUFFSmItIMt6I2GbZA5lOJbDl3EdfWvW8ROo42hcOiNwyEv0NwYwVhYrn7/9Uo7SQs/Nxl
 Jc+MkOUSjCdB4cfsTLw/8zCAYL+X/KfagxoH/4n4/XUabnkn0KW2Onn
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: wN0M927C5_N7wipvyxGUTvW9g0IzsyiM
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=68971c26 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9
 a=nnkZQxyVfnTQnip0:21 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfX40lhpL9ZXkX8
 iXs01nbq5GKAQrZDnFAWiNr8nlFWam2qV7kOkVG3vnOcUOLmlMGZJgYkQrA4yeHoZhsdmhdcqx0
 d0qpgbFNmAxZ5l3lC1/kezbhz7wna4ZPdrILL7xvqKa0C0IJUPTdfQ7xMlg2sycPJ/QayeQmyFX
 QQgEvxGYDEONmpxAh6hik5tOnIpneziXQoQaEDXKQT+/GSnqy8FAlUyWjx2PVcEoVPsbqZE7a9C
 Y1R6A5U8/pjpRw6fParXFu/jgtD+slwknXJjNewZ87eG+u1yUbZ7yUNm809tPdrnvYD3LHbnr/D
 TKreatyN6P3bf2ct/06bZTYyb5+AiimEEtOs7a2S5EuQ1DM5BH8LohPM1lzOY7jCeZ25sAdawNc
 JgW0zTp7
X-Proofpoint-ORIG-GUID: wN0M927C5_N7wipvyxGUTvW9g0IzsyiM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_030006_687057_B2248744 
X-CRM114-Status: GOOD (  13.60  )
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

Add PCIe controller and PHY nodes which supports data rates of 8GT/s
and x2 lane.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 174 ++++++++++++++++++++++++++++++++++-
 1 file changed, 173 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 4643705021c6ca095a16d8d7cc3adac920b21e82..866c1eb8729953f6cb27c7cf995a1a8d55140e40 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
 			clocks = <&bi_tcxo_div2>,
 				 <0>,
 				 <&sleep_clk>,
-				 <0>,
+				 <&pcie0_phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -3304,6 +3304,178 @@ gic_its: msi-controller@16040000 {
 			};
 		};
 
+		pcie0: pcie@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
+			reg = <0 0x01c00000 0 0x3000>,
+			      <0 0x40000000 0 0xf1d>,
+			      <0 0x40000f20 0 0xa8>,
+			      <0 0x40001000 0 0x1000>,
+			      <0 0x40100000 0 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
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
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "cnoc_sf_axi";
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			iommu-map = <0     &apps_smmu 0x1400 0x1>,
+				    <0x100 &apps_smmu 0x1401 0x1>;
+
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			#interrupt-cells = <1>;
+
+			msi-map = <0x0 &gic_its 0x1400 0x1>,
+				  <0x100 &gic_its 0x1401 0x1>;
+			msi-map-mask = <0xff00>;
+
+			linux,pci-domain = <0>;
+			num-lanes = <2>;
+			bus-range = <0 0xff>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
+				 <0x02000000 0 0x60300000 0 0x40300000 0 0x3d00000>;
+
+			dma-coherent;
+
+			operating-points-v2 = <&pcie0_opp_table>;
+
+			status = "disabled";
+
+			pcie0_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+
+			};
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c06000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8750-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
