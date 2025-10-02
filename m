Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41654CCA470
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 02:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu2JgjPUcAGPgdZY7WxuQcyin+nBupcmo8jlYIqOr6U=; b=Ei/syewvhPDsMk
	nAK0nBYS7ESoIWNyb0gP+Lgar04wQn2vKKDynnhqaP1z4yO1M4kH6gLUSIQbHcjt0Q0AksMakx6fq
	AFICD9JqQ9MoZ2kXnS9O16XXh6cbCwGXuIU0kcf5NESNGut0lmevONY7J9PKGhFV8wguLqwVhdGY5
	2fq0erf185a5G05WVtGmA07NTvq0Rkg5WhTmJ3tTXFfSibZbx8QC0Jwkp2kxL67cmmxikLaeO8ZRM
	vUEG36DYgorEp4URkBMBvGP263UJa+F92dtxnwxwyIP6OPD4ayjqJrvCeeA0BYPj6YWA3gB+xW5Qk
	dSeb2oW1oyLJDhi7VgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v48dN-00000009RoN-1DRy;
	Thu, 02 Oct 2025 02:01:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v48dK-00000009Rni-2TtS
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 02:01:27 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic4U6012315
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 02:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8NbEfizQUWTtDuaEiGJY++Pou4KpkObXybJBlqEsClc=; b=h/iOd7EQuMAXWcW+
	lt/DfTy7srrrVXQlpy4eHttGCQZKu+LO2EkpkiX8uW2e3SRca+ofZzGIXmgz/0JY
	YS1mTVxfh7pyzgKTdyr0Hot0NrERkRkKJS1acgTb6YtiyQNd9cxUw2dGRLUfkNAD
	+Kvicuip4oflpXRVdN4vWZdOkknvng3w7sV6kuGypfDizC0MJPdzC8q5/vHY4huL
	prPaDiz3PGnINX8xiBPPYShLRcEXoqUGhQB7lNsnI2F/tfv10xK+5ACLVr12nldp
	EqBbxwXbDnLnp0AIKv0uKIJHm28ZmG+2s5NOeVfgsUWRJTiTsJiQ0+iXaksIql48
	URsDvA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80txjwf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 02:01:24 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b54ad69f143so606348a12.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 19:01:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759370482; x=1759975282;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NbEfizQUWTtDuaEiGJY++Pou4KpkObXybJBlqEsClc=;
        b=KT9pPsdSxtWOC9m8NxI6viE5FLKptpmf1w1m859KNEymqh2WgBNlEgZ3nJ3MQxey8a
         3mQ93SlDpsJjblaPrKY0kHHj9oljJyePtIRIO45e1vlkb4WR+wtFVtzV3NilPUQrqTwz
         3Jm6ql2Hgbd/EFC8Itsq6k7bZI8KX5p/eJI0FMRXGCENxjmlj9w0CbXQkfQjhVbg4/r0
         owEwDSaAmF9wYcQKwAqLv7XoLK3NkMD3tNd8mHcuiOjh3ApWfCG/CBPQPnx2mEBA0KJc
         qdYJsaMGHImB+/UkyJ0cfT/UM9o/W4SseOIemK0p4sWwflh46lc3G5tygj2PcfRgFLec
         iJ5w==
X-Forwarded-Encrypted: i=1; AJvYcCXredURtZJMqWtOoWOXHdX55097t7WPQ36KGygt5iJi8yncpa38kMnSRc1hBlgb8MR3dsKz3SXynGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAjaxkdY+GIJVXyZKsFMDf0y1iP8dhgP5gY8Eo3nG8qOGVyKah
	65cueJsHvzcZKvt+56RNaFkejpMMZeHfEXJWgEjZNSrIrLhx2DxMWvVPN14fusYCNPFtVbfZfrC
	emzOXYOcB2nIHTqwmumv0NPppZ2OQE7wvsThKVJjDsANhHZyQw+/UOdHpG3EFSTW5ZsZv
X-Gm-Gg: ASbGnctkeMxjrDxbxVoh/yjWdj+oB4UCSJu5KD+/siBaUIYwqM7x5JSVsai8AT9IZcg
	sg39KsdiKNC4Pf0P72B/WUABK0Y/e8+qzNxVE4PdO52kgQhdIi8Jbh50PVphJUrn/mQ9hJbc47s
	9jAvUcPV1uy3K5THzYuU9ygR45cnvhQm/ltkbrF4dDGIGHiuCgn4PnoOSC+uA1kMzenf4waAlZm
	Qn0kIc59Hk/yrokQ+KDmpvyXoPO2NHpy0kIfkqxTei0aov4rrukRo044Fjt4uA4aXBJ9zzi38+9
	t2gcFmVBCm86m2xDCufqocbz/vIfTjx2Jft8CW2+PpGSR5nVeVTu0VMZFTYkOG+rac+FS4Wnale
	w9qaL
X-Received: by 2002:a05:6a20:3946:b0:2e3:a914:aa93 with SMTP id adf61e73a8af0-321e477bf0dmr7670879637.30.1759370482227;
        Wed, 01 Oct 2025 19:01:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjOOZ64bXPfAFXM3hKJDHB/mu2en9QreyGMP6Drwrt0qG8NWYPcUKAYjBPa3c+kv8YUlnAJg==
X-Received: by 2002:a05:6a20:3946:b0:2e3:a914:aa93 with SMTP id adf61e73a8af0-321e477bf0dmr7670805637.30.1759370481669;
        Wed, 01 Oct 2025 19:01:21 -0700 (PDT)
Received: from [192.168.29.113] ([49.43.226.92])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fcc45fsm999528b3a.39.2025.10.01.19.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 19:01:21 -0700 (PDT)
Message-ID: <08d64683-cea7-4e39-bde4-5b6cd213afee@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 07:31:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX3IPZZe47hXXG
 9STP+YViSNkH6EyVhf2rqA7+ql3K3eCBa0f8ePNSbz1wl7LUHJXR0eKH47sQU7BcFNnTeQ+Qs1a
 y2T3VBexfQBP09NIhK6vume1o8GebhzV1Hz+SetPH/veRL39bediVF3In8KhWLvivkSthThNIAV
 vm7pSX8+Zh1M7ix5TutYeLVXp6hEiIHV7v7EdLZF4sh9f5slcuk1n5ht95jIBYH22m1ybU0Nlhr
 xASnLoltAt8R+yISkI8AyA2QGOZH32ERfChGNviPcRKbiTk8LR/np5t0q1XmEOCUQOABfVW0uq5
 W+SZLo//DTlqr8qjW/44/hoAC9UvCXkilzljcUDP4rImmE+/gqva6pW8jmWZskTsTPS2zDwl1x/
 aO+362rKqdmk3aQS3d59IVqR7Xh+wA==
X-Proofpoint-GUID: gvg0aaf_7bo2lerfoCLpdW-PPPyhB-5Q
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68dddcf4 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=jyboLUZ+MFoqbd6eZ184Eg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=AkHrb9cOowbY_nbVBZgA:9
 a=l78PwBI5Ku7GpRGV:21 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: gvg0aaf_7bo2lerfoCLpdW-PPPyhB-5Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_190126_755166_674F6D52 
X-CRM114-Status: GOOD (  23.79  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>> and x2 lane.
>>
> 
> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> is crashing during boot as PCIe is being probed.
> 
> Is this a known problem? Is there any workaround/changes in flight that
> I'm missing?
> 
The only required change for this is the driver change in this series
[3/3] PCI: qcom: Restrict port parsing only to pci child nodes

- Krishna Chaitanya.
> Regards,
> Bjorn
> 
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 180 ++++++++++++++++++++++++++++++++++-
>>   1 file changed, 179 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 4643705021c6ca095a16d8d7cc3adac920b21e82..b47668a64bcead3e48f58eeb2e41c04660493cb7 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -631,7 +631,7 @@ gcc: clock-controller@100000 {
>>   			clocks = <&bi_tcxo_div2>,
>>   				 <0>,
>>   				 <&sleep_clk>,
>> -				 <0>,
>> +				 <&pcie0_phy>,
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> @@ -3304,6 +3304,184 @@ gic_its: msi-controller@16040000 {
>>   			};
>>   		};
>>   
>> +		pcie0: pcie@1c00000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,pcie-sm8750", "qcom,pcie-sm8550";
>> +			reg = <0x0 0x01c00000 0x0 0x3000>,
>> +			      <0x0 0x40000000 0x0 0xf1d>,
>> +			      <0x0 0x40000f20 0x0 0xa8>,
>> +			      <0x0 0x40001000 0x0 0x1000>,
>> +			      <0x0 0x40100000 0x0 0x100000>,
>> +			      <0x0 0x01C03000 0x0 0x1000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config",
>> +				    "mhi";
>> +
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
>> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x23d00000>,
>> +				 <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x00000000>;
>> +			bus-range = <0x00 0xff>;
>> +
>> +			dma-coherent;
>> +
>> +			linux,pci-domain = <0>;
>> +
>> +			msi-map = <0x0 &gic_its 0x1400 0x1>,
>> +				  <0x100 &gic_its 0x1401 0x1>;
>> +			msi-map-mask = <0xff00>;
>> +
>> +			num-lanes = <2>;
>> +
>> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi0",
>> +					  "msi1",
>> +					  "msi2",
>> +					  "msi3",
>> +					  "msi4",
>> +					  "msi5",
>> +					  "msi6",
>> +					  "msi7",
>> +					  "global";
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
>> +				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "ddrss_sf_tbu",
>> +				      "noc_aggr",
>> +				      "cnoc_sf_axi";
>> +
>> +			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
>> +			interconnect-names = "pcie-mem",
>> +					     "cpu-pcie";
>> +
>> +			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
>> +				    <0x100 &apps_smmu 0x1401 0x1>;
>> +
>> +			resets = <&gcc GCC_PCIE_0_BCR>;
>> +			reset-names = "pci";
>> +
>> +			power-domains = <&gcc GCC_PCIE_0_GDSC>;
>> +
>> +			operating-points-v2 = <&pcie0_opp_table>;
>> +
>> +			status = "disabled";
>> +
>> +			pcie0_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				/* GEN 1 x1 */
>> +				opp-2500000 {
>> +					opp-hz = /bits/ 64 <2500000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <250000 1>;
>> +				};
>> +
>> +				/* GEN 1 x2 and GEN 2 x1 */
>> +				opp-5000000 {
>> +					opp-hz = /bits/ 64 <5000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <500000 1>;
>> +				};
>> +
>> +				/* GEN 2 x2 */
>> +				opp-10000000 {
>> +					opp-hz = /bits/ 64 <10000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <1000000 1>;
>> +				};
>> +
>> +				/* GEN 3 x1 */
>> +				opp-8000000 {
>> +					opp-hz = /bits/ 64 <8000000>;
>> +					required-opps = <&rpmhpd_opp_nom>;
>> +					opp-peak-kBps = <984500 1>;
>> +				};
>> +
>> +				/* GEN 3 x2 */
>> +				opp-16000000 {
>> +					opp-hz = /bits/ 64 <16000000>;
>> +					required-opps = <&rpmhpd_opp_nom>;
>> +					opp-peak-kBps = <1969000 1>;
>> +				};
>> +
>> +			};
>> +
>> +			pcieport0: pcie@0 {
>> +				device_type = "pci";
>> +				reg = <0x0 0x0 0x0 0x0 0x0>;
>> +				bus-range = <0x01 0xff>;
>> +
>> +				#address-cells = <3>;
>> +				#size-cells = <2>;
>> +				ranges;
>> +				phys = <&pcie0_phy>;
>> +			};
>> +		};
>> +
>> +		pcie0_phy: phy@1c06000 {
>> +			compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy";
>> +			reg = <0 0x01c06000 0 0x2000>;
>> +
>> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
>> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
>> +				 <&gcc GCC_PCIE_0_PIPE_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg_ahb",
>> +				      "ref",
>> +				      "rchng",
>> +				      "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
>> +			assigned-clock-rates = <100000000>;
>> +
>> +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
>> +			reset-names = "phy";
>> +
>> +			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "pcie0_pipe_clk";
>> +
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>>   		ufs_mem_phy: phy@1d80000 {
>>   			compatible = "qcom,sm8750-qmp-ufs-phy";
>>   			reg = <0x0 0x01d80000 0x0 0x2000>;
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
