Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EE6C77B6E
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 06:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTAZo6CGJbgLWo/a0dxL/gJLYNvy9r0Dz9khyGp2UYA=; b=vXKqkcx3HVB5zI
	kDC1Un85CuZZCoMUM9zw3lhAA+C7/v/K2Y/JZalt+3+DfUAGQ22zGrC7snUPwIRCN0xV2vrU9PBl2
	OMGRpl6I69/vey/6fbHxYshKx8w9Vg5o70Otv2t98lZIcxntuhxGWqNilwi/rjUeNQXl0zV5a7eJm
	PlE9d1Iz325WrceioIAxVHRWjp3o3bxMk89twjaTzJ7a/KnTuJJLj+g6siLPQWQHil9mHbgFEw2wn
	HZPdZwdgf8cm19hKwzFG1oIa8pXc3Qjfhs5buPXnWMfYEkvhIA5G7V7PY3F852vnx+82wMKT3bL2t
	L6bgHC1/Eng/rYF/J4FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfzD-009KIt-0c;
	Fri, 07 Apr 2023 06:54:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfzA-009KIP-2t;
	Fri, 07 Apr 2023 06:54:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 44B3D6436B;
	Fri,  7 Apr 2023 06:54:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AB03C433D2;
	Fri,  7 Apr 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680850451;
	bh=MofKp5WWpnswSysN+v8UPuWgIO1ysl1ijKql/7omvoA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SShh79BJnamvPW8E1TlfuiK9ylW1J5p/ZYfRAze3mIX9G3YlrbL5uGvcyrArRrYh9
	 4bNl5mkNJsu5e4EsvOM7TMSKyQIrRefIfRHeBl0gGR4FA8Qd9R2VFlrXbGAdUEotw9
	 IfsbuhssHj7hkpS8prRg6N0QKsC11OXcoDjm6hsqGB85miAcY7HABaR2Aw59XlS88P
	 Dp4Fn4nVSWrlqy22dy/yuGl8g2l3ve5ciKROHTOqHre/seYD5BKGpwewa7dtWblbqL
	 1W0KFn7QEixcKLHbfH+1YDmdgHCW/ADEFqsfMgkRPA/gPHT+y4czi7W8sXCUugbYQ+
	 90MsEKLZZRQhA==
Message-ID: <06a17138-cccc-1283-d235-fa54275c1651@kernel.org>
Date: Fri, 7 Apr 2023 08:54:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu
 <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20230315100421.133428-1-changhuang.liang@starfivetech.com>
 <20230315100421.133428-2-changhuang.liang@starfivetech.com>
 <20230320151437.GA1709620-robh@kernel.org>
 <fa13e903-809d-064f-baff-c7e7474b52da@starfivetech.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <fa13e903-809d-064f-baff-c7e7474b52da@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_235412_978490_F7EA30EE 
X-CRM114-Status: GOOD (  12.87  )
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

On 07/04/2023 08:51, Changhuang Liang wrote:
>>> +
>>> +  resets:
>>> +    items:
>>> +      - description: DPHY_HW reset
>>> +      - description: DPHY_B09_ALWAYS_ON reset
>>> +
>>> +  starfive,aon-syscon:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    items:
>>> +      - items:
>>> +          - description: phandle of AON SYSCON
>>> +          - description: register offset
>>> +    description: The power of dphy rx is configured by AON SYSCON
>>> +      in this property.
>>
>> Sounds like AON SYSCON should be a power-domains provider. Custom 
>> phandle links are for things which don't fit standard bindings.
>>
> 
> Hi, Rob,
> 
> On visionfive2 jh7110 SoC, this AON SYSCON is the Secondary power switch to the DPHY Rx.
> When we open the pmic switch, we also need to configure the AON SYSCON register to turn 
> on the switch, it is used to link the pmic and the DPHY Rx, So I think it just use syscon
> framework is enought. What about your comments.

Which sounds exactly like power domain provider...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
