Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D3E1C636CC
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 07:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gk0lRU4w5q+alqOmEjKFQZ4QVbkGgGPgY1/A/BbUnf8=; b=bCMZ24o9a69ANb
	P9j7l99aGJvz5w0yVyj6Lx0XPunXy9RyrcdCuqmJZdS7UfTfe3Yo9j7WYP1x+kFyawnMP81yXOcZ3
	5klzILKnS7mtAD0bVAQfqAa/zo2du8eYb121FbfCC58vehF5MLMjWaZO4y8jU5LuTpI0ofB/gfOja
	ec/8zUYFilmxNIeOKzyTltkXvbuNvAiYh5k8S859g9hazCrC+ttXuAK9nTj6XmVDHIVRQtECg7Afr
	IlWN2WDkJ3tBXgUBF4Y3Mu/dguvGw5opye995N2wcMYh75cZMTE3Lh1ri+AQ2GDL/z9Ud6i7ku292
	bi50cACuLhuS601DQ4YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTdZ-00DURn-J1; Mon, 13 Feb 2023 07:52:33 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTdV-00DUOr-6q; Mon, 13 Feb 2023 07:52:31 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id E9CE224E0AE;
	Mon, 13 Feb 2023 15:52:03 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Feb
 2023 15:52:03 +0800
Received: from [192.168.1.100] (183.27.97.168) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Feb
 2023 15:52:00 +0800
Message-ID: <36d8a648-49f4-281e-3947-cf2cbf3827b2@starfivetech.com>
Date: Mon, 13 Feb 2023 15:51:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v1 2/4] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing
	<kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu
	<jack.zhu@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-3-changhuang.liang@starfivetech.com>
 <20230210182935.GA2914589-robh@kernel.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230210182935.GA2914589-robh@kernel.org>
X-Originating-IP: [183.27.97.168]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_235229_631639_BA3B2F81 
X-CRM114-Status: GOOD (  13.94  )
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



On 2023/2/11 2:29, Rob Herring wrote:
> On Thu, Feb 09, 2023 at 10:17:11PM -0800, Changhuang Liang wrote:
>> Starfive SoC like the jh7110 use a MIPI D-PHY RX controller based on
>> a M31 IP. Add a binding for it.
>>
>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>> ---
>>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 78 +++++++++++++++++++
>>  1 file changed, 78 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>> new file mode 100644
>> index 000000000000..1c1e5c7cbee2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>> @@ -0,0 +1,78 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Starfive SoC MIPI D-PHY Rx Controller
>> +
>> +maintainers:
>> +  - Jack Zhu <jack.zhu@starfivetech.com>
>> +  - Changhuang Liang <changhuang.liang@starfivetech.com>
>> +
>> +description: |
> 
> Don't need '|'
>

OK, will delete it.

>> +  The Starfive SOC has a MIPI CSI D-PHY based on M31 IP use to transfer
>> +  the CSI cameras data.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: "starfive,jh7110-dphy-rx"
> 
> Drop quotes.
> 

OK, will drop quotes

>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    minItems: 3
>> +    maxItems: 3
> 
> Just maxItems is enough.
> 

OK, will delete minItems.

>> +
>> +  clock-names:
>> +    items:
>> +      - const: cfg
>> +      - const: ref
>> +      - const: tx
>> +
>> +  resets:
>> +    minItems: 2
>> +    maxItems: 2
> 
> Need to define what each reset is.
> 

OK, will define resets.

>> +
>> +  starfive,aon-syscon:
>> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> 
> Drop quotes.
> 

OK, will drop quote

>> +    items:
>> +      items:
>> +        - description: phandle of AON SYSCON
>> +        - description: register offset
>> +    description: The register of dphy rx driver can be configured
>> +      by AON SYSCON in this property.
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
>> +  - starfive,aon-syscon
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/starfive,jh7110-crg.h>
>> +    #include <dt-bindings/reset/starfive,jh7110-crg.h>
>> +
>> +    dphy@19820000 {
>> +      compatible = "starfive,jh7110-dphy-rx";
>> +      reg = <0x19820000 0x10000>;
>> +      clocks = <&ispcrg JH7110_ISPCLK_M31DPHY_CFGCLK_IN>,
>> +               <&ispcrg JH7110_ISPCLK_M31DPHY_REFCLK_IN>,
>> +               <&ispcrg JH7110_ISPCLK_M31DPHY_TXCLKESC_LAN0>;
>> +      clock-names = "cfg", "ref", "tx";
>> +      resets = <&ispcrg JH7110_ISPRST_M31DPHY_HW>,
>> +               <&ispcrg JH7110_ISPRST_M31DPHY_B09_ALWAYS_ON>;
>> +      starfive,aon-syscon = <&aon_syscon 0x00>;
>> +      #phy-cells = <0>;
>> +    };
>> -- 
>> 2.25.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
