Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236E1C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7Zt/RzNyw0Me4RR1ZyTNx2wn9A3Q5DIb6dbLJy6TgI=; b=Z0W2OZkqwq5DgF
	3UM2O4b60pKGIJhtFqHUK3N4FIEsy+Jkvi8CIOMAqlP7Xxz8j/ZV91CK7j4piZZ6GyuoXHQ83lM4a
	ypS6rTgu4MW+Xqiz9M8234c88Kc4s6RVOcKTRyLlLXXJkCrBeXJmeAHJjBUOWkqY0KvR4hYzWgqpj
	Bn2bDGUq9YDWXSsAc0Na7veMUly4wuhi6G4KF32yfdBuvyn0orGdUkQkxbvy+bWAg7fewf3GU/TqK
	XlSAt+HkYjBk4EGCGv6k9OYGBkkqrQeNgWa+nwlb6WYsojP9LxwPZvKx+y6q6ZugPUkGyoUcX9kqS
	nSO0bq4lZ7SbaQ2bj5og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLOMZ-00EpOP-Rz; Fri, 27 Jan 2023 13:01:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLNWT-00EPni-1j
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 12:08:02 +0000
Received: by mail-wm1-x332.google.com with SMTP id q8so3287600wmo.5
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 04:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IbnzwH+nQgd63XtJgqBuy8alYQJJ5rnozeTdLd13gK4=;
        b=t2H9eibLPHda5VU5UePrNAz4DSv42zX088teGJS2FRasP++ZLgCNdXhjMGoYIijbox
         G0j2gZ/mqAamlwLfdPctoxQYkyWxNK2ml0tKuMOPLsOKPH8yQJ5oTJuOngN5HHMdCNXg
         SCFzVMHFBbNyBKUjG3WbvVqTqyTZsz4l3XMqoNoLiF29nmS0XA61UW0eO8tk8s4x0m9U
         ORWf+MYN7XBT1hqzJw1Hb2YCxwWKKbPj74PV7XBrmx8ARhE/OM1s0xXD3OuyJf/pEMHk
         IuXHSDS3ZwOYdnrXycFYXc8OEqZTUbsGlvpN1eNTaSHMqLxHE9Wl2FEcEOQDQ1mn5DBa
         jLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbnzwH+nQgd63XtJgqBuy8alYQJJ5rnozeTdLd13gK4=;
        b=urT0Acs8fF975RnSrlQdEriC5YoKFKDZX6egC8jWJUF8shVq2yV+KzSV1PJRef5Lz+
         NsVbmtY8fWGthEnaYKSEgNE2jq7Fr9SHDfqcIxMqMVueQ5F7kNyt2i5dFjdnJQ+Pxfma
         r1kqIY6/qTMRDxC1txvdEvgGTlDZ+HMACrQZSEsWy8fkK+weMMm01Ro/qsau8JHRkkN8
         4BhbR7mxKWKcD8n3iAZP/pL5sexVjyHnsmdgTtyIO1U/iGyxj0mmuEbFNwWghNyS81eA
         bFSNbUadpuCCINCnA1W0fXGYEi5uxDduYXGd2mPMCLCbw7YGJ5PzN0jszvNdjgbw+OQO
         xDxg==
X-Gm-Message-State: AFqh2kr2ZU25ymXG2ekgVcZSKe9f2Ida78O6zeDlIuPGYf6IhFUNiupH
	53vl/t4Pi90aoxuBpVJD+ndTwQ==
X-Google-Smtp-Source: AMrXdXsFHMhT34Xzqpvqy/Q9isMOCIEWtS9pWbJ5oINT8OsgSCDgX+TJd/INUsJknzlT3rvCqliAEg==
X-Received: by 2002:a05:600c:1d85:b0:3db:1bc5:bbe7 with SMTP id p5-20020a05600c1d8500b003db1bc5bbe7mr32828675wms.0.1674821278610;
        Fri, 27 Jan 2023 04:07:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p22-20020a1c5456000000b003da286f8332sm4301417wmi.18.2023.01.27.04.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 04:07:57 -0800 (PST)
Message-ID: <437bbede-ccaa-8c8d-11b8-336f2a857072@linaro.org>
Date: Fri, 27 Jan 2023 13:07:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
 <20230126124651.1362533-8-abel.vesa@linaro.org>
 <2d368c6f-5240-8aec-ef27-a86b2a361856@linaro.org>
 <Y9O7iVXN1AgsRQKi@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y9O7iVXN1AgsRQKi@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_040801_177660_4011C3CA 
X-CRM114-Status: GOOD (  15.93  )
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

On 27/01/2023 12:54, Abel Vesa wrote:
> On 23-01-27 12:51:05, Krzysztof Kozlowski wrote:
>> On 26/01/2023 13:46, Abel Vesa wrote:
>>> Add USB host controller and PHY nodes.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>
>>> NOTE: This patch has been already merged. It is here only to provide
>>> context for the rest of the patchset. There is a change with respect to the
>>> clocks, but that will be sent as a separate/individual fix patch.
>>>
>>>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 92 +++++++++++++++++++++++++++-
>>>  1 file changed, 91 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> index 4daf1f03d79f..6801454bbe10 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -13,6 +13,7 @@
>>>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>>>  #include <dt-bindings/power/qcom-rpmpd.h>
>>>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>>  #include <dt-bindings/thermal/thermal.h>
>>>  
>>>  / {
>>> @@ -652,7 +653,7 @@ gcc: clock-controller@100000 {
>>>  				 <&ufs_mem_phy 0>,
>>>  				 <&ufs_mem_phy 1>,
>>>  				 <&ufs_mem_phy 2>,
>>> -				 <0>;
>>> +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>>>  		};
>>>  
>>>  		ipcc: mailbox@408000 {
>>> @@ -1924,6 +1925,95 @@ opp-202000000 {
>>>  			};
>>>  		};
>>>  
>>> +		usb_1_hsphy: phy@88e3000 {
>>> +			compatible = "qcom,sm8550-snps-eusb2-phy";
>>> +			reg = <0x0 0x088e3000 0x0 0x154>;
>>> +			#phy-cells = <0>;
>>> +
>>> +			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
>>> +			clock-names = "ref";
>>> +
>>> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>>> +
>>> +			status = "disabled";
>>> +		};
>>> +
>>> +		usb_dp_qmpphy: phy@88e8000 {
>>> +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
>>> +			reg = <0x0 0x088e8000 0x0 0x3000>;
>>> +
>>> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>>> +				 <&rpmhcc RPMH_CXO_CLK>,
>>> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
>>> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
>>> +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
>>> +
>>> +			power-domains = <&gcc USB3_PHY_GDSC>;
>>> +
>>> +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
>>> +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
>>> +			reset-names = "phy", "common";
>>> +
>>> +			#clock-cells = <1>;
>>> +			#phy-cells = <1>;
>>> +
>>> +			status = "disabled";
>>> +		};
>>> +
>>> +		usb_1: usb@a6f8800 {
>>> +			compatible = "qcom,sm8550-dwc3", "qcom,dwc3";
>>> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
>>> +			#address-cells = <2>;
>>> +			#size-cells = <2>;
>>> +			ranges;
>>> +
>>> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
>>> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
>>> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
>>> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
>>> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
>>> +				 <&rpmhcc TCSR_USB3_CLKREF_EN>;
>>> +			clock-names = "cfg_noc",
>>> +				      "core",
>>> +				      "iface",
>>> +				      "sleep",
>>> +				      "mock_utmi",
>>> +				      "xo";
>>> +
>>> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
>>> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
>>> +			assigned-clock-rates = <19200000>, <200000000>;
>>> +
>>> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
>>> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
>>> +					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
>>> +					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
>>> +			interrupt-names = "hs_phy_irq",
>>> +					  "ss_phy_irq",
>>> +					  "dm_hs_phy_irq",
>>> +					  "dp_hs_phy_irq";
>>> +
>>> +			power-domains = <&gcc USB30_PRIM_GDSC>;
>>> +			required-opps = <&rpmhpd_opp_nom>;
>>
>> This part was merged but it is not correct without [1]. Are we going to
>> revive [1] or should we drop it?
> 
> Well, but this one has been merged as well for sc8280xp:
> https://lore.kernel.org/all/20230112135117.3836655-1-quic_bjorande@quicinc.com/

Thanks! This was done by Bjorn which means he approves required-opps. :)
I'll send the schema fix (without power domains change).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
