Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64277CAC5A5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 20:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NTo2JzkbqYtn95fioq5x3O8Ai/sp9ZMswamirxFD228=; b=z0G+Ik/9YnLUC0sc5N0G64I8HJ
	HX+PsqKGkNbveov5KmguqWhTTPWfG1yMswIDXgT3LDFkU5dBjVY74bbmxkGT0dg6ngxEVj07rsTur
	RgA0dRgb4fiw3Va503EtCZ6//5lTwZiB2ea/BWp0ggMwZSKiWRJ+7doHCcU6v57EsrLJWLQEMlaP/
	FmXsXP1bMmnwPNWRkfFo5md01+djMsnNcJv9wnnBYN3eHBi+5jBmAfCSJjiy49SEdfSgaHm07fObF
	V2hlFHQwaDahltsrp47cThB6wnvYuBdOZCvDlPZfsPM6TAhkvHiZ2T//oAT+uqq9WZe4UjEHvhoXV
	aAqY/SyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v19lW-0000000EnDa-412C;
	Tue, 23 Sep 2025 20:37:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v19lW-0000000EnDF-06Kr
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 20:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6FA31601A4;
	Tue, 23 Sep 2025 20:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C4CC4CEF5;
	Tue, 23 Sep 2025 20:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758659853;
	bh=YVPW5Ye5cNxlVyFYg/ZSnJCoFg8irtMONWQvci2e5sM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=BAp0hiTTP1m4ZZ9hKJWEJ5gQ04L+ADC0D/6vFA2Onwj5hlTLx83u3QEEav1rJK6r6
	 sWRg+K0w6L4yeaPlZ2Gdf+OttkHWJLRWL0Hx/HXa45ucqPBvVfHQXidgjN9a/YB0NU
	 Pq8HOFo7IpvNTSW6ZIUla1kvt6/patYUASlMoDvfqDshotOOHr8Ty1d1muNZfGggK0
	 DCs/4WMx5K1UKvsZAafK2PkDvNJW1zkqYYU+m78ZqyamTuAAkg2MLrRn/DbPvjOST9
	 2/n4OfdKEzFCY2KgsrqbG4NolBBTIU0ARW3qw/AZV5COeZqaI1cbS5O0L87Y2R1xAE
	 eFTbwIHvO8iOQ==
Date: Tue, 23 Sep 2025 15:37:31 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, 
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20250923194445.454442-13-vladimir.oltean@nxp.com>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-13-vladimir.oltean@nxp.com>
Message-Id: <175865985168.25580.11987486707034552652.robh@kernel.org>
Subject: Re: [PATCH v2 phy 12/16] dt-bindings: phy: lynx-28g: add
 compatible strings per SerDes and instantiation
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


On Tue, 23 Sep 2025 22:44:41 +0300, Vladimir Oltean wrote:
> Going by the generic "fsl,lynx-28g" compatible string and expecting all
> SerDes instantiations on all SoCs to use it was a mistake.
> 
> They all share the same register map, sure, but the number of protocol
> converters and lanes which are instantiated differs in a way that isn't
> detectable by the programming interface.
> 
> Using a separate compatible string per SerDes instantiation is
> sufficient for any device driver to distinguish these features and/or
> any instance-specific quirk. It also reflects how the SoC reference
> manual provides different tables with protocol combinations for each
> SerDes. NXP clearly documents these as not identical, and refers to them
> as such (SerDes 1, 2, etc).
> 
> The other sufficient approach would be to list in the device tree all
> protocols supported by each lane. That was attempted in this unmerged
> patch set for the older Lynx 10G family:
> https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
> 
> but IMO that approach is more drawn-out and more prone to errors,
> whereas this one is more succinct and obviously correct.
> 
> Since this compatible string change breaks forward compatibility of old
> kernels with new device trees (which is OK with the known users), this
> is a good time to fulfill another user request, which is that individual
> SerDes lanes should have had their own OF nodes, so that we can
> customize electrical parameters:
> https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
> 
> This request requires #phy-cells = <0>, and because "fsl,lynx-28g"
> requires #phy-cells = <1>, we obviously cannot have both at the same
> time.
> 
> Change the expected name of the top-level node to "serdes", and update
> the example too.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2:
> - drop the usage of "fsl,lynx-28g" as a fallback compatible
> - mark "fsl,lynx-28g" as deprecated
> - implement Josua's request for per-lane OF nodes for the new compatible
>   strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 146 +++++++++++++++++-
>  1 file changed, 140 insertions(+), 6 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:42:18: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:46:18: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:49:18: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250923194445.454442-13-vladimir.oltean@nxp.com

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
