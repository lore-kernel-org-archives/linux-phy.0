Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E7F7C61D85
	for <linux-phy@archiver.kernel.org>; Thu, 23 Nov 2023 06:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3ku8N0i9qQisgnIKirUakM0Z0Yk4cKQNgGsQrfHWz4=; b=ZkFIQmQZvZ1OId
	ACT4xdl4bygp8u0aHEJt1ntf0c4GB7izCibCHUdi8Hc4wEoJaNdcPMsXxqe5YPxSxs01Xqo9pQcK3
	qnBAOkMVRmKWOJq4/NcpT9AohITtyO+j4/jgRbRlKS/h8tI9lKNQ1s6K+Zejg4PPFgOLUDrzoXrZF
	2ZAIRdWSUp5NUOL5r1PE1qtKhLyjkbWsLiE5j1003z7xoct5jR3J5LdDxWbwsMfZKHsqyLOPV4I0P
	cI1oQWgwQa55+ibgHS9HZXck3XvKXetJ81Vqc4RNhjPn3huQ2JkFvOOqxbeQ4Uz6ohDmnSIdLziQ4
	BVY7rp7Kw3uVE/iu3dKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r63ea-003xEQ-0Y;
	Thu, 23 Nov 2023 06:57:36 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r63eW-003x58-0A
	for linux-phy@lists.infradead.org;
	Thu, 23 Nov 2023 06:57:34 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id D8AAF8082;
	Thu, 23 Nov 2023 14:56:46 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 23 Nov
 2023 14:56:46 +0800
Received: from [192.168.125.70] (183.27.97.46) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 23 Nov
 2023 14:56:45 +0800
Message-ID: <c2d818fd-9dad-4beb-82a5-caf30f146bb5@starfivetech.com>
Date: Thu, 23 Nov 2023 14:53:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<minda.chen@starfivetech.com>, <changhuang.liang@starfivetech.com>,
	<rogerq@kernel.org>, <geert+renesas@glider.be>,
	<keith.zhao@starfivetech.com>, <linux-kernel@vger.kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-2-shengyang.chen@starfivetech.com>
 <20231119160938.GA269430-robh@kernel.org>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <20231119160938.GA269430-robh@kernel.org>
X-Originating-IP: [183.27.97.46]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_225732_455275_2098E54D 
X-CRM114-Status: GOOD (  15.97  )
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

Dear Rob,

Thank you for your review and comment

On 2023/11/20 0:09, Rob Herring wrote:
> On Fri, Nov 17, 2023 at 09:04:20PM +0800, Shengyang Chen wrote:
>> StarFive SoCs like the jh7110 use a MIPI D-PHY TX
>> controller based on a M31 IP. Add a binding for it.
>> 
>> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
>> ---
>>  .../bindings/phy/starfive,jh7110-dphy-tx.yaml | 74 +++++++++++++++++++
>>  1 file changed, 74 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> new file mode 100644
>> index 000000000000..850fe2e61d1d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> @@ -0,0 +1,74 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-tx.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Starfive SoC MIPI D-PHY Tx Controller
>> +
>> +maintainers:
>> +  - Keith Zhao <keith.zhao@starfivetech.com>
>> +  - Shengyang Chen <shengyang.chen@starfivetech.com>
>> +
>> +description:
>> +  The Starfive SoC uses the MIPI DSI D-PHY based on M31 IP to transfer
>> +  DSI data.
>> +
>> +properties:
>> +  compatible:
>> +    const: starfive,jh7110-dphy-tx
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dphy_txesc
> 
> Module name is redundant. Drop 'dphy_'.
> 

OK, will drop "dphy_".

>> +
>> +  resets:
>> +    items:
>> +      - description: DSITX_TXBYTEHS reset
>> +      - description: MIPITX_DPHY_SYS reset
>> +      - description: MIPITX_DPHY_TXBYTEHS reset
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dsi_txbytehs
>> +      - const: dphy_sys
>> +      - const: dphy_txbytehs
> 
> Drop 'dphy_'.
> 

OK, will drop "dphy_".

> Is 'dsi_txbytehs' really a part of the DPHY block? Sounds like it is 
> part of the DSI block. If so, the reset belongs there. If the phy driver 
> needs it, then it needs to go find the DSI block and get its reset.
> 

"dsi_txbytehs" is a reset of DSI block, it will be put back to DSI block and remove from DPHY block.

>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - power-domains
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    phy@295e0000 {
>> +      compatible = "starfive,jh7110-dphy-tx";
>> +      reg = <0x295e0000 0x10000>;
>> +      clocks = <&voutcrg 14>;
>> +      clock-names = "dphy_txesc";
>> +      resets = <&syscrg 7>,
>> +               <&syscrg 10>,
>> +               <&syscrg 11>;
>> +      reset-names = "dsi_txbytehs", "dphy_sys", "dphy_txbytehs";
>> +      power-domains = <&aon_syscon 0>;
>> +      #phy-cells = <0>;
>> +    };
>> -- 
>> 2.17.1
>> 

thanks a lot.

Best Regards,
Shengyang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
