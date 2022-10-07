Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B5BDC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvgxMKX4BbfrSEP3KPbS7yWjboeS7kaKJG7RDOwkleQ=; b=XBknHULuXG7dV2
	fVDlYJNNRaEvnhlcP/RsDR8dQr67wfHUGmOa9M0ahJ1x2S/gKkolN1uAurDdgKhwL5JPVHMhAoLiH
	WtPY1jmweKg3h6cCj3hjRT1UtoZN+JEEt+jxqeGqTykCuBFWyftONCNtd/vJVFbGFDZo7pStOCo8n
	bFWqlFEfl6CFuZNn5GRXKM6tAkjR6uWcgMYyIdSavx4wo3Hp73FZwP1/Jqta5JIEjTHVbuqfxmbpg
	0OInaAjCZpUi8U/3EbCWjyyYH4a6/Siz5y7PP2XgIiPeqpSrASkMkk65o3qvXaMYcD6MzoWQpLwy7
	Clw2EBvcA3CZVYbvwg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghKq-007lXn-FI; Fri, 07 Oct 2022 06:59:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghKm-007lTO-B4
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 06:59:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B91A1B8220D;
	Fri,  7 Oct 2022 06:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8AF1C433D7;
	Fri,  7 Oct 2022 06:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1665125985;
	bh=9wr1e5ewYQYmphDre30sBLxkhXdzYS0rjyoiWTszXfA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fHOxCmU4bzvM0RPKnb1a0rOzbqjKAt6vKXGFHbdVgSbv/xC409V5mCr3FLJQdad/2
	 4tpwGM90CWWXQNmX31PUyt3tP9pe7NNoain7pXpoqLhxw9EKD8SByBfp7v+KfKbSNQ
	 ht78ftOkGQc13sw5KdcUmw3uEvuE1uNNmwORriAY=
Date: Fri, 7 Oct 2022 09:00:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Justin Chen <justinpopo6@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@ti.com, linux-phy@lists.infradead.org,
	f.fainelli@gmail.com, alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Message-ID: <Yz/Oik0uXXo0uGk6@kroah.com>
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
 <Yz/G0jQxc4c2gzhl@kroah.com>
 <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_235948_541609_9BBCD34D 
X-CRM114-Status: GOOD (  14.57  )
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

On Thu, Oct 06, 2022 at 11:46:45PM -0700, Justin Chen wrote:
> On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> > > From: Justin Chen <justinpopo6@gmail.com>
> > >
> > > Al Cooper is no longer the downstream maintainer for broadcom USB.
> > > I will be taking his place as downstream and as an additional
> > > upstream maintainer.
> >
> > What do you mean by "downstream" here?
> >
> Downstream as in internal to Broadcom. Apologies for the confusion.

Ok, but then why are these all gmail.com addresses?  Why not use your
proper work addresses instead so that we can at least validate that the
patches are coming from a broadcom.com domain?

Also, you should reword the changelog text :)

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
