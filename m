Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA09CFB451
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 18:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=No0Hx8JTeZm9V48Hw6YQWLvbytv7zg1cNl8vDMdRiuI=; b=lbi6psDB4xf4Xh
	B62jfPT1BGXdlK8+oZKOuBfZqJAaL7gXnrpOf5H6tcEkMS4hMGKu0clbtM3aKXyHRghOESaZV6z7J
	27T011Q1AK0VqEFVQ7+qAQ5LT6k/NHeNIlHTUC11nlV/9MO2EjwwUrmAbkvnPSKCZbAZI1kktoU66
	riyTk0HOlp2bu9kkIzqRxYaFwLP7a5BiTAzklbyJAeSeerHUNpTOJJ0AR+6DLGpcilC5xtGO2VbNi
	X+UFWJnyfnoZK+6fguxLe05Og18l0d98LQ0nEQb+ITDPEUM0Dnk0JxZ+w13nqwjiTRq4ggdgHD2Xb
	S8lpcQ6HjcTqdZ6hwF3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsEc-00000003RIY-3W87;
	Mon, 07 Oct 2024 18:13:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsDc-00000003R6o-41Rh
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 18:12:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E12255C5D32;
	Mon,  7 Oct 2024 18:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AA43C4CEC7;
	Mon,  7 Oct 2024 18:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728324747;
	bh=MVMcREqOQie9bCu+l3+EHtHOGyR8Vt6zdS95oQnMRi8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gonMD3Z81MR5tRjnQ0yJmdqAu47JdQCbp7tEX2A21sXKlMP/BEUVUIIhtq8FtSqMx
	 v+rzR4G4ssygEQJ9YqcBXdmQOw6weTueOk+MWD+Sv6TQVohLCiBbGQ6wntvJad2ghQ
	 /mdKHhu1pRsMOMJk4rYFOdvZpMMUsIQezchlhaDPPYk2X+SBaD0s9ZbdHFHTtXzX2R
	 l1cLTPzVPlKpjantP9FGyeD77s1gxCHRdcDCTlHjS1MAUjJQqHbxWAyc2A6AatXFbt
	 Knh3eQXEiZJVxeOIMEkTdvsHZaxeq8xY+QGQGthQ9oqfHv0RGjhJhxiTuOwDYepBR3
	 p/XtFo3K7Xh1w==
Date: Mon, 7 Oct 2024 23:42:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>,
	Sam Edwards <cfsworks@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/2] phy: usb: Broadcom BCM4908 USB init fixes
Message-ID: <ZwQkh6Vg+RgpXZdm@vaman>
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <172831613316.134526.5485203085922304367.b4-ty@kernel.org>
 <d20fbf91-e7e9-4f0d-8e4a-0c5364f73bc5@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d20fbf91-e7e9-4f0d-8e4a-0c5364f73bc5@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_111229_083741_87384958 
X-CRM114-Status: GOOD (  14.01  )
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

On 07-10-24, 10:06, Florian Fainelli wrote:
> On 10/7/24 08:48, Vinod Koul wrote:
> > 
> > On Thu, 03 Oct 2024 20:41:29 -0700, Sam Edwards wrote:
> > > This is v2 of my previous patch [1] targeted at resolving a crash-on-boot on
> > > the BCM4908 family due to a missized table.
> > > 
> > > Changes v1->v2:
> > > - Florian requested this change be broken into an immediate bugfix (w/ the
> > >    'fixes' tag) and a second patch containing the coding change aimed at
> > >    preventing this problem from happening again
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [2/2] phy: usb: update Broadcom driver table to use designated initializers
> >        commit: d3712b35f3c694cb932f87194caafc714109ea08
> 
> I looked at your tree and both patches are applied in the "next" branch and
> the first one is also in the "fixes" branch, thanks Vinod!

First one should go into fixes, whereas second on next (due to
dependency merged fixes into next)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
