Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1458C32772
	for <linux-phy@archiver.kernel.org>; Tue, 23 Aug 2022 18:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NapxWENXtPej3y935l7kBLVgtjxCS9e1Lfs0s9fjSg=; b=RWuZ5AQQEOPjuH
	V62GDaBSMY3Iu17PCKEKdgaD5G1YJQ2lF7ZWkKobNLllUgxb5da6Tplv2KbGRGLVnuYQvNfYWI4qS
	M7yJsS5sFuYSnMCQytlllvUH9XBa4Fks409HJOipfMHfv4Cou1ANl6XTMvv44MWtTGIhmi6LeqQGP
	EGD+G/1BNFlFmaCaY7DI3+cbdEpWOOZSQpbr8LPZ81/9D9DCBYo0tDR5K3TVZQimSFDn+MxByCJ3g
	nCiLXLB393OVbYFuLh6P8xjQ1vKPuEDF2pPizUPKGNljB11nOiID6AqO0hY05b0mlw4NMHJ07QlSh
	+GHSqjuQDtebyyYydP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYvk-008DRd-4l; Tue, 23 Aug 2022 18:47:16 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYvh-008DOr-3N
	for linux-phy@lists.infradead.org; Tue, 23 Aug 2022 18:47:14 +0000
Received: by mail-oo1-f42.google.com with SMTP id c17-20020a4a8ed1000000b004452faec26dso2579736ool.5
        for <linux-phy@lists.infradead.org>; Tue, 23 Aug 2022 11:47:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=tHYjnzkUc2Gvy/va2RI2R+NsJzI7m0zroWi8SmJXJGE=;
        b=FQEmgutiWhqxyQdZaqAc1A1uWhFxaBP85zwgz6TWHhUC7+jliAu3xmG8yuJrn53fOG
         OcEJjMfKFqszhqSIDyxu63k3s2Z9vI7n/TVLAlFvsg/d6llyzLjaqjHltigszS9UIQf/
         b0qd9I144z6Vl1b233XsGg2I53jKbk7gjy4W//qmCcZ3o25VgUEImg6w3E/mieIEts9k
         iJLfQ839uv4BO2cgf4+TMG8t0DLvxtvPKeH46HspjuXSkXyQKIDG/S9ibdEXP9QcHzlp
         Xrn8AQUf4zsxrjKVKgLh/H+YmvgyTcvjULfMX9yQcttws282E15alPHPjEiSNg2SzvIy
         Y+Rg==
X-Gm-Message-State: ACgBeo1CT4YGznlSsqGLJY95ZEouldYWqAYILBPO97a+aAYW8faD66Ue
	hjfkcROZThhBdo6FlhgTjw==
X-Google-Smtp-Source: AA6agR7MkfBFGnMVdJ7ZdvTTyviNRzCXNrqYz7IHn6hyMrk7BM/gV7icm1f6LC3vQCNiknGqYTbZwg==
X-Received: by 2002:a4a:abcf:0:b0:428:47bc:4bc0 with SMTP id o15-20020a4aabcf000000b0042847bc4bc0mr8511436oon.15.1661280428885;
        Tue, 23 Aug 2022 11:47:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u15-20020a056870d58f00b0010e046491f8sm3980600oao.57.2022.08.23.11.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:47:08 -0700 (PDT)
Received: (nullmailer pid 3761037 invoked by uid 1000);
	Tue, 23 Aug 2022 18:47:07 -0000
From: Rob Herring <robh@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, UNGLinuxDriver@microchip.com, Rob Herring <robh+dt@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20220823060052.3921849-2-colin.foster@in-advantage.com>
References: <20220823060052.3921849-1-colin.foster@in-advantage.com> <20220823060052.3921849-2-colin.foster@in-advantage.com>
Subject: Re: [PATCH v1 1/1] dt-bindings: phy: ocelot-serdes: convert to YAML
Date: Tue, 23 Aug 2022 13:47:07 -0500
Message-Id: <1661280427.824099.3761036.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_114713_158053_2753625C 
X-CRM114-Status: GOOD (  12.20  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 22 Aug 2022 23:00:52 -0700, Colin Foster wrote:
> Convert the phy-ocelot-serdes device tree binding to the new YAML format.
> 
> Additionally, add the file to MAINTAINERS since the original file didn't
> exist.
> 
> Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
> ---
>  .../bindings/phy/phy-ocelot-serdes.txt        | 43 -------------
>  .../bindings/phy/phy-ocelot-serdes.yaml       | 61 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 62 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml: 'examlpes' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml: 'oneOf' conditional failed, one must be fixed:
	'unevaluatedProperties' is a required property
	'additionalProperties' is a required property
	hint: Either unevaluatedProperties or additionalProperties must be present
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml: ignoring, error in schema: 

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
