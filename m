Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDA98FCD0C4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 13:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOcBuLuQpIwUTxTVnztW3EU8zMnMktZtG05g2h3SIv4=; b=R5w1HwfAmFQ7Cp
	4zSNC2lM0qfGNTpoQV6JgRZQwDw2pctxExuaYRYFOv8hO0MzATwjqT6fFLROPU2jSxnfRdp3TV873
	VKP1a8IzApAAYWsR5U6xkVJXA0qCGCpmfijVFqV34dZObW+eduxbVosCYV/s7Xwr5sWALsGJ0eRw4
	BjZu+Q1ibHroZqBsfunSF0NuzUAjOf4LTFnYb7Yf+lW2jLI0bcF3AaX8nTFpwwvszKGxNnoX/UIh5
	mAXm64+GimKDjgxGnINCrw5/Ebk52tpvYgQWYicpZdn+nlq2AG9bAJYSGiKKrRpYw7X7mpxx/8miM
	0bJ3SLRmdwWrLYJTE9Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qim-00000008SUQ-2xd6;
	Wed, 18 Mar 2026 13:14:00 +0000
Received: from mail-vk1-f179.google.com ([209.85.221.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qik-00000008STx-0eCl
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 13:13:59 +0000
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56b49b943c1so292685e0c.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 06:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773839637; x=1774444437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4pOV2D2AQYygVxzPMRjkzxP2+EkcN9rcofhLjcRkOTo=;
        b=ntIN7JiJHFdQ23R+V2jtQCXuB+/tP+9H/FaC6RJD/CKafNas4CVFZLLjqnt4JXbD/q
         k6Ga0G1GaNCsHqMHhu5bWr6SUZi3ToUbU9AVqecCqWCwbi3iJI5JYFJIxIJcYLeLjiPa
         etUeNc1nqVeCAFWboaEnWWTlzom5SWPhAsO2vedGa/3E6z5KHQACl4w+nVzSlzAHpW7Y
         Ow57bZPKzuq6y+0WSEIxymDdZIkPWp6tYHlsEsffJt8uCPsvyPesdS4E+bSuIVJ5dhL3
         W1YUj9pVsyCLxme+VKveTQqIyCaRat4V2D1ciYAGisqeJ0LsvDDUgwYgim0Ul3AXAv9T
         /SJA==
X-Forwarded-Encrypted: i=1; AJvYcCVuWO/khGk9VDhoQZEnWO5HAmgjufmhjWWvcnqJU3dySgF7AOcGJ9Ql77HpwNqggC5ZGhOY0mTMyhM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5yPer+CrVW8VbR+q3M8b31+4Igp0uGXPmeeP4nohjg53k8OOP
	5K3fXoV7QEiJ1QT5SJlvxlUvtMNTWG2Yx9sZxyiWWy/Qi5RfpRpQglfog1IOoJZs2LA=
X-Gm-Gg: ATEYQzyrRdVeB0iYINqbfTX/L4Ws2eVI+UuTtSjO5ltB6TTpWXdCfZTcAcm0VNwgOqy
	G5gMJP7U6Fwsbr5ggk9UN/XQLHcO1rgqyFhtNMBA7y+qrArsUaJjEkT3mkHAOVQ9MlM/4WIkY7+
	Ej40oGRj0kubLdSGlDAv26D2/N8NYk5gFC8ZBsKVeZb12UQU3iFO+uRjXKwrz/nULIcSJuvcUXC
	kjihFX+1sU/YdZngzIcBcLO4jO0UuDBMP2fTn1TXcl2UlxTyhSzIIFeuwiGcsP+jJvQ9m/VIQr0
	Hu66WUl1Vz9uVlc3u1arJAc5OaVXRZL/YdHq/x11a687Wdx/oA3Sjk/a2ILPUnYhpq9M3brfW4o
	zKpO3fFdcoyqvFTd/SL5hv2TAc/ESAN/rU8szHx8me+cLe0KqoM3+4ybM4wtXmf6VO8bwuzgLxB
	F4RpRXG3qIXFjKXXdVutDJO0sYK+X8l5j11Pc1WnEufNYedYEW8Ocg/PWu+qWW
X-Received: by 2002:a05:6122:20a9:b0:56a:7f37:d18f with SMTP id 71dfb90a1353d-56ba7004427mr1776280e0c.3.1773839636682;
        Wed, 18 Mar 2026 06:13:56 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e2f265sm1540957e0c.2.2026.03.18.06.13.55
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:13:55 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-950b77942deso158378241.1
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 06:13:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWjp3B3584/SC6nWWquh96ql8KvZZxPBsSvtSkjTGi1t/nJ4I2pxn21FSxXVZCzKrgPpA9Bie145f4=@lists.infradead.org
X-Received: by 2002:a05:6102:3e84:b0:5ff:b8d8:b3fa with SMTP id
 ada2fe7eead31-6027d3787c0mr1422469137.27.1773839635338; Wed, 18 Mar 2026
 06:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com> <TY3PR01MB11346D89F6F7C332FEF0D08B3864EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346D89F6F7C332FEF0D08B3864EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 14:13:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXph-ns=8hHWoDKoNgUiGQ4=A9+aASim6qrLDdAE_mPMw@mail.gmail.com>
X-Gm-Features: AaiRm528vBhNoRJf_ekwr_tLXDSVAQ-Nywv-15uaGsQg5FUeHbt026b462wtJU0
Message-ID: <CAMuHMdXph-ns=8hHWoDKoNgUiGQ4=A9+aASim6qrLDdAE_mPMw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Pavel Machek <pavel@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_061358_193662_E89AF908 
X-CRM114-Status: GOOD (  18.77  )
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

Hi Biju,

On Wed, 18 Mar 2026 at 14:08, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Wed, 18 Mar 2026 at 13:01, Biju <biju.das.au@gmail.com> wrote:
> > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > >
> > > Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY driver
> > > where the author's name and opening angle bracket were missing,
> > > leaving only the email address with a stray closing >. Correct it to
> > > the standard Name <email> format.
> > >
> > > Reported-by: Pavel Machek <pavel@nabladev.com>
> > > Closes:
> > > https://lore.kernel.org/cip-dev/abp4Y2FVspUgEpCT@duo.ucw.cz/T/#ma80454
> > > df129c8cfcbe48d75f3b4abe697925c6f8
> >
> > The "/T/#..." suffix is not really needed.

And after sending, I realized the "/cip-dev" part is also not needed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
