Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D3D3CD3420
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUwr7oPWOX00+NgmXsvILydvcgufbNx8Zis+Eg+nAo4=; b=i+O5xmlq9xs6Ef
	oZNsTFJ6JcibKz0wBU1z8HsN3YQur05gKErHLG8a3qrHwPHHNwEhVfjNnOAU7hSnK79e5e4GSTr6Z
	MK1ltwYFv1SC5SDXauZVWd5EdAZ43KEOSaUwV5Lr/JVQzOH5JB5+AjL4sDymToSTn7er6scvjqdnt
	0e++K7dnVkvG79JstkvoATm4UXpv3NYUtdCqHXavSX/UACmggfuA3pIYgqRQyry3T29chM0bZFNaD
	ZLy9mWuV/rkCDuQbDDkP8HAGhBnO2/7Y8u/pyuDVEa7OIfmoN8X0+WZe1dxpdirekJp5uAQathZ7r
	9ohkuJmq/zVOYMWBTijg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDaU-00000009AiF-0qmp;
	Wed, 12 Nov 2025 16:20:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDaS-00000009Ai7-3U8v
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:20:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 96339601B0;
	Wed, 12 Nov 2025 16:20:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13026C4CEF5;
	Wed, 12 Nov 2025 16:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762964447;
	bh=rHIrbwjlYH/gBkXgGCh/M7lUpBCIVsmiYtKm0JkgxPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CwbKob8zPfvEsJwbsrZY0piMuxlW03+AXKU/9/+zihz4TvIleDu/JeviNaHOGroWY
	 DzOjMJ6G4YkRDhlPMBuGrHiKXCxx4VfBDWJCAh07/wk/Atwmpt+ZZPqI+jxO90lFUT
	 zdoDcuNxppBEqVBDzte6v2Cv0d3RyDJpg7ak6qCbrq4JaPrj129FIn+0Q6UtM7acNv
	 XNNXve0WdlNKzr3rAePDWe6oINOCAXo2aKAUbfyYq0UF1lsuRAHdy5sqfSDM0NfrE/
	 BRkLd/Q84Rmgr+6v5OiR0492m8RuyJzj85kYkj3ofOEuA8fStSLTFOXhgrBoesWMkp
	 /jy5GOPytQeMA==
Date: Wed, 12 Nov 2025 10:20:45 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v4 phy 01/16] dt-bindings: phy: lynx-28g: permit lane OF
 PHY providers
Message-ID: <176296444496.1846369.12547968881654162757.robh@kernel.org>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
 <20251110092241.1306838-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110092241.1306838-2-vladimir.oltean@nxp.com>
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


On Mon, 10 Nov 2025 11:22:26 +0200, Vladimir Oltean wrote:
> Josua Mayer requested to have OF nodes for each lane, so that he
> (and other board developers) can further describe electrical parameters
> individually.
> 
> For this use case, we need a container node to apply the already
> existing Documentation/devicetree/bindings/phy/transmit-amplitude.yaml,
> plus whatever other schemas might get standardized for TX equalization
> parameters, polarity inversion etc.
> 
> When lane OF nodes exist, these are also PHY providers ("phys" phandles
> can point directly to them). Compare that to the existing binding, where
> the PHY provider is the top-level SerDes node, and the second cell in
> the "phys" phandle specifies the lane index.
> 
> The new binding format overlaps over the old one without interfering,
> but there is a caveat:
> 
> Existing device trees, which already have "phys = <&serdes1 0>" cannot
> be converted to "phys = <&serdes_1_lane_a>", because in doing so, we
> would break compatibility with old kernels which don't understand how to
> translate the latter phandle to a PHY.
> 
> The transition to the new phandle format can be performed only after a
> reasonable amount of time has elapsed after this schema change and the
> corresponding driver change have been backported to stable kernels.
> 
> However, the aforementioned transition is not strictly necessary, and
> the "hybrid" description (where individual lanes have their own OF node,
> but are not pointed to by the "phys" phandle) can remain for an
> indefinite amount of time, even if a little inelegant.
> 
> For newly introduced device trees, where there are no compatibility
> concerns with old kernels to speak of, it is strongly recommended to use
> the "phys = <&serdes_1_lane_a>" format. The same holds for phandles
> towards lanes of LX2160A SerDes #3, which at the time of writing is not
> yet described in fsl-lx2160a.dtsi, so there is no legacy to maintain.
> 
> To avoid the strange situation where we have a "phy" (SerDes node) ->
> "phy" (lane node) hierarchy, let's rename the expected name of the
> top-level node to "serdes", and update the example too. This has a
> theoretical chance of causing regressions if bootloaders search for
> hardcoded paths rather than using aliases, but to the best of my
> knowledge, for LX2160A/LX2162A this is not the case.
> 
> Link: https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: stable@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v3-v4: patch is new (broken out from previous "[PATCH v3 phy 12/17]
>        dt-bindings: phy: lynx-28g: add compatible strings per SerDes
>        and instantiation") to deal just with the lane OF nodes, in a
>        backportable way
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 71 ++++++++++++++++++-
>  1 file changed, 70 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
