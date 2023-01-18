Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 948E5C38159
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PakB+8SU6i2ObXrNHlQVKLn9cyabPEhJleBdPkvX5fw=; b=lWf4RiozEy4N9m
	3a1OxGTCVvgakFWc1hem0SAURL+fZ3L58VazjWElkA84jvn3hxQ9Rh7SSh/jik0Cp/YALlHr9WXMm
	TtU6oVC98VnGARbiAAYpnJXRFUycS0VXOcisKZ3u3OXsyUGKctdcsSqkvB1WmP42borj8nI75BWzc
	/Xq1KBnHw8fntuUHDq8B1JzzYXd4XDZN0R+3Oq2LdF93Kg0OZv5b1EQ4jJ/nALmBG5xiVnzYDNEUv
	MGJX3YQdOnlovECemqx+BIsoddlxu/bu8P4UrAP0nyI9t3r+maipr27blM4C17jv3TLDtu8cA9TbZ
	FSzeMLMzh5p5TJLwzLeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBoV-001wc4-0i; Wed, 18 Jan 2023 17:01:27 +0000
Received: from netrider.rowland.org ([192.131.102.5])
	by bombadil.infradead.org with smtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBoJ-001wYC-EF
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:01:17 +0000
Received: (qmail 214419 invoked by uid 1000); 18 Jan 2023 12:01:13 -0500
Date: Wed, 18 Jan 2023 12:01:13 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Madalin Bucur <madalin.bucur@nxp.com>,
  "David S . Miller" <davem@davemloft.net>,
  Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
  Paolo Abeni <pabeni@redhat.com>,
  Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com,
  Thierry Reding <thierry.reding@gmail.com>,
  Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>,
  Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
  Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>,
  Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
  Alim Akhtar <alim.akhtar@samsung.com>,
  Siddharth Vadapalli <s-vadapalli@ti.com>,
  Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
  linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
  linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y8gl2bLxqWwXPMfS@rowland.harvard.edu>
References: <cover.1674036164.git.geert+renesas@glider.be>
 <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
 <Y8gb8l18XzYOPhoD@rowland.harvard.edu>
 <CAMuHMdUsULA0PM26Y8WL2bGiBHGAGADS6eYLUp0CDVgm4N5kow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUsULA0PM26Y8WL2bGiBHGAGADS6eYLUp0CDVgm4N5kow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_090115_660594_C31114D8 
X-CRM114-Status: GOOD (  14.09  )
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

On Wed, Jan 18, 2023 at 05:50:00PM +0100, Geert Uytterhoeven wrote:
> Hi Alan,
> 
> On Wed, Jan 18, 2023 at 5:26 PM Alan Stern <stern@rowland.harvard.edu> wrote:
> > On Wed, Jan 18, 2023 at 11:15:20AM +0100, Geert Uytterhoeven wrote:
> > > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > > same operation.
> > >
> > > This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> > > handle NULL parameters fine.
> >
> > The patch ignores a possible -ENOSYS error return.  Is it known that
> > this will never happen?
> 
> While some phy_*() dummies in include/linux/phy/phy.h do return -ENOSYS
> if CONFIG_GENERIC_PHY is not enabled, devm_of_phy_optional_get()
> returns NULL in that case, so I think this cannot happen.

You could mention that in the patch description.  Apart from this one 
issue:

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
