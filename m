Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE47C636CC
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 02:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjEHWsh2yk3e9JzVuxdy/6F4djdurbb2TQX3Il63zJo=; b=EweEXjfsi+FfBB
	NOAaY87n+kxluoDZogaIm9ZKmB+3xayUlCoSZGeItzEKELLZBm67UYrKm6HgcUPMEvR/NfvIALMTq
	gDCW7zu4hiVsCRQEzkHZ54w1iDBpG+kw6HgQ2O/uSpuQmoagwHmQx728f08neFyk1bSNB/f4y8I9C
	/0U7l5N35dljPg49jVgm9xfWnarF3h8pgk8+iePfidGkmc8WQ+cEzWBSTbEv7uCZ4FA9GeSnZxvzR
	QZA2mDSOUs9uENBwyuZUcpY2mc0nPG50AeBGLIjT2pc7TlqsgOQ9gTwRIqyzwILeMxP83T5bUACgs
	DzJJQhcQ9coPvd6ULGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRkuH-00H6Zo-EL; Tue, 14 Feb 2023 02:18:57 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRkuC-00H6YL-WE; Tue, 14 Feb 2023 02:18:56 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 9BF7124E13F;
	Tue, 14 Feb 2023 10:18:27 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Feb
 2023 10:18:27 +0800
Received: from [192.168.1.100] (183.27.97.168) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 14 Feb
 2023 10:18:26 +0800
Message-ID: <7ea58081-02d8-ae53-ce49-1fafd5d26a58@starfivetech.com>
Date: Tue, 14 Feb 2023 10:18:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v1 1/4] riscv: dts: starfive: jh7110: Add aon syscon node
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
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-2-changhuang.liang@starfivetech.com>
 <e94c3d2c-10ab-01a6-ff41-cbca34b88fcf@linaro.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <e94c3d2c-10ab-01a6-ff41-cbca34b88fcf@linaro.org>
X-Originating-IP: [183.27.97.168]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_181853_218276_6BF509CC 
X-CRM114-Status: GOOD (  10.80  )
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



On 2023/2/13 17:28, Krzysztof Kozlowski wrote:
> On 10/02/2023 07:17, Changhuang Liang wrote:
>> Add aon syscon node for the Starfive JH7110 SoC. It can be used by
>> other modules such as DPHY.
>>
>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>> ---
>>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> index cfbaff4ea64b..bce3e407ab60 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> @@ -251,6 +251,11 @@ soc {
>>  		#size-cells = <2>;
>>  		ranges;
>>  
>> +		aon_syscon: aon_syscon@17010000 {
> 
> No underscores in node names, generic node names.
> 

OK, will change to "syscon".

> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
>> +			compatible = "syscon";
> 
> Nope. syscon cannot be alone. Run dtbs_check before sending DTS.
> 

OK, will fix it.

> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
