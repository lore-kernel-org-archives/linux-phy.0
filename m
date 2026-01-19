Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED0ED29C3C
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 15:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOz//hdmG3YXxlWsqBEACfZaN/HW+anHdsHbNHA0QRE=; b=eIfgoEPSAfAoR9
	Ym8Gnf6KPap8WfeXvc/fPHSDGcHwyHMCNJP+vZf8HeaaIkxQv/zn9j/P1vmc3mYi710Z+bXnADKbs
	VlucsirxBVlxPNfizCIjvd1QCERoYgXVpShQjIsl5M4UavLPX2mVwQKOLVhImpeIS2H7mMrfxD6qC
	6BRSTCDTTkuE9S64jMmuzy+di85Uwoa96b1sWNxlAYmm9eiXCsm3htCECzG4NZtWYfBh0fq303R1l
	jhMe4JgBozDAhavFkzI0aCUrfd97qZB0z9B9ANsYw2yIP+fZVRpr6jMBO2+e8616xMlWZ78x/7ToG
	upAJgwv49Mhny2fS222Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhreb-00000002PJF-0GxZ;
	Mon, 19 Jan 2026 15:58:57 +0000
Received: from mail-vs1-f42.google.com ([209.85.217.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhreW-00000002PIC-3643
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 15:58:55 +0000
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5eea75115ceso3972407137.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 07:58:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768838331; x=1769443131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwYpB7OUoD7RGVXAKZghgG2fL8VsvMsrJb3SXVA7oO4=;
        b=TWcfrHGzR1g9wAiAUCp+NH4Cs35FrKUBjPVRiFrdmIO7I0EwUEI48u7QUz0ye3C7Ta
         iqobc4zCSQTuDNcqSNM1iswTdFiBaQomlLtyy6R5qpwp/T2RM2klUqEvaL56AUoNuWla
         e97Bnzaj5wKmxZKT9kVgYkQyC9+zSuFCM+1rseSRxJaKPA6lxRk00JMl6rO28naRvQoe
         KSt9ctz4xv4/OxAcs/g12FgwF7PKrrsIEyv5CB1sN2+SdPLDyjGaBvFQlF4L5mqyJkeR
         FUhAGWGgy6VojYA01Qe0mSrfNUT7kwGg+hHy+QxA0cISbRMW1xVFxW7BgfuUxF6p5wJC
         Tn/w==
X-Forwarded-Encrypted: i=1; AJvYcCWzLzzUBIWq1x58Vb02QGYS6sM9zjhL6xPqf+j9Wt4Pqdcj/qIp1xS5m7AnPvB+Sqx9rDPkwu6dnD0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxE2MCgstLDnTL8nixanPpf1Y9nNMR5c29JJL6JZ+9bQMZ5Vbn8
	Unjz1fP/KfYIs5i9wx+loUAhHK3JJMlsOdEP5VqNCfwglJxAvy2APQDW90ceX8EF
X-Gm-Gg: AY/fxX4V1qo9bsCLXBxUJSVr95gXb9tGTG2k++9d/bv3tGN7bZknNvupyC4+yxoBFeM
	HlRbfFsyUJh6OEq1xNfn5hSWHAJ2Be9lXyLo8jq6JCAFbCLdg7It/OpNaIKSaIYDR8mudfUoLqL
	/dE5edjB8C0MxzUU8u/pJp+5r5vgG0uWOT7SZY7z6nHBcd8E4arcOVcOVCmgi/l8BxNaeoyeMGZ
	NDhEoKU8TZeQ5O4BmC5ZQ7fF3TkH6HgRGCIzwIDGQhfxvuCjqBE3mjMnvRdRdd3g1Uv4SYAxI9e
	XLJJHrP2ujZq1yNWPW+HsBJF8bEHPiMSvdOw5JeewNLkew6D9zc6hGzzncL7WsxhUZySFX+IFQd
	Est15zR7Nm6y6H3/bgMi+6qcm0uKBEMPZwLnojJnVrkkbBuukE/VbtYUM2TOsfkZrMOy4u5MMk9
	jqJHSPJsts3v7Ub3CX6fsVjuJTOaiJ7FV69KpuAMJiKYVKuf8loM2u
X-Received: by 2002:a05:6102:3582:b0:5f1:5be2:114b with SMTP id ada2fe7eead31-5f192567479mr5970878137.20.1768838330753;
        Mon, 19 Jan 2026 07:58:50 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-947d044fa0dsm3252400241.14.2026.01.19.07.58.49
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:58:49 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56367b39e3eso3832569e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 07:58:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX0NvQT2KK80+JYyAfvgixjtPraI331Q8rKYmhOpTQfD5Vco52KkbzCYb+6uczX1UjlYHbdqAzVtCc=@lists.infradead.org
X-Received: by 2002:a05:6102:3e96:b0:5ef:b32c:dff8 with SMTP id
 ada2fe7eead31-5f1923fb2c1mr5628745137.5.1768838329404; Mon, 19 Jan 2026
 07:58:49 -0800 (PST)
MIME-Version: 1.0
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
 <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com> <2b6f19f3-aaf9-4fb7-bef7-f38e19f94351@mailbox.org>
In-Reply-To: <2b6f19f3-aaf9-4fb7-bef7-f38e19f94351@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 16:58:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUfinX6K622_ThmX-srfq2Mb3CTHD-LdAR3YgDTZq51oA@mail.gmail.com>
X-Gm-Features: AZwV_QiA0q5O-g1daJUkKfsigh6f9aOP9tnmWWUeAh4TC3ZblJYVL42xTYixBq0
Message-ID: <CAMuHMdUfinX6K622_ThmX-srfq2Mb3CTHD-LdAR3YgDTZq51oA@mail.gmail.com>
Subject: Re: [PATCH 00/11] Describe PCIe/USB3.0 clock generator on R-Car Gen3
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_075852_780287_0E50806C 
X-CRM114-Status: GOOD (  22.09  )
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

Hi Marek,

On Sun, 18 Jan 2026 at 14:54, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 1/13/26 3:19 PM, Geert Uytterhoeven wrote:
> > I do not know what is the actual issue.  Adding debug prints to
> > rs9_suspend() and rs9_resume() shows these functions are not called,
> > while adding 'status = "disabled"' to the renesas,9fgv0841 clock node
> > in arch/arm64/boot/dts/renesas/salvator-common.dtsi does fix the issue.
> >
> > Perhaps you have pending patches for the rs9 or PCIe drivers?
> > Do you have a clue?
> I believe this one should address the problem:
>
> [PATCH] clk: rs9: Reserve 8 struct clk_hw slots for for 9FGV0841
>
> https://lore.kernel.org/linux-clk/20260118025756.96377-1-marek.vasut+renesas@mailbox.org/

Yes it does, thanks!

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
