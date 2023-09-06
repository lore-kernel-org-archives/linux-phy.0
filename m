Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DFABEE14D0
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 19:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMoi4h/htBgrJXiOktEB5x7s1BpnbgvAGpZ0YCJVF5s=; b=u29Y+2oWtDiIl/
	qTEjUZ/+w+vkDFsnpX/7Sva+8pTTztiTdNDTcyJkae8ZdKhVINQdauoF4qtjpl/fSNw/VbXbs/m6u
	A3/Ue3bf/u6LW37S0SL9+vp/HAvapaSU06fp7+83ALWSDDp7au7FjOuo++iK8yYaCf0arQNdcWfPc
	nRWwYHNN9by+xSTRJ+I3IzKko7heI4JZlgvsMK2t9PQDn9WDWu03yXVDeYb67MpFWVcDsCnkp0hGb
	dhTqTGiBOgDf+a/7YX21RgJigJIrNJvV+k+i8RG6Qw2kpgd75BL9Kq9RAKUL8vgfDrrFk2QRrnXIB
	OSWYgOTtRLeRHlF3vP6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdxzJ-00Am0h-2S;
	Wed, 06 Sep 2023 19:14:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdxzG-00Am04-11;
	Wed, 06 Sep 2023 19:14:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id F083ECE1730;
	Wed,  6 Sep 2023 19:14:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 294B5C433C7;
	Wed,  6 Sep 2023 19:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694027685;
	bh=cvWljlbGuz9htPd1kRagzV1CLuk4G4aC/a8YJLwHfek=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Vd/4UN5S8rx+FxnQ8NBHwQ7683Z6AMcS5b2DEiAMjl6pYnLnmVxpUoEiLq4ynkC19
	 bPxyz6fiibeOkQ/x8tq50dIA3snDqN0+jJMAl9nPAGHsprRtrXKtyTdRPVaHRZio+e
	 BFZkCHy088xACsuW7W17yTLu5S9dG93P3y5alTUWvm0hwVS1NNZ0GuvNeyOOFo8Lst
	 5//3igiQDqIOQPwDu25TpfoxpIaAESzqAtJ+rZ3BntRrUCD3ZuNUy8goseXWsyrB/2
	 Hnc8erbcRHNYcmAI/p6OmAT7cFG7y1nK8HXo+xxwxyrlyFoAESwE+E3dkaW3NaIdjj
	 qpUEBkGcx1d9Q==
Received: (nullmailer pid 163960 invoked by uid 1000);
	Wed, 06 Sep 2023 19:14:42 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Richard Leitner <richard.leitner@skidata.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20230906184211.1857585-1-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
Message-Id: <169402768295.163944.9865349368413012631.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Date: Wed, 06 Sep 2023 14:14:42 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_121450_537465_8E5FBCEA 
X-CRM114-Status: GOOD (  14.15  )
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


On Wed, 06 Sep 2023 20:42:10 +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v2:
> - drop minItems from clocks
> - add description
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml: title: 'Freescale i.MX8MP HDMI PHY binding' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230906184211.1857585-1-l.stach@pengutronix.de

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
