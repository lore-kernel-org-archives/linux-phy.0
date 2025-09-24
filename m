Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300D9CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 13:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdLYQWjC+9Zwn+keiRKRxR5Ior9P1zd7G0dkmoaAKKc=; b=f67l7E9DxKOYaz
	PyYjU2P72J/tGpRg0SoiHzZmQVsHi8LWp0LTyc938bmxF6LsaJNrSsLQuLomXiiQZeS+2mp0PZ/K6
	ueOy3PkBzYO3+Q1yfUJkBBc3acvPLz1k7AgkHxHun1gUfPnJWKkqN/9yU27vozCaOwCzjGB6rcgPP
	YlMsgBzjnsQGDSXk2Y1snbRmuM7Vh5uFNTQks4qcPC2ru3aHTTux4SwIWT9iwmbYF/mq5WTM3Mk8r
	xFDvgSTq1vZDGcZEXY+LKKU+xijHp2X8ouQmwrMM+8T9LRiDtt9S2iYPkHz8dy6DjmdS9l58C3HvH
	JmD+6VDvOIKbTox3Cmjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Px4-00000000Or9-3YGE;
	Wed, 24 Sep 2025 13:54:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Px2-00000000OqO-3eWP
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 13:54:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4F30860007;
	Wed, 24 Sep 2025 13:54:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 737C5C4CEF0;
	Wed, 24 Sep 2025 13:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758722072;
	bh=6j/GHnmpQtuCepYBArXOo7hgJmy5OohdGzQ6jgGXn4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J9mgBRE7UXmgl8VoPmdEtdxCI1XFFC0a+EZLaHwyoRLORSQka9pzw0AnQzFhBlacG
	 Z8Jfdf8uKmLpcHsCCiMRbWDmjklgA95/2MZlVxkUewWJBzRjx2HYqu7gUAv6efX7F5
	 XOvDSZ9JsLbRwZkBOecWvSjcHC4ihlNkKqOw9zifSQJsiM/sfZWwUnHdo+NZJg4vtr
	 lZN7PetOCuM/0BGXNST5GrJCimdU3hhfV103RcbXAmy4utiijFWsp+CK0HB6/w0M+4
	 3By/cO2BHSS5ZOEVWfL86Sg5wTWxCkycpHcXC21yXZ90gj7RuFwRD0V+O5Y90Vi4ij
	 SYVIB4Wa8ZJKA==
Date: Wed, 24 Sep 2025 08:54:29 -0500
From: Rob Herring <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 phy 12/16] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250924135429.GA1523283-robh@kernel.org>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-13-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250923194445.454442-13-vladimir.oltean@nxp.com>
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

On Tue, Sep 23, 2025 at 10:44:41PM +0300, Vladimir Oltean wrote:
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
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> index ff9f9ca0f19c..390c9ecd94cc 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> @@ -9,21 +9,113 @@ title: Freescale Lynx 28G SerDes PHY
>  maintainers:
>    - Ioana Ciornei <ioana.ciornei@nxp.com>
>  
> +description: |

Don't need '|' if no formatting to preserve.

> +  The Lynx 28G is a multi-lane, multi-protocol SerDes (PCIe, SATA, Ethernet)
> +  present in multiple instances on NXP LX2160A and LX2162A SoCs. All instances
> +  share a common register map and programming model, however they differ in
> +  supported protocols per lane in a way that is not detectable by said
> +  programming model without prior knowledge. The distinction is made through
> +  the compatible string.
> +
>  properties:
>    compatible:
> -    enum:
> -      - fsl,lynx-28g
> +    oneOf:
> +      - const: fsl,lynx-28g
> +        deprecated: true
> +        description: |
> +          Legacy compatibility string for Lynx 28G SerDes. The capabilities
> +          of managed lanes are limited to 1GbE and 10GbE (depending on the
> +          availability of an adequate PLL clock net frequency). Deprecated, use
> +          device-specific strings instead.
> +      - enum:
> +          - fsl,lx2160a-serdes1
> +          - fsl,lx2160a-serdes2
> +          - fsl,lx2160a-serdes3
> +          - fsl,lx2162a-serdes1
> +          - fsl,lx2162a-serdes2
>  
>    reg:
>      maxItems: 1
>  
> +  "#address-cells":
> +    const: 1
> +    description: "Address cells for child lane nodes"

You don't need generic descriptions of common properties.

> +
> +  "#size-cells":
> +    const: 0
> +    description: "Size cells for child lane nodes"
> +
>    "#phy-cells":
> +    description: "Number of cells in PHY specifier (legacy binding only)"
>      const: 1
>  
> +patternProperties:
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    description: Individual SerDes lane acting as PHY provider
> +
> +    properties:
> +      reg:
> +        description: Lane number
> +        maxItems: 1
> +
> +      "#phy-cells":
> +        description: Number of cells in PHY specifier for this lane
> +        const: 0
> +
> +    required:
> +      - reg
> +      - "#phy-cells"
> +
> +    additionalProperties: false
> +
>  required:
>    - compatible
>    - reg
> -  - "#phy-cells"
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: fsl,lynx-28g
> +    then:
> +      # Legacy case: parent is PHY provider
> +      properties:
> +        "#phy-cells":
> +          const: 1
> +        "#address-cells": false
> +        "#size-cells": false
> +      required:
> +        - "#phy-cells"
> +      patternProperties:
> +        "^phy@[0-9a-f]+$": false
> +    else:
> +      # Modern case: children are PHY providers
> +      properties:
> +        "#phy-cells": false
> +      required:
> +        - "#address-cells"
> +        - "#size-cells"
> +
> +  # LX2162A SerDes 1 has fewer lanes than the others
> +  - if:
> +      properties:
> +        compatible:
> +          const: fsl,lx2162a-serdes1
> +    then:
> +      patternProperties:
> +        "^phy@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              description: Lane number (lanes 4-7 only for LX2162A SerDes 1)
> +              enum: [4, 5, 6, 7]
> +    else:
> +      patternProperties:
> +        "^phy@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              description: Lane number (lanes 0-7)
> +              enum: [0, 1, 2, 3, 4, 5, 6, 7]
>  
>  additionalProperties: false
>  
> @@ -32,9 +124,51 @@ examples:
>      soc {
>        #address-cells = <2>;
>        #size-cells = <2>;
> -      serdes_1: phy@1ea0000 {
> -        compatible = "fsl,lynx-28g";
> +
> +      serdes_1: serdes@1ea0000 {
> +        compatible = "fsl,lx2160a-serdes1";
>          reg = <0x0 0x1ea0000 0x0 0x1e30>;
> -        #phy-cells = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        phy@0 {
> +          reg = <0>;
> +          #phy-cells = <0>;
> +        };

There's really no difference between having child nodes 0-7 and 8 phy 
providers vs. putting 0-7 into a phy cell arg and 1 phy provider. 

The only difference I see is it is more straight-forward to determine 
what lanes are present in the phy driver if the driver needs to know 
that. But you can also just read all 'phys' properties in the DT with a 
&serdes_1 phandle and determine that. Is that efficient? No, but you 
have to do that exactly once and probably has no measurable impact.

With that, then can't you simply just add a more specific compatible:

compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";

Then you maintain some compatibility.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
