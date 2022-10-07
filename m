Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14862C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 07:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+59BfBHA5/VBcPG9NUnGxWFTc4Ei0hVFiPs4BHpOru0=; b=TnNSQQMrqMQObm
	yukwyT3MiSv0pxaHtwcTtmNvAmrTK5Ha8CdG+rKY+HNjZMHNzc54wUxjh8ltY3bsAOtZzoH7hAo7b
	CxvNpnYV101wVkIi2KJssaZYWWvDb5FoUOb1h/cC0t6koJ0JOB6r4/EwYmTNPrFOT/vRLygy7pJoV
	B49Q44kPmy2rPuFDtaHOcIPtPnGv43judV1Lv83Y3PEMcddbEqYqUTWrcs/CpT69Oo5UnLMzW7rfD
	lgUkbv1InxubCauVCB66LGSGEhT97xInzD28IGGVGRzbuAIJpcgPXni+mhXQALyKvsXrFeP1GkrtQ
	c+IPeG9IMt4ZrYYoso4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghk7-007tOL-H3; Fri, 07 Oct 2022 07:25:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghk5-007tNI-Ee
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 07:25:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8729461BF8;
	Fri,  7 Oct 2022 07:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77B13C433B5;
	Fri,  7 Oct 2022 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1665127554;
	bh=nnpVt6M9yW5SyLNWRDgQrv85cE+C9NzyeyQ50jaP/zk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JOr5OgchARwvo37SPNA6fTIWkvRPQ9JrfEd7CO/DkqIwHS8POD7zCABNpFsU1YMcA
	 FemNSHGOmubhAQmKX3qX2NHpzi/9Np2AZE5UG8gB3SceBLHc8/odTle50VlIBu5tRh
	 c84PD0fwp8lV/bWEsRWIKFTkQUdGi8BTzjmHgusw=
Date: Fri, 7 Oct 2022 09:26:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Justin Chen <justinpopo6@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@ti.com, linux-phy@lists.infradead.org,
	f.fainelli@gmail.com, alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Message-ID: <Yz/UqtGD/dthxYJ2@kroah.com>
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
 <Yz/G0jQxc4c2gzhl@kroah.com>
 <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
 <Yz/Oik0uXXo0uGk6@kroah.com>
 <CAJx26kVL4nYL2fbHd31ZqpXxEos-nyQ2-GSZbL6FUa5ztAbxXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJx26kVL4nYL2fbHd31ZqpXxEos-nyQ2-GSZbL6FUa5ztAbxXw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_002557_543658_0232C66B 
X-CRM114-Status: GOOD (  20.16  )
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

On Fri, Oct 07, 2022 at 12:19:01AM -0700, Justin Chen wrote:
> On Thu, Oct 6, 2022 at 11:59 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Oct 06, 2022 at 11:46:45PM -0700, Justin Chen wrote:
> > > On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> > > > > From: Justin Chen <justinpopo6@gmail.com>
> > > > >
> > > > > Al Cooper is no longer the downstream maintainer for broadcom USB.
> > > > > I will be taking his place as downstream and as an additional
> > > > > upstream maintainer.
> > > >
> > > > What do you mean by "downstream" here?
> > > >
> > > Downstream as in internal to Broadcom. Apologies for the confusion.
> >
> > Ok, but then why are these all gmail.com addresses?  Why not use your
> > proper work addresses instead so that we can at least validate that the
> > patches are coming from a broadcom.com domain?
> >
> I believe the idea is we can continue to support as maintainers even
> if we are no longer part of broadcom without having to change emails.
> I believe Florian should be able to comment more. :)

So in other words, broadcom email servers do not allow sending patches
out without mangling the text?  :)

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
