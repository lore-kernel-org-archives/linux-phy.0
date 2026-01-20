Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDB0CD2ED0F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 15:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=295zrpGocst3WadyQ8opBybK7ifmhA8u1RkZXQQdSIY=; b=mDaOzxop4Z+HWr
	kqwNF8Af4KDAekPmHMSgBkT1bVYOPnWN1soKLUBY92OkPhU1xSNqzEZ/DmntOhjkcGVlKjTot0Fod
	8yiSqIIC26oafohf7USjAX/ME1pJqB7msrjb7C+FwCfLWEXZ5GUp3kqhaMZJSfsUiWsdWWbNm841x
	yhosRuuctpOFFEmcpoUg9mQ6akaj986FvRqQGol5jVVFYXiptD0qSs+k7Retx0lrUXj3pr676qtBW
	763VbLuXvtL2p0qM2j5We+L3H7zlnZEsAnHYE2D0Vwle2st8saH8DBlEoqlexYnQpWh75mkD0FJ8x
	l8BydBYYfK1Jz4nF8f+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDSn-0000000440x-2uR2;
	Tue, 20 Jan 2026 15:16:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDSh-0000000440Q-3xeb
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Jan 2026 15:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2smliZ697OIve1WFyAVdoNgI4azBOocrPtfm86BP1ts=; b=P8/wrMlWtU7u+xwoWfPEQJUCoR
	6mN8HnmgLDFngATR2esNVwNwTJw/mM7DfYaJJ7nkLh0sgLgqZi0PiZRPEALGwiR45iwz07z/B7Qqj
	IZcXcvLaY5Jcwb3i+cDef9EhDUVcYEgH2llHYag2RZ+DnwK9I1dYStZ3zBJ6DvjDFH81tLRgCJCjl
	ewAlGJlFRC5D50RFnX+CRo9A+8G2Q6efRsmHb/EOGD68uUwctl0OaLI82oV7tiRdM/m/E4V5BIGbt
	nyw46C85VxTETy5SO9z1doSvkig7yzFKCXRYlP//DPKbxXqK4BKhCRNO+WyVdaQqdL/Ye0zlBC1D9
	DcsA7Plg==;
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDSe-0000000EISf-3SXZ
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 15:16:06 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-bc274b8b15bso3330416a12.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 07:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768922162; x=1769526962; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2smliZ697OIve1WFyAVdoNgI4azBOocrPtfm86BP1ts=;
        b=OE4aSaqm8F8Bqhy8qb60V3gc9jhmh3+llzkcqGjP3EzyKGkQ6zf/fUJKe8VTJKplDp
         LBiyxwwfVAPHAllGuLj+NCY65NqMK+Oj75gSu+jQCWpm/8evEn33gyuAwgwMVQn6PJiE
         bzVuKyi0xFSOXYyHgI1JMgVoxQ8Ea46I/Ca+q1SfTIp6hJzWsejZ4L/Ku85m6j69NyPk
         3PipbhMFGrUaLRbodo2ijenms4n/Hz5MlpM3nmGfiEfoyG3oT2EE3Rz2O4l+6mD9Spiw
         NHRQigP9SwaTEARUE22p/ddVh5hRBts+bMXNTbOKVzZIXY9PAqe9R4ftJw8dcLbjf1xN
         aZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768922162; x=1769526962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2smliZ697OIve1WFyAVdoNgI4azBOocrPtfm86BP1ts=;
        b=qaOB5MThera+Rv+vSNKbQWgOA8UJrFUlHMJBEIs/73LnAD5eLi8Xmx9FTBReLfvHqf
         qP5y4BNr32Jd56k+e0Tk562y+Om4zzBm4YB4fPM4vNZMWPITq+v4G4VwNoG5DdVPenfx
         7JxntqB3Jue90L5D8nzjEHELnyGZ5+1MuNr43A/naWApfM33BCx2hwFNF7OE+r5LTvZk
         15bOEUGh5feHurqJTQ0j+2kbysjJozeXiVZ8Q3xpBWgtuw16SO8SaoT+EFObzoSPsFT6
         OoIXMXHjbjrSVjmHOtRQjJL+0cAQOfsEA8APK3I0vs3TawzRG3vId0V6c0SajqPQHhDb
         DDRA==
X-Forwarded-Encrypted: i=1; AJvYcCXbvs52PckFsPraFXUwyZX8T+jhOenM6BaGCI/nHeqHGPkkpnH+vtdKGqX9IF9a1Prei7WhaK0uOYY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEwjQ/OjFMpe+oP8gLFZBFOOBCvYiKwKG8QC3I/BLPLYES/kxV
	3jYLYqzG0u72DSN1WrrpSBYQk9Un8Kq0Auy6FozU0CK9xpD65OnGSvXv
X-Gm-Gg: AY/fxX5XW1YAXJBNkozjRtsnFXPDKeXsKaNyFxyAdanHM+xoJS1sG4/Uda6jh+6q8M0
	CIHrSbKviDSIkyRpR+ZcpC+dUqXQcAE4D/eGLc2n4vyH5haZt6srgB1TMjj7x/fpJmMTtY60O+0
	qZqKg2A9P/Y3C1b9N9wJW39sxq9sgFWmFHTCEWQm3FslrG7MyDXhNsSRl+22GFpc5V6+SMDBiZV
	WVlyS+hdPRgbOxo0zXKTkOkj2UuYI4qJBJwFoyXL7/N9QNZ3+t6BLsRLh9peUNxA/d+HyyayeKO
	58wQdSJuAnEq1MjiWtaOi/4UljTLjyBXQ8PAFGcjc3ZYkx1dmVBpurqWyGZIgMtyKEZzDBYffT2
	ZU+1cNSP9g9vJB3iL6MDmdLCxsS6UAtyVqHPDf9+3u3AhkCvuCLH+0QH8Q4VHzsjF5dFMN7A15F
	XEo8JDs1/etKlb7unJPmW3cu9GASYX7jKFVvU=
X-Received: by 2002:a05:6a21:3992:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-38e45e8dd4cmr2220716637.76.1768922161945;
        Tue, 20 Jan 2026 07:16:01 -0800 (PST)
Received: from [192.168.1.7] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf32d1f1sm11997360a12.22.2026.01.20.07.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 07:16:00 -0800 (PST)
Message-ID: <00bb2ec6-8992-4282-bd83-cd5e411aaa0b@gmail.com>
Date: Tue, 20 Jan 2026 20:45:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
 <20260115145137.GB3319937-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260115145137.GB3319937-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_151605_027761_9B134ACC 
X-CRM114-Status: GOOD (  31.60  )
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



On 15-01-2026 20:21, Rob Herring wrote:
> On Wed, Jan 07, 2026 at 04:11:16PM +0000, Charan Pedumuru wrote:
>> Convert TI OMAP Control PHY binding to DT schema.
>> Changes during conversion:
>> - Define a new pattern 'control-phy' to match nodes defined in DT.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/phy/ti,control-phy-otghs.yaml         | 94 +++++++++++++++++++++
>>  Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ----------------------
>>  2 files changed, 94 insertions(+), 98 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> new file mode 100644
>> index 000000000000..2c91609cac35
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> @@ -0,0 +1,94 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI OMAP Control PHY Module
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +description:
>> +  The TI OMAP Control PHY module is a hardware block within the system
>> +  control module (SCM) of Texas Instruments OMAP SoCs. It provides
>> +  centralized control over power, configuration, and auxiliary features
>> +  for multiple on-chip PHYs. This module is essential for proper PHY
>> +  operation in power-constrained embedded systems.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^control-phy(@[0-9a-f]+)?$"
> 
> Drop. Non-standard.

Sure, I will change it to phy and will modify in dts too.

> 
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,control-phy-otghs
>> +      - ti,control-phy-usb2
>> +      - ti,control-phy-pipe3
>> +      - ti,control-phy-pcie
>> +      - ti,control-phy-usb2-dra7
>> +      - ti,control-phy-usb2-am437
> 
> Alphabetical order

Okay.

> 
>> +
>> +  reg:
>> +    minItems: 1
>> +    maxItems: 4
> 
> With the constraints below, there is no case that allows 4 entries.

Yeah, I will make it 3.

> 
>> +
>> +  reg-names:
>> +    minItems: 1
>> +    maxItems: 4

I will make it 3 here too

>> +    items:
>> +      enum: [otghs_control, power, pcie_pcs, control_sma]
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-otghs
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          const: otghs_control
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-pcie
> 
> There's no .dts with this compatible. Do you really need this 
> compatible or can drop it?

Yeah, currently there is no such compatible, I was following the old binding, I could remove if it's necessary.

> 
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          items:
>> +            - enum: [power, pcie_pcs, control_sma]
> 
> It's really 1 entry of 3 possible names?

I think it should be direct 3 entries as per the binding, shouldn't be an enum, I will change it.

> 
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-usb2
>> +              - ti,control-phy-usb2-dra7
>> +              - ti,control-phy-usb2-am437
>> +              - ti,control-phy-pipe3
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          const: power
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - reg-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    control-phy@4a00233c {
> 
> phy@...
> 
>> +        compatible = "ti,control-phy-otghs";
>> +        reg = <0x4a00233c 0x4>;
>> +        reg-names = "otghs_control";
>> +    };
>> +...
>> diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
>> deleted file mode 100644
>> index 7c7936b89f2c..000000000000
>> --- a/Documentation/devicetree/bindings/phy/ti-phy.txt
>> +++ /dev/null
>> @@ -1,98 +0,0 @@
>> -TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
>> -
>> -OMAP CONTROL PHY
>> -
>> -Required properties:
>> - - compatible: Should be one of
>> - "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
>> - "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
>> -                        e.g. USB2_PHY on OMAP5.
>> - "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
>> -                        e.g. USB3 PHY and SATA PHY on OMAP5.
>> - "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
>> -			set PCS delay value.
>> -			e.g. PCIE PHY in DRA7x
>> - "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
>> -                        DRA7 platform.
>> - "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
>> -                        AM437 platform.
>> - - reg : register ranges as listed in the reg-names property
>> - - reg-names: "otghs_control" for control-phy-otghs
>> -	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
>> -	      "power" for all other types
>> -
>> -omap_control_usb: omap-control-usb@4a002300 {
>> -        compatible = "ti,control-phy-otghs";
>> -        reg = <0x4a00233c 0x4>;
>> -        reg-names = "otghs_control";
>> -};
>> -
>> -TI PIPE3 PHY
>> -
>> -Required properties:
>> - - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
>> -   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
>> - - reg : Address and length of the register set for the device.
>> - - reg-names: The names of the register addresses corresponding to the registers
>> -   filled in "reg".
>> - - #phy-cells: determine the number of cells that should be given in the
>> -   phandle while referencing this phy.
>> - - clocks: a list of phandles and clock-specifier pairs, one for each entry in
>> -   clock-names.
>> - - clock-names: should include:
>> -   * "wkupclk" - wakeup clock.
>> -   * "sysclk" - system clock.
>> -   * "refclk" - reference clock.
>> -   * "dpll_ref" - external dpll ref clk
>> -   * "dpll_ref_m2" - external dpll ref clk
>> -   * "phy-div" - divider for apll
>> -   * "div-clk" - apll clock
>> -
>> -Optional properties:
>> - - id: If there are multiple instance of the same type, in order to
>> -   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
>> -   PHY). If "id" is not provided, it is set to default value of '1'.
>> - - syscon-pllreset: Handle to system control region that contains the
>> -   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
>> -   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
>> - - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
>> -   register offset to write the PCS delay value.
>> -
>> -Deprecated properties:
>> - - ctrl-module : phandle of the control module used by PHY driver to power on
>> -   the PHY.
>> -
>> -Recommended properties:
>> - - syscon-phy-power : phandle/offset pair. Phandle to the system control
>> -   module and the register offset to power on/off the PHY.
>> -
>> -This is usually a subnode of ocp2scp to which it is connected.
>> -
>> -usb3phy@4a084400 {
>> -	compatible = "ti,phy-usb3";
>> -	reg = <0x4a084400 0x80>,
>> -	      <0x4a084800 0x64>,
>> -	      <0x4a084c00 0x40>;
>> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> -	ctrl-module = <&omap_control_usb>;
>> -	#phy-cells = <0>;
>> -	clocks = <&usb_phy_cm_clk32k>,
>> -		 <&sys_clkin>,
>> -		 <&usb_otg_ss_refclk960m>;
>> -	clock-names =	"wkupclk",
>> -			"sysclk",
>> -			"refclk";
>> -};
>> -
>> -sata_phy: phy@4a096000 {
>> -	compatible = "ti,phy-pipe3-sata";
>> -	reg = <0x4A096000 0x80>, /* phy_rx */
>> -	      <0x4A096400 0x64>, /* phy_tx */
>> -	      <0x4A096800 0x40>; /* pll_ctrl */
>> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> -	ctrl-module = <&omap_control_sata>;
>> -	clocks = <&sys_clkin1>, <&sata_ref_clk>;
>> -	clock-names = "sysclk", "refclk";
>> -	syscon-pllreset = <&scm_conf 0x3fc>;
>> -	#phy-cells = <0>;
>> -};
>>
>> -- 
>> 2.52.0
>>

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
