Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF078C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 12:38:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B024560F0F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 12:38:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B024560F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKiW86r4pqCfo/Ch7ew0M6N5p6D6M4X++0MFc6Ky9bc=; b=dBzAkfyBSZiwNv
	NfPIiHYQ2L8TodReSzAUra8yLq6ug7kLKoEqyK1RIMSY1UTUecl4Nbe7c020Q16AJ/WyTt1IMf04m
	XplGtg9QBrfUjVATq8d8R+9w421VwBA2U2tn0qOtpYzv7PQYTOOj0kfoFPSYNZqQbOEEA1u+/zIr9
	4tG46KbXBGzrfLwJpT5B0i26DgjKWmAIg/k6kFTrhYKZmRVT9EV3KyJjqU1yZnahZe8Q+FuVY+AEV
	Z4Kjb375I+PQufWBiJhqIDccmFpwtePHSw4rVFLJFuFyWasE/OM/gr3ZmhVdRD0v3OXApVbgKn7s7
	x9jueK7l6n3CwkAmg0CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9RmT-008cOo-7r; Fri, 30 Jul 2021 12:38:25 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9RmQ-008cOG-3U
 for linux-phy@lists.infradead.org; Fri, 30 Jul 2021 12:38:23 +0000
Received: by mail-lj1-x22d.google.com with SMTP id f12so12180144ljn.1
 for <linux-phy@lists.infradead.org>; Fri, 30 Jul 2021 05:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0TPrFNXDo3fiyz0l/s2CJAtmfo7kIvxhcbaJib7tKDk=;
 b=vpScR3U25Ovsfdyt7Y7crUtNpsGq4dweZaIpvd8TbQumwlSW4i5tBuVwczmFcoNcag
 E5iJtmPSdE/flOnlqdoR7VnY2Urk4sEyFZoAqDFiQJO4l9KdnfJleH0V44thWadtf/Pp
 O5XP0NtMiDiHDoIV9gE95mHJYDORJ7LY9PJIAXJP+sX16UMVzKbr+c8A3E3WyFcfvKef
 6xpUyXD21hyy0FeF/GtvAkJOw8bvd2wZLqzKPjMCgab5KGN4rAkcNQ+qAj07dMlSCrnd
 XwWPyN8bK8PK5WXgLWMPU7HuJ5GnwHucT8meJhzA7QvtdiyCQideDgaHRNQFqE3wsUG1
 8sXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0TPrFNXDo3fiyz0l/s2CJAtmfo7kIvxhcbaJib7tKDk=;
 b=YnpXErtkgGt32JmBbM5RY2QeoVRgB3pwCCyMuKxR5MWPp4MbNR/lXpPbsn68WR/3vD
 83r8eJkaUqtcebBHjxqYQzClqEbWifhtsE4TTt+4lfc2/jCnfFuuLpBwqMaMzp0v6WuX
 MT41kRt+69JiMN2rRxelETEzwVzocx2siaXGE6pxPdSSDnJDWXvfzaw6fdIrrKevEfMH
 KQuik265nR0BpM820XAoi3M+iiVbsy0JyGU6lvBA77GtrqrkYUHEgDoE7uB0oNTdGiUd
 mJp7ycpnKRnzsW1D0X6p/uDLdY1aR/VwSjPgf2o7UpW2MfOF+ith1UMkn1MMY3hIICPT
 Rufg==
X-Gm-Message-State: AOAM532owPaJK0PVp19kXphQ1szNFJt2anPgUadUUDyS7gPOOtlxh7qS
 /5FE6eXN1yWfl2oMEEDRgK2Pna14KrCI9xVjn3KhIGRLPEk=
X-Google-Smtp-Source: ABdhPJwQP9rYUjp+G/nfNIv5a0w33o23MO0STAgKSfw8PMCWe/ucqXTK5QcMMJ+7QOP5dAlI1PRu3SaENWjQzVQNYHU=
X-Received: by 2002:a2e:888f:: with SMTP id k15mr1528246lji.326.1627648700492; 
 Fri, 30 Jul 2021 05:38:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
 <20210721030134.10562-7-jiaxun.yang@flygoat.com>
In-Reply-To: <20210721030134.10562-7-jiaxun.yang@flygoat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 30 Jul 2021 14:38:09 +0200
Message-ID: <CACRpkdbFw0SE8iHs+Y+D-oUBrjxkB_1gqdL2TCYHtd8EsT_edw@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] pinctrl: pistachio: Make it as an option
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_053822_187971_70CD579D 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jul 21, 2021 at 5:02 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:

> So it will be avilable for generic MIPS kernel.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

I just applied this one patch to the pinctrl tree, let's see if
it works!

Yours,
Linus Walleij

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
