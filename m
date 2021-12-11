Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5717C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qp3N0PYXLc+FSZprdPkINPngYfNskEhqPYGc6QhKlhE=; b=SZhynfcsOchMkE
	hu8bNv5ad1AMLrHAOjiEEScFKvwwtr1HO/UMiqVAXmsuZNpyO3Ul4VYGu10q9w5W/muHOe5kL3YVw
	wxvIEExoI/ax1VdPp/zrHHOLllUoId7BB0j07LSdD93nGO+2rK3zie6dacoiI97lYOJainD4RhnFZ
	tDMv+uyCKI2a4XP2ddC5PZQQMdDAtzBwCuKLEMk8/MtYA0v7WMvTLAtmQCYymhYNRWN1hvDTZqVO9
	yG2ghwPbUFh28Z8kQwmwwm3mN9dkFFfVBphIuRmonjXAxFSCRHy9AUCypBPaynjA0OdomAFOOE89T
	h0ArDG8lFFQf2U6epS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvs3w-004RPR-2k; Sat, 11 Dec 2021 02:24:36 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvs3s-004ROE-Te
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:24:34 +0000
Received: by mail-lj1-x22a.google.com with SMTP id u22so16171509lju.7
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=46Capt1NdMKRXfeHqWY9CqoHe0Vz4X6baJbRZWInt5g=;
 b=ti1hD/EkNCYesIDwRgGRY9sPsXSsrTRQmYeNaTUnCnXp8sSe9EG0joA0B3Oe3ND4Oj
 s6ZfxutlIJldF933/PeZnZ7v6zSFpzCAbcx0bQvmvH0Og2NwNh5cdoSZRQG0XhSGKqtb
 f3sv24TxJLtBYT4c/TyZW/oayqqIMGrzcFNFy+5qEH2G5qN2dLhg8hCtX97Yeg1ZH8r2
 iK7iSnOvJj2fr4IN3aejT6HrGSR/iONvz3g7eG51z/IRKaDE76L7XLic9U/fcr6KS/gu
 6hMTmIYKAerTR3gVpzI7m475G9f2k6xy8aID2CUfgRMNbga72MnVCk3RQEj92k35mtV4
 LBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=46Capt1NdMKRXfeHqWY9CqoHe0Vz4X6baJbRZWInt5g=;
 b=MVHhTXP0AaZuBu/9sA5/CzZ9EaOKnHcbbr5ZYAfjSoRRAb40XMYGrq9PpxUyt9WAM7
 t1Qttgzsr+UWcas+MNv9kuzxJaFF11McP3h4zt0eL9Cdl/9ympbuaCiXGMiC45dwCTAh
 wiFOSwGorDYyd0M0cA6XjOS4nFsfJcU/4Yt64aZ3qdjO/8G+8e3L1eL3+8CEbCUHSCk1
 FOdtxuLxJECe2h7rHFuZb24ViYUZcMqVAGDawM6Yq4EFjVqKApF8xskicjUNpfQ6jisY
 lBqbu04cXphGRag8gcBozpajyyzFZ5VReoCyMzt/o/niXPeFazKme7FsFqE0xALQ6+Pb
 fDUA==
X-Gm-Message-State: AOAM533tGRPbvJJ7xKAYgRy0j0eHOyt/kh3N6lwhijBfGPkq53WxfhFi
 4pFLj84YrYX5GXHEU7wR5/KWBA==
X-Google-Smtp-Source: ABdhPJxWXy+bbDnhSbbazsV7daUAe9M0vB2j9JkY07f36OuWyVg5U2Z1osNm6mSsViXx0kozYju3Xw==
X-Received: by 2002:a2e:3304:: with SMTP id d4mr16027150ljc.377.1639189470883; 
 Fri, 10 Dec 2021 18:24:30 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m8sm475492lfq.27.2021.12.10.18.24.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Dec 2021 18:24:30 -0800 (PST)
Message-ID: <c8f4298a-a229-c4a9-0f04-9c326ba116a1@linaro.org>
Date: Sat, 11 Dec 2021 05:24:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
 <20211210120644.GH1734@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20211210120644.GH1734@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_182432_991921_81F6B136 
X-CRM114-Status: GOOD (  16.24  )
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

On 10/12/2021 15:06, Manivannan Sadhasivam wrote:
> On Wed, Dec 08, 2021 at 08:14:40PM +0300, Dmitry Baryshkov wrote:
>> Add device tree node for the first PCIe host found on the Qualcomm
>> SM8450 platform.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
> 
> Wondering if this configuration varies between boards. If then, this should be
> moved to board dts. Other than this,

Judging from other platforms, these GPIOs will be used in this way by 
most if not all of sm8450 devices.

> 
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Thanks,
> Mani
> 
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
