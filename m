Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E30F2C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Dec 2022 23:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcJXd5kinUmcoH+VrcAgtCkDdcWb3kbrm38FOtFTJG4=; b=HQVOruND12mgit
	VYAUo1HyraaYOJY48XSvKz7H0YfVr1K7gAPr/c7WSWIGQBhH7oD4KZNhg7cvxxG0yz30J40Bq0ln5
	ZkoC3a8sIGPaFG7AFN24hy+EPz5iPzRlr8NPJFOw14w8aPqCH0wOgmO475OmhpLDr2sPAURr4Bwc5
	UNqogQge4Ln+mGpptMrtKAWmzbw+ZjV+pOp2HiPwYss1tZtpkPVhCJoJuU/rz+attyqgc9uaEpaXR
	76h0W5LyPA9BfeJq1t1PD5Oan0oXjU+Fcl8H+v8AI3ANK6jVKhF7a9z4MielAarCb/yonzjhOawsk
	nWahlwYBKQmvYfKUomiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4sMO-007XWy-6L; Mon, 12 Dec 2022 23:37:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4sMC-007VuQ-VY; Mon, 12 Dec 2022 23:37:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1204C61281;
	Mon, 12 Dec 2022 23:37:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C419C433D2;
	Mon, 12 Dec 2022 23:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670888226;
	bh=Djj37c4gGhHcy/TCgXVD2eUrZ4pas0KvVlsKKNOhTNQ=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=JqE69LucO9qZIWAElN4CUCwwAlIBQJxrkL1lTmaYO/UObCARO+ktTV5RySUi3LCB5
	 7YsLSUmFNNzZl4JewOsbhOvKiKjM0RHsfIuUPfKAbs+Y0mVLq7NFuK9DKtRvBBqbVg
	 g917KtwjIY2YE0OBF5Udwyf90w+WByk9dUB+vR47v8BuJsrh7ZaUEWK/SHJVeHudyc
	 0weqMuFrEYAtB9hs/Y0NVpzzfGkDLm6R7QMW09zo1IbcO9ljJkGj2XrSdc5USpUoMs
	 x+dle18vHpIq8mAvzbihUE4xM/Q2P16omsQBYQeQVpTTMKO9McXduXtcCQhbUhU5Gm
	 A8S6LgCd3pEqQ==
MIME-Version: 1.0
In-Reply-To: <8b42763d-5fc3-3853-c421-227494c0144a@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com> <20221027191113.403712-5-sean.anderson@seco.com> <20221027230331.19C2FC433D6@smtp.kernel.org> <5f00ede6-10f5-c11c-ee21-54460c1f98b0@seco.com> <d13ff3b2-79f0-2a72-c9da-2c310c4e3bb8@seco.com> <20221101201020.B6180C433C1@smtp.kernel.org> <45463950-7a4f-758d-d6a1-b8fdf9bfd319@seco.com> <20221207021742.A3596C433C1@smtp.kernel.org> <8b42763d-5fc3-3853-c421-227494c0144a@seco.com>
Subject: Re: [PATCH v8 4/9] phy: fsl: Add Lynx 10G SerDes driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Jonathan Corbet <corbet@lwn.net>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Mon, 12 Dec 2022 15:37:04 -0800
User-Agent: alot/0.10
Message-Id: <20221212233706.6C419C433D2@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_153713_098595_6BCDAF0E 
X-CRM114-Status: GOOD (  18.38  )
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

Quoting Sean Anderson (2022-12-08 07:36:45)
> On 12/6/22 21:17, Stephen Boyd wrote:
> > Quoting Sean Anderson (2022-11-01 16:27:21)
> >> On 11/1/22 16:10, Stephen Boyd wrote:
> >> >> 
> >> >> Oh, I remember why I did this. I need the reference clock for clk_hw_round_rate,
> >> >> which is AFAICT the only correct way to implement round_rate.
> >> >> 
> >> > 
> >> > Is the reference clk the parent of the clk implementing
> >> > clk_ops::round_rate()?
> >> 
> >> Yes. We may be able to produce a given output with multiple reference
> >> rates. However, the clock API provides no mechanism to say "Don't ask
> >> for the parent clock to be rate X, you just tried it and the parent
> >> clock can't support it." So instead, we loop over the possible reference
> >> rates and pick the first one which the parent says it can round to.
> >> 
> > 
> > Sorry, I'm lost. Why can't you loop over possible reference rates in
> > determine_rate/round_rate clk op here?
> 
> This is what I do currently, but you need to have the parent clock to do
> so. With your suggested method, we never actually get a struct clk(_hw)
> which we can query for rate support.

The clk_hw for the parent is given to the determine_rate clk_op in the
clk_rate_request structure. It's stored in the best_parent_hw pointer
when the determine_rate function is called. Does that work for you?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
