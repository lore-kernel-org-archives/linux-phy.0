Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8529AC636CC
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 07:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gs2HmxRUVHYtILyO7B7BKUds6PGgxfMg9JSOdrQ+Xqg=; b=C7IeUFvuWlBxOs
	q5j2t8emENWtk08u1TnWa/H8uLVmxbSuTNRzErpOx8mdeZFuFELoD9Ir7RJnhGaHgH2eC0tZnDzwk
	lcSBo78LtW4tkDCm9ltQBcRHQdXNZBIujc2NceVw/RNZiEi538fsqjW5TQrqYbZA9SMWBy5eXF18n
	AdsKweV51GeoQMzarSsoxq6tngPzXHFjsJt/lpRqiVGsoeFEr94/XKZ5jyfuHEmTp+9H8mELxcYry
	FYf6AoRLDRF9guQIjJec9IFHr9h+TAdENu9u8HYJkMJS6Lj1lTTU9Sk6VgMEXtH/N3qJFtKCtI6Rx
	1HF6hZNj6yKmw/IpJy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTZZ-00DU0N-U8; Mon, 13 Feb 2023 07:48:25 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTZU-00DTwI-3Y; Mon, 13 Feb 2023 07:48:23 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 8167924E377;
	Mon, 13 Feb 2023 15:47:35 +0800 (CST)
Received: from EXMBX162.cuchost.com (172.16.6.72) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Feb
 2023 15:47:35 +0800
Received: from [192.168.1.100] (183.27.97.168) by EXMBX162.cuchost.com
 (172.16.6.72) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Feb
 2023 15:47:34 +0800
Message-ID: <1e2a4708-1cff-e2be-9044-3e8d3082463a@starfivetech.com>
Date: Mon, 13 Feb 2023 15:47:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v1 2/4] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>, <devicetree@vger.kernel.org>, "Emil Renner
 Berthing" <kernel@esmil.dk>, <linux-kernel@vger.kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, <linux-riscv@lists.infradead.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, Jack Zhu <jack.zhu@starfivetech.com>, "Vinod
 Koul" <vkoul@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
	<linux-phy@lists.infradead.org>
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-3-changhuang.liang@starfivetech.com>
 <167603709304.2486157.3430490619494105631.robh@kernel.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <167603709304.2486157.3430490619494105631.robh@kernel.org>
X-Originating-IP: [183.27.97.168]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX162.cuchost.com
 (172.16.6.72)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_234820_526303_C4402DF4 
X-CRM114-Status: GOOD (  17.54  )
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



On 2023/2/10 21:58, Rob Herring wrote:
> 
> On Thu, 09 Feb 2023 22:17:11 -0800, Changhuang Liang wrote:
>> Starfive SoC like the jh7110 use a MIPI D-PHY RX controller based on
>> a M31 IP. Add a binding for it.
>>
>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>> ---
>>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 78 +++++++++++++++++++
>>  1 file changed, 78 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.example.dts:18:18: fatal error: dt-bindings/clock/starfive,jh7110-crg.h: No such file or directory
>    18 |         #include <dt-bindings/clock/starfive,jh7110-crg.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:434: Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1508: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230210061713.6449-3-changhuang.liang@starfivetech.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

The file dt-bindings/clock/starfive,jh7110-crg.h doesn't merge in the mailline, i will delete a reference to this file
and update clocks/resets macros to the real number in the starfive,dphy-rx.yaml.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
