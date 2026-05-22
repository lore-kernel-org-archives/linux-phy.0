Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C81CD5BAC
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 09:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJLt1zD6taTNLLyxp1HxrV6fIOk8UjiRvYZcz0MXnuo=; b=3H8QIOsTKHdalw
	+Q8BdKL+ABCY0ju4cyVfb5z0GBGA3bPZrPEXUT35uc4Kz1HAcwYlclTc169zmhpWL2KiQBPfvTzyx
	lxZCm2gJKeEcjmFv3eDqmSKKZ22ZhJZwk8y7VUBXlItqtYgEw5TFFEEwPcuaxaKgkwZjWVW2Snv2f
	pvcCRQP92u3S7mPdiX4qH4Z0zsd2ZFlDYE1eHRPph+HGaMEUeDUV6y5PJ6pwEw6V4zH2f8Ba4pS69
	ZeBsJhTOTN4UU1M6vOy5MfBbjPdrvgwrAl4eL4GNQe8NLl8hsv4GPf01mRObQgnpiCiFy7kq5Ejd7
	slRgLyz7VhUI7w9vPEgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQM0o-0000000AInz-0A6Z;
	Fri, 22 May 2026 09:17:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQM0l-0000000AIms-0wjb
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 09:17:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M8mlN2399407
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 09:17:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AzvTTIr3cJGUQwmNxyvJg4Lnn3zUHh4faG+9J1SDeU0=; b=Ea7evTwvhGg3h4GB
	byPpTgL7JAzMdGkJwWSTbOsT8P8VAa8n4DxEFfmKHHD9/eTWrCg2Y7jNTtZmgRWw
	jzqHX0KdeSkKgZmgZkujA4mazWYR4ao5khAgwrb0bs9t0LjUfYJihtasCK78bbO9
	q9p8/ORoU0LCw6fZJDo1JZf+AU1xoYsvX2qOGRESonCyR/lf+ShrhKNit/N9cUaI
	PE3+NI8MfKHOUyFGiiZ+KiwNnbYeCrtIp3LjPo+EoFjXJw2B10Mv8CKi7P0p5RCn
	Tyfna8yy0FQ5JkgP6wQ5lwfEuWgOqqA2WyFGWppOzqRZVtydGy1iILboXfE8pn2s
	ni3bJQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea5p9ukqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 09:17:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b458add85aso77155675ad.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 02:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779441462; x=1780046262; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AzvTTIr3cJGUQwmNxyvJg4Lnn3zUHh4faG+9J1SDeU0=;
        b=SvFTtrB72wBoaAbc6MQ8jv7gL4qX2z4jXfB64XM3z+8yleSPK7P9ry0ICWI807rPdQ
         sApsIJ7sTn/xxIgmde6TBKbfQooVRfGYr58K6Q+UBkkEsb05w0GpM52Mxr2p+yubFSow
         RSq/oEHLYCSwmkyuMZrWVMz4QNIP/q0iywHOI9Xpebm9au7WhsIbmicTLg/JQuWTa0XG
         08bnR0FyIOEgG9lDRl/X3VNl/Wi1KOdTKzUGHwDW2kRbweJaJm+dH+Puw2bc5wROGe6o
         I0HYvwShddn0YaZ1BHnyy8o8PJr8OI7ncTMwW3fIcVoHAB42oL+/XDMQ11NPVytrhI5F
         Iu+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779441462; x=1780046262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AzvTTIr3cJGUQwmNxyvJg4Lnn3zUHh4faG+9J1SDeU0=;
        b=Ncwcc0e94dWBNRNUMBaYP7FknQhIb47j/BsMEGYOLHls7pCgjcMp11Ge5qZkzUkLEr
         mVV6fobsREed2Ia9gkI3HXhEDf6AkA0+WRnEwEdNfZ/J0W3pO1d+9eyHjnep4gJCav7g
         vsZH7sQKNTCdFarnC8NDbOk3E80AEopppUCR57wD3bVJAe194h2soCDbMnjIqwSEnoau
         G9ebaxf/683MlshKUYS56ZsPrwb3ZomW9sPUB6HODm4WWNeLnAkryFlmyoQMEXC8IbBK
         WHibT5a8KZcpuZpxwenT4tmNBwh7Cr6KKalS0mGLMisQABf4sdEFaQlMXpQJA4f6N+6I
         9A6g==
X-Forwarded-Encrypted: i=1; AFNElJ8BPXIM12BCsnHftFpP0lh5Hk1P3yRUho5Pxf5/F5NDbXRU+VB64B153lYacU3eeDU5SiTJM5oYB74=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCX9qu5Q63/COiKSHjd0ZslUgmzvygk1RfpAAfyie5pwfLKs2C
	x3hC40LHxsXJW29Hviaoq62J+UR/Oo3Z1C3A2CmNng61gEE/rqTzMl2AaKSoMW3EwQV5djhMvf0
	pYLsjdZsgmp3Vy1x4jXX1D+6W/axI3D2GWQdji6ILPcRDtp6iF7Hq8pghxi6srz0ryIqk
X-Gm-Gg: Acq92OFh18GBYv50w1W2RWOdY+9fv8V/nnTPyQfp2keYtsCuDgahMchTdDsBAeSKqdg
	ZadVLfmspkZLX1ePhJfjnTMRQXmRtA+57pFtZvhyLFdsZgjgLhdvBjh5q4BDYDY7yyJwFnMptg6
	sSmT/reW4Mw6EtuiHNML2ue32/Faw3FI3dDCu7WSUWbGrsnslT87jjAwVBvE0YSA3EXs3UAwWMJ
	2S9NqByUljjDHI+wKN+Mm1jsdWjjQEC2XplDShF72LCgIrn7qbAq2/6bz5WyjCdsDICbgS4hvtD
	0VRdKdY0WdPFMlOEnMuo/w1BWn2Buv/JWe+7vPr0O2W7Y2TRSC7aD3kB+GOGPXsMIs7vKyQhnyU
	Kp7YrywgwkFuCVSShqa/t6aCxjSJtErRvu7GM8AwTec5s/8tjVHeu0g==
X-Received: by 2002:a05:6300:6d8d:10b0:3b2:8675:47ef with SMTP id adf61e73a8af0-3b328ed49damr1680130637.45.1779441461900;
        Fri, 22 May 2026 02:17:41 -0700 (PDT)
X-Received: by 2002:a05:6300:6d8d:10b0:3b2:8675:47ef with SMTP id adf61e73a8af0-3b328ed49damr1680096637.45.1779441461364;
        Fri, 22 May 2026 02:17:41 -0700 (PDT)
Received: from [10.92.193.94] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84165003369sm1548246b3a.57.2026.05.22.02.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 02:17:41 -0700 (PDT)
Message-ID: <1cf87303-2394-454b-9541-4a3ea4f3ff4a@oss.qualcomm.com>
Date: Fri, 22 May 2026 14:47:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Eliza PCIe
 Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-2-97cdbe88389d@oss.qualcomm.com>
 <20260522-calm-bug-of-kindness-2dfae2@quoll>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260522-calm-bug-of-kindness-2dfae2@quoll>
X-Authority-Analysis: v=2.4 cv=DKm/JSNb c=1 sm=1 tr=0 ts=6a101f36 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=2kbbHuhoKpOpG5pfR5YA:9 a=YgbPQC_rjE-wQlsd:21 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: MlK-B8aCzMTFuHPzzBMURcYAqysEjINR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDA5MiBTYWx0ZWRfX/r6RILhf7OD2
 T5sgnQRF6+9AXCN61c/hhXu7GhLBtqUxemgU/bsa6+ZnSfoll3t48TYGd8e3UPocx809y4t3xLb
 aITZv7mgRqQYGIRRJMbm7PHe6Z75VPdfd38WRfcES10BlYyuWarppscFtEA5snKSJVKzaSkL63M
 dlHGCAPkmW8aXWzXHq/12KvPh4UCOnBE1oUiMgsJajRh1OTxoCPJb6Nr+tERdxRmf6oh1Tcluiz
 V7YMrP7QFDImxlOnUjvZPsNlYuO429rWfWe28LBsFfCjJxVDMT4rkphyE08lCQiMd40p2NOcmx7
 T3Fh5ZhfrvvwE3Gj4WU9Seklx8cMZR3dbCQXHNE3WGu32OIcC4Mz8XIS5NlBV1mdzBR+Z9M79zH
 BJo2u64zhPusJ5Ym5AJv/CeunWhPViUzMSGL8QawuMUMvmEpHpV5egtTH25iEgvcz7guLVWJHpp
 c5ph3pkuI/3St4ABEQw==
X-Proofpoint-ORIG-GUID: MlK-B8aCzMTFuHPzzBMURcYAqysEjINR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605220092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_021743_277704_F95FBEF9 
X-CRM114-Status: GOOD (  12.94  )
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



On 5/22/2026 12:20 PM, Krzysztof Kozlowski wrote:
> On Thu, May 21, 2026 at 07:35:30PM +0530, Krishna Chaitanya Chundru wrote:
>> +description:
>> +  Qualcomm ELIZA SoC (and compatible) PCIe root complex controller is based on
>> +  the Synopsis DesignWare PCIe IP.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,pcie-eliza
> All new pcie compatibles moved to correct format.
Ack, I will change it to qcom,elize-pcie
>> +
>> +  reg:
>> +    minItems: 5
>> +    maxItems: 6
>> +
>> +  reg-names:
>> +    minItems: 5
>> +    items:
>> +      - const: parf # Qualcomm specific registers
>> +      - const: dbi # DesignWare PCIe registers
>> +      - const: elbi # External local bus interface registers
>> +      - const: atu # ATU address space
>> +      - const: config # PCIe configuration space
>> +      - const: mhi # MHI registers
>> +
>> +  clocks:
>> +    maxItems: 7
>> +
>> +  clock-names:
>> +    items:
>> +      - const: aux # Auxiliary clock
>> +      - const: cfg # Configuration clock
>> +      - const: bus_master # Master AXI clock
>> +      - const: bus_slave # Slave AXI clock
>> +      - const: slave_q2a # Slave Q2A clock
>> +      - const: ddrss_sf_tbu # PCIe SF TBU clock
>> +      - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
>> +
>> +  interrupts:
>> +    minItems: 8
> This should not be flexible. Neither 'reg'.
ack I will remove minItems
>> +    maxItems: 9
>> +
>> +  interrupt-names:
>> +    minItems: 8
>> +    items:
>> +      - const: msi0
>> +      - const: msi1
>> +      - const: msi2
>> +      - const: msi3
>> +      - const: msi4
>> +      - const: msi5
>> +      - const: msi6
>> +      - const: msi7
>> +      - const: global
>> +
>> +  resets:
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: pci # PCIe core reset
>> +      - const: link_down # PCIe link down reset
>> +
>> +required:
>> +  - power-domains
>> +  - resets
>> +  - reset-names
>> +
>> +allOf:
>> +  - $ref: qcom,pcie-common.yaml#
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,eliza-gcc.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/interconnect/qcom,eliza-rpmh.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        pcie@1c00000 {
>> +            compatible = "qcom,pcie-eliza";
>> +            reg = <0 0x01c00000 0 0x3000>,
>> +                  <0 0x40000000 0 0xf1d>,
>> +                  <0 0x40000f20 0 0xa8>,
>> +                  <0 0x40001000 0 0x1000>,
>> +                  <0 0x40100000 0 0x100000>;
>> +            reg-names = "parf", "dbi", "elbi", "atu", "config";
>> +            ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
>> +                     <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x3d00000>;
>> +
>> +            bus-range = <0x00 0xff>;
>> +            device_type = "pci";
>> +            linux,pci-domain = <0>;
>> +            num-lanes = <1>;
>> +
>> +            #address-cells = <3>;
>> +            #size-cells = <2>;
>> +
>> +            clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +                     <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +                     <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
>> +                     <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
>> +                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
>> +                     <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
>> +                     <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
>> +            clock-names = "aux",
>> +                          "cfg",
>> +                          "bus_master",
>> +                          "bus_slave",
>> +                          "slave_q2a",
>> +                          "ddrss_sf_tbu",
>> +                          "cnoc_sf_axi";
>> +
>> +            dma-coherent;
>> +
>> +            interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 535 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 536 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 537 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 540 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 653 IRQ_TYPE_LEVEL_HIGH>,
>> +                         <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
>> +            interrupt-names = "msi0", "msi1", "msi2", "msi3",
>> +                              "msi4", "msi5", "msi6", "msi7", "global";
>> +            #interrupt-cells = <1>;
>> +            interrupt-map-mask = <0 0 0 0x7>;
>> +            interrupt-map = <0 0 0 1 &intc 0 0 0 564 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
>> +                            <0 0 0 2 &intc 0 0 0 565 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
>> +                            <0 0 0 3 &intc 0 0 0 566 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
>> +                            <0 0 0 4 &intc 0 0 0 567 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
>> +
>> +            interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
>> +                            <&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
>> +            interconnect-names = "pcie-mem", "cpu-pcie";
>> +
>> +            iommu-map = <0x0 &apps_smmu 0x1480 0x1>,
>> +                        <0x100 &apps_smmu 0x1481 0x1>;
>> +
>> +            pinctrl-0 = <&pcie0_default_state>;
>> +            pinctrl-names = "default";
>> +
>> +            power-domains = <&gcc GCC_PCIE_0_GDSC>;
>> +
>> +            resets = <&gcc GCC_PCIE_0_BCR>,
>> +                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
>> +            reset-names = "pci",
>> +                          "link_down";
>> +
> Drop stray blank line.
ack.

- Krishna Chaitanya.
>> +        };
>> +    };
>>
>> -- 
>> 2.34.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
