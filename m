Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B8B6C87FD3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3unU07w8MiIVa9/HC71EPbqnltE0/G5WAixecidjkdA=; b=jhpoYcJ6Z3iwc2
	LIvAQlveHduuzaznk9EqlPFwoW0V+iQmkd38H1wkpgSlEkVFT61badYb6D2Ha952/bRTDu5qDAMnc
	qvv95u4GqUClFsCKwQCvHdRBTvQG1Cl42C0Kuv+YZJDMHM7MCs+ExT+xH9cYzLVd84rBkpUk8EnnY
	73Qpx5nCaKAP93umMcAP7e/ofGitQoT5+Z0e12iXm7wHPz3bs/lzk/+i8VfJ8HSwL88/dKks/tTht
	x08YL5m8HfRkcEyShEqrPID9XZ0ic8zqHncYXsSdIXLhtbtHztGWOfx0wbWBGWR8dDseHO2NpVj9G
	K3gUFFgA6e4AsDgdwhJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfYh-0000000FV7Z-3Wyd;
	Wed, 06 Aug 2025 14:56:03 +0000
Received: from mail-ed1-f49.google.com ([209.85.208.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfUy-0000000FUXt-3jrp
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:52:13 +0000
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-61568fbed16so8939318a12.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754491927; x=1755096727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bUCDOg425OaXLwp4YJbQCNBVfG3s0em33qOC0MlAJ0=;
        b=O8l4pkWxJn/2F59uLr4bSfFoYL76PJE09I78o7x0CVFJL8Uau1TO1a7Qg7NEdeRb+E
         41HjHZ1091zd1VGOTGx6xGpDEAlIU4zZKj1v+AqKf8/BZQMyux3u+vtiv48n4YJo7J8L
         ZMBOhjIGWyA6ShZhEkldYso8ZqyBR0ldKTn/5ezulmaZjzf+9dqnf2OGyIXlobVVv96J
         1oDelB6EDQxCj1QIbkfGjLyd7XTnUkdq7dej4xy3sDcUxNDvHPHwYeaSgwIS7DF5Dmd7
         GyZrpIacVgeMWc4W5YDU6sT2JOymzSUePQ6WJn1vNNRaBMjA14sCzCOU18IBbgSN4lms
         PIPA==
X-Forwarded-Encrypted: i=1; AJvYcCWZGCr3UrDK826tzLlWTj4oFR2i6mLqjw9+L5XOTTkljuLL1xRLGXpIGrpmuVcerZvxLBF6ilpgXcY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHaZ7TD66T4WXv4l7jlxEgzjhnIoCa9ktUKFjYnApo2jIRUBxk
	J8UYIf56oN3zEumt0CeuscLMAm9wDwVYeJHD24jYdrlOF+1I/VOmhL+Unl25FjSk5qs=
X-Gm-Gg: ASbGncuEn1LhYqVP4eHitqphieS7VTuLlzhavcnqaXDGbwCUlirmocrIKTnSyfLxUS6
	0jQT49Q2oi/alWu0F8vxU+Dewx97aDNAUIstI+bsHp9FLQFg2JGSnKMtg9HgsDy71JLJFn5vVSj
	PQFhx6TKgeiLBhBdjJYyhaDeGXPHBEdj3WbwVwMT7TDZdSIoUMyUq+SfwrXntrlf6tQY1IpzfgB
	vshbjyGf792aGU2ecJnXtXmSZCyAw8UiT0CWJ3TREA5r+KJAT5iDLrSTRZw23bFbaBxcMRtTcMr
	/hZ2RWcP8Qvw4M7Ak/27YcxhbtRT+wwPX4ODHuHlObjXREPT5pCaVXtR7HwSdrPh4CRy6dR7sWI
	cg66Z/1jOhCCcuOjwEyUd/vHAjDm5CVqEQUq4QM82gaED9WNsemVCR2o1jqdY
X-Google-Smtp-Source: AGHT+IG+i/2Mik/y7K8jT1x4ZzLLGC1uiSxJznbxfmAGnIXYG06T/BHVJL5VJ4nOuwQvmlY10riE6A==
X-Received: by 2002:a05:6402:42c7:b0:617:a905:c2dd with SMTP id 4fb4d7f45d1cf-617a905c389mr844624a12.33.1754491927038;
        Wed, 06 Aug 2025 07:52:07 -0700 (PDT)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com. [209.85.208.53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8ffd72esm10140300a12.55.2025.08.06.07.52.04
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:52:05 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-615378b42ecso10035240a12.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:52:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV4G8UH4srttvvRW+ZEC1PeS5lPDhz8NIAN7AqELv6XUI9X4aJE9zvlrCWASvbJ62OynebrFy10egU=@lists.infradead.org
X-Received: by 2002:a17:907:3c89:b0:af9:3c4d:e978 with SMTP id
 a640c23a62f3a-af992bcfc70mr250833266b.41.1754491924075; Wed, 06 Aug 2025
 07:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 6 Aug 2025 16:51:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVMKzJtomQzzZaHXbhhEJ_3u71Kj7QcMhRgCXcDWY-Kqw@mail.gmail.com>
X-Gm-Features: Ac12FXyYEz7rzk5aBSzN8UgmC_MvtiytMIezYQg5UvwlqRx6eIwBFlTcBsz1ug8
Message-ID: <CAMuHMdVMKzJtomQzzZaHXbhhEJ_3u71Kj7QcMhRgCXcDWY-Kqw@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_075212_929572_61E700E5 
X-CRM114-Status: GOOD (  24.50  )
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

Hi Prabhakar,

On Tue, 5 Aug 2025 at 14:25, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add initial support for the Renesas RZ/T2H SoC to the R-Car Gen3 USB2 PHY
> driver. The RZ/T2H SoC requires configuration of additional
> hardware-specific bits for proper VBUS level control and OTG operation.
>
> Introduce the `vblvl_ctrl` flag in the SoC-specific driver data to enable
> handling of VBUS level selection logic using `VBCTRL.VBLVL` bits. This is
> required for managing the VBUS status detection and drive logic based on
> SoC-specific needs.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c

> @@ -284,6 +293,21 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
>
>  static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
>  {
> +       if (ch->drvdata->vblvl_ctrl) {
> +               bool vbus_valid = false;
> +               bool device = false;

No need to preinitialize these two variables.

> +
> +               device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
> +               vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
> +
> +               if (device && vbus_valid)
> +                       return true;
> +               else if (!device && vbus_valid)

No need for else after return, but...

> +                       return false;
> +
> +               return !(device && !vbus_valid);

... all logic above can be simplified to

    return vbus_valid ? device : !device;

> +       }
> +
>         if (!ch->uses_otg_pins)
>                 return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
>

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
