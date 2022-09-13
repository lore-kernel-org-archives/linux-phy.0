Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B055CC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 17:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSdpwtU+jwCJPOVA14qz8DrHGjVJyKlyF+whdG2NZtc=; b=BRElvmWU8A/iHL
	vf/hdNYe7cU9kQnM/9OQiJMGkYeDMdTtqK2tabPLHid97YBFTXrFcboj1UBOI3AQqeZw1mzt4yNs/
	9QaOkhbRSIBi1wmMDdcRoXI4Lg0K0Qhor27B7ao1q0gXcxiJY5xu8keqZTJDuNTZgtEj26vyLDyei
	K8tHKjHCmfJ5HXWPvieSLgcyhKlidfMe1egEK3tzAPwCPGc1cEqqCpim+6vhq9DUd5PmAn9PW2/3P
	agWbsMex08Be9Ohk2lW34zm82BARn4NB6MyQD9AtdSQF38hn8Rx+yjYP5HikeyZGnM+n0izd2i8X+
	8MVo/XaHzZIDTWdxx92w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY9xh-00EAgZ-TK; Tue, 13 Sep 2022 17:44:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY9xT-00EASf-8W; Tue, 13 Sep 2022 17:44:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C044961547;
	Tue, 13 Sep 2022 17:44:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6F17C433C1;
	Tue, 13 Sep 2022 17:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663091066;
	bh=Ic/VkqMBJjuwfLGWBGT9Tc39hmFMScQMkwunOI94tFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s+TnU1vRb4T4DpJ4MIOfOPek8KCXQfe40HKcXuHkrBy6QlKdSFLWBh5YjDmpBYcHk
	 j3mjBOlBTBtLGLBkmY1S3AV0gdH3aAZFXxh6FDsc356KBPDYsei9Qoyk8H8b37YKrO
	 tVPdf7x3Huor0YjmmZfStaszdLNY4O74zjlApywWRd4oJqsbKIrdmh83CMqXO5F6hM
	 pBpUEFCzHHMCLzq1dLznJo9pHMDFeLYSNUI6F0NbN5LdqerPH0GXVj2zXxvgWHK8Kc
	 CzCdauMR9GiXuBgBwkfryDFPs3URk4JSrkNKfko8VsFqxDdYSmWSBKj1O89erfUzD9
	 57HUZKWlJy32w==
Date: Tue, 13 Sep 2022 23:14:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Li Yang <leoyang.li@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v5 0/8] phy: Add support for Lynx 10G SerDes
Message-ID: <YyDBdn+IHqConzIW@matsya>
References: <20220902213721.946138-1-sean.anderson@seco.com>
 <de50858e-0056-fd72-2b67-27bf597b3366@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de50858e-0056-fd72-2b67-27bf597b3366@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_104427_386707_B6591920 
X-CRM114-Status: GOOD (  13.40  )
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

On 09-09-22, 11:05, Sean Anderson wrote:

> 
> I noticed in patchwork [1] that this entire series is marked as "Changes
> Requested," despite having received only automated feedback on one patch
> in the series. I am concerned about this because last time this occurred
> [2], the series received no feedback for a month. I suspect this is
> because series marked "Changes Requested" are hidden in patchwork by
> default. Can you change the status of this series back to new? Or should
> I just resend again?

Yes please, update with ack collected any feedback addressed would be
right...

> [1] https://patchwork.kernel.org/project/linux-phy/list/?series=673741&state=*
> [2] https://patchwork.kernel.org/project/linux-phy/list/?series=665484&state=*

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
