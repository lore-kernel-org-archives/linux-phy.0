Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1EBC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 17 Dec 2021 01:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwNvJwafoJW5sESKCzyCrOZozR2pqfJDHW0wn7+JR+o=; b=tRR6zIYD4U+0AF
	2GKZCz9cnTALjhNv6mPEnMrPZPuWdS5s2CW4gNIaFPGjV9OQx0H5DY+spGdEaV8MtJG0676Q6EYlO
	9rldPn3RiDx17GHf9yz3rTY5ZdC9NsJ9PJSB7rv8KSqk62uoVSy+cp36dOZ3vrr9vMGejNbZgUiN5
	RntKUx5QTFhBuS9kzAeOkkboYZQxuEiiJ1TNuZSMKQvOEu3hC+sI8Y539xbQY3xinKmNoXneH2hMy
	E8IT1aNgkDRnSBNX7JULxwpj9h/neOPlNRzl2P+kkI8G27fCB6DXFNXz0AwbVA/1uwyP7mp193MHU
	VuO4VaKNYT9HYCpzhYNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1my1xg-0088TL-Rr; Fri, 17 Dec 2021 01:23:04 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1my1xd-0088Sg-Pr
 for linux-phy@lists.infradead.org; Fri, 17 Dec 2021 01:23:03 +0000
Received: by mail-lj1-x236.google.com with SMTP id 13so831249ljj.11
 for <linux-phy@lists.infradead.org>; Thu, 16 Dec 2021 17:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=eq5THGoxW1E2ekdal8bvyw/2iHB8jcSz3DYbq2lof6A=;
 b=p5Vr0D4dLktOXTZ8X4dqOty4NncI/24lGvhnbr8U2nrI7gkjdWO17O/joB+z3cYD12
 eZpIYX7ZecRA8vcw4hVTSBfZ+T63XA6XYPao0TBO5cBDywTY5sYx+rdnYBWa/TkhZWte
 ZciplwoRvfV9hW9Y5mKIEF9boZSLUdNuD3Z8rEcfGgq/MOpmEjVoPjDlZ6MKg2aWRB0Y
 v4JPPoNz+ZgRS5qbl7nTtfs2SYiqTrIwK7+hNRrACWhAbMKJrriIneixCjAVl2vo2Rr9
 5FCfAJ+MO8zUtvv/sJ/cSxt876kKZ4g7vc3TPvEO2cigz/BR9FkHPdrsEQbs0zE7FAhw
 mVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eq5THGoxW1E2ekdal8bvyw/2iHB8jcSz3DYbq2lof6A=;
 b=spurStnvKLgiOVj000p02zpQR22mg8ehrD0Efc4JB7W3sa2c3lm7PbN/xVakZ/x3U4
 gsVG/clyAqELtlPF2itM5b9u9T1oxn/zclYW6DpYcepUM9+RzWrhCenchL/hJOYw8syx
 nGX1v8idlSB06o+BpWbEyQcvu+5CBHsEzHRoEeA6VTaWvuErE1xBi0wXSRs4lcEXbMeG
 GbPhb1UGI6L8XH2cBPvq+v4JyAQ1rrZ2SQbCihFKEVriw+cmXZd/cj/EBXHnjFMFD3gV
 lG7S6Mql9RsLJmb8GWxN1PjfRNCZFtnjRfrDYNPeUkXafooAbq+TSJlEpjCVHonaYHH6
 fh0Q==
X-Gm-Message-State: AOAM531RFVkAL/WHFoNnDCmKijmBRQVltxwNPFeGrRSpG/G2JDd6pjg3
 A1EEFl0UMJBf7w5GgSeFY8ZXtw==
X-Google-Smtp-Source: ABdhPJyEdan/sWBV1ZUcimC8twTlGYFfHGeneKKQMT74hcf8YF+ehdKGByC0u4G299U0tdCKY2wqBg==
X-Received: by 2002:a2e:9e94:: with SMTP id f20mr640997ljk.401.1639704179442; 
 Thu, 16 Dec 2021 17:22:59 -0800 (PST)
Received: from ?IPV6:2001:470:dd84:abc0::8a5? ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id g27sm1129594lfe.55.2021.12.16.17.22.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 17:22:58 -0800 (PST)
Message-ID: <fb22d573-5d29-f800-f5c7-8c061bf757b5@linaro.org>
Date: Fri, 17 Dec 2021 04:22:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v3 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Content-Language: en-GB
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Wilczy??ski <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
 <20211211021758.1712299-9-dmitry.baryshkov@linaro.org>
 <YbptmeteGVt75NuO@builder.lan>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YbptmeteGVt75NuO@builder.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_172301_910208_2E19EBF6 
X-CRM114-Status: GOOD (  15.30  )
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

On 16/12/2021 01:35, Bjorn Andersson wrote:
> On Fri 10 Dec 20:17 CST 2021, Dmitry Baryshkov wrote:
> 
>> Add device tree node for the first PCIe host found on the Qualcomm
>> SM8450 platform.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
>>   1 file changed, 101 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> index a047d8a22897..09087a34a007 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> @@ -627,6 +627,84 @@ i2c14: i2c@a98000 {
>>   				#size-cells = <0>;
>>   				status = "disabled";
>>   			};
>> +		];
>> +
>> +		pcie0: pci@1c00000 {
>> +			compatible = "qcom,pcie-sm8450";
>> +			reg = <0 0x01c00000 0 0x3000>,
>> +			      <0 0x60000000 0 0xf1d>,
>> +			      <0 0x60000f20 0 0xa8>,
>> +			      <0 0x60001000 0 0x1000>,
>> +			      <0 0x60100000 0 0x100000>;
>> +			reg-names = "parf", "dbi", "elbi", "atu", "config";
>> +			device_type = "pci";
>> +			linux,pci-domain = <0>;
>> +			bus-range = <0x00 0xff>;
>> +			num-lanes = <1>;
>> +
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +
>> +			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
>> +				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
>> +
>> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi";
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
>> +					<0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
>> +					<0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
>> +					<0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> 
> You need to pad these with a couple more zeros, see 0ac10b291bee
> ("arm64: dts: qcom: Fix 'interrupt-map' parent address cells")

Not quite. sm8450 does not define its (yet), so GICv3 node does not 
define address/size cells.

> 
>> +
>> +			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
>> +				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
>> +				 <&pcie0_lane>,
>> +				 <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_PCIE_0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
>> +			clock-names = "pipe",
>> +				      "pipe_mux",
>> +				      "phy_pipe",
>> +				      "ref",
>> +				      "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "ddrss_sf_tbu",
>> +				      "aggre0",
>> +				      "aggre1";
>> +
>> +			iommus = <&apps_smmu 0x1c00 0x7f>;
>> +			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
>> +				    <0x100 &apps_smmu 0x1c01 0x1>;
>> +
>> +			resets = <&gcc GCC_PCIE_0_BCR>;
>> +			reset-names = "pci";
>> +
>> +			power-domains = <&gcc PCIE_0_GDSC>;
>> +			power-domain-names = "gdsc";
>> +
>> +			phys = <&pcie0_lane>;
>> +			phy-names = "pciephy";
>> +
>> +			perst-gpio = <&tlmm 94 GPIO_ACTIVE_LOW>;
>> +			enable-gpio = <&tlmm 96 GPIO_ACTIVE_HIGH>;
>> +
>> +			pinctrl-names = "default";
>> +			pinctrl-0 = <&pcie0_default_state>;
>> +
>> +			interconnects = <&pcie_noc MASTER_PCIE_0 &mc_virt SLAVE_EBI1>;
>> +			interconnect-names = "pci";
>> +
>> +			status = "disabled";
>>   		};
>>   
>>   		pcie0_phy: phy@1c06000 {
>> @@ -763,6 +841,29 @@ tlmm: pinctrl@f100000 {
>>   			gpio-ranges = <&tlmm 0 0 211>;
>>   			wakeup-parent = <&pdc>;
>>   
>> +			pcie0_default_state: pcie0-default {
> 
> Binding states that the node name needs to have the suffix "-state".
> 
> Regards,
> Bjorn
> 
>> +				perst {
>> +					pins = "gpio94";
>> +					function = "gpio";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				clkreq {
>> +					pins = "gpio95";
>> +					function = "pcie0_clkreqn";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				wake {
>> +					pins = "gpio96";
>> +					function = "gpio";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
>> +
>>   			qup_i2c13_default_state: qup-i2c13-default-state {
>>   				mux {
>>   					pins = "gpio48", "gpio49";
>> -- 
>> 2.33.0
>>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
