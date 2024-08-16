Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36A04C52D7D
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQvGh0KyCGwftelI6imKHUFrdLkojrJ2S9wGXjrrssM=; b=unTcXZ2aD/o06Y
	urP2GkZANIf7Alky2FrCCzC7ylArkSwxkPr52WAvqBCfScm/oSo3a6GLZvylix1UZ+Niv141ygYZA
	/4CpROMmGYA5IyjdZqNVeutw9yfjCe9Ly0c6ECG/NwDbJtKwsXNy2yT0WaZoDmWEiv4yM4bzME6Pj
	erC+eGPWIIzScbBHDroLO9KFN+VMJ8uCU0FR9SLn05y8WiYMWod6d3cDuc9XuH1vAofsUMHTMzKcx
	eFRD75eJfPAoByC7GnZuJJMRr6kAH1g9JaZzqHELDQIfZ7p2RwBJcJPFq4tMmGEU+e+aiEm0sJ8ei
	eYLrwq6j7/tlM0v5mTjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5gw-0000000EESe-3WFw;
	Fri, 16 Aug 2024 22:45:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5fo-0000000EEG1-0VDJ;
	Fri, 16 Aug 2024 22:43:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 321D6CE2016;
	Fri, 16 Aug 2024 22:43:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E24CC32782;
	Fri, 16 Aug 2024 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723848233;
	bh=gG10md2RbDIZ1lWzCtyZyAMAPeUvAi0J/ZffRkMvvv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FBgBKNySTRq/4kgHL3EXUf/cn2I3TuDvyylObzVXzO3ebexdY4amhCIvTfg5Jk80v
	 o0eXYWbo6L9gGKHRIh+jJ/qsJpoJseduxUHNHKERSoKTOisVaZEudHHtRjGI3bjg81
	 y7wkDOK/0qZZ1SYapU2r27hUZT894D+b1djKlvtEkgIFdSIdrwwYz7C6IwnDgHmlcJ
	 1ltjhyjTDP894mKLmZz7yEbWNTO9bytpMmzZuZ+u5rBZEwAwbcuH8aAgOWXQbKXD9u
	 DyyYuGcWEP7QFPOvllztBdpNp5yPspQ0MKsNFm/Tnr3Ayp0NWvgAwS+Fr9I9qThRds
	 lgfkL6BNUsr9w==
Date: Fri, 16 Aug 2024 16:43:52 -0600
From: Rob Herring <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org,
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v3 01/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller processing units
Message-ID: <20240816224352.GE2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-2-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-2-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_154356_546799_55539E23 
X-CRM114-Status: GOOD (  10.09  )
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

On Wed, Jul 24, 2024 at 05:29:32PM +0800, Liu Ying wrote:
> Freescale i.MX8qxp Display Controller is implemented as construction set of
> building blocks with unified concept and standardized interfaces.  Document
> all existing processing units.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * Combine fsl,imx8qxp-dc-fetchunit-common.yaml,
>   fsl,imx8qxp-dc-fetchlayer.yaml and fsl,imx8qxp-dc-fetchwarp.yaml
>   into 1 schema doc fsl,imx8qxp-dc-fetchunit.yaml. (Rob)
> * Document all processing units. (Rob)
> 
> v2:
> * Drop fsl,dc-*-id DT properties. (Krzysztof)
> * Add port property to fsl,imx8qxp-dc-tcon.yaml. (Krzysztof)
> * Fix register range sizes in examples.
> 
>  .../display/imx/fsl,imx8qxp-dc-blitblend.yaml |  41 +++++
>  .../display/imx/fsl,imx8qxp-dc-clut.yaml      |  44 ++++++
>  .../imx/fsl,imx8qxp-dc-constframe.yaml        |  44 ++++++
>  .../display/imx/fsl,imx8qxp-dc-dither.yaml    |  45 ++++++
>  .../display/imx/fsl,imx8qxp-dc-extdst.yaml    |  72 +++++++++
>  .../display/imx/fsl,imx8qxp-dc-fetchunit.yaml | 141 ++++++++++++++++++
>  .../display/imx/fsl,imx8qxp-dc-filter.yaml    |  43 ++++++
>  .../display/imx/fsl,imx8qxp-dc-framegen.yaml  |  64 ++++++++
>  .../display/imx/fsl,imx8qxp-dc-gammacor.yaml  |  32 ++++
>  .../imx/fsl,imx8qxp-dc-layerblend.yaml        |  39 +++++
>  .../display/imx/fsl,imx8qxp-dc-matrix.yaml    |  44 ++++++
>  .../display/imx/fsl,imx8qxp-dc-rop.yaml       |  43 ++++++
>  .../display/imx/fsl,imx8qxp-dc-safety.yaml    |  34 +++++
>  .../imx/fsl,imx8qxp-dc-scaling-engine.yaml    |  83 +++++++++++
>  .../display/imx/fsl,imx8qxp-dc-signature.yaml |  53 +++++++
>  .../display/imx/fsl,imx8qxp-dc-store.yaml     |  96 ++++++++++++
>  .../display/imx/fsl,imx8qxp-dc-tcon.yaml      |  45 ++++++
>  17 files changed, 963 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-blitblend.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-clut.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-constframe.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-dither.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-extdst.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-fetchunit.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-filter.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-framegen.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-gammacor.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-layerblend.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-matrix.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-rop.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-safety.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-scaling-engine.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-signature.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-store.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-tcon.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
