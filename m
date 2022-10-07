Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C8CC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOVdq5NMlWZ8l5gpVTFbFwBBUm1VmDeNQf4djD0CkHI=; b=mmwSuZy48r773i
	TmnUwCn60NUWTTHltzBha9nti4yBjO7eY5bINExwA3F4Byjl1235FsOtqYw3bL46ooD32aVJv79oA
	ferZu8g5TQpefbYFID0hplKsjxkXw8qFXT2c3OToMjBHwUyc4Id/0iMOX7yerqtHaarAXTUsSmJLh
	N7/RQfx8rea6D1uSNNVorEiXX4KCfz+/gZgrCjbyxJo+UfRfZenTyE+Qxd/vSmZX+u4FmaYf5/H54
	e171XG3UqfkAoP1XZc+NSIOMrxZncTogkYuKp3ylrh5wu48mcojdTwF3ZqILI7ormjcSqA+1ZQxPg
	21DE4o5RCAGa0Z0RncWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghdg-007sDs-9D; Fri, 07 Oct 2022 07:19:20 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oghdd-007sBs-B7
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 07:19:18 +0000
Received: by mail-ej1-x629.google.com with SMTP id sc25so3282974ejc.12
        for <linux-phy@lists.infradead.org>; Fri, 07 Oct 2022 00:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Lknl2bbejKIQb1Zoi19TdokFshSnqIa9OlmWLCl6ULE=;
        b=XmXzY3hCnSM5f8YKuCFrg74zTouggm2xO+sPdVQG6Ja9DO+Syg4mg2BDaqKkai2eeN
         EP01r65PzbxLBjyvTZhl9zQtVhYtEA4BP4m6hk6IGpXYWQI5YciAi6DaCjh2ejGO0m3u
         yM3H/e/sLWl2RjuT/Jz6g0RWOkSRSIW0hljRm2A2xKG27zMIFKaslsPFrjWYHE6BjhA3
         Ww2mWJJvFP1jH6SenJyMZNjusRS9HKnuxEx1XMyqiVFHxOoYMPJkgwPMshMgdz5gfeSK
         yxNrNbhjc/SGGsqXWgDkn2i/Eyy6z3qf9Z6YQV9vwlvBoVti/yJMNCwB01Fmh9kgSVEu
         zVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lknl2bbejKIQb1Zoi19TdokFshSnqIa9OlmWLCl6ULE=;
        b=1MUHlwQYoim/o7IHX4N9joET6Ny/Wa5cE0bm1JIvI2QI0QBnBYyA6wRkHX8pG1XHZ2
         fgvW3reHg6BYdjrMbAuPhUzPg0p+sENbcvNXeTE0HKXbuhtxVy31g/GfZjYwj7Qzfk5A
         C4bAaXu13Z/96y3Nw5ioX1ImJ6tWzltwlWGyUzbmuL/x2tZnxmbUS48QOmp8lVTbmjZX
         JExQsC4lERE2RmDn3ttH3C5cu1FgikGW1/oJBhAlmz3DJZ3rO9JnUx/l92XfDSesP8wl
         xnAFNxtP50AkjgWlHaaD9pGfqI3Jr7QJTV+iL94Vb/nxoLYJfcswJ51MxJwzmubVKIUz
         uvlg==
X-Gm-Message-State: ACrzQf2ImJ2H/dMqB48mN7uwTuXjTX3bg8OY8V7wova8qx+HzYnsc/kb
	dZOMpRcUr5P+G3XsHJ3PZUPsqMqENb7ADfpKyik=
X-Google-Smtp-Source: AMsMyM5cU10ttpP/Y93CTsKqgciBh3e1tpcgSkvJ1+T5S7nTlvTQS9q6lQ6AarvfcN+/hmMtE94HX/4+vGNbjdMD+fg=
X-Received: by 2002:a17:907:94c4:b0:78c:79d0:d9ec with SMTP id
 dn4-20020a17090794c400b0078c79d0d9ecmr3085560ejc.344.1665127153599; Fri, 07
 Oct 2022 00:19:13 -0700 (PDT)
MIME-Version: 1.0
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
 <Yz/G0jQxc4c2gzhl@kroah.com> <CAJx26kUTzBeNkV_=gEeUYaatBwugT1uFH_b_ggq-fXaJDRBMqQ@mail.gmail.com>
 <Yz/Oik0uXXo0uGk6@kroah.com>
In-Reply-To: <Yz/Oik0uXXo0uGk6@kroah.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Fri, 7 Oct 2022 00:19:01 -0700
Message-ID: <CAJx26kVL4nYL2fbHd31ZqpXxEos-nyQ2-GSZbL6FUa5ztAbxXw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@ti.com, linux-phy@lists.infradead.org, f.fainelli@gmail.com, 
	alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com, 
	justin.chen@broadcom.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_001917_419489_411D644B 
X-CRM114-Status: GOOD (  17.97  )
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

On Thu, Oct 6, 2022 at 11:59 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Oct 06, 2022 at 11:46:45PM -0700, Justin Chen wrote:
> > On Thu, Oct 6, 2022 at 11:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> > > > From: Justin Chen <justinpopo6@gmail.com>
> > > >
> > > > Al Cooper is no longer the downstream maintainer for broadcom USB.
> > > > I will be taking his place as downstream and as an additional
> > > > upstream maintainer.
> > >
> > > What do you mean by "downstream" here?
> > >
> > Downstream as in internal to Broadcom. Apologies for the confusion.
>
> Ok, but then why are these all gmail.com addresses?  Why not use your
> proper work addresses instead so that we can at least validate that the
> patches are coming from a broadcom.com domain?
>
I believe the idea is we can continue to support as maintainers even
if we are no longer part of broadcom without having to change emails.
I believe Florian should be able to comment more. :)
> Also, you should reword the changelog text :)
>
Will do! Will submit a v2 tomorrow.

Thanks,
Justin
> thanks,
>
> greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
