Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98140CAC5BB
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 03:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULXPiudGRMOoyTEad3zxqA0280BzO4YlZJQA1sivaDM=; b=ahZ7gndBRNbZJn
	ExBZRDdMQ1Wn0XLBChvWBVYirgREdhO+ELJqlUPGbqrcZOapI4h4HQuwmpBdhB7+bppiD72Sg9a3g
	ox4ocSB0AVZ3Rm8eXpA6kY48zfrXIDaFXl908nHi1yhdIFaqIUdyDBWr/houl4WiqPblHntT6gw18
	ZWtm5XPKXFQRz8VuJTi84MneVR0HO7EAQSs6bvSBrqzhO0a/VXaUR1C6tWT6hwxipazTj5QR1WR4i
	EGFGsThXqEwdGbe+QvijfgQVsO2bFDp8r9BlfrIYgZ1rF15lX3DxZIdvATlLHLEN8YhH/2g+892Tq
	aFmrrfQQbCiaqwnfkQxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v49bT-00000009Vh8-0Flf;
	Thu, 02 Oct 2025 03:03:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v49bQ-00000009VgV-35pb
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 03:03:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B5AC481F1;
	Thu,  2 Oct 2025 03:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AE6FC4CEF1;
	Thu,  2 Oct 2025 03:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759374211;
	bh=WvyBzuDaQ3blWA584dKJhZFO1Jq9yacx6hg9HYvyumU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caTPnGOS+3sOts5DOMdVl+rCnhoiB0MlbofT5EwdNb2BXp2hzCek3hhT18JybYd+N
	 EJy2GlrLW48LivFXMfkpVhd0K7THzQ8/Vfkem/51bJ58rb81zYlm6a6EU6TYjGov3u
	 bs5gYfrrjLwa4F48Tp+m6HqOSWRV4Hqa6D/+ExHYaIkw1WHvusEebrZ8SnvmBt9HXe
	 qZ4gFTx2jrJjBCJU/PmPVRCZyPtKBsJiNXfh8TafFpEcDGOYSEPUQ+hd70BMe8aeJN
	 3zCc4gV6hGx1Cnbfwlj5l4J6zqj0AqnyxSFlUrbc9yPv5kpMh5D3cIVq+2IL5Col1D
	 U7X7lYNmX465g==
Date: Wed, 1 Oct 2025 22:03:30 -0500
From: Rob Herring <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Josua Mayer <josua@solid-run.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 phy 12/17] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20251002030330.GA2964719-robh@kernel.org>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-13-vladimir.oltean@nxp.com>
 <20250930140735.mvo3jii7wgmzh2bs@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930140735.mvo3jii7wgmzh2bs@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_200332_826762_9CA056B5 
X-CRM114-Status: GOOD (  56.20  )
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

On Tue, Sep 30, 2025 at 05:07:35PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 26, 2025 at 09:05:00PM +0300, Vladimir Oltean wrote:
> > Going by the generic "fsl,lynx-28g" compatible string and expecting all
> > SerDes instantiations on all SoCs to use it was a mistake.
> > 
> > They all share the same register map, sure, but the number of protocol
> > converters and lanes which are instantiated differs in a way that isn't
> > detectable by the programming interface.
> > 
> > Using a separate compatible string per SerDes instantiation is
> > sufficient for any device driver to distinguish these features and/or
> > any instance-specific quirk. It also reflects how the SoC reference
> > manual provides different tables with protocol combinations for each
> > SerDes. NXP clearly documents these as not identical, and refers to them
> > as such (SerDes 1, 2, etc).
> > 
> > The other sufficient approach for Lynx 28G would be to list in the
> > device tree all protocols supported by each lane. That would be
> > insufficient for the very similar Lynx 10G SerDes however, for which
> > there exists a higher degree of variability in the PCCR register values
> > that need to be written per protocol. This attempt can be seen in this
> > unmerged patch set for Lynx 10G:
> > https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
> > 
> > but that approach is more drawn-out and more prone to errors, whereas
> > this one is more succinct and obviously correct.
> > 
> > One aspect which is different with the per-SoC compatible strings is
> > that they have one PHY provider for each lane (and #phy-cells = <0> in
> > lane sub-nodes), rather than "fsl,lynx-28g" which has a single PHY
> > provider for all lanes (and #phy-cells = <1> in the top-level node).
> > 
> > This is done to fulfill Josua Mayer's request:
> > https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
> > to have OF nodes for each lane, so that we can further apply schemas
> > such as Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
> > individually.
> > 
> > This is the easiest and most intuitive way to describe that. The above
> > is not the only electrical tuning that needs to be done, but rather the
> > only one currently standardized in a schema. TX equalization parameters
> > are TBD, but we need to not limit ourselves to just what currently exists.
> > 
> > Luckily, we can overlap the modern binding format over the legacy one
> > and they can coexist without interfering. Old kernels use compatible =
> > "fsl,lynx-28g" and the top-level PHY provider, whereas new kernels probe
> > on e.g. compatible = "fsl,lx2160a-serdes1" and use the per-lane PHY
> > providers.
> > 
> > Overlaying modern on top of legacy is only necessary for SerDes 1 and 2.
> > LX2160A SerDes #3 (a non-networking SerDes) is not yet present in any
> > device trees in circulation, and will only have the device-specific
> > compatible (even though it shares the Lynx 28G programming model,
> > specifying the "fsl,lynx-28g" compatible string for it provides no
> > benefit that I can see).
> > 
> > Change the expected name of the top-level node to "serdes", and update
> > the example too.
> > 
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > ---
> > v2->v3:
> > - re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
> >   top-level "serdes" node
> > - drop useless description texts
> > - fix text formatting
> > - schema is more lax to allow overlaying old and new required properties
> > v1->v2:
> > - drop the usage of "fsl,lynx-28g" as a fallback compatible
> > - mark "fsl,lynx-28g" as deprecated
> > - implement Josua's request for per-lane OF nodes for the new compatible
> >   strings
> > 
> >  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 159 +++++++++++++++++-
> >  1 file changed, 152 insertions(+), 7 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > index ff9f9ca0f19c..e8b3a48b9515 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > @@ -9,21 +9,123 @@ title: Freescale Lynx 28G SerDes PHY
> >  maintainers:
> >    - Ioana Ciornei <ioana.ciornei@nxp.com>
> >  
> > +description:
> > +  The Lynx 28G is a multi-lane, multi-protocol SerDes (PCIe, SATA, Ethernet)
> > +  present in multiple instances on NXP LX2160A and LX2162A SoCs. All instances
> > +  share a common register map and programming model, however they differ in
> > +  supported protocols per lane in a way that is not detectable by said
> > +  programming model without prior knowledge. The distinction is made through
> > +  the compatible string.
> > +
> >  properties:
> >    compatible:
> > -    enum:
> > -      - fsl,lynx-28g
> > +    oneOf:
> > +      - const: fsl,lynx-28g
> > +        deprecated: true
> > +        description:
> > +          Legacy compatibility string for Lynx 28G SerDes. Any assumption
> > +          regarding whether a certain lane supports a certain protocol may
> > +          be incorrect. Deprecated except when used as a fallback. Use
> > +          device-specific strings instead.
> > +      - items:
> > +          - const: fsl,lx2160a-serdes1
> > +          - const: fsl,lynx-28g
> > +      - items:
> > +          - const: fsl,lx2160a-serdes2
> > +          - const: fsl,lynx-28g
> > +      - items:
> > +          - const: fsl,lx2162a-serdes1
> > +          - const: fsl,lynx-28g
> > +      - items:
> > +          - const: fsl,lx2162a-serdes2
> > +          - const: fsl,lynx-28g
> > +      - const: fsl,lx2160a-serdes3
> >  
> >    reg:
> >      maxItems: 1
> >  
> > -  "#phy-cells":
> > -    const: 1
> > +  "#address-cells": true
> > +
> > +  "#size-cells": true
> > +
> > +  "#phy-cells": true
> > +
> > +patternProperties:
> > +  "^phy@[0-9a-f]+$":
> > +    type: object
> > +    description: Individual SerDes lane acting as PHY provider
> > +
> > +    properties:
> > +      reg:
> > +        description: Lane index as seen in register map
> > +        maxItems: 1
> > +
> > +      "#phy-cells":
> > +        const: 0
> > +
> > +    required:
> > +      - reg
> > +      - "#phy-cells"
> > +
> > +    additionalProperties: false
> >  
> >  required:
> >    - compatible
> >    - reg
> > -  - "#phy-cells"
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: fsl,lynx-28g
> > +    then:
> > +      # Legacy case: parent is the PHY provider, cell encodes lane index
> > +      properties:
> > +        "#phy-cells":
> > +          const: 1
> > +      required:
> > +        - "#phy-cells"
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,lx2160a-serdes1
> > +              - fsl,lx2160a-serdes2
> > +              - fsl,lx2160a-serdes3
> > +              - fsl,lx2162a-serdes1
> > +              - fsl,lx2162a-serdes2
> > +    then:
> > +      # Modern binding: lanes must have their own nodes
> > +      properties:
> > +        "#address-cells":
> > +          const: 1
> > +        "#size-cells":
> > +          const: 0
> > +      required:
> > +        - "#address-cells"
> > +        - "#size-cells"
> > +
> > +  # LX2162A SerDes 1 has fewer lanes than the others
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: fsl,lx2162a-serdes1
> > +    then:
> > +      patternProperties:
> > +        "^phy@[0-9a-f]+$":
> > +          properties:
> > +            reg:
> > +              enum: [4, 5, 6, 7]
> > +    else:
> > +      patternProperties:
> > +        "^phy@[0-9a-f]+$":
> > +          properties:
> > +            reg:
> > +              enum: [0, 1, 2, 3, 4, 5, 6, 7]
> >  
> >  additionalProperties: false
> >  
> > @@ -32,9 +134,52 @@ examples:
> >      soc {
> >        #address-cells = <2>;
> >        #size-cells = <2>;
> > -      serdes_1: phy@1ea0000 {
> > -        compatible = "fsl,lynx-28g";
> > +
> > +      serdes_1: serdes@1ea0000 {
> > +        compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
> >          reg = <0x0 0x1ea0000 0x0 0x1e30>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> >          #phy-cells = <1>;
> > +
> > +        phy@0 {
> > +          reg = <0>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@1 {
> > +          reg = <1>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@2 {
> > +          reg = <2>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@3 {
> > +          reg = <3>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@4 {
> > +          reg = <4>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@5 {
> > +          reg = <5>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@6 {
> > +          reg = <6>;
> > +          #phy-cells = <0>;
> > +        };
> > +
> > +        phy@7 {
> > +          reg = <7>;
> > +          #phy-cells = <0>;
> > +        };
> >        };
> >      };
> > -- 
> > 2.34.1
> >
> 
> I should have realized sooner when Rob/Josua requested the changes for
> backwards schema compatibility in v2:
> https://lore.kernel.org/lkml/20250925080317.2ocgybitliwddhcf@skbuf/
> that despite our attempts to preserve compatibility with old kernels,
> we actually fail to do that. Actually I should have documented my
> earlier thought process better, where I already came to that conclusion,
> but which I had forgotten when told that this could work...
> 
> The SerDes schema itself is technically backwards-compatible, but the
> problem is with consumers, which aren't. In old device trees, they have:
> 
> 	phys = <&serdes_1 0>;
> 
> and in new ones, they have:
> 
> 	phys = <&serdes_1_lane_a>;
> 
> Because the consumer has a single "phys" phandle to the PHY provider, it
> either has to point to one, or to the other. But on old kernels, we do
> not register PHY providers per lane, so "phys = <&serdes_1_lane_a>"
> results in a broken reference.
> 
> There are 2 directions to go from here:
> 1. Have optional per-lane "phy" OF node children, which exist solely for
>    tuning electrical parameters. We need to keep the top-level SerDes as
>    the only PHY provider, with #phy-cells = <1> denoting the lane.
> 
> 2. Accept that keeping "fsl,lynx-28g" and overlaid properties has
>    absolutely no practical benefit, and drop them (effectively returning
>    to Conor's suggestion, as implemented in v2)
> 
> 3. Extend the schema and the driver support for it as a backportable bug
>    fix, to allow registering PHY providers for lanes with OF nodes in
>    stable kernels. This avoids regressing when the device trees are
>    updated, assuming the stable kernel is also updated.
> 
> It's not that I particularly like #2, but going with #1 would imply that
> lane OF nodes exist, but the "phys" phandles do not point to them.
> 
> Combine that with the fact that anything we do with the 28G Lynx
> bindings will have to be replicated, for uniformity's sake, with the
> upcoming 10G Lynx SerDes binding (very similar hardware IP), and #1 is
> suddenly not looking so pretty at all. I.e. introducing the 10G Lynx
> bindings like the 28G Lynx ones would mean deviating from the widely
> established norm, and introducing them like the widely established norm
> would mean deviating from the 28G Lynx. I can easily see how someone
> might look at them one day and think "hmm, can't we make them more
> uniform?"
> 
> OTOH, the fact that device tree updates require kernel updates (as
> implied by #2) is acceptably by everyone in this thread who expressed an
> opinion on this topic.
> 
> As for option #3, while IMO it would be a justified "new feature as
> bug fix", it sounds a bit counterintuitive and I'm afraid I won't manage
> to convince all maintainers along the way that this is the way forward.
> 
> I'll wait for the merge window to close before reposting anything, but
> I'd like an explicit ack from Rob and Josua in the meantime, whose
> change request I'd be effectively reverting, to make sure that this
> topic is closed.

If #2 is not going to upset anyone (that their device stopped working), 
then that route is fine.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
