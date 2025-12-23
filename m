Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14FE6E6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2skRQlwhzNTkuwVqVpalcK4fEzckpEOuSL5kYi8oPYQ=; b=LeNipFTlhZYs0J
	b5bsl6BLxabmd65IaAhJTjDqOJYv21KSeN/MjzVIIGkdMguxrYchenrTbE9PywZ8XnXvy+aR2vr8P
	kr1ZqLlyeVnvXYUCWJLZOjtRVeKr9MORxakL24UcV7RrLBVm9WpibB7YTb9SsmtNDACx78gItJB5o
	Ig7n7uo8LEXgFN4Uhhm7fPWV4bJMjbD3VbbJ4dKvYmVVeEe+ZY7uyDtYQ4WQixSvOfppKAFD11PRN
	ZPaBCz7GQNJQhNnIvEhYgsSKgx2UZ16UOewLcSWm/wLnspZx6vNIaeIA/bj3CGgOUtvR/cbTikjdx
	gzpTtiUIfD7RrCrK51Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rx-0000000FrQ7-12If;
	Tue, 23 Dec 2025 17:45:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rq-0000000FrLU-2XTx
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:45:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D94643E67;
	Tue, 23 Dec 2025 17:45:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27597C116B1;
	Tue, 23 Dec 2025 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511926;
	bh=8UvcbaMFBmgqDoEZ2WexuxMmy2IO+bxASIEngueuopk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IOVibKWi304v5idcNYAWDQMkuEG29LxRmGj/GGqzEpEgrDJEOHtG9HBmAvqmTv7ia
	 VJeZ+Kpb90JWGTVT0yRVJjO/87dkUOzc9XJiWU2IvHqrV/Mxp9yaan2J6fyK+v0kV1
	 swXIhRDWjbx/a36rWbBei3QQAj26uVomxzh9ke6n3okx7JmeaD8x7IBIgOiSk0NpDJ
	 9BlYA7QxF5D+3xEwhIJJg4eW9gH6paaolDo1HEZsGry69VLxdYKppwuC0b7ceLVVnR
	 lyJSVsLHR4+RytHDWJB6SFXCOwnPPIbSUsxsGUlkpTEWsq1D2afhI8nT3AD4BdWdml
	 SNgTQn90Cobiw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH v5 phy 00/15] Lynx 28G improvements part 1
Message-Id: <176651192278.759340.10484878366738732561.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:15:22 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094526_738263_6212B456 
X-CRM114-Status: GOOD (  13.16  )
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


On Tue, 25 Nov 2025 13:48:32 +0200, Vladimir Oltean wrote:
> This is the first part in upstreaming a set of around 100 patches that
> were developed in NXP's vendor Linux Factory kernel over the course of
> several years.
> 
> This part is mainly concerned with correcting some historical mistakes
> which make extending the driver more difficult:
> - The 3 instances of this SerDes block, as seen on NXP LX2160A, need to
>   be differentiated in order to reject configurations unsupported by
>   hardware. The proposal is to do that based on compatible string.
> - Lanes cannot have electrical parameters described in the device tree,
>   because they are not described in the device tree.
> - The register naming scheme forces us to modify a single register field
>   per lynx_28g_lane_rmw() call - leads to inefficient code
> - lynx_28g_lane_set_sgmii(), lynx_28g_lane_set_10gbaser() are unfit for
>   their required roles when the current SerDes protocol is 25GBase-R.
>   They are replaced with a better structured approach.
> - USXGMII and 10GBase-R have different protocol converters, and should
>   be treated separately by the SerDes driver.
> 
> [...]

Applied, thanks!

[01/15] dt-bindings: phy: lynx-28g: permit lane OF PHY providers
        commit: bd2f0117c2a1310dc6ea4eed8087eb2c6c03fe78
[02/15] phy: lynx-28g: refactor lane probing to lynx_28g_probe_lane()
        commit: a125feee0774e13914601dd6b39c73a27265f7d4
[03/15] phy: lynx-28g: support individual lanes as OF PHY providers
        commit: 7df7d58abbd60902751381dcd891a55c8228c523
[04/15] phy: lynx-28g: avoid memsetting lane already allocated with kzalloc()
        commit: 2da0b2214f511744a967d370447bb9d511bf1348
[05/15] phy: lynx-28g: remove LYNX_28G_ prefix from register names
        commit: 13a5f7e3fd6dbc49adb950592ba7d76f1211105d
[06/15] phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg" with "val" and "mask"
        commit: 6e3d3e8783ae41a7a678093591a2d93044b94ac0
[07/15] phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
        commit: 3b84377c2a31cf35d33da55c6868281aa3aff71a
[08/15] phy: lynx-28g: convert iowrite32() calls with magic values to macros
        commit: 90d985a0eb33c92aa83a086bd934d885e2f4fd5b
[09/15] phy: lynx-28g: restructure protocol configuration register accesses
        commit: 6af3b6d365579a0b62d24e687f6d55d17f118172
[10/15] phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
        commit: 444bb9a7b3ef07ecb96ca7ae30a6c9daaf865de8
[11/15] phy: lynx-28g: refactor lane->interface to lane->mode
        commit: 6a1ae51896284de1a2387aaf2281ac01015277b5
[12/15] phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
        commit: 55ce1d64aa51baecdd26d56e3efb250c9671e988
[13/15] phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
        commit: 055d08beea2c1a1d0f4eccabbcf570009969e3ce
[14/15] phy: lynx-28g: use "dev" argument more in lynx_28g_probe()
        commit: 04dceaa3c97d3cdc51e1d78dce32ed7388872d07
[15/15] phy: lynx-28g: improve lynx_28g_probe() sequence
        commit: aecea96492f52364f852248055921c1b3aacbc91

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
