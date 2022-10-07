Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508B4C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 19:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p/jfkHMBuq6EYJC/i9jr2XkTNP+6RFzfgtE+fOgzbU=; b=g9Rilg5THhkhHO
	vjxfRYJnBAn+UDED00WGYNse1EdnO+KAI2KrzBJh6SqRYsqV9OkFHJGJRlrPpCJdKFjnQk6rZs0pZ
	/TP7YD1FreMXRJ1w59UejxhJEw6kwXG5p8y6ZL7mR3der1Vca9UCAVBctl5OpVnkLm9jlZvEotgOa
	6dLIgBuE0uwob1APOkwWrFBOEWC59O6qQdvF8mxWBYTGg/i7/1mqOvfVoxAbALmVaQe9G3ANAynO0
	UY974vF1LAMMYlmuTZV5p5PoGt4vkks8TptrZbcgy2dKDn5YEuc00eHAmjUqmu6BtE81+sKgZCaFR
	qiyLYK3THA3Q1mA+xKRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogsuX-00AD7e-Jy; Fri, 07 Oct 2022 19:21:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogsuV-00AD6z-Ac
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 19:21:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D8EED61D15;
	Fri,  7 Oct 2022 19:21:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1F51C433D6;
	Fri,  7 Oct 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1665170486;
	bh=kDDmlANB1TS7aOxr2j/CieG7L5PTUWHRPHIq14nRaYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RVZWtgf7wdX8Zv6uHNLH9b+zB/LFfCQawDgHDMpsFVIcS3aRImtkxL6vUYjGrriTB
	 L8jrr1KcE66M6sEIQYfeCDjrTGSt9QFEY5keeZi5SZvYJ5wq2Hwe+6S1y9Y76GeK5C
	 mcEmPoSiLuuPv0/p4t9Eny4doMrZPAUtaK+4gOhU=
Date: Fri, 7 Oct 2022 21:22:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Justin Chen <justinpopo6@gmail.com>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@ti.com,
	linux-phy@lists.infradead.org, alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Message-ID: <Y0B8X1q0twk5aJt0@kroah.com>
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
 <Yz/G0jQxc4c2gzhl@kroah.com>
 <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
 <Yz/Oik0uXXo0uGk6@kroah.com>
 <CAJx26kVL4nYL2fbHd31ZqpXxEos-nyQ2-GSZbL6FUa5ztAbxXw@mail.gmail.com>
 <Yz/UqtGD/dthxYJ2@kroah.com>
 <3d74b5cf-0f50-ac27-aa21-210507f41858@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d74b5cf-0f50-ac27-aa21-210507f41858@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_122127_471245_2E028897 
X-CRM114-Status: GOOD (  28.08  )
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

On Fri, Oct 07, 2022 at 11:45:04AM -0700, Florian Fainelli wrote:
> On 10/7/22 00:26, Greg KH wrote:
> > On Fri, Oct 07, 2022 at 12:19:01AM -0700, Justin Chen wrote:
> > > On Thu, Oct 6, 2022 at 11:59 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > 
> > > > On Thu, Oct 06, 2022 at 11:46:45PM -0700, Justin Chen wrote:
> > > > > On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > > > 
> > > > > > On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> > > > > > > From: Justin Chen <justinpopo6@gmail.com>
> > > > > > > 
> > > > > > > Al Cooper is no longer the downstream maintainer for broadcom USB.
> > > > > > > I will be taking his place as downstream and as an additional
> > > > > > > upstream maintainer.
> > > > > > 
> > > > > > What do you mean by "downstream" here?
> > > > > > 
> > > > > Downstream as in internal to Broadcom. Apologies for the confusion.
> > > > 
> > > > Ok, but then why are these all gmail.com addresses?  Why not use your
> > > > proper work addresses instead so that we can at least validate that the
> > > > patches are coming from a broadcom.com domain?
> > > > 
> > > I believe the idea is we can continue to support as maintainers even
> > > if we are no longer part of broadcom without having to change emails.
> > > I believe Florian should be able to comment more. :)
> > 
> > So in other words, broadcom email servers do not allow sending patches
> > out without mangling the text?  :)
> 
> That was definitively the case years ago due to IT using a Microsoft
> Exchange SMTP server and which had us switch to our gmail.com accounts. The
> "continuity" aspect of not having your email change does matter IMHO in that
> we should always be reachable, at expense of not immediately disclosing our
> employer. Other reasons I heard was that people posting publicly with a
> @broadcom.com email grew tired of being asked when they would get a working
> WLAN driver for their card.
> 
> Now we supposedly have a special SMTP server that would not mangle the
> patches and also not add the annoying legalese footer at the end telling you
> to destroy the email.
> 
> Does it matter though as long as Jonathan Corbet knows about our employer at
> the time for his lwn.net stats :)?

It doesn't really matter much, but we are seeing more and more email
validation being added and required over time for people sending
patches.  So it's up to you and your corporate rules as to what you want
to do.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
