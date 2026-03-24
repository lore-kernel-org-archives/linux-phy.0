Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0734F54AAC
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 13:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pE5YTda2toNdPD1Z4XzPF520Ja4oiFKUSa+qiTb0czs=; b=SQ0TAAVdvxWf9h
	O+GbMKh/swRJmRZ2TuV3Br1BZc1hoYl/kTFRBaYlLEvT22C8nt2rkpZ46pWz1qI5yOD89DQq0LmVW
	l+GwBHCE5DJEcQYAEqSuqrTvD4FWZlV8EQxH2BHb7hJcLlJiZ+PJkskeSSXofVNTNXR4IUiUI/tAo
	1LugFA49l+Y+AlXNXOo4kENW/Aka7cmKQGDgPV7uxlq7L4wpFktF/FuWyTldTzDk7hOQkNVuRtr/Z
	s/n20MIs5p66ps3QEWwwauViq/iA1iMxHUyMhV8gnOZPkLXhDOWQzdvnzDrETa6pT/TVvA8tqQQ5h
	BkZFcHjvllTTZrC10JXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w51SE-00000001UVM-4640;
	Tue, 24 Mar 2026 13:05:54 +0000
Received: from mail-ej1-f42.google.com ([209.85.218.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w51SC-00000001UUj-3ViP
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 13:05:54 +0000
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b97a06d7629so707852366b.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 06:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774357550; x=1774962350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpbsDmhCapUwh9Cve29legSkefqaTko+/wOGcVZ2UCA=;
        b=EtLgi0S1Ot+Qvd5rkBr5fIQP/Ecz13ZURTavudH5x1l+mgoS7NLWuEtAOkjjZjzyuJ
         /t88DGJc5vs8+glr5neYKitzO0qQX0pYlruEHW3aE14HJwiRdCS0xTnYq5s6zJFmcrXd
         Qk2DCGEWAnQmGQvS1fISmc7EqRV3PM+FKbzac+NOcgWt5KtnYmbAYskk6MD6D2txyrUO
         oAWOHr+5t4h6kxuhXdEfUH/EgW+Qih+jr1jBMVeIU/F1lepH3Sn9/xDmqYEr49WkqfNq
         fAcwUP5KlMn3rKeP0Ae6Lt/vW4iFc4SHd5tslk5utvL6Gzigi98ODslD893JrT/C1iIs
         oyZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2GkJTwHtxoFDDRieUOL/f0fvPWhvItMr3paYu2AojgdGdMc3zI/u9/fTGW0UfqUicMSr3WqJgM14=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj+cn8I1Bx5w4TL8lQBPrIavGE1FUGL19jEz9Nsefibuhr5oI0
	JN5MA1QO0Ppk9bPkZeAXN5h51MGPI9IPJz6tuCXo9iMocDVEoGRzK1t3/4fzy7Vmpis=
X-Gm-Gg: ATEYQzzL8Th7F9jiwBWvj8X+muEcc3HD4mX6pQhgv6lCz5wrkmJcIkmaGxwmB5o7oNx
	9G2+grbdLa3V1nqP1OVrfpKo9/KtBNnFgBDORshOIzdywggjAWBCY+rVA2muTxd+uBoDngQywA4
	DeD2RFE563VaZSrFDPDZ9SjnpRwaNRt95Ky7ya2+NF6vZWLl2hPv3/8xuu0gtdRDv4gNBJakM8p
	sQU1c7ExrIjPybeC4FVVHvYiv9eGf1IN/27fXzfGqgUEsQjSnBKtslNfiitYHYgFh4Ejaq4TQSP
	8sLlMPMR/522CB8JkJWc6R/THjNFt+ZefCQ8ep9++rwFtCYb6EkQvxKzGb/tD9BNeMizmpR34J+
	3JRSNN/Gn8UqJg+gMbJNCN5Arq1GYvcmwtabyO/g1dOwJMf3y+Fn2fcx6B7Eci9dugrLSzfTXSY
	dQB21nc1h9EDa3p+bF8Cv9ontz/L8lpWkZK9C6znsbwYjHFBElW4y7KmuHQVFl
X-Received: by 2002:a17:907:9381:b0:b98:4246:8e6e with SMTP id a640c23a62f3a-b984246a925mr760725366b.53.1774357550221;
        Tue, 24 Mar 2026 06:05:50 -0700 (PDT)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com. [209.85.218.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f8c13csm628394866b.18.2026.03.24.06.05.45
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2026 06:05:48 -0700 (PDT)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b979d16dd0cso783090166b.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 06:05:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXEk94RnrVKWHheSOOqqy+HVAPxpto3mNPp6gZS6VSx6p80A9IuZ0WkOD+xpv31LyLpPZGEpf0ck2M=@lists.infradead.org
X-Received: by 2002:a17:907:3d06:b0:b98:3fdc:150e with SMTP id
 a640c23a62f3a-b983fdc1df6mr1119666566b.2.1774357545379; Tue, 24 Mar 2026
 06:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260324121608.3444943-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 24 Mar 2026 14:05:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_94xOmqRqDKW_e740ckmRoyW+oaHvorphNg27JNKUrw@mail.gmail.com>
X-Gm-Features: AQROBzBJaCVgwv-vRbaayLKwJjAAqLez24emj_-XOEZTvNken81UxnWww_VtevE
Message-ID: <CAMuHMdV_94xOmqRqDKW_e740ckmRoyW+oaHvorphNg27JNKUrw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Pavel Machek <pavel@nabladev.com>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_060552_894494_D7985005 
X-CRM114-Status: GOOD (  21.68  )
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

On Tue, 24 Mar 2026 at 13:16, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Read the USB2_ADPCTRL register once in rcar_gen3_check_id() and reuse
> the value instead of performing multiple MMIO reads.
>
> Simplify the return logic by comparing the IDDIG and VBUSVALID bits
> directly. This preserves the existing behaviour while improving code
> clarity and avoiding redundant register accesses.
>
> Reported-by: Pavel Machek <pavel@nabladev.com>
> Closes: https://lore.kernel.org/all/acJV-Xq-2uq_JFMn@duo.ucw.cz/
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -314,13 +314,14 @@ static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
>  static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
>  {
>         if (ch->phy_data->vblvl_ctrl) {
> +               u32 val = readl(ch->base + USB2_ADPCTRL);
>                 bool vbus_valid;
>                 bool device;
>
> -               device = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
> -               vbus_valid = !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_VBUSVALID);
> +               device = !!(val & USB2_ADPCTRL_IDDIG);
> +               vbus_valid = !!(val & USB2_ADPCTRL_VBUSVALID);

Perhaps combine variable declarations and assignments?
The "!!" is not needed when assigning to a bool.

>
> -               return vbus_valid ? device : !device;
> +               return device == vbus_valid;
>         }
>
>         if (!ch->uses_otg_pins)

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
