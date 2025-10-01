Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A40CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 23:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxhQQFT8MBaNg6PVOyAGF1rfdmYNGaRUOIp8kHJ3JhQ=; b=e30/SXcKuTwZ3L
	cysJmbHNjcOPJQTLzoXZY8pyUzaEpUMJATzqj8Ez8MB9Zi2puZ5LtYO7P5NvMomJXSldlkZA5Cx10
	jNXyQFYZ7SiErvDZCYF9hvUd3RvHfv2lHrkLV9kWNdi4J3g66T81Z6rMLIwdQv3dUcWiPsEfnEqfM
	gOpFQ1w/wObgFrB29s9BUyzxQnkzCCsNXsy6C4bwloOSZWiLk22jA1tlOpvxGwm/VtPGQb3YAb1lY
	XrYObb/1c4aBTUDBcDXJxF4qS8wj7yWnJCmrTp7eQQj8MCcfRoL0VutmsafaZERGhzqtFOOWJfER4
	Qg0IqbCohpWttdMwEGDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v46Ni-00000009FiK-3Dha;
	Wed, 01 Oct 2025 23:37:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v46Ng-00000009Fhu-02wj
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 23:37:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ibs64018665
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 23:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kUhpV5L9OVSY0jP0UCvDdukq
	clE+5qyGR802XH0NEj0=; b=MzATrGwFoZwGj85rvlhUJAGeRvpuIBuJ1gw4quo6
	eeAENKlTkHIoSvkMnAmdtv6gU8EvGkUNeA+Q1JmwuLfQEKa/63Dy+wlXj6AtI2IE
	FcrsyyPRTBzt4k0zfTDHGYe3Gey2jUQXlOA5QgiO8sh9GIGVxpCAYH+oG76jaK+w
	5+NRyvV3cDcnb+/YiLnZFEFp9mwyelq6FRaJe+O734QdjPXF1Pm06P7dAVxLowFz
	KI0Swx/Aygd7llojuoqLvCVZLyf0csBAnWk/sejEPJaPlHCZ86iMyEerIr+0qi9y
	cffKt8abX5ZD7ddiWeF8L+SwRoyhu7nmHQNVaomHWx9oMw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1af57-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 23:37:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-277f0ea6fc6so7000755ad.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 16:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759361825; x=1759966625;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kUhpV5L9OVSY0jP0UCvDdukqclE+5qyGR802XH0NEj0=;
        b=w+rb5kKhR5w1QGqW0MAZeEP6bkK+x17GHzN1SLa2ZjUdHsLgkPjvkIqy1UE8qBFhuy
         2zTzQwM0f8yYxO0XlbjkbaMRSuTh07EElBljsmk5Ss4nNRCicyy6eecICCfkp5Vvj/yF
         G7f1sl26cy12IlLmFJsk2rs72Pp1wgfkBc99KPFzBFZW7/arUu6UGfVABKZqAmFNq0f+
         BctC6mGhi/jACYTxmoPKS4zZJlMis6SejsPNqHyyaZeSQjYLcKlq2wtB4Lg7OmSFLkco
         tRL04sjThSTzg3NITZufQCTyB3c73jdLDNgoWqlPOw3RXgD3TGP1WmvdSHXOR446UFVy
         IDRw==
X-Forwarded-Encrypted: i=1; AJvYcCUuEQ/FkavKFRvPs+rY3el2km4UP4G5bWWRypnnza00fX4Hwnrz6r6ol/5hswtUILvu16etrKIjhqk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMGcK4iiZhPx7S/mS9JRCRnvjf0RA4He4X2JNuJBsejgg89Rxs
	2w1GS+wuZk8aiGSoBE5bqS/fWMPAIF6YEsquAPxHCd8VBwRXViPbpROUDnxjJwTGddtvfYXC8ut
	/pVtVWviWYiIwPYmmQIdz3NOfo6qJEp421TmeVERm7pIsVqNklHMKVDCI3xWCqTLX1Z93
X-Gm-Gg: ASbGncvbaP9SXtSlbFBSjoSwTA1roFSciw/qeGn4u1GuvTMiwAS+jmCK+38j52mf7ef
	q6mOeGsr7C3PcUElP/yDvoenUR8D/Ccig1aAsUUzvle5E21SuiJrCYH1FWwqcnLso45FN61hhhx
	7mk1gcWcpJaSbTICF9ykNwwXFJskPEAifkhvoBtN+e11GbvkX+KltHE/Uz7ZL9iJB9arTd2vSEc
	W1G+fFhQfpo/eN5OODZRnI+HejeCf/QH9BFhsv/TLOkRXt7vStQrRe0h9NEKhqeVdybxswI6nrD
	fuHDXyJkSYYy1IyL9J6OzKx4lvQsyheYcoEJSarnNnE8QgazRtwgoUeduD/lfjUAFpzmPXQTdNG
	kOM6iFjLCO12PmTMU4N0ODnnNUQ2o
X-Received: by 2002:a17:902:82c6:b0:269:a8a8:4029 with SMTP id d9443c01a7336-28e7f16792bmr52107335ad.5.1759361824788;
        Wed, 01 Oct 2025 16:37:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhsy+qF/B38JhyqIfiaawE+CjEz1XsZfy+/GEYo2B04BMyD9Lk33BJRu/DQ31TIUc3DOq43A==
X-Received: by 2002:a17:902:82c6:b0:269:a8a8:4029 with SMTP id d9443c01a7336-28e7f16792bmr52107025ad.5.1759361824293;
        Wed, 01 Oct 2025 16:37:04 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1280a1sm7543645ad.51.2025.10.01.16.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 16:37:03 -0700 (PDT)
Date: Wed, 1 Oct 2025 16:37:01 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
Message-ID: <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68ddbb22 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=yW6qr2ef8xeCN_ra_UgA:9
 a=xF2dmcnjyTH3buFl:21 a=CjuIK1q_8ugA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: fJUnzRWrYsLeNpZ95upSLaTGj8-_aKyx
X-Proofpoint-GUID: fJUnzRWrYsLeNpZ95upSLaTGj8-_aKyx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfX3nFpbCI4g5oQ
 ysEnG6I5+HWXbYyxqUH2MfRDSDGqpmpiUwOHI/vrC2djiSfAIYlIwu5+hns+yRO82FE6r+3whjE
 SWYNmD0EttJAOotSxUf4Q0WZ3ml/i6W9q2c3mN1R7oq42nrvSZkxzPCDywb92CQGZYiUOLLJ1Bv
 mvXIjO9H6D+AS/4JH9EuwOKgC6zm/aJS4qHFGxr60LuVuEa1Z7DW3ECt/LMwjIfGI2q7KLJ9adr
 WTsgmx9PxPVZr2ndSVYDfZMMZ/12qQOfvwADW8R1BVRUf3A0Os46wEtym7cg69vD5vBEoy0my5t
 EtHm2e7EhiP2QWZBGqLijFf8NEgWDFCnvqrHPU1HbJ6ctW5z9ghiRLnFP/hRL8IbZHKy+CnEpgY
 NFw4fkxHn1iCVx/iSskKLswYa927Rg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1011
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_163708_060499_39593002 
X-CRM114-Status: GOOD (  23.00  )
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

On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> and x2 lane.
> 

I tried to boot the upstream kernel (next-20250925 defconfig) on my
Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
is crashing during boot as PCIe is being probed.

Is this a known problem? Is there any workaround/changes in flight that
I'm missing?

Regards,
Bjorn

> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 180 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 179 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 4643705021c6ca095a16d8d7cc3adac920b21e82..b47668a64bcead3e48f58eeb2e41c04660493cb7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
>  			clocks = <&bi_tcxo_div2>,
>  				 <0>,
>  				 <&sleep_clk>,
> -				 <0>,
> +				 <&pcie0_phy>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -3304,6 +3304,184 @@ gic_its: msi-controller@16040000 {
>  			};
>  		};
>  
> +		pcie0: pcie@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
> +			reg = <0x0 0x01c00000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf1d>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x1000>,
> +			      <0x0 0x40100000 0x0 0x100000>,
> +			      <0x0 0x01C03000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x23d00000>,
> +				 <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x00000000>;
> +			bus-range = <0x00 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <0>;
> +
> +			msi-map = <0x0 &gic_its 0x1400 0x1>,
> +				  <0x100 &gic_its 0x1401 0x1>;
> +			msi-map-mask = <0xff00>;
> +
> +			num-lanes = <2>;
> +
> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
> +				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ddrss_sf_tbu",
> +				      "noc_aggr",
> +				      "cnoc_sf_axi";
> +
> +			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "pcie-mem",
> +					     "cpu-pcie";
> +
> +			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
> +				    <0x100 &apps_smmu 0x1401 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_0_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc GCC_PCIE_0_GDSC>;
> +
> +			operating-points-v2 = <&pcie0_opp_table>;
> +
> +			status = "disabled";
> +
> +			pcie0_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 2 x2 */
> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 3 x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +
> +				/* GEN 3 x2 */
> +				opp-16000000 {
> +					opp-hz = /bits/ 64 <16000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <1969000 1>;
> +				};
> +
> +			};
> +
> +			pcieport0: pcie@0 {
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +				phys = <&pcie0_phy>;
> +			};
> +		};
> +
> +		pcie0_phy: phy@1c06000 {
> +			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
> +			reg = <0 0x01c06000 0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +			reset-names = "phy";
> +
> +			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie0_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		ufs_mem_phy: phy@1d80000 {
>  			compatible = "qcom,sm8750-qmp-ufs-phy";
>  			reg = <0x0 0x01d80000 0x0 0x2000>;
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
