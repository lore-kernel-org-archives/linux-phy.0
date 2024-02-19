Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D82C48BC3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 22:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zQ8QyMDKk+dOFMlQCvwyvfLmGpHJP8TAsKqkXjWsgOw=; b=ksIreLUqht610U8De6kbTZQNMB
	Svmqjm/A8UhSyts0wsIfSmPkknh2b71fZPVVlO/U0DoVSlaxkKu9cON7mkjSVpX0BAL/0bN9vtZdd
	3ocBhBiKVHF7eCG3rImHX6R+llbmQUDSDd0htOSo4hNNj+n83syu2141DuTMbOhmeJbnwEKMVxnxu
	rKj1mj7yd6T6NrKAfNrJVZPtWg38Ab7C+Y3iY60+Kx0xmnVDFHpv1a6c5468gsOKE3h0i7mKjwUHU
	ncraxTQUZ9onBzI3+oPwnbvflateyltBNAuxm4LcA3NjKCv8eDA2N+rf0WCoaVjjaGLqm9Uam6uR1
	7eA0fkVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCCs-0000000COXP-3LoQ;
	Mon, 19 Feb 2024 22:33:50 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCCp-0000000COWI-30j9
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 22:33:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C0F11CE1745;
	Mon, 19 Feb 2024 22:33:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D35BAC43390;
	Mon, 19 Feb 2024 22:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708382025;
	bh=O4fKZaiQPaIJXWA8cxp2UweHXAV6/z+SV96Qvk5/ds8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=h4wHDeYu4/HtbxYz0U4kYTobwm12vZ281WY71OJH+Mt7BsDyAom+6BGcHUrjbjse9
	 wj9CmiEgtz+iWnNh0CeW1z8PiINACwmCB5ngPRbYCyrr74Z9dOscXQp+0sXGL0fReF
	 RlP4ds36GBMHB9xBgTKE79rHggAHUdtqhq9F2s2PPWY1/UhasgBmWp7JnPUx3Yfnoa
	 x9AkGxUgwN/fQv+bsaM6dogAv/bAKL9bLTeH1zojQuG2aMEUNKI10xmVsXx1r11Rqf
	 iD94ptKNQV5jmUKd9htAefvoz4mJ4YhGf5QTR61yFpEyJI4pw+wW9MzswlNfl+MZD7
	 ZIvP1IekoOXnQ==
Date: Mon, 19 Feb 2024 16:33:43 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 David Yang <mmyangfl@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
Message-Id: <170838202273.730000.13574216479638773090.robh@kernel.org>
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert
 to YAML
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_143348_122580_BDA3E22A 
X-CRM114-Status: GOOD (  13.82  )
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


On Tue, 20 Feb 2024 05:27:58 +0800, Yang Xiwen wrote:
> Add missing compatible "hisilicon,hi3798mv100-usb2-phy" to compatible
> list due to prior driver change.
> 
> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
> compatible lists.
> 
> Fixes: 3940ffc65492 ("phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100")
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 95 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 ----------------
>  2 files changed, 95 insertions(+), 71 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml: patternProperties:phy@[0-9a-f]+:properties:reg: 'anyOf' conditional failed, one must be fixed:
	'descrption' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml: patternProperties:phy@[0-9a-f]+:properties:reg: 'anyOf' conditional failed, one must be fixed:
	'descrption' is not one of ['maxItems', 'description', 'deprecated']
		hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
	Additional properties are not allowed ('descrption' was unexpected)
		hint: Arrays must be described with a combination of minItems/maxItems/items
	'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	'descrption' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	1 is less than the minimum of 2
		hint: Arrays must be described with a combination of minItems/maxItems/items
	hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240220-inno-phy-v3-1-893cdf8633b4@outlook.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
