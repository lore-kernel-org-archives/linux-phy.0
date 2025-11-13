Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7F0CD8C9D
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 16:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vqos7dgp3PQ6CaZGWxYDOreUS9x9frvxcR3D81zOP28=; b=Ego1mmnCeqHHg4
	8yj9ZZ2wsL2LHlh2l22bUjr1KTK4N36PQNErBjEXlnX3Tz6jV4/onYvZnJhWO/xHUpbkhqVSaeYYC
	qDEVSYbIQ+eDCHflb6xv5Yaz+uY+uDquZ9RcWQC5BDHbXVVyBkttj9GVY7m6P5n343P69zDl2Dk2T
	RtjxCBa57QTaRTEVcpcj896KynIQdt9GQZ4wnpQl7uvhEfTj1ol4TmoHKjYE8TiF/KnYwhigJMT8Q
	aDwgT1ULs8zvh6/0eYpEY1UX8GMCxLM5Mi4QcWWYIpWRVYioYsMo7cfr7f0cIDEDmyp1N1mjtGyl4
	JpwxYyX05YZiCcP7YyUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaTJ-0000000Ap3Q-1DZG;
	Thu, 13 Nov 2025 16:46:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaTG-0000000Ap2S-3uE3
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 16:46:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AA78843338;
	Thu, 13 Nov 2025 16:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E84FC4CEF1;
	Thu, 13 Nov 2025 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763052413;
	bh=6iUKG8NMVDDWdZqxXodaG87MpkmvyRMnCj8mZaI9oGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WQpzzHWZfMEVz7RF4t4SEwrbP4KnU0Mrr9M8bfDObp4UMhIvCk0AlwJpTVufHaRaf
	 HaFOR3enGDvFET1hyxQjgRoVgPm+fdkx+iwYVNYNTX3nmmT/kln7mrJYCYqO7tkEUu
	 reTVMej3LCfiM5gsJy+BqqMDUPTdNKHjy6UPtknxZ0YS6wyOywEWML4WUUr+aKd/uX
	 ORtQUsIR5Igrh+FzXxW1r/PqEoVa4Uz5eNzNisf1TYPM3SRbNdPCoFdAH6Wbr4T1Pl
	 I6OK88FQACAHQjzNTR+bKj7ksLuRnhM81EOQzPYAjDxbInFxaFqW7qph15laI/tp1e
	 1Tw/WNah60/5A==
Date: Thu, 13 Nov 2025 22:16:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v4 phy 01/16] dt-bindings: phy: lynx-28g: permit lane OF
 PHY providers
Message-ID: <aRYLeVUSk5G3DYlF@vaman>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
 <20251110092241.1306838-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110092241.1306838-2-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_084655_011315_966448E1 
X-CRM114-Status: GOOD (  19.49  )
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

On 10-11-25, 11:22, Vladimir Oltean wrote:
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

You can keep cc lines after s-o-b line after the '---' separator, that
way it will be skipped when applying while email client will cc folks.

My main question was cc stable, for a binding additions, that might not
be helpful as dts may not have these updates, so why port bindings?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
