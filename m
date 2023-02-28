Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B54C64EC7
	for <linux-phy@archiver.kernel.org>; Tue, 28 Feb 2023 08:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dA7mxLsPSDU/uWR0HjQluIWnmiA5nwilE92hiLR02nQ=; b=EKC5AcY1FZq5/R
	4e2U7y+2LLgJ77vdzE4IuFBHo92tN+2HV62PweGvNy4R/ro3Y8R4M8/byu7qhQoNe4loTlfPEhCD2
	LyYw3TKlFDO0m3l5Hsdd1m7jnl4u0Q95wgK+hksgUrV63uEVmueWC54DoknaWy/o7ELRbgQ9HE7wE
	75j6KmWp3CC+qJ5GzFlgLQyWa5/CtiB0YgtdzqnDKdlYY+sui7PS1z3nLh77/8qpx41tHmq0s+j3I
	x6uT94fNwtCYzz2zd74PoHnpv49ERnYmmmGzxTE051AtkLSACJdjWH1cX4tQ3B+IIQNfMmXBj3oAh
	5wd8dtXNhov0Y0rPgvFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvoj-00CR3l-14; Tue, 28 Feb 2023 08:58:37 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvof-00CR0h-Dw; Tue, 28 Feb 2023 08:58:35 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id F169A24E46D;
	Tue, 28 Feb 2023 16:57:58 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 28 Feb
 2023 16:55:09 +0800
Received: from [192.168.125.68] (113.72.145.171) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 28 Feb
 2023 16:55:08 +0800
Message-ID: <6aaebbc4-9d60-6445-7066-a9a60c50c6dd@starfivetech.com>
Date: Tue, 28 Feb 2023 16:55:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
To: Rob Herring <robh@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing
	<kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu
	<jack.zhu@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
References: <20230223015952.201841-1-changhuang.liang@starfivetech.com>
 <20230223015952.201841-2-changhuang.liang@starfivetech.com>
 <20230227183434.GA642331-robh@kernel.org>
Content-Language: en-US
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230227183434.GA642331-robh@kernel.org>
X-Originating-IP: [113.72.145.171]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_005833_782150_3FB9C105 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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



On 2023/2/28 2:34, Rob Herring wrote:
> On Wed, Feb 22, 2023 at 05:59:50PM -0800, Changhuang Liang wrote:
[...]
>> +
>> +  clocks:
>> +    maxItems: 3
>> +
>> +  clock-names:
>> +    items:
>> +      - const: cfg
>> +      - const: ref
>> +      - const: tx
> 
> Should be 'rx' given this is the 'rx' block? A description of each clock 
> in 'clocks' would be good.
> 

'tx': This clock is directly used to generate transmit escape sequences, 
will add description of each clock in 'clocks'.

>> +
>> +  resets:
>> +    items:
>> +      - description: DPHY_HW reset
>> +      - description: DPHY_B09_ALWAYS_ON reset
>> +
>> +  starfive,aon-syscon:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      items:
> 
> - items: ?
> 
> Otherwise, multiple 2 cell entries are allowed. Is that intended?
> 

Will change to:
items:
  - items:

>> +        - description: phandle of AON SYSCON
>> +        - description: register offset
>> +    description: The power of dphy rx is configured by AON SYSCON
>> +      in this property.
> 
> 
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +required:
>> +  - compatible
>> +  - reg
[...]
>> -- 
>> 2.25.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
