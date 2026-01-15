Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70977D4661E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 19:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o5oWoeGIzD98O5lEqWLIx7GXC4BL6A4zjxbu+q1xDw=; b=RR1tklN3DOaIR7
	deK8XGDYndLvWRkOQg7/Qy/oQCStvQ07esmx1o0Mfs6P/4RnNNjZcTBVOGV9/qRVLxDDc56eZYj0b
	7X2jKNJhlKrrWaa5zc6rJmxCbJCxnrJawBki46muJnsO8Y5duEYXcTagASpkFTywYS4omWLfcW54L
	sLr52MdZmJ4ZxUMGOiMOCxfx3C7rgrG/+OVNCHgS5zCgSGY7UddTLPqpZUZCoTNPurYV3kBjV8+pD
	Y+WCYYFjzk3+HYALd7o85ATSgbQLbBplMei22b3sZhEwr3VM6NWMk5+KbWQbWi+hnpmfsMouTwcbE
	VSOL7JWb4myrQSvFVurQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgTO6-0000000D6Hy-06RV;
	Thu, 15 Jan 2026 19:52:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgTO4-0000000D6Hs-2gS4
	for linux-phy@bombadil.infradead.org;
	Thu, 15 Jan 2026 19:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=gBbyrBlWi0IXIJ3oWLQD0NO550avJK6yYpgFFOd1ZVc=; b=DHz2bL+lC7gq2b/h6uMY1gDxwq
	MMUhSH9xQJNL5NwB9pkRgkYHDNv3NUsUs5y50o/cl9c/OqaRPLjjLVa1tjRY2hQFjSOLSHQbpRZof
	wvx/Om1faxf42VUTw4YavVn3tSQTpyFh992wVRh/vITKUNn7cuq+s252E5+WwTH2e3PphRRk/Paab
	Ae+GtKwDJWzdIAp8RyEi376sd8EOtOxS5Yt2NFDgmHrGSM0tN/TfiJLrAonTpU5sDwtLsCOQdB/zp
	zNzRGzcCkecR7NuCn88WEUiTjmsllpwMm7PEm9tuyTJxvd7qv9MEllJ3Eds2kR4iCHbU1zeUBEoFy
	IVUTDBvw==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgTO1-00000007YTi-0WEL
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 19:52:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8211643EF8;
	Thu, 15 Jan 2026 19:52:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23A87C116D0;
	Thu, 15 Jan 2026 19:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768506723;
	bh=//kBx7ppGNM7srddCfSx5X1Hj9UEY3/BlqtI1+Rrfdo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M8LnFsKP9vuB8TLWzXkSqj6bv+7IAzahiT7yqeOPhJbSq6ofXxBEy9tjqJlXQYHZB
	 WSCWGwxjveUXlemRZA3bt+snY9lIeUvHIU6qgV37HvVXwnZamxWCx0qayacKEAnqhO
	 skLdErbMsIHCvVxM8mHzG7xhyNULRVJ1AQ4B67HZfGkGmAHk07PKf9BueIJ2q4Ug4x
	 DVwAN3K6eUQEMFlG2Pib/c464pu3cN3q8z6Uwn958YBABTjWq8YdK7bifJhi8I6n3M
	 ugqhae9ohaPjhX/tI2ZagWWo09FC/8lVoVJ156O34dWQKn/w7kcX3j7PXwzhIzh7lP
	 HGqKl18saozOA==
Date: Thu, 15 Jan 2026 13:52:02 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [PATCH phy 2/8] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <176850672122.1082429.444623229961712368.robh@kernel.org>
References: <20260114152111.625350-1-vladimir.oltean@nxp.com>
 <20260114152111.625350-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114152111.625350-3-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_195205_656246_B6701B9C 
X-CRM114-Status: GOOD (  31.01  )
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


On Wed, 14 Jan 2026 17:21:05 +0200, Vladimir Oltean wrote:
> The 28G Lynx SerDes is instantiated 3 times in the NXP LX2160A SoC and
> twice in the NXP LX2162A. All these instances share the same register
> map, but the number of lanes and the protocols supported by each lane
> differs in a way that isn't detectable by the programming model.
> 
> Going by the generic "fsl,lynx-28g" compatible string and expecting all
> SerDes instantiations to use it was a mistake that needs to be fixed.
> 
> The two major options considered are
> (a) encode the SoC and the SerDes instance in the compatible string,
>     everything else is the responsibility of the driver to derive based
>     on this sufficient information
> (b) add sufficient device tree properties to describe the per-lane
>     differences, as well as the different lane count
> 
> Another important consideration is that any decision made here should
> be consistent with the decisions taken for the yet-to-be-introduced
> 10G Lynx SerDes (older generation for older SoCs), because of how
> similar they are.
> 
> I've seen option (b) at play in this unmerged patch set for the 10G Lynx
> here, and I didn't like it:
> https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
> 
> This is because there, we have a higher degree of variability in the
> PCCR register values that need to be written per protocol. This makes
> that approach more drawn-out and more prone to errors, compared to (a)
> which is more succinct and obviously correct.
> 
> So I've chosen option (a) through elimination, and this also reflects
> how the SoC reference manual provides different tables with protocol
> combinations for each SerDes. NXP clearly documents these as not
> identical, and refers to them as such (SerDes 1, 2, etc).
> 
> The per-SoC compatible string is prepended to the "fsl,lynx-28g" generic
> compatible, which is left there for compatibility with old kernels. An
> exception would be LX2160A SerDes #3, which at the time of writing is
> not described in fsl-lx2160a.dtsi, and is a non-networking SerDes, so
> the existing Linux driver is useless for it. So there is no practical
> reason to put the "fsl,lynx-28g" fallback for "fsl,lx2160a-serdes3".
> 
> The specific compatible strings give us the opportunity to express more
> constraints in the schema that we weren't able to express before:
> - We allow #phy-cells in the top-level SerDes node only for
>   compatibility with old kernels that don't know how to translate
>   "phys = <&serdes_1_lane_a>" to a PHY. We don't need that feature for
>   the not-yet-introduced LX2160A SerDes #3, so make the presence of
>   #phy-cells at the top level be dependent on the presence of the
>   "fsl,lynx-28g" fallback compatible.
> - The modernization of the compatible string should come together with
>   per-lane OF nodes.
> - LX2162A SerDes 1 has fewer lanes than the others, and trying to use
>   lanes 0-3 would be a mistake that could be caught by the schema.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> part 1 -> part 2:
> - drop everything having to do with constraints (on #phy-cells,
>   #address-cells, #size-cells) based on new compatible strings.
> 
> Patch made its last appearance in v4 from part 1:
> https://lore.kernel.org/linux-phy/20251110092241.1306838-16-vladimir.oltean@nxp.com/
> 
> v3->v4:
> - OF nodes per lane broken out as a separate "[PATCH v4 phy 01/16]
>   dt-bindings: phy: lynx-28g: permit lane OF PHY providers"
> - rewritten commit message
> - s|"^phy@[0-9a-f]+$"|"^phy@[0-7]$"|g in patternProperties
> - define "#address-cells" and "#size-cells" as part of common
>   properties, only leave the part which marks them required in the allOf
>   constraints area
> v2->v3:
> - re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
>   top-level "serdes" node
> - drop useless description texts
> - fix text formatting
> - schema is more lax to allow overlaying old and new required properties
> v1->v2:
> - drop the usage of "fsl,lynx-28g" as a fallback compatible
> - mark "fsl,lynx-28g" as deprecated
> - implement Josua's request for per-lane OF nodes for the new compatible
>   strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 33 +++++++++++++++++--
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
