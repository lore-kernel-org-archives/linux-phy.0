Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F13FC021AA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tfR8IB8mMaX57/p8/BFann08yOE+MNwKGFfv/374vU=; b=i1pHU9FZ5GS+G0
	XbPavAanL7qYJfEN7lXyC0oV3xckBUE34ANE3NGSttQf3QGmOtHxrEm5dQMwUQGzGp1wMPOpQB+Kb
	77k812E/klWMRaFJ2CqpATCqpYwA4p6n0OsHaFmJq8wr5QB2TcQoGX3nUgnEHcVzP7H3w9EjkJXzi
	gz2aOpd9kAJwhwq9Ya1pcAuC4bHr372hA2p7YYulzxD77XE0ucCPAg8v6kIk8UXa3Ykwjyy5yCfin
	MpZjbZHh/hm9pFCLunecwCBEDI2td3suwBXqMFEGTNFlYWlsqpC+QB03s7lDbhiDdGTnZjwiMtZjU
	UJz67d2JJzo3T5M4LWTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkn1l-0000000DqPm-0EYU;
	Wed, 19 Feb 2025 16:34:25 +0000
Received: from mail-vk1-f174.google.com ([209.85.221.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkn1i-0000000DqOT-0FLt
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:34:23 +0000
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-52098b01902so15444e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:34:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739982860; x=1740587660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hacM/z7DmOrcgAPzrrWmLbrCAspM7o/nQgW8vja8iQs=;
        b=T4BPU3jEIMP4mcx97b6HW6V8yvgiXSwvONJTNZNXz0Xso7TCL82Q17wKhu/Ek5X8Wx
         GLPJXIPHyQctBayiW4L4s4DFxzaSH4+EPVSsvQQxq+XqTSPikjbb3yRrhTCNWHaO8yZ5
         Yq8Yb6yO7Tr+hOiDlORcsvYQEJfHqqqYoapHWEiBtu+WL62Zl6UsOIjeX0sMVNWIt+J0
         YliRRuUVwIeovFfV2eiIkyYVQkrfvM0sGJRGSusmZg5r8nQc77978F/0ssPGgKufE3VI
         Cqs1ZGQzNXRu9vlf3q9w4UM3UE1VqoSlCpjnjjb154qGluxvGMngM3wAys/VhsEDULuP
         sWmQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3gxCYL0rh7wkTd02OCRwvQoIytlIVaGt15pndlwkApe0GjmsCWOfoXOE3vLTpr2ZG2ISBFEm4QAo=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywb+igghAEXj9JZdFjjihPfZeIe9Q6N2RLk3RK5Jr3gDKkCVCqr
	vxhkK+P+YMFAaagxstghaEF+LeejiVOtvtKpa+a4DXQ7Karh8zgCFxxHIlWT
X-Gm-Gg: ASbGnct/DE7B+EMEMb4/7wOqHz+4JvE5LgEwLJXaQoMgApjBEb22zAq30mU9Bkag08S
	ir1XPJj6LMh889e6bQuPQ0XlaxBbuVAaKGt99p76fOIyytBjXJumsXRMLwqtf576oObSoi/qVFF
	+44/ZQApyLWYGIa42LhJQ+vBFSrR3Gv9LIuaI6LFZv+1R814cbVmFXGsRRu5GcYKa1hexEIBBeA
	8lUQu86veg/rGkrIcsPmE2Uu4dS9iifB21WW57nJeGrQlMwzAVKg7GJ2CDF2ztxqvXYk8OiKDs0
	mkajctOglwVmHqNUr0dzeHq48ueTCMyWGi96xC/qxi5n0+VSRI192w==
X-Google-Smtp-Source: AGHT+IFD6HVgJFW3hkfD9oT/3fMPF6zGXRnleMtLlVDxXIszXn3lXRKD7ie8b2D9lk6Wlo+Su70LDQ==
X-Received: by 2002:a05:6122:2529:b0:518:8753:34b0 with SMTP id 71dfb90a1353d-521c333bd49mr2376461e0c.4.1739982859266;
        Wed, 19 Feb 2025 08:34:19 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-520a6bded22sm2194245e0c.16.2025.02.19.08.34.18
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 08:34:19 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-868f322b8dfso14789241.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:34:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUOEVhNuXPDvNUyqgO7/vigNH59lZDiJy7IoJXEiOtn20RhU6rm2xYozwIOoEBCuXIWjGo/KVug6Tc=@lists.infradead.org
X-Received: by 2002:a05:6102:dc9:b0:4be:6151:dfd8 with SMTP id
 ada2fe7eead31-4be8454777dmr3305014137.10.1739982858747; Wed, 19 Feb 2025
 08:34:18 -0800 (PST)
MIME-Version: 1.0
References: <20250203185421.3383805-2-robh@kernel.org>
In-Reply-To: <20250203185421.3383805-2-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Feb 2025 17:34:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW26JDM+BDq8+vyJG2c316ZoF9ODmCfF4KfwJFJe6B7sA@mail.gmail.com>
X-Gm-Features: AWEUYZkP0St8Copel6sogy2IZLCNjeA2BBkvxODARj1xkKGB-fmyHYIPZ2_fXLo
Message-ID: <CAMuHMdW26JDM+BDq8+vyJG2c316ZoF9ODmCfF4KfwJFJe6B7sA@mail.gmail.com>
Subject: Re: [PATCH] phy: can-transceiver: Drop unnecessary "mux-states"
 property presence check
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_083422_096295_04E0CB31 
X-CRM114-Status: GOOD (  26.63  )
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

Hi Rob,

On Mon, 3 Feb 2025 at 19:55, Rob Herring (Arm) <robh@kernel.org> wrote:
> It doesn't matter whether "mux-states" is not present or there is some
> other issue parsing it causing an error. Drop the presence check and
> rework the error handling to ignore anything other than deferred probe.
>
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Now a warning in v6.14-rc1, so please apply for 6.14.
>
> v2:
>  - Use brackets on else clause

Thanks for your patch, which is now commit d02dfd4ceb2e9f34 ("phy:
can-transceiver: Drop unnecessary "mux-states" property presence check")
in phy/next (next-20250212 and later).

I have bisected the following error during boot on the Gray Hawk Single
and White Hawk development boards:

    can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)

> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -113,13 +114,11 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>         match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>         drvdata = match->data;
>
> -       if (of_property_read_bool(dev->of_node, "mux-states")) {
> -               struct mux_state *mux_state;
> -
> -               mux_state = devm_mux_state_get(dev, NULL);
> -               if (IS_ERR(mux_state))
> -                       return dev_err_probe(&pdev->dev, PTR_ERR(mux_state),
> -                                            "failed to get mux\n");
> +       mux_state = devm_mux_state_get(dev, NULL);

If the (optional) "mux-states" property is not present, mux_get()
prints an error message, and returns -ENOENT....

> +       if (IS_ERR(mux_state)) {
> +               if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> +                       return PTR_ERR(mux_state);

... which is ignored here, so in the end all is good.
Still, it is confusing to erroneously print an error message.

> +       } else {
>                 can_transceiver_phy->mux_state = mux_state;
>         }

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
