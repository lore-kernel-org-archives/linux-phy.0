Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF02C7619A
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 02:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn5hnMb82xPdlpmBL+OKCoV6Txpx0+UUqkoabZ3UKNQ=; b=4vf5K+I1Xr9Uxg
	GXsQw5dK5VTcoZVQWzURUI5Vaa9WOH7uX4liZfv0ylUs21kK2KAmWmz3f7lZ2qo9ucHGiSUDEk3H2
	sQH4dBchm3ddMybS4yc0ZXov7DD3JdYEpM+1/21G7+urMPZzW3WpYva72ECP0kgN3aQUVrHAGx2oq
	REhrTlRBY+4HKWiC4IurZxRxy9u+mf/SMpJ50EYXmRQdW/rWo+tfunf/KQmGz4EHtEjEuwt/3H0R2
	kHn+0nLnkPub42ivl3CEZY/fQkh3IUyc88xcQpOkC76567ALrw7x7pFy5D4G6HJu0MuqR5BbijnWw
	bPVnrbx9YmJP+BI9NxKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmmnl-004pHY-2m;
	Thu, 13 Apr 2023 02:35:09 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmmni-004pFs-1V;
	Thu, 13 Apr 2023 02:35:08 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 36E5124DBE9;
	Thu, 13 Apr 2023 10:34:35 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 13 Apr
 2023 10:34:35 +0800
Received: from [192.168.125.82] (183.27.97.249) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 13 Apr
 2023 10:34:33 +0800
Message-ID: <b34a8d59-34e4-8358-9d2b-367f4707ca7c@starfivetech.com>
Date: Thu, 13 Apr 2023 10:34:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: Jack Zhu <jack.zhu@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
 <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
 <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
 <f6a4fb28-d635-4d99-44bb-d929cb41eef2@linaro.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <f6a4fb28-d635-4d99-44bb-d929cb41eef2@linaro.org>
X-Originating-IP: [183.27.97.249]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_193506_669610_85203ADD 
X-CRM114-Status: UNSURE (   8.51  )
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



On 2023/4/13 0:55, Krzysztof Kozlowski wrote:
> On 12/04/2023 14:42, Changhuang Liang wrote:
[...]
>>>>
>>>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>>>> ---
>>>>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 85 +++++++++++++++++++
>>>>  1 file changed, 85 insertions(+)
>>>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>>>>
>> [...]
>>>> +
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>> +
>>>> +  lane_maps:
>>>
>>> Why did this appear? Underscores are not allowed. It looks like you
>>> re-implement some standard property.
>>>
>>
>> Will change to lane-maps.
>> Yes, according to Vinod advice, lane mapping table use device tree
>> to parse makes sense.
> 
> Hm, I have a feeling that I saw such property, so you should dig into
> existing and in-flight bindings.
> 
> Best regards,
> Krzysztof
> 

A standard property? Like "clocks" or "resets"?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
