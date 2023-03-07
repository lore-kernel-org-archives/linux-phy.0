Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CC2EC6FD1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 06:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWMYI/1xyu2kHBFe/kmdagFeAq3F/xDL7wys4bxJ2zI=; b=tba+kylsbMIlWw
	rztiGvnbNBq/Zb2zq97T3PmkZNeW89fCerLOYlLwrsfOj1eBPIyb9scIFiXFP0XXhNzi5PIjzyl3l
	L5ekCqYsLDb9vDa8wrtySABI8/ZTgKPFT7tg+KXoPh3aWNB2FRJ9nZ3JTkw5ITBquVK2X1obu5iZt
	KiLTPWEmI59+0puqaSfudUv4wVjiOa1HkqEpsV+4BBJ455X+Q7+G8AaRHwrn0elRnmVUFU+Z5vsSK
	4K0F1KVB04ATp5u2+FVaevxHtoqPW+a175/XtUwTNxhknAmujD5Wai2/8PlWNV/Da1Rq820ZS8VT+
	LZiNJeRBRWRY+uP/jhhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZRI5-00GSTU-Nz; Tue, 07 Mar 2023 06:59:17 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZRI1-00GSLZ-9R
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 06:59:16 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id D868224E2C5;
	Tue,  7 Mar 2023 14:58:28 +0800 (CST)
Received: from EXMBX071.cuchost.com (172.16.6.81) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 7 Mar
 2023 14:58:28 +0800
Received: from [192.168.125.108] (183.27.97.46) by EXMBX071.cuchost.com
 (172.16.6.81) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 7 Mar
 2023 14:58:28 +0800
Message-ID: <3871e4ad-af5a-4c71-aee1-abcd60186012@starfivetech.com>
Date: Tue, 7 Mar 2023 14:58:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: Add StarFive JH7110 USB dt-binding
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: <linux-phy@lists.infradead.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, <linux-kernel@vger.kernel.org>, "Vinod
 Koul" <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	<devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "Emil Renner
 Berthing" <kernel@esmil.dk>
References: <20230306095257.25957-1-minda.chen@starfivetech.com>
 <167810459782.12203.9014682894570874393.robh@kernel.org>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <167810459782.12203.9014682894570874393.robh@kernel.org>
X-Originating-IP: [183.27.97.46]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX071.cuchost.com
 (172.16.6.81)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_225913_675013_B970CFD1 
X-CRM114-Status: GOOD (  15.75  )
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



On 2023/3/6 20:25, Rob Herring wrote:
> 
> On Mon, 06 Mar 2023 17:52:57 +0800, Minda Chen wrote:
>> Add StarFive JH7110 SoC USB 3.0 phy dt-binding.
>> USB controller is cadence USB 3.0 IP.
>> 
>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>> ---
>>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 116 ++++++++++++++++++
>>  1 file changed, 116 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
>> 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:30:8: [warning] wrong indentation: expected 6 but found 7 (indentation)
> ./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:40:8: [warning] wrong indentation: expected 6 but found 7 (indentation)
> ./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: [error] syntax error: mapping values are not allowed here (syntax)
> 
> dtschema/dtc warnings/errors:
> make[1]: *** Deleting file 'Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dts'
> Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: mapping values are not allowed in this context
> make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dts] Error 1
> make[1]: *** Waiting for unfinished jobs....
> ./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: mapping values are not allowed in this context
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml: ignoring, error parsing file
> make: *** [Makefile:1512: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230306095257.25957-1-minda.chen@starfivetech.com
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
Thanks! I will fix this issue in patch v2.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
