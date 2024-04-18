Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D91FAC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 18 Apr 2024 15:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/JATORRPEvcGAgyij1B8zbNYkTatBvyY/KLu50r7xE=; b=l9J/hvTZm8jKvS
	ZFECMFp0Ofl7BqqUg9FStfBrJFzo/Ik7uXtT2xGx6FJQZdUsfcZEhTharMVA211m60VqruUIR/uqf
	NQPM4bkkXIitObwNvPxA9h7QQVDBmX2VLXtawCEkD73+ONTGJmGmYAuanmudImnURjAxYps6X/pZv
	rnuvw8J+k11sLr6/vxPj6hNfzoZyw40RFLHQiUNcknw1FHNmvNSiMCGzLsSpDtIFQRywNUCkMQGtR
	c7KaywkiwZMc5wkIyESPGxbcnKm+6XvetKjdKa9I7dduHtFBCcgzErPnKa5+lOVpOGvE/+8DUZ2YO
	ApS4Vy4G6xhRQEA66OaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTlT-00000002om1-1pPf;
	Thu, 18 Apr 2024 15:33:31 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTlQ-00000002okh-2emD
	for linux-phy@lists.infradead.org;
	Thu, 18 Apr 2024 15:33:30 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5a49261093cso512113eaf.3
        for <linux-phy@lists.infradead.org>; Thu, 18 Apr 2024 08:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713454406; x=1714059206; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0PpqV3h5TqPps9cVfBqAG1UcArnq9DB4nfERwYi+F10=;
        b=UWvS9TTfIAJ12r1ZkO0M+4Z3PlgfpQZqPUUd24MJSSIs8FsF8nCJZmVsr/Lv8gvK+3
         fHItGQrfHpVWBpxvR0fa0J7q5dRGssEYD08b32nEsOcpocotEOFqM8J8ojJYRjNLdU7d
         xAXpVIr0le/gEsROEQrIatnbeQQNDBGJ1YayMc3s2tA6gqFr2SjdKG3AfgoT/XbfZgMc
         9lAWvRQ/K2NjO2lVASPO8GYYGV6JGMcUfuXds+4LngXLIc3DtfoOO6Jez99yjlv5FfDS
         RPDzAFYDXOS111FV6TD9+UF7JVYu4CHFqhqIjwIv11j5IiA7p1mxmbByYnTFqcHkFLFf
         B7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713454406; x=1714059206;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0PpqV3h5TqPps9cVfBqAG1UcArnq9DB4nfERwYi+F10=;
        b=wWFgNT4koM0gf+v4YmiIDs53FmcQdt7xYglqUSDHoHLInx/3eTUpnNRyu7M0a/dr3m
         KNuhxVnBRx7in/bNGfpVcttnk6XyTJss9B21I+AgjvYTMzVg5gzkx9i4YOeLcwTRbPxS
         KtEfsdbwlNLCQ5Vy4FZurcNg1m55er1RChDZ8fZKaL4ovtN7ADF/TPbPPmd7hNifhACE
         ox0Umo0fxBDAzqYieP+vr5SGSzAC4/ktnAVhXjyFN1qXn/eNEmYchBeCnp/ZlbAdiov+
         8MAbRqf1xeiz7oO0jkXu3nUhWc2nklX3mOv2Lr++HFLjPXFam3VSRjU0SiWyI4hwDmvT
         fVMw==
X-Forwarded-Encrypted: i=1; AJvYcCXvp9Gh692p6j4yEBG1eApiUREOtjH8uw2mu4pBLoH3qkvAKbGTDOGQvb7os3QjmaC0T8BV8eu4YZupFulTlsGHHfoPhjPSMs4jSKSxiQ==
X-Gm-Message-State: AOJu0YwtP/Dv2ejx95kcPcIZese2Afsavdq4bEKh72vpKt0KoLxZBCd5
	hEcn6Uxq1HmDdBFCk8Bms8vA1kd/42Xv/VNigzTK3ujbRSA9h8Ql
X-Google-Smtp-Source: AGHT+IFPSo0EiZkOCg4SbYDajm04Bi8eymG+RVOa0yqnQTLBlt5WMDawfM15TlYrRZA1R3HZD5ZEcg==
X-Received: by 2002:a4a:98c8:0:b0:5ac:9ece:a7c with SMTP id b8-20020a4a98c8000000b005ac9ece0a7cmr3660118ooj.5.1713454405693;
        Thu, 18 Apr 2024 08:33:25 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id bu10-20020a0568201aca00b005a4799f5428sm421440oob.21.2024.04.18.08.33.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 08:33:25 -0700 (PDT)
Message-ID: <e8957b07-692f-7d38-e276-b0e3791d31f4@gmail.com>
Date: Thu, 18 Apr 2024 10:33:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: ipq9574: add PCIe2 nodes
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-8-mr.nuke.me@gmail.com>
 <20240417073412.GD3894@thinkpad>
From: mr.nuke.me@gmail.com
In-Reply-To: <20240417073412.GD3894@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_083328_712477_2517D725 
X-CRM114-Status: GOOD (  20.37  )
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



On 4/17/24 02:34, Manivannan Sadhasivam wrote:
> On Mon, Apr 15, 2024 at 01:20:52PM -0500, Alexandru Gagniuc wrote:
>> On ipq9574, there are 4 PCIe controllers. Describe the pcie2 node, and
>> its PHY in devicetree.
>>
>> Only pcie2 is described, because only hardware using that controller
>> was available for testing.
>>
> 
> You should describe all the instances in DT. Since the unused ones will be
> 'disabled', it won't affect anyone.

My concern with untested but "disabled" descriptions is that someone may 
think it's supported, try to enable it on their board, and run into 
issues. Theoretically, we could describe pcie3, as it uses the same 
gen3x2 phy.

The pcie0 and pcie1 use a gen3x1 phy, which I do not support in this 
series. I would have to leave the "phys" and "phy-names" for these 
nodes, leading to an incomplete description

Given this info, do you still wish that I add all other pcie nodes?

>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 93 ++++++++++++++++++++++++++-
>>   1 file changed, 92 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> index 7f2e5cbf3bbb..f075e2715300 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> @@ -300,7 +300,7 @@ gcc: clock-controller@1800000 {
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> -				 <0>,
>> +				 <&pcie2_phy>,
>>   				 <0>,
>>   				 <0>;
>>   			#clock-cells = <1>;
>> @@ -745,6 +745,97 @@ frame@b128000 {
>>   				status = "disabled";
>>   			};
>>   		};
>> +
>> +		pcie2_phy: phy@8c000 {
>> +			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
>> +			reg = <0x0008c000 0x14f4>;
>> +
>> +			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
>> +				 <&gcc GCC_PCIE2_AHB_CLK>,
>> +				 <&gcc GCC_PCIE2_PIPE_CLK>,
>> +				 <&gcc GCC_ANOC_PCIE2_2LANE_M_CLK>,
>> +				 <&gcc GCC_SNOC_PCIE2_2LANE_S_CLK>;
>> +			clock-names = "aux",
>> +				      "cfg_ahb",
>> +				      "pipe",
>> +				      "anoc",
>> +				      "snoc";
>> +
>> +			clock-output-names = "pcie_phy2_pipe_clk";
>> +			#clock-cells = <0>;
>> +			#phy-cells = <0>;
>> +
>> +			resets = <&gcc GCC_PCIE2_PHY_BCR>,
>> +				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
>> +			reset-names = "phy",
>> +				      "common";
>> +			status = "disabled";
>> +		};
>> +
>> +		pcie2: pcie@20000000 {
>> +			compatible = "qcom,pcie-ipq9574";
>> +			reg = <0x20000000 0xf1d>,
>> +			      <0x20000f20 0xa8>,
>> +			      <0x20001000 0x1000>,
>> +			      <0x00088000 0x4000>,
>> +			      <0x20100000 0x1000>;
>> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
>> +
>> +			ranges = <0x81000000 0x0 0x20200000 0x20200000 0x0 0x00100000>,	/* I/O */
> 
> Please use below range:
> 
> <0x01000000 0x0 0x00000000 0x20200000 0x0 0x00100000>
> <0x02000000 0x0 0x20300000 0x20300000 0x0 0x07d00000>
> 
Of course, thank you.

>> +				 <0x82000000 0x0 0x20300000 0x20300000 0x0 0x07d00000>;	/* MEM */
>> +
>> +			device_type = "pci";
>> +			linux,pci-domain = <3>;
>> +			bus-range = <0x00 0xff>;
>> +			num-lanes = <2>;
>> +			max-link-speed = <3>;
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +
>> +			phys = <&pcie2_phy>;
>> +			phy-names = "pciephy";
>> +
>> +			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi";
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 164
>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
>> +					<0 0 0 2 &intc 0 0 165
>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
>> +					<0 0 0 3 &intc 0 0 186
>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
>> +					<0 0 0 4 &intc 0 0 187
>> +					 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> 
> Use a single line for each INTX entry even if it exceeds 80 column width.

Yes. Will do.

> - Mani
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
