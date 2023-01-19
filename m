Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402A2C00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 11:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcPZZQq4ARoJ7UjcFray0qJ2hWqguSZh5Z7kqPrgtCg=; b=d71hpeYOxJD6cO
	hysXXVXsmrswG+KxJ4toJsy7wr+1yvZA65haecBH4C0bLsFiVPcEnTh7yErpJLTWJxnEfc2EpbNLt
	N25WcG2lZ9Z0V3a49hZEPfsDeyUa3eY/l2BcUA5Dmw2f9yFX+AEZkK4e5E7icSsnWLyAvNQSazobk
	eY3vemgkvVP0RKYW1/6PlKHIs3XCBQRlXOL20BW2/GMsKX8Np+jcLzyR934lQFrQjYxem+rv8S2Za
	dh8Q8w6WRm0KWlg1i4cPQz8+BV5+wfrQV4F2ePTerp0yDCl82UW0qiYj6V4G48MBwZbbkGZFqSGsR
	NjNThq+E/Jdb3SYj+eZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pISsf-004YfT-LE; Thu, 19 Jan 2023 11:14:53 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pISsU-004Yc8-F3; Thu, 19 Jan 2023 11:14:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D3093B81FA3;
	Thu, 19 Jan 2023 11:14:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A48B6C433D2;
	Thu, 19 Jan 2023 11:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674126879;
	bh=p3Z8Q4RuUEKmn89jofySoCuckl7D3b7GECL7f6tdmis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oammpthbp+k17llgdvjQtywF/mkmiCatFL8NT7ZjboYjzeOzvWUj2onOepljpgKr9
	 HO+1huJW58CWoSX2gypnx7qm4NT4/YTZcSBGg2qy4Ydk7BptInzehY7Ts0j2eOIbda
	 WOgP8/Z6oN5qBuhhnGqqxzN7HCBuf/b6GXCURSK/7+VNS45FUoOjxhX87s2gAbABFH
	 EkCxym/b2Jy9Hle3z7lY1IpT+Rhc7/TjX63MLpoANzR0cmUL2ACLFjmpbg+/xbhEHL
	 lTlU0X6yKDV5QqO9TRRze5eXx5WNAAJUThQibPM36+eObIIlidHCmBi9IVthNt5kUB
	 YJOvCNYogX6Rg==
Date: Thu, 19 Jan 2023 16:44:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/7] phy: Add devm_of_phy_optional_get() helper
Message-ID: <Y8kmG+jB/s7stebA@matsya>
References: <cover.1674036164.git.geert+renesas@glider.be>
 <f53a1bcca637ceeafb04ce3540a605532d3bc34a.1674036164.git.geert+renesas@glider.be>
 <20230118192809.2082b004@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230118192809.2082b004@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_031442_665935_F35BA4D8 
X-CRM114-Status: GOOD (  12.76  )
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

On 18-01-23, 19:28, Jakub Kicinski wrote:
> On Wed, 18 Jan 2023 11:15:14 +0100 Geert Uytterhoeven wrote:
> > Add an optional variant of devm_of_phy_get(), so drivers no longer have
> > to open-code this operation.
> 
> For merging could you put this one on an immutable branch and then
> everyone can pull + apply patches for callers from their section?

Since this is phy, I can do that and everyone else can merge that in or
all changes can go thru phy tree

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
