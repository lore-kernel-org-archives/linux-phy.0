Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 283C6C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 13:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rggJbBPKcW05V6QdA485fY18z38C7VWE74FEc6rm7s=; b=hxG3NGN3Hczd75
	gyapGHzg5s7po3olpmeCfTjuv1rxwzRzpPyHca+2f0MpFjCx/E32DmuAc7G7TnqCjAtJVdQ5SC5aA
	Bd23jQw8hRDfrsjQ+A2b891elSzbe3T5iZzdLDIjG5n08yVAsQ74tuJTqQDKAYzQPbgNPpftm6rlB
	JuIxNc8H26Wl4qvMvPMnHl0oQjnA+U5HrPPRoAiHdVnwrn966cTw9Z3e11mX26yQX3zz7/iP5BTlk
	OpPtYL9ng5ZnxW9ew7AU44pLOZ71is5moS5vUxsvhCRDYQX7lsNY3BEsd0rW1Xeig1UBmggexFAZ7
	wPwLjAreEGwAyN2WUWvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyudj-005tyU-2g;
	Tue, 16 May 2023 13:22:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyudf-005twa-2a;
	Tue, 16 May 2023 13:22:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4C65260AB1;
	Tue, 16 May 2023 13:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC46C4339C;
	Tue, 16 May 2023 13:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684243370;
	bh=+sPUthy7aIz73vxHLbcpB1b2jpbwC7HJrTOIMZMo2dE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uPYOuK4MsGdqbnn/xMDKkUnZ4yYcIuyBc3wmFOmWi0M1zulETSYFuwtqUCrDRWI5S
	 wVgIQoGalPhgXBR/I5WssTLKmq6aTcrsCJUtSooWl34gqA1lzOk4MpXdwpQp4uI1ix
	 UxdzERwnISLKF24Av3xmoQrl0qjZ57o4EfWErx8mzgrIZ5TrmzYI5ABlT5e+uuy5rl
	 m5ShpiTBT8U6M4bVGmzempnsCwRwUYC+UX8Dwlya7GJyyjdUslWoAv5UVFoYyEhMEI
	 2k0EvrnUPDzM8TriF9OikZq4XzzY8CwIj/Z+UQn841ylHadecHfO4QMMpUByPVPigy
	 Qi/cGvspkIySw==
Date: Tue, 16 May 2023 18:52:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Madalin Bucur <madalin.bucur@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	linuxppc-dev@lists.ozlabs.org, Bagas Sanjaya <bagasdotme@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org
Subject: Re: [PATCH v14 06/15] clk: Add Lynx 10G SerDes PLL driver
Message-ID: <ZGODpt7MARD47us7@matsya>
References: <20230413160607.4128315-1-sean.anderson@seco.com>
 <20230413160607.4128315-7-sean.anderson@seco.com>
 <ZFi9t84UoIfUyHhi@matsya>
 <1012f955-180e-0013-cc13-1da10991b5f5@seco.com>
 <ZFpD4I2LK9YIQQat@matsya>
 <d230c641-7270-c768-fd48-9012c01621b2@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d230c641-7270-c768-fd48-9012c01621b2@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_062251_917760_1029F340 
X-CRM114-Status: GOOD (  27.83  )
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

On 09-05-23, 11:26, Sean Anderson wrote:
> On 5/9/23 09:00, Vinod Koul wrote:
> > On 08-05-23, 11:31, Sean Anderson wrote:
> >> On 5/8/23 05:15, Vinod Koul wrote:
> > 
> >> >> +int lynx_clks_init(struct device *dev, struct regmap *regmap,
> >> >> +		   struct clk *plls[2], struct clk *ex_dlys[2], bool compat);
> >> > 
> >> > so you have an exported symbol for clk driver init in phy driver header?
> >> > can you please explain why..?
> >> 
> >> So that it can be called at the appropriate time during the phy's probe function.
> >> 
> >> This is really an integral part of the phy driver, but I was directed to split it
> >> off and put it in another subsystem's directory.
> > 
> > That is right clock should be belong to clk driver. IIUC the hardware is
> > phy along with clocks and you are doing the clk init. I think that may
> > not be correct model, you should really have a device tree node to
> > represent the clock and the phy node
> > 
> > 
> > What stops this from being modelled as it is in the hardware?
> 
> It *is* modeled as it is in hardware. With just the serdes compatible,
> we have all the information we need to create the clocks. So we do so.
> There's no need for a separate device just to create four clocks.
> 
> These clocks cannot be used by any other device (except possibly by
> putting a lane into test mode). So there is no benefit from making them
> a separate device, except an increase in complexity due to ordering and
> dynamic lookup. By doing things this way we know that either there was
> an error or the clocks all exist, and the lifetime of the clocks matches
> the serdes.

Okay that does makes sense.

In that case why should this not be in the phy driver itself. There are
already few examples og phy drivers having inbuild clk where is makes
sense. You register the clk_ops as part of phy driver

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
