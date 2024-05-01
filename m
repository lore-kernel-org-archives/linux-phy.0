Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3731BC25B4F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 20:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUu+3bASWQOWVU4BgzPjNyUHPoIzbmy6U8U8gWDQnVg=; b=bbYoZN3aNcc6twNaUOV57Q6saW
	Pri3UTe0ijs5IxG1azoztFC/VqawoecnBWt30RfVrIGuUpOanfY1SLUNvmvnpW7IWHIG2W/wOcJgT
	eiootTIgwO1SCp0js+3CGqHTvVEQ6ysI0uCoStVmzjJVQ+32On+EFrlxZ/lcPjAuV3oOrJHs2KKoY
	ctjZphIPCbWg+LSFzM8HmYI6x7h0ajon+18JCs1M9SITBaPTbdLRS/jaGijmjbXZTmIq3VaT+19Lt
	OCluZsU9y+FM7qhP4ET9eyaq5A88foufiuz5sWLevbUTUtEZDt84zHXhi3i4P5U7TD4SoU+SpI1hE
	t+5K3Ayw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2GdT-0000000AeIY-2tb7;
	Wed, 01 May 2024 20:33:03 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2GdP-0000000AeHl-3fPt
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 20:33:01 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6ee32bb9c8eso1769101a34.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 13:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714595574; x=1715200374; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PK6bUYnjKXA3139CuZnFqKdohXzB6bNghOA877px0F0=;
        b=AP3lIeFlWUvLmzRU4QnC8F0Ho2skj+u7bVJS2Y+PD8HJ4+TUI4CDt7YCZN0Kmt5aQx
         V96jTBmBfP2eia/sw2aKxf2n8vEVbrCIXDDTQIoPDNltKL0MUR5q+YibRsxsyf5OKUaN
         fEy8qSPeJ60UJoT1pDea2fY2NlOqTKxF9nh9q9Cs+Ikive7NralB5aFpR1zL+na+ixJV
         Y+2dy/faw4tgokVgEBs9jS1hQTYbOQ2qRQpGKawMufpbY82awwxE8QyVf4roClZpn/o2
         jNqOHm7VWAygZOpzJfLdz85pRobJ2/RYtEqlg57uzY481PPlIBSIylkkUTAevRARNErr
         IBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714595574; x=1715200374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PK6bUYnjKXA3139CuZnFqKdohXzB6bNghOA877px0F0=;
        b=nuPp7/DwkGS7xU+aiFJoHFaTdjOumfmjgiInkwqmZUdpnVbCxgheMPCIsmC5foeB57
         5n/txEFnVyhkrxTCHm0b0+1sIXADgpSQRKv/TdTJJ6d3y1mJqvQqbqCLPPqExq9MLCsH
         eAJ+3M89uXnjrYA2voGcPRg4qhIBqrAHtfJrUMCnkoexsaSt+fQnQ+A/TsK2ixSW9gF1
         n4Z80/v7zbZcUUrIMCoGHwIl2WkKSrXWhdkWqh57BWOLXM+DaU4tatpJrAg3HYiZF77B
         gSwye/0iT07WgN6XK7rba2Q3YB+ftIBvIhpLT/dHtwPe2gNe6M1ld2TKaD0mAcqA3vgT
         a7sA==
X-Forwarded-Encrypted: i=1; AJvYcCVdY39ugRh9hlK1mIWbTSelIlH9782bZKO1GA9CP7HsvgFA4eHRIKx0OufUTs7gL2r9mWn76VQ0n7efQfV0vHp+HGOSb0fZbPmsxGzdgw==
X-Gm-Message-State: AOJu0Yz8TD0BdoQEcOkZobfNbqO9V+T3Ee8EiTJC4GLhNjhfuDdRiheC
	yb+B8+Sg6FXN9tMlNQnEn6437SUwSUygPPpaP67h2OCHTR0C0R/k
X-Google-Smtp-Source: AGHT+IEEi213Oim+pFQt5WqNLTilQ8NosxMtUvlAkKIuNAoYd59Y3HupxqwZGjbBQ04m8SUtsX/Msw==
X-Received: by 2002:a05:6870:be97:b0:22f:bdb:633c with SMTP id nx23-20020a056870be9700b0022f0bdb633cmr125208oab.16.1714595574119;
        Wed, 01 May 2024 13:32:54 -0700 (PDT)
Received: from [192.168.7.110] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id rb11-20020a056871618b00b0023b5791f396sm2889919oab.15.2024.05.01.13.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 13:32:53 -0700 (PDT)
Message-ID: <7da9d481-1e44-4f0e-9210-fcbd95bd654f@gmail.com>
Date: Wed, 1 May 2024 15:32:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 8/8] arm64: dts: qcom: ipq9574: add PCIe2 and
 PCIe3 nodes
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <20240501042847.1545145-9-mr.nuke.me@gmail.com>
Content-Language: en-US
From: "Alex G." <mr.nuke.me@gmail.com>
In-Reply-To: <20240501042847.1545145-9-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_133300_031035_4D1B1418 
X-CRM114-Status: GOOD (  17.49  )
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



On 4/30/24 23:28, Alexandru Gagniuc wrote:
> On ipq9574, there are 4 PCIe controllers. Describe the pcie2 and pcie3
> nodes, and their PHYs in devicetree.
> 
> The pcie0 and pcie1 controllers use a gen3x1 PHY, which is not
> currently supported. Hence, only pcie2 and pcie3 are described. Only
> pcie2 was tested because my devboard only has conenctions to pcie2.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 178 +++++++++++++++++++++++++-
>   1 file changed, 176 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 7f2e5cbf3bbb..c391886cf9ab 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -300,8 +300,8 @@ gcc: clock-controller@1800000 {
>   				 <0>,
>   				 <0>,
>   				 <0>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie2_phy>,
> +				 <&pcie3_phy>,
>   				 <0>;
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
> @@ -745,6 +745,180 @@ frame@b128000 {
>   				status = "disabled";
>   			};
>   		};
> +
> +		pcie2_phy: phy@8c000 {
> +			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
> +			reg = <0x0008c000 0x14f4>;
> +
> +			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
> +				 <&gcc GCC_PCIE2_AHB_CLK>,
> +				 <&gcc GCC_PCIE2_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			clock-output-names = "pcie_phy2_pipe_clk";
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			resets = <&gcc GCC_PCIE2_PHY_BCR>,
> +				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +			status = "disabled";
> +		};
> +
> +		pcie3_phy: phy@f4000 {
> +			compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy";
> +			reg = <0x000f4000 0x14f4>;
> +
> +			clocks = <&gcc GCC_PCIE3_AUX_CLK>,
> +				 <&gcc GCC_PCIE3_AHB_CLK>,
> +				 <&gcc GCC_PCIE3_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			clock-output-names = "pcie_phy3_pipe_clk";
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			resets = <&gcc GCC_PCIE3_PHY_BCR>,
> +				 <&gcc GCC_PCIE3PHY_PHY_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +			status = "disabled";
> +		};
> +
> +		/* TODO: Populate pcie0/pcie1 when gen3x1 phy support is added. */
> +
> +		pcie2: pcie@20000000 {
> +			compatible = "qcom,pcie-ipq9574";
> +			reg = <0x20000000 0xf1d>,
> +			      <0x20000f20 0xa8>,
> +			      <0x20001000 0x1000>,
> +			      <0x00088000 0x4000>,
> +			      <0x20100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +
> +			ranges = <0x81000000 0x0 0x20200000 0x20200000 0x0 0x00100000>,
> +				 <0x82000000 0x0 0x20300000 0x20300000 0x0 0x07d00000>;
> +
> +			device_type = "pci";
> +			linux,pci-domain = <3>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <2>;
> +			max-link-speed = <3>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			phys = <&pcie2_phy>;
> +			phy-names = "pciephy";
> +
> +			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 164 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 165 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 186 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 187 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE2_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE2_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE2_AXI_S_BRIDGE_CLK>,
> +				 <&gcc GCC_ANOC_PCIE2_2LANE_M_CLK>,
> +				 <&gcc GCC_SNOC_PCIE2_2LANE_S_CLK>,
> +				 <&gcc GCC_PCIE2_RCHNG_CLK>;
> +			clock-names = "axi_m",
> +				      "axi_s",
> +				      "axi_bridge",
> +				      "rchng";

There is a mistake here with the clock-names :( . Will fix it in v5.

> +
> +			resets = <&gcc GCC_PCIE2_PIPE_ARES>,
> +				 <&gcc GCC_PCIE2_AUX_ARES>,
> +				 <&gcc GCC_PCIE2_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE2_AXI_M_ARES>,
> +				 <&gcc GCC_PCIE2_AXI_S_ARES>,
> +				 <&gcc GCC_PCIE2_AXI_S_STICKY_ARES>,
> +				 <&gcc GCC_PCIE2_AXI_M_STICKY_ARES>,
> +				 <&gcc GCC_PCIE2_AHB_ARES>;
> +			reset-names = "pipe",
> +				      "aux",
> +				      "sticky",
> +				      "axi_m",
> +				      "axi_s",
> +				      "axi_s_sticky",
> +				      "axi_m_sticky",
> +				      "ahb";
> +			status = "disabled";
> +		};
> +
> +		pcie3: pcie@18000000 {
> +			compatible = "qcom,pcie-ipq9574";
> +			reg = <0x18000000 0xf1d>,
> +			      <0x18000f20 0xa8>,
> +			      <0x18001000 0x1000>,
> +			      <0x000f0000 0x4000>,
> +			      <0x18100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +
> +			ranges = <0x81000000 0x0 0x18200000 0x18200000 0x0 0x00100000>,
> +				 <0x82000000 0x0 0x18300000 0x18300000 0x0 0x07d00000>;
> +
> +			device_type = "pci";
> +			linux,pci-domain = <4>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <2>;
> +			max-link-speed = <3>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			phys = <&pcie3_phy>;
> +			phy-names = "pciephy";
> +
> +			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 189 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 190 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 192 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 192 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE3_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE3_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
> +				 <&gcc GCC_ANOC_PCIE3_2LANE_M_CLK>,
> +				 <&gcc GCC_SNOC_PCIE3_2LANE_S_CLK>,
> +				 <&gcc GCC_PCIE3_RCHNG_CLK>;
> +			clock-names = "axi_m",
> +				      "axi_s",
> +				      "axi_bridge",
> +				      "anoc",
> +				      "snoc",
> +				      "rchng";
> +
> +			resets = <&gcc GCC_PCIE3_PIPE_ARES>,
> +				 <&gcc GCC_PCIE3_AUX_ARES>,
> +				 <&gcc GCC_PCIE3_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3_AXI_M_ARES>,
> +				 <&gcc GCC_PCIE3_AXI_S_ARES>,
> +				 <&gcc GCC_PCIE3_AXI_S_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3_AXI_M_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3_AHB_ARES>;
> +			reset-names = "pipe",
> +				      "aux",
> +				      "sticky",
> +				      "axi_m",
> +				      "axi_s",
> +				      "axi_s_sticky",
> +				      "axi_m_sticky",
> +				      "ahb";
> +			status = "disabled";
> +		};
>   	};
>   
>   	thermal-zones {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
