Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D78ED262B2
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 07:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWthZsDZy4SHfjbNbTAMjNUGdnsAnCRu9i3Hqbi8YX0=; b=Y+A4/j7drA/Y1Q
	FqkZZPbOZ6pAzCe7tpuHE8wMhukUbA3ej3lnW459iinxpDC5UxhZkSyiefhGBHtBdEAeL7zwEJ6cN
	xX6SipdaGzVsEF45lXH5JE2EoZ+nfHNCFf2AWln59QbJoK37tIrg5+2jBmvmsPzXuubEPZsulo89q
	d9p0zna5V2ThszTptOgvvQWhS/qJEutyllOMwqdgwcApHX2GKNT7ccSEvxhM0kF3R4guHVvJJoreP
	CP9hWv5NFYccHFPCcxRn419F7zGaOxSegDRna4GIOblZdIOltRM0MpP04/a0satNBgCKYhcimROQu
	NywyqCcV3HyssLtA46Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT4o-000000052w1-1nLD;
	Wed, 21 Jan 2026 07:56:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT4n-000000052va-30fK
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 07:56:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3E41A600B0;
	Wed, 21 Jan 2026 07:56:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D1C1C116D0;
	Wed, 21 Jan 2026 07:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982170;
	bh=bGS3DYFuYzc1mQZhuBVKOcCjlKpV4bvavaupi72/plU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ai4aS2F2x1psS1W0ckXYGK0Z0RUMdhLwfJZgEp7on9p7Wi+TeHQ3GiYGf5MMfLAOd
	 VCVO/ZSKGhp4qzmo3Bcljewmv79f61fSEmOORwt5SZRsypQa8XYtCYd5g+X6k4+65l
	 GSKSoPA/WMOziPbpwzKjkFfEO6V34l7g64XOoJQiJnESO4nVnH+N2fb9+o4qbSBE0U
	 2bOSMy70CEklNqF5HCe+vpDKm2UP3A4n9AuiFYA5gedkCIqkv448CQmZ0yDXYjHQJ0
	 daAOPHfRTqNAYsI+miG3lGx/+ukXzMV2YmqBQMo+ziSgNlE6jc5gR6WtnTkbotYrFC
	 AIxwVCZ5Sheqw==
Date: Wed, 21 Jan 2026 13:26:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Brian Masney <bmasney@redhat.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 25/27] phy: ti: phy-j721e-wiz: convert from
 divider_round_rate() to divider_determine_rate()
Message-ID: <aXCGlW4lgIImN8Eb@vaman>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
 <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
 <aWelbtaZjS4SZGQO@vaman>
 <aWj3LPq37Dr9OLU6@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWj3LPq37Dr9OLU6@redhat.com>
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

On 15-01-26, 09:18, Brian Masney wrote:
> Hi Vinod,
> 
> On Wed, Jan 14, 2026 at 07:47:18PM +0530, Vinod Koul wrote:
> > On 08-01-26, 16:16, Brian Masney wrote:
> > > The divider_round_rate() function is now deprecated, so let's migrate
> > > to divider_determine_rate() instead so that this deprecated API can be
> > > removed.
> > > 
> > > Note that when the main function itself was migrated to use
> > > determine_rate, this was mistakenly converted to:
> > > 
> > >     req->rate = divider_round_rate(...)
> > > 
> > > This is invalid in the case when an error occurs since it can set the
> > > rate to a negative value.
> > 
> > Acked-by: Vinod Koul <vkoul@kernel.org>
> 
> Thanks for the Acked-by.
> 
> However, this patch depends on this other series of mine that's merged
> into your phy tree:

Should I pick this one then..? If there are no other dependencies...

> 
> https://lore.kernel.org/linux-clk/176661322399.4169.14248756511703978007@lazor/
> 
> Stephen asked for an Acked-by for that series or an immutable branch.
> 
> This will allow us to remove round_rate from the clk core.
> 
> I also have a small series to post that's dependent on all of this that
> lets us get rid of the noop determine_rate implementations that only
> 'return 0'. I haven't posted that because of the dependencies.
> 
> Brian

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
