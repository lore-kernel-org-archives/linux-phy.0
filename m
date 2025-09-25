Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCAFCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 13:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr5EKn0PQre8w1VvC+X49cfWgvVoc5PcW1O4kbtNdws=; b=Och0nIZSR0Uvuv
	Q/AwfGCnv3PNCwEK71K7SUByGIs8+q/eG0UKKRhFRBGY5lOcX+vh0mkaiesIpAUVVDD7pBYhBl6YS
	fNpHQmig81DdQtuq/IUBym1phwVpwWtkmZSw0h/xJ2pXi5tuTTgXnWUbfZUTsIN8ElJ1IPFX2dUBw
	JPbVX2mbCPJpBmJ2mwwjrfqmFPMRflFbpPgmQsAhUBJq+C9MLi2H5Uw3d+7ca5roSArOjWRfkyJP+
	Yugy9SaB1i81Jabzy1+fcFhJQqA5xcSUqXLk9NgOPGrkuGmodH5/sojHKQ0Peg6qZzxcYIpS59h6y
	TncApVBB8JEp1Vvua+GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1les-00000009E9Q-1IxS;
	Thu, 25 Sep 2025 13:05:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1leq-00000009E8Y-2p8l
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 13:05:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E1C960387;
	Thu, 25 Sep 2025 13:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0075C4CEF0;
	Thu, 25 Sep 2025 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758805511;
	bh=tBH6b/012H4Tj3wKXmB4ra2XVLYC8PL8Cd50q+FllFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKgCikrbATt1bRGTTX39ZjdL0+5WywwS0FCeUS8sm1FJVn3Cbskm8B++rV/M8Uw+1
	 cTB1mnZ9883WWFoU9+1KS2yRBMcfIANsnI331ZlHPxq+6eO48CbTPc2poK9h0fxxtG
	 wamLElqify2KdQBYUTZIaJpdpgCXE3/VbAcDIyKVM3Ahs2+rdOfF0BfGjoA9SeE0uo
	 SM6deBCAMmHDL28Kyt1e2cS4zoF87NT5iNMbU8wLwwW17xPgg4VPLSA5VvpGwXbx2M
	 TliN8NPDOjStbnrovbqsATLb3U+TgGBodmTzBvVnaoC08AWaX/X6fn8Tot6RaoLNMJ
	 aIyDXyZaHCO5g==
Date: Thu, 25 Sep 2025 08:05:10 -0500
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
Message-ID: <20250925130510.GA451343-robh@kernel.org>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-13-vladimir.oltean@nxp.com>
 <20250924135429.GA1523283-robh@kernel.org>
 <20250924154534.cyyfi2aez46iu2sw@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924154534.cyyfi2aez46iu2sw@skbuf>
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

On Wed, Sep 24, 2025 at 06:45:34PM +0300, Vladimir Oltean wrote:
> Hi Rob,
> 
> On Wed, Sep 24, 2025 at 08:54:29AM -0500, Rob Herring wrote:
> > > +description: |
> > 
> > Don't need '|' if no formatting to preserve.
> 
> Thanks, will drop.
> 
> > > +  "#address-cells":
> > > +    const: 1
> > > +    description: "Address cells for child lane nodes"
> > 
> > You don't need generic descriptions of common properties.
> 
> Ok, I'll also drop the description from #size-cells but keep it in
> #phy-cells (less obvious).
> 
> > > +
> > > +  "#size-cells":
> > > +    const: 0
> > > +    description: "Size cells for child lane nodes"
> > > +
> > >    "#phy-cells":
> > > +    description: "Number of cells in PHY specifier (legacy binding only)"
> > >      const: 1
> > >  
> > > @@ -32,9 +124,51 @@ examples:
> > >      soc {
> > >        #address-cells = <2>;
> > >        #size-cells = <2>;
> > > -      serdes_1: phy@1ea0000 {
> > > -        compatible = "fsl,lynx-28g";
> > > +
> > > +      serdes_1: serdes@1ea0000 {
> > > +        compatible = "fsl,lx2160a-serdes1";
> > >          reg = <0x0 0x1ea0000 0x0 0x1e30>;
> > > -        #phy-cells = <1>;
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        phy@0 {
> > > +          reg = <0>;
> > > +          #phy-cells = <0>;
> > > +        };
> > 
> > There's really no difference between having child nodes 0-7 and 8 phy 
> > providers vs. putting 0-7 into a phy cell arg and 1 phy provider. 
> > 
> > The only difference I see is it is more straight-forward to determine 
> > what lanes are present in the phy driver if the driver needs to know 
> > that. But you can also just read all 'phys' properties in the DT with a 
> > &serdes_1 phandle and determine that. Is that efficient? No, but you 
> > have to do that exactly once and probably has no measurable impact.
> > 
> > With that, then can't you simply just add a more specific compatible:
> > 
> > compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
> > 
> > Then you maintain some compatibility.
> > 
> > Rob
> 
> With the patches that have been presented to you thus far -- yes, this
> is the correct conclusion, there is not much of a difference. But this
> is not all.

That's all I can base my conclusion on if you don't tell me more...

> If I want in the future to apply the properties from
> Documentation/devicetree/bindings/phy/transmit-amplitude.yaml to just
> one of the lanes, how would I do that with just 1 phy provider? It's not
> so clear. Compared to 8 phy providers, each with its OF node => much
> easier to structure and to understand.

That's unfortunate that binding wasn't designed to support more than 
1 instance. You could do:

lane@0 {
  reg = <0>;
  tx-p2p-microvolt = <123>;
};

lane@1 {
  reg = <1>;
  tx-p2p-microvolt = <123>;
};

Yeah, that's about what you had, but it avoids changing the cell size. 
That should be a bit simpler to implement in the driver and to add to 
existing DTs as a fixup (because you don't have to change 'phys' entries 
everywhere).

Another option is go to cell size of 2 and stick the voltage in a cell. 
That approach doesn't work well if you have a 3rd, 4th, etc. cell to add 
later for more properties.

Your overlaying the old and new bindings approach works too. That 
approach is fine with me.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
