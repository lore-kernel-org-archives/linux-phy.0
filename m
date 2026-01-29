Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF79D61011
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/jgoPT6d2jdm2ijrEMitp9RR+dTPZNprfFKxB4hBJ8=; b=wusS4zW2IESeWD
	F9dQQGX+pTh2LdOfizMRC88ZNQaaGcf6Zbhl9/YJPwh6Dg8Icti0pWyHWto+EJIdLtJlWeuZqZtKk
	QAvpDaplqUKyIuozPYjZWdKHIKzbiLMgvJc4eB0itxq2dnLSJlSMRzKPTn1bSiBh6ejzrl8KBw+Qo
	a/dJHVp7GNianOqHWY2WkOjo2yuWx6t2wpwtO2HhtvrZzqjUgbQUYB6sWrCZxdVzkI9jhdk1WQY+P
	EoE/wMe4WYmbriPAEx3A081x48Rnwl5ZK0e57GPfLslHMhw45SNVxtm9qTLB/wssjwTM/pD2+DzHf
	PaJmUh1DP6V7IpDOFvHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS1m-000000009kg-05mb;
	Thu, 29 Jan 2026 13:25:44 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS1j-000000009jh-0ftH
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:25:40 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6505cac9879so1537529a12.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693137; cv=none;
        d=google.com; s=arc-20240605;
        b=gyPlMseXAhmG9Ul52lEIT2qABYM58fOn2TPt+6XP4kpi2Yz1doCxke9JCRmZFiSVYt
         hcYicax46QpcKbs0WAKnkBx7qTd7Q7uFDlwNyyNdq1iX8ZSjXHXnWaR+CzuCbioT1lKR
         9RYbOka7d9Xf3ecP/9wH9ypfEJ1lr5kzcmB8SewippuSx9F/d7jtKX4TZlghT8xF6RZB
         k8PPKtUCefo51XjXeNKiSzt8TcKo/MGsOmx/z682pMGD0H0W3pm8/GoYv+EcupC2+/vc
         wUw4EFgkPv4GhBav+gRwg2y8rT5CVrY3Q3qtnAS4cDHwI9c3wYkVJ+Pxuh5/BJ74bRb+
         N+SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        fh=K9SX9+Yja3M1VVfeyejKIWBoUNK19QPG2E1gh943cf4=;
        b=XovrLvjwtnP1SBMLMjDM2V2ys1xT+WR4abE0hK2h9ReRdrYHgqjLiSm8qwwecIAH/i
         oYOv93r8Rczd6Skcow3Y9cjuq4HjAcpUB8EZo3V/aInHlQLMADMriv4teKzCEWeBTHOB
         C4z20CcuKDTCTBetc+rkJ1K8zRVJKT678ZMkPUBEhwe/Vx4utc+SXz3ABF37ifYe6pBc
         YsgLeNug0usUKvYjNPGgX1/Fre7dnLw2hwv7YQeeCiO5V9z/5J7/q44cBnXqm+6K4R7q
         4OycwAZi4+YhtYHAjxhUQgBXJK+dqbYSCE/lq4Ofd60C2heNaLgD+RVx74gxX275+yr9
         LMeQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693137; x=1770297937; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        b=EfPTXneIAk593rQxm9y2O53PDgSXicU+AII2b3OCwUJ0h1BB1q0iInwSniwyoWLH8M
         G4zv/bu5p842to32cmgqYZG8wE6Ixwxr/DT7WaP0z60kSV7FVivWytMMVfbIp/y/O35i
         tHRmD1hjbUTb9t+DF0vRU8vc4cA25J865nA6YAjp4/ViLGxe3Pbt/mUQ1rQyyYmUqpV9
         f9R/9rQexT4IQo8ebCZNAilDz2HGZd87EHOndZy53mllpQJ3gPVv66vGn3oQYKY+5Jkm
         TQ4eu3Ma2pet9Y09dxuuEQzwYemAkUB6C4Zu+ZsR8UbiaiyHs6wbS3Z8Z2tc7lpOF2Nc
         Bj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693137; x=1770297937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        b=G3jdTsIW66iF6jNfcn9/zBE71VJR/5HIvqlQSEws2Yom2VAPQ5ysJ9Sdx1UBbZ7Dgx
         oZTO8yct91RBQprSCFmlw69Qkz4nTVFRfre4NmHLj93cVvt1kN4vQaBxeFp873kiezHF
         v1v8b6pPmljPNprMTqWEAWvB1I29TWPKy60ZGF2w77xKMT9QFYTcwnPHHvCXxk52DFqo
         Nr/iVqZs6A3KLcauIc3Vr3Nh7yHFKu1Ep3/A+fFBlKGE/7HgwQBS93jGaZiAwtea4K/y
         vmnbaIyxnNBY13adqMJ7/aUPAqzhK+A2Q8hazC+zpkQxWZekB8aFv41lrK8vJQGj1XjG
         nPmg==
X-Forwarded-Encrypted: i=1; AJvYcCXIp60bnorBe5UydfvMvXwE2/W1NLdD8zUerIj1uuh6ajwMdE3IgsIt/si28GkQnCAfZCyTBUHVQH4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHl5O6XFjERPI7Wo8lsDRY8XxvVkwu1ZMt6zAdxCu78K/46HtZ
	SQNkhZ7POL2gD2g5XOgGckTOqoTw21nLRDk9DHQliO+nzdzj8HO6aCRhCed5UOY2HpxVHeABwl3
	POgaA4rNcoyW2PHfkD5ixZYq2D9MFeayYZDzEgBbykg==
X-Gm-Gg: AZuq6aJcZHw0HFx3+YtPe7VoMOtNFOPQESOOERzxnKl+7LmGjKQffAUMYe+4VpPhYZ2
	I8jKucGATDma75QfgyP/MZ5CEurRBewGdpcpwxSZte3B3iflhDc3FK71uaqGDHwk0pISFuiiExj
	tdWlbCUyQBQTJDRYyxScSxRGIsK23vrKldxemYnlziHaPk344Zm2Pf6aJtzyO6qfM726EA9glkN
	RmyZWj3+M2aPBuK76VO1LLG8nsX56rLBEcznMIYV+kXOhoKybTCigbZlv2MKWKsTCQ3FsEm5OkH
	1ZLHxXmB6LgPJd0H2217Ca/0
X-Received: by 2002:a05:6402:2792:b0:64d:3b22:a5b9 with SMTP id
 4fb4d7f45d1cf-658a6064db3mr4654871a12.9.1769693137209; Thu, 29 Jan 2026
 05:25:37 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-5-vincent.guittot@linaro.org> <20260129120757.GA358439@kernel.org>
In-Reply-To: <20260129120757.GA358439@kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:25:25 +0100
X-Gm-Features: AZwV_Qhzp9iT1f899kqFHSBaYxaRjfwJBMJyrZuFRXvntdrURTUvSVnGWlmRJag
Message-ID: <CAKfTPtArVxXnAw0F4s03QH3wTPvJ3RRBGf2JQ2burh3v=rS-Tg@mail.gmail.com>
Subject: Re: [PATCH 4/4] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
To: Simon Horman <horms@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_052539_209932_8825A046 
X-CRM114-Status: GOOD (  16.92  )
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

On Thu, 29 Jan 2026 at 13:08, Simon Horman <horms@kernel.org> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:59AM +0100, Vincent Guittot wrote:
> > Add a new entry for S32G Serdes driver.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  MAINTAINERS | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 765ad2daa218..888674a308a5 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3202,6 +3202,15 @@ S:     Maintained
> >  F:   Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> >  F:   drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
> >
> > +ARM/NXP S32G SERDES DRIVER
> > +M:   Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > +R:   NXP S32 Linux Team <s32@nxp.com>
> > +L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:   Maintained
> > +F:   Documentation/devicetree/bindings/pci/nxp,s32g-serdes.yaml
>
> This patchset adds the following file, not the one above:
>
> Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml

yes, that's a typo.

>                                   ^^^
>
> > +F:   drivers/phy/freescale/phy-nxp-s32g-*
> > +F:   include/linux/pcs/pcs-nxp-xpcs.h
> > +
> >  ARM/Orion SoC/Technologic Systems TS-78xx platform support
> >  M:   Alexander Clouter <alex@digriz.org.uk>
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > --
> > 2.43.0
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
