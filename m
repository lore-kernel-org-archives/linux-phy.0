Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B51DFD3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 14:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oSe22Klx2bbJY2fofEP4LNW8Sl2cYnkUHLFdwwr/H8=; b=lqYVSHB+dXcDLK
	S7YT0DHF9sva4V56vD/mvUF/gkPZmoBfcK1SuzRM/HVEdJVjQTu08seDtwyhO9aWkUNrGdjDUGDrg
	KXVZdS8S90287SrEXS47JU1jC5+O3WBzstL+XiU+g35HAlgoHjtj9FnbiROiDVTfSx6yDMjPrzwgB
	jNK+qqMJbCiZQ5Ne8FXArKc6XAZzUUfWR3EGIwRx7eV2t88pt5WuBTUb8luORPbP3n4ZWEfl1IsWm
	AWzK1IMV9QJRT11eydIMnWj4F6bYf6Hh/afb8EAE5jlel9v/jLLCcMbKASxdSrC0c8Fkx9o7VWSeZ
	ems9UqmUmB56NWEKRmTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaEWf-00000003nXo-1PEY;
	Mon, 29 Dec 2025 14:47:13 +0000
Received: from mail-yx1-xb12e.google.com ([2607:f8b0:4864:20::b12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaEWc-00000003nXL-3Pri
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 14:47:12 +0000
Received: by mail-yx1-xb12e.google.com with SMTP id 956f58d0204a3-6467c5acb7dso4858757d50.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767019629; x=1767624429; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hiFIGGOCel6e4RtTn/5DW6H0+gmbweG5rl/mIaIEv30=;
        b=CZ5dYzP2f2rNWx7OaJHCUGrcxuK4Ciy6tcbmafuz9Uf/jWTmfbOheUELjcedGTiyZh
         li4eERQ5z2hE3sarRBSaJ36DaO1ivbzUdzIPFL8fIFVkup4PqaJCwVPtUAX7E9+uXd8l
         KaK8kCgVGGt7hseIAoX9r9VVz897rjfbpQjKRd2DrggTOXeqV5iW9+iK54QUv2qq4DDe
         6XoASsLTKLHM+nreVfb/I13WGikgBnKcpn4v0uHUZc62enL3NlISJYNYJMLopL+ar6UD
         RhNOZmrnpvqYbXL1D7vJsbxl0FlaSjJ2AohtQaOlAiC3+CW/nWBMlZS+UV3dmDXMN8l6
         +Hbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767019629; x=1767624429;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiFIGGOCel6e4RtTn/5DW6H0+gmbweG5rl/mIaIEv30=;
        b=h8qlQ/3IGPVPAiRM9gVYR95HuJ45Ad9Axzmd6spU9oZBqoM8kkdB/BCvEKp9qf5t/5
         BEYZMgsATH9e18QlIJwn7+XQh+xn+/33DY1KqIRjTfcLZ8fT6UAQRw/0fLAuEfILD7DV
         0YSz3+7iEoSGghjQchPKcT7spnQNZaYKbnaPIap1r+TaYXzgXbTPetWz05rdeKcqKeb6
         jk+4xLKk8HVyH16JL0Xe7UxvOpD+1UFuTS0MZVUjYBFS6160H/sT6j00Zw2zDrDPsUkl
         Dp7GrmZyeERMwzJLN0nUuaWsqptCHoiBLSvWBi8EpmEtX1Bu8GS3z698Uo+dQrEWESB5
         kO8g==
X-Forwarded-Encrypted: i=1; AJvYcCXR3SCqpMczOYjK5kOYo+lkKmMYfCXhLiAezYi4YwG9PHd4Znk5kzJAwKFoIDRaaqWBL8jmGu7oMgI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCv/LaA19AYY+fYwfH/XWGQDCuoLJvZ7xypKnWlxuIjSb9OepG
	pE71l+5ozvz0Bt+1YqkwifRAaggQBMnYIgPRksI9fLly47nIzQXHXM8sZNpLVuUZ0K40UwEUWea
	8AOgmcMAF0BvGGJ615L6oMKL1axdPBsHhFBdRO1+/dA==
X-Gm-Gg: AY/fxX6Y9Gu5DWF6fZubcESQbK8wzEx65PusaYM0mWLHljCFE3362Si2hZ0NsY4zEQc
	bD45I9EJ6yCoicsZAcWWpiRAzvOh0S6fTYu29p1KIJvQrs7uqnlbVQTY1wu4sAjIj+JxRIudOOg
	8bHehxBPm3xaMcDvpT+IwxmWrfRAhZqLW1HqD3JwZcpkn0UzK2BFGd/G1m7geV3VA7NGRVkq/Wn
	+XC47hq7+0D/lIrvOqvb8lZE3q10RV9QxgFhpEXjPBaQGx6zvkGXOVe3Y2vsJ2LShtUQ9mM
X-Google-Smtp-Source: AGHT+IGO4whynDnDczZe5aUSFNc6rZ7ClmyTEypWHVE9Jxyg/qzrfMWaETUGVpcInjLrsVhW/aWOBEshOk4ENImI9iE=
X-Received: by 2002:a05:690e:1881:b0:646:7a21:f05c with SMTP id
 956f58d0204a3-6467a21f232mr21185393d50.50.1767019629379; Mon, 29 Dec 2025
 06:47:09 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com> <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
 <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com> <CAPDyKFo2jsV02qSDBSZTewJjV09AMO8iETU5Uxqz+GBnd0JY6g@mail.gmail.com>
 <e8b0579d-21b9-4072-857b-5afab92c42e6@solid-run.com>
In-Reply-To: <e8b0579d-21b9-4072-857b-5afab92c42e6@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 29 Dec 2025 15:46:32 +0100
X-Gm-Features: AQt7F2qjavw22v0M0v4JRnBk0tlNXPSxJSyNw5ogCiPk3Bm42fj5er9DVY64ELg
Message-ID: <CAPDyKFqN1Yq0atE6YaeigzR75n1Q1BSU8JjLno=ioUBwN8=FSQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_064710_883861_8BB2FD3B 
X-CRM114-Status: GOOD (  28.07  )
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

On Mon, 29 Dec 2025 at 12:30, Josua Mayer <josua@solid-run.com> wrote:
>
> Am 22.12.25 um 15:47 schrieb Ulf Hansson:
> > On Sun, 21 Dec 2025 at 11:38, Josua Mayer <josua@solid-run.com> wrote:
> >> Hi Ulf,
> >>
> >> Am 17.12.25 um 14:38 schrieb Ulf Hansson:
> >>> On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
> >> cut
> >>
> >>>>  /*
> >>>>   * Using subsys_initcall instead of module_init here to try to ensure - for
> >>>>   * the non-modular case - that the subsystem is initialized when mux consumers
> >>>> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
> >>>> index 2e25c838f8312..a5da2e33a45c0 100644
> >>>> --- a/include/linux/mux/consumer.h
> >>>> +++ b/include/linux/mux/consumer.h
> >>>> @@ -60,5 +60,9 @@ struct mux_control *devm_mux_control_get(struct device *dev,
> >>>>                                          const char *mux_name);
> >>>>  struct mux_state *devm_mux_state_get(struct device *dev,
> >>>>                                      const char *mux_name);
> >>>> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
> >>>> +                                             const char *mux_name);
> >>>> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> >>>> +                                                      const char *mux_name);
> >>> Seems like we need stub-functions of these too. Otherwise
> >>> subsystems/drivers need to have a "depends on MULTIPLEXER" in their
> >>> Kconfigs.
> >> Currently the drivers that can use a mux select MULTIPLEXER in Kconfig.
> > Yes, but that's not generally how we do this. The driver may not need
> > MULTIPLEXER for all platforms that driver is being used on.
> >
> >> There already exist a few mux helpers both for mux-state and for mux-control,
> >> and they might all need stubs.
> > Correct. I think we should add subs for all of them.
> >
> >> I'd prefer the restructuring of kconfig dependencies being independent from
> >> adding mux-state functionality to renesas sdhi driver.
> > I understand your point, but adding the stubs isn't really a big thing
> > - unless someone has some good arguments not to!?
> >
> > Moreover, since the series changes the mux-core anyways - and
> > subsequent changes depend on it, I don't see an issue to fold in yet
> > another patch to add the stubs.
> Would this also cause changing all the Kconfig "select MULTIPLEXER"?
> If it is only the stubs - sure.
>
> And then in the renesas sdhi patch I can drop my change to kconfig.

Correct!

Typically, it's better to do a "select MULTIPLEXER" in the platform's
Kconfig for those platforms that really need it.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
