Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E83F9C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b5jFaNlnRSr7z74iqX8XjhPFVsLFl46YJoLUIV8xD4=; b=En7TDhew2PJUYM
	rR9DVGa8ZMcLG1fTxIWN9SDQuz9L/MXAoySd5RsbxeRayiDldkPQ9PiGpjwmfL7/7OTNDjDKU3wah
	wsLeKyjWmhHUBodRjGj/UwXAsY8xzuy+UGC0TTOD6+hud85OZDPPSkrovBDjaY/2g+PnekFpecSmF
	n2LAk17I3ueA6O69JT9lSEZIq739ZUfpdkjzCoJXIKjw20gEi3HkiOqeKoLThAfEcWbE5YgERmtaW
	DF8P7h/VLS1d8Q+XubgexTcjbUEIMcfGsT4vPnZAZwkbDbC2v/zcScMUVEmUxO+0wlp5S1D4hZZ2V
	vITRbkE8X9WTIIcVkFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNspo-001H53-Ca; Fri, 03 Feb 2023 09:58:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNspd-001H1B-Sh; Fri, 03 Feb 2023 09:58:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1CBD461E54;
	Fri,  3 Feb 2023 09:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801DBC4339B;
	Fri,  3 Feb 2023 09:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675418288;
	bh=Ofw7oV9zxqty9gholG27cDWDW7iU77SQ0HdVlwkckzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RVue34tDdm/aW2chH57gJ28Oc1QoGGR4RG5AOUBqJ3sjvf8oDf9uLJN9rpfToHFkj
	 hJD/RlcWEfIjO131ze4pIEccdi07sDDEu2TQMok7v5lb1MN/aM5Ph+ozs0Wc2HFS2m
	 B0XWPl3bhdlCLaraxkDqP/nZ+3hNAT9uPOTMJlTnyVLMcYz5wA9qKMKi7fRQr8rcDB
	 A+ruoHx5WaExJWwgMV+4NF6q+cQg823jpOn9JRhYTQDva3FlzyFJ6gOveT/XEICGkC
	 HHw34pdSV7UBPxDgme6WZQJzOO9qWgANgAzpxgN4JW1kG1vRlfIBdHpT4kpVT3JWum
	 KheWuf8augFWw==
Date: Fri, 3 Feb 2023 15:28:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
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
	Russell King <linux@armlinux.org.uk>, linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 6/9] net: ethernet: ti: am65-cpsw: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y9zarDUw7fWYw53U@matsya>
References: <cover.1674584626.git.geert+renesas@glider.be>
 <3d612c95031cf5c6d5af4ec35f40121288a2c1c6.1674584626.git.geert+renesas@glider.be>
 <Y9ybPmWub43JpMUb@matsya>
 <CAMuHMdVJo3aRLh4BCSvOrX+4KMNC=WoQCHMzdiWOmdjSSESxbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVJo3aRLh4BCSvOrX+4KMNC=WoQCHMzdiWOmdjSSESxbg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_015809_982327_6CD87AA4 
X-CRM114-Status: GOOD (  18.68  )
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

On 03-02-23, 09:04, Geert Uytterhoeven wrote:
> Hi Vinod,
> 
> On Fri, Feb 3, 2023 at 6:27 AM Vinod Koul <vkoul@kernel.org> wrote:
> > On 24-01-23, 19:37, Geert Uytterhoeven wrote:
> > > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > > same operation.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > > v2:
> > >   - Rebase on top of commit 854617f52ab42418 ("net: ethernet: ti:
> > >     am65-cpsw: Handle -EPROBE_DEFER for Serdes PHY") in net-next
> > >     (next-20230123 and later).
> >
> > I was trying to apply this on rc1, so ofcourse this fails for me? How do
> > we resolve this?
> >
> > I can skip this patch, provide a tag for this to be pulled into -net
> > tree
> 
> Thanks, that's one option.
> The other option is to postpone this patch, and apply it after v6.3-rc1.

Okay, done

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
