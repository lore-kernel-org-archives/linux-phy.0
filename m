Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2408C83F2D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 16:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Rl+Une8FyWUx9uR1D07kF3wDRdWHq4fFRf7f9+GCCs=; b=G84I418XQhN3Nl
	Q5ZMYuqlwXVSgSI/+adsnnfKsNn2RQ3R7QkiRHjWAtEw82vP+HJ02dsZrzTYmH3HFGjmSp/cpImr/
	KBC9VEVH3XbGy2Zx1TgIM9gUpJvJxdw02mnEr8jNglqDYMdnIASPAOEl4VfrAw4jEJ9dl/iZrSJXZ
	GR/oiPp9ZCeJ/024+EFqiwFT9/GflTh7xwfLLCTketjZ7wAfdUMiGvjMjwKUrH/vycVyiCnFfQM76
	86rep9zBHGFNY+CMWwsOqaV4l8hRwPykkFC9Qp6UGNA6lA8T6gg3TqO2Yu4YCpdAP4mefmvp3epH4
	xYs5Cw7j342GAtE+YlYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sji33-00000002qOh-2Sfa;
	Thu, 29 Aug 2024 16:31:01 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjh2s-00000002bbS-3MYs
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 15:26:48 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a8696e9bd24so103467566b.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 08:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724945203; x=1725550003; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IIVRFaFvh25kJ2shkW0d6LgWcnTu2JPMWtkC2wxiE8c=;
        b=CeJRMxPf3jplUCt0DhX6bynmZs1wNpdCq92D/CuvVMpiLhvU7AooNHt+pW7XhNSsDS
         l2Y87g4cdyfiUKw/PSYi+HNSH9OuKRDOJanLbC/f6RocH7jUp4R7ygskLLl43awI39FT
         273vuPxCeQZkzqUWF58pc7XePvZxti+MXuQ03MfGqKNAcGqFtri+mrDL64aQPCtZvc2u
         JDV9Ow/AqHCoqQczQsfB5pptpAPdy1U7LyLIkxAQGKrN2ffgpgClTC+SMN11MeRihaor
         L9kaqEaYhyl75S1X6LwiFLTvklPr7JrWLFOZ/FN7hgremWSKqM1C1EBwLC+KIidIg4m8
         qZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724945203; x=1725550003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IIVRFaFvh25kJ2shkW0d6LgWcnTu2JPMWtkC2wxiE8c=;
        b=CBck7tVzVIL9G8/b2KhgFzaOscM/cWVOv5lBvlGBdXV9g/UTBGMb8/PrWoJDxDX0V6
         KS880kuqwTmwBUxWe5sM9pYssnZu1uuneKaAaP2EB1ouQCo5Pic3hbPT3bOugNNBrWiN
         yiL8w+pFvwcwOWJWMrNfZT3jwZq+1n4GKIM5syBLr6aB0Dwg0Uf0hWLFnM/LprLpCmdi
         cepUOMSMAD9EHOBLlcwGMTm7MtMqLbyHv8gJt8t1bHYMWc0GFjvE4AmoayMr9LeGXXWA
         EKUhhWKaQhH72eS++QyzrPclUESUDzrklMw0tg3i96RhHcf1xLgg0DGJ5NuXfSbq8SgE
         NGlw==
X-Forwarded-Encrypted: i=1; AJvYcCVX5NHcK6BlgnAzmWR70CISDPhqg69v0UZzmbtKXC7mkD0Le4r1S2TEimGvuiwLp+flHEU1cM2+82I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAlH6lwQAesCFUW3sLRGVfGCem92PhyDSVOdvlwosUtvYLigky
	FmQsqpLOh+cxA2KlGeWbAdlCMMKWjAWwIwuJ+KfcY+lNfWvupP2gW4vezbW7ZpHuxJ7agYfmkXO
	IDNtLXL30DFRzsXEmxsY4dmZERTl7woRwO5oFPQ==
X-Google-Smtp-Source: AGHT+IH2kueLQc5TRgnqFrkLjrGvJRIK/BMurN2noHpa1MBrWwQdN5e//Oya3AbhSVY9odHODdUMQtzGctXu6ADcfvk=
X-Received: by 2002:a17:907:970f:b0:a86:894e:cd09 with SMTP id
 a640c23a62f3a-a897f78bdb5mr287428066b.9.1724945202995; Thu, 29 Aug 2024
 08:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Aug 2024 17:26:04 +0200
Message-ID: <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_082647_021043_AFD823B1 
X-CRM114-Status: GOOD (  15.13  )
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

On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Hi,
>
> Series adds initial USB support for the Renesas RZ/G3S SoC.
>
> Series is split as follows:
>
> - patch 01/16           - add clock reset and power domain support for USB
> - patch 02-04/16        - add reset control support for a USB signal
>                           that need to be controlled before/after
>                           the power to USB area is turned on/off.
>
>                           Philipp, Ulf, Geert, all,
>
>                           I detailed my approach for this in patch
>                           04/16, please have a look and let me know
>                           your input.

I have looked briefly. Your suggested approach may work, but I have a
few thoughts, see below.

If I understand correctly, it is the consumer driver for the device
that is attached to the USB power domain that becomes responsible for
asserting/de-asserting this new signal. Right?

In this regard, please note that the consumer driver doesn't really
know when the power domain really gets powered-on/off. Calling
pm_runtime_get|put*() is dealing with the reference counting. For
example, a call to pm_runtime_get*() just makes sure that the PM
domain gets-or-remains powered-on. Could this be a problem from the
reset-signal point of view?

[...]

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
