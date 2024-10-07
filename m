Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA27CFB450
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 18:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x0aDSkPKdC85wzVzRDNMC+9kuOE1liDBx/eVG6NbtQE=; b=TGiEITklC3iOA4+LuOAdoFLV9X
	FlN9IYQ5dvu52AlykeYc0SYXiHofEkq4R55INtUfHcMPsufPEoqsj7lfIkooSo37tp1BfvTPHRCsN
	s4XZJwwM73FzXjEsJmjH8+IAr2EsBtuO8tRKJIfJ0J/GcXopkQIteMbuFjQhkKBQRTiD+6kEgGKFy
	czj2gBozqyeQCXV2AQdrsx41tXfqsaPf1WmSm5nhgiNxeI9MjPqhSxXPeRhcmPYTQnlH9PdRIdBQL
	qUuzEemrh5c0xuCxdsWwp79fYNv0dIkk8c0dq/VF3rRNGj3FIZ5bpKhJo1cdbCXTue3N/hqPVIwvu
	QVOvrMlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsKD-00000003SAY-1l1t;
	Mon, 07 Oct 2024 18:19:17 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsIx-00000003S0v-3XgR
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 18:18:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1B508A41FB5;
	Mon,  7 Oct 2024 18:17:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C73C3C4CEC6;
	Mon,  7 Oct 2024 18:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728325077;
	bh=EgD85lVP1+jkagIKQHvW1N409g0GPa++moRMACPtH1E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=b2bncuH3CEhR5A4aAlSCGzGL24XMgO7tWXcQ1HAXbebpTXo7L5PmZ03y5eObc22ec
	 1ox+7omiwLbIlY3Ec7zsKYCT4j9T9OU6s42sM8XVwR0ykgh/rALOfXZmT9p4b8YU2v
	 hmC71A9k9DiSnXGmnnwRpUMNn/tVuXl2g0Qv0NIHrIrkZXSBnXrB6//5NftCCesw1a
	 hDgQdAZs89USPi3th0H8j+Rtl/UiJgDNTRBls/pDxDzJe9ihm2mQx+jTW+9oVTkSqQ
	 0orePizyL0glDcuo0WQtVYDI4FGdSEHtzwbyF+mZmNjNqWuPO6V314K1tym9TGnYFW
	 otlCUWu8HvTQw==
Date: Mon, 07 Oct 2024 13:17:57 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, krzk@kernel.org
In-Reply-To: <20241007163623.3274510-2-markus.stockhausen@gmx.de>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
Message-Id: <172832507719.1884666.16767119996059133324.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_111800_046436_A84305DF 
X-CRM114-Status: GOOD (  10.96  )
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


On Mon, 07 Oct 2024 12:36:21 -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> network Switch SoCs with up to 52 ports divided into four different
> model lines.
> 
> Changes in v2:
> - new subject
> - removed patch command sequences
> - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml: 'reguired' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:41.33-46.11: ERROR (duplicate_label): /example-1/serdes@1b00a000: Duplicate label 'serdes' on /example-1/serdes@1b00a000 and /example-0/serdes@1b00e780
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:64.33-69.11: ERROR (duplicate_label): /example-2/serdes@1b0003b0: Duplicate label 'serdes' on /example-2/serdes@1b0003b0 and /example-0/serdes@1b00e780
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:87.33-92.11: ERROR (duplicate_label): /example-3/serdes@1b005638: Duplicate label 'serdes' on /example-3/serdes@1b005638 and /example-0/serdes@1b00e780
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [scripts/Makefile.dtbs:129: Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dtb] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1442: dt_binding_check] Error 2
make: *** [Makefile:224: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241007163623.3274510-2-markus.stockhausen@gmx.de

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
