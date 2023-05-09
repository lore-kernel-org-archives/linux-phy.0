Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED53C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 13:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEmWaIgDqQJg8cU3JH/fayPZj5hV04UTD1oQ2jrekAM=; b=RyU9v2lhMaNLUg
	95cWBzeyo3Y/lyqf54ay0h34b1wqTrBwwuQRJ+9o3foVGa+i+okyektlwIAnvY9yJ4lVqxQjviD8f
	Jqoh8gQ+FdP5/ZtL9+rkSQzKHtINQljW6RMMlVlSt3rLjJOLLNaA8r7P56guKXo9Ak3LVLcLCZP+V
	Bz0cTw2+EP0lplprl6crLXz6HEb9KpEIIkYuWUQPhZ1OLuGahnuDsb5B4uUtxqgt3q58Mz4kezlYo
	jtbtXxPtoyd48SDDnCyoASJjnBCbdW85sr+X6wFZO+S36ZOcvnRHnykRFw/oZUaZ27gtdOeTx/tzd
	zIM4E+SzaJaunK0rMk2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwMx8-003Lq8-0m;
	Tue, 09 May 2023 13:00:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwMx5-003LpB-0b;
	Tue, 09 May 2023 13:00:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B525064696;
	Tue,  9 May 2023 13:00:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50A1FC433EF;
	Tue,  9 May 2023 13:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683637220;
	bh=/gNuNjyjzD94LeQPPBnUSbLHlkRpw/7XLI3M8KSY0B8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qHeYapALQh/WPbieIv0prg07vJ/QNowDSaROx28vil1Kr/9Fl2ayv8WSHG63XePea
	 GaKQ03lvXRMUya1mEwnOmBWwwXG2WbtgIKm6f7YWQTlp4SIrFQTwc3e7WNvb5b1Oak
	 9cE80UU45ZYo3SKZp1iqT4ThmLAE7UCZhX7Bm8EGRyzR/Zu4kJutfAh1oJxsYoc3uF
	 mkJD+NcGKbFucI/QNOHZG3rRXH/IMMYFNkKCgqA15Zz6IGOOfS43lezGIPTppWZTOt
	 ZRAOMvwGv+QqT6zFoUGpo5q1N0C1rc2WLmIemAi1QeHbvdja9seddcfXaEg/6MqR8G
	 0YL8mjCYiM/OQ==
Date: Tue, 9 May 2023 18:30:16 +0530
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
Message-ID: <ZFpD4I2LK9YIQQat@matsya>
References: <20230413160607.4128315-1-sean.anderson@seco.com>
 <20230413160607.4128315-7-sean.anderson@seco.com>
 <ZFi9t84UoIfUyHhi@matsya>
 <1012f955-180e-0013-cc13-1da10991b5f5@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1012f955-180e-0013-cc13-1da10991b5f5@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_060023_287199_C52510C9 
X-CRM114-Status: GOOD (  17.06  )
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

On 08-05-23, 11:31, Sean Anderson wrote:
> On 5/8/23 05:15, Vinod Koul wrote:

> >> +int lynx_clks_init(struct device *dev, struct regmap *regmap,
> >> +		   struct clk *plls[2], struct clk *ex_dlys[2], bool compat);
> > 
> > so you have an exported symbol for clk driver init in phy driver header?
> > can you please explain why..?
> 
> So that it can be called at the appropriate time during the phy's probe function.
> 
> This is really an integral part of the phy driver, but I was directed to split it
> off and put it in another subsystem's directory.

That is right clock should be belong to clk driver. IIUC the hardware is
phy along with clocks and you are doing the clk init. I think that may
not be correct model, you should really have a device tree node to
represent the clock and the phy node


What stops this from being modelled as it is in the hardware?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
