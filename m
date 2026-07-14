Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C057BC4450A
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6DgzA71SDzObWfwoVhWXmfMknJIbpxU9pT4HCy/eyc=; b=J6OHwGwHaalMpX
	9k/aB2qlc9EXwBbay4UYeKK4v7C6+ETrQkvGqWOY7fuM1CXZqppG0RNC+gw7et/pW8V3ufen5qtkz
	rU6D4MNfqlu+S8U5NYyRQ93x6qsARCDiYDPRNnS6PYw9vGASpSgJLHU9hcdhIlUoVfgxmF/BnDT5O
	xp6atj0TOk7x4Ua7bN0JfsgdeO48swUlGbdZ68cs3Slir7OENpv8PX3ka//dJXjR6m5Y6GtM32SkO
	mGdYoqRxMV4n/nARYDCMhBIrR3dZXgKpfv6eMpTs4cpdOzk2uAbmQyJa0E2TKmASbqg1WSpDaa0UE
	AQO0s+0O3psTnZ3lzYTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjivp-0000000D7s2-1b7s;
	Tue, 14 Jul 2026 19:36:41 +0000
Received: from mail11.truemail.it ([2001:4b7e:0:8::81])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjivk-0000000D7qG-34nA;
	Tue, 14 Jul 2026 19:36:39 +0000
Received: from francesco-nb (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id D7B871F8C1;
	Tue, 14 Jul 2026 21:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1784057792;
	bh=ouG4gU2sMxcP7NnkE/ZCp7siG/EcEqz4Sk7+xu/lKZg=; h=From:To:Subject;
	b=KLkmofSRNvGp46eG5l7vx8V8L3VWhoxxkU0Qzios6IVZWT3JpLVXNXwOivqOqVmPd
	 sKtwfZ5GN719FY3GWAyiu7jqsgou3YE6aQYbNGOifKGrtsbBN3aXT4aq+XC/EPSmiX
	 cDUQTAuRXJJSjuOz6wiqeNQlRcbNzl4dWC68kqDFfJDPZGOIrR+2hnGuLWYv8JDp4S
	 rPiH7+i3nNht+tpnPz5rNIAUofST5jjdtDCwWaoBcj6JEzzNvp/w/FMMnBqLKeRFIi
	 KKT7/5yyufWUTZiT/+binA7KtPbKrRxfeKw5RqnO8tx9eJYfYmqQlvIzT05Sv+GpOL
	 bVakEGMeY31zw==
Date: Tue, 14 Jul 2026 21:36:27 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de,
	vkoul@kernel.org, kishon@kernel.org, Frank.Li@nxp.com,
	lumag@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	u.kleine-koenig@baylibre.com, francesco@dolcini.it,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v9 00/19] Add Freescale i.MX8qxp Display Controller
 support
Message-ID: <20260714193627.GA9616@francesco-nb>
References: <20250414035028.1561475-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414035028.1561475-1-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_123637_664115_3BC6F22B 
X-CRM114-Status: GOOD (  13.98  )
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

Hello Liu,

On Mon, Apr 14, 2025 at 11:50:09AM +0800, Liu Ying wrote:
> Hi,
> 
> This patch series aims to add Freescale i.MX8qxp Display Controller support.
> 
> The controller is comprised of three main components that include a blit
> engine for 2D graphics accelerations, display controller for display output
> processing, as well as a command sequencer.

...

> 
> To follow up i.MX8qxp TRM, I changed the controller name to "Display Controller"
> instead of the previous "DPU".  "DPU" is only mentioned in the SoC block
> diagram and represents the whole display subsystem which includes the display
> controller and prefech engines, etc.
> 
> With an additional patch[1] for simple-pm-bus.c, this series facilitates
> testing a LVDS panel on i.MX8qxp MEK.
> 
> Please do NOT merge patch 14-19.  They are only used to facilitate testing
> the LVDS panel.

What's the plan to conclude this work? What's the latest status?
I am looking forward to have a way to use the i.MX8QXP display with
mainline, but to my understanding some required changes on the SOC dtsi
are not merged.

Can you help?

Thanks,
Francesco


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
