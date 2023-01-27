Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12AACC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 07:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMvtydmtKLy/whX8WC82gIG0B3cae+EsEbaCxdINmX4=; b=LCDf8ggATS/DAH
	4rvNYQUYdp8AB+eU8NrVOqa58zpQpCdTOP5KLIKeM3LPCyz9rYnA0ywjiZT+MKQi0zdYAdvzsiFCL
	v5hDoZvddDHXT0XN6VlRp8kmDDSn5IvCLWkKUDkuo+d54+Wwbm8iqoadgjD6Hwb1TVZhZbIMqgDGr
	LnbhCNOdyX4eySvmGjqx5PgkMXVM/MP9+cFeIM+OfRG7CFS7cleSwLgnqj9xnl+CjhlDO4CUyWx0P
	IJhDhzeG5kS02AmQKcj4F8QUNOQgWSTe+XxpOzbdDflwwY3G3oNk9FTkPrjGSEzI0DmGMMHuJF1n9
	33sfDkEs8mkvQSv+Y0qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJXr-00DSAu-NZ; Fri, 27 Jan 2023 07:53:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJXg-00DS9l-FK; Fri, 27 Jan 2023 07:53:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E770961A15;
	Fri, 27 Jan 2023 07:52:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55717C433EF;
	Fri, 27 Jan 2023 07:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674805978;
	bh=VBAppkMJFtAu58j7X9LUIoG4yxGDA5AuNKS3v4F8NoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CsR2RWjXnB1vEIsEa7Mq8ccjrHR5N1s09H1lCu/LSTfybB+I+7hvlMBV7gxmoN8/c
	 xgU58GTVDT8jRKQFWo2WrReBeKtvnfpRC5yZpspFuF6ptJLEE4DdGU8bKhQi/QbRfQ
	 8BH+SxD3XS8fDdXNj5LOzRYJ2DSMPE/khDNag1UI8ZjX3oG+ozYSvbqgp/LgMeV5DI
	 VrULfdY6lRRzfvyb6ecP0LEoRav09SGsaruzP7enZYMI/MfZVAcz+K8R/aeKb4IqM8
	 kFu661L8uS/u4/V9B0sEFIT8TXfYHmevFy+Qk/XS75nVrTs63qdTIWj2RkTLt5xuUq
	 X0Jr5tOaX7BjA==
Date: Fri, 27 Jan 2023 15:52:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Message-ID: <20230127075248.GL20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480>
 <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_235300_639250_D7E7C494 
X-CRM114-Status: GOOD (  25.34  )
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

On Thu, Jan 26, 2023 at 11:48:53AM -0500, Sean Anderson wrote:
> On 1/25/23 18:43, Shawn Guo wrote:
> > On Thu, Dec 29, 2022 at 07:01:36PM -0500, Sean Anderson wrote:
> >> This adds appropriate bindings for the macs which use the SerDes. The
> >> 156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
> >> actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There is
> >> no driver for this device (and as far as I know all you can do with the
> >> 100MHz clocks is gate them), so I have chosen to model it as a single
> >> fixed clock.
> >> 
> >> Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
> >> This means that Lane A (what the driver thinks is lane 0) uses pins
> >> SD1_TX3_P/N.
> >> 
> >> Because this will break ethernet if the serdes is not enabled, enable
> >> the serdes driver by default on Layerscape.
> >> 
> >> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> >> ---
> >> This depends on [1].
> >> 
> >> [1] https://lore.kernel.org/netdev/20220804194705.459670-4-sean.anderson@seco.com/
> >> 
> >> Changes in v9:
> >> - Fix name of phy mode node
> >> - phy-type -> fsl,phy
> >> 
> >> Changes in v8:
> >> - Rename serdes phy handles to use _A, _B, etc. instead of _0, _1, etc.
> >>   This should help remind readers that the numbering corresponds to the
> >>   physical layout of the registers, and not the lane (pin) number.
> >> 
> >> Changes in v6:
> >> - XGI.9 -> XFI.9
> >> 
> >> Changes in v4:
> >> - Convert to new bindings
> >> 
> >>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
> >>  drivers/phy/freescale/Kconfig                 |   1 +
> > 
> > The phy driver Kconfig change shouldn't be part of this patch.
> 
> I put it here for bisectability, since this is the point where we need
> to enable it. But I can do this in a separate patch if you want.

From DT ABI perspective, it's already broken anyway if you need to change
kernel and DT atomically.

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
