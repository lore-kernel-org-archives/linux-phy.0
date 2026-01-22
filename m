Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E68EC44500
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 10:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLZD4h2HOec9+us6/IPMraOy0b9y5NB0RJ+4GeZUJVY=; b=Bdle5kAfSSd6y/
	Xu/Rm4RG0rLHnMo1pUjpYpUYdX5LvPlkVxpFs392Db5r35+VokM0ti3GS8/N6NqOLrEt2hWqmBDsb
	YHESgC529QQDkMxTej6NIj2fcGI19hC6G/OswKyrGWOzPnJP3scZ5lD2nnI4h6JrMEcluKDt5WuQV
	3PlHIOGAaQiX0UrDjRIrF5q3hG8Z2Jvyne8fijb983eqAkZtHzt8Rh/4yJCTt+AbLhS5RBGSTXYSC
	WFOIL0HAwHqYZEQr5DaWqJWZXvC4p6HBLYJ/iAu/VbSIVb4XREbB+EV8FUtcxfwsvNgOYXFS4pv1j
	uIxjfXZAjhybIdTIlCWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1virsK-00000006ps5-06Op;
	Thu, 22 Jan 2026 10:25:16 +0000
Received: from mail-vk1-f194.google.com ([209.85.221.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1virsG-00000006pqw-47T6
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 10:25:15 +0000
Received: by mail-vk1-f194.google.com with SMTP id 71dfb90a1353d-560227999d2so305103e0c.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 02:25:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769077511; x=1769682311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DU8rGFe6B3mE/xdQKQTWoBiiNLtj1+ih/vdN/GH7wsM=;
        b=MwgUVn62T+0CwcjSvGFXWaAm9zCMAbz4nfvA5VxCqSzdXB8+WlqhNWX/DiR6F662wZ
         HnODeDypv6Q66CN4O9Npg3BuM+Zu5zyV3Hpzl9h778PrbybO32b/xfduyemEnkTNz4PY
         2enNSwRtwmgeABrUYhRwIDRYskq8+maxr+Hd0UndJqVacIMOXy1NqHbyrtWI9GkExdPo
         9vQ0p8EIBzNQQMkNtUL1jxRjxThX3Zv32DnXXx80Es8Y08RNhRgbekzQsQSpz48EeKOn
         vKC1RkfZU4UK0YDZBsyCuzq9rR9+4ljNVyljptVEW53U7sfclUv1G/c4j+m/9WscKEj6
         TWow==
X-Forwarded-Encrypted: i=1; AJvYcCUbQ1ZARofReUCLlZfyZhZ02FrdEMJ/N/10BXlpsSzvXrOgxM5CFuY+ixlbRoWTTrepui+/l2TlAn8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+QkfviHSD2DNPWU+fBaZdwLzboO1kxncphoJrOpjl4WZ4GI6G
	3v44kH2UDys/5kw30WpcbrjFaQOfTxl455vO4YIXc5vQV21dMg9Vh7w617ONwxl1
X-Gm-Gg: AZuq6aIdQlxucXV5DYONChh4fSVVL4n3fJtRHvK3SdYqsnbSQv9egdFZJIfR5fNCVMX
	/lOYVBPTZ2Pa1S8p8BQ+94/nilUn6FBzYkLZqpDmbzvSLRQcm/M6AOOWoYSsokBH3uCjDcU/n0O
	vcSyMNmhK2IaR/xiHfeeIfnM2uJ3vgspB1V/SC2I6Gh8F17Z4zS1jQ5FNFAPAZb7hub7hnJv+2i
	mKQ0kymN532biBR5LYa4frvbBs1rAW4KY7UkowDk/gRPcqiHKYpWiNeQV/GubEdcpQWkc2Z84vD
	sPrSV5gD0q/eTHiTJnD1+xB9wNDHB9qKHyJJId8ofk6QyUVQlBNNkbIBlqgU0yyFiz6HgPzl6Uh
	P76DCjAw9rt4U7krw7hKNn5x0JuV9l0GULjmk/0qVVAahY6SbdWKYQSGJpjQ6ZJ6Yx1fVBAI4pO
	9Fb0/8xS37ugwk5lp4cGYxoGNjA/0mqxGduvA9WpNN1mOY9TzK
X-Received: by 2002:a05:6122:16a7:b0:55b:9c3f:55f with SMTP id 71dfb90a1353d-563b73b7afbmr5619425e0c.18.1769077510519;
        Thu, 22 Jan 2026 02:25:10 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b70e6042sm4424247e0c.10.2026.01.22.02.25.10
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 02:25:10 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so198342241.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 02:25:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXo5qPgTU6Kv0xtEJCF3iMRJb6eTv0NZB5FCxsQ5nwj0NNF6BbGLMQwXZMCPFxr/9Qi06SavlLhnOo=@lists.infradead.org
X-Received: by 2002:a05:6102:c8e:b0:5f5:3826:3cfb with SMTP id
 ada2fe7eead31-5f5382646b2mr467462137.27.1769077510009; Thu, 22 Jan 2026
 02:25:10 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org>
 <20260118135038.8033-10-marek.vasut+renesas@mailbox.org> <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
 <6f817993-1b4a-4600-a771-d6c25efc668b@mailbox.org>
In-Reply-To: <6f817993-1b4a-4600-a771-d6c25efc668b@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Jan 2026 11:24:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
X-Gm-Features: AZwV_QjuP8FSEPCU0Lg3L4U6GH5gFTYqAWXZrFYKPuIZu4sDlAHvOrdK6rQ4B2g
Message-ID: <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_022513_030289_6EFB7054 
X-CRM114-Status: GOOD (  25.18  )
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

On Wed, 21 Jan 2026 at 23:44, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 1/21/26 2:48 PM, Geert Uytterhoeven wrote:
> >> @@ -871,7 +902,19 @@ &usb2_phy0 {
> >>          status = "okay";
> >>   };
> >>
> >> +&usb3_phy0 {
> >> +       clocks = <&pcie_usb_clk 6>;
> >> +       status = "okay";
> >> +};
> >
> > This does not work, probing fails with:
> >
> >      usb_phy_generic usb-phy: dummy supplies not allowed for exclusive
> > requests (id=vbus)
> >
> > Adding a fixed regulator that serves as vbus-supply like in commit
> > fec2d8fcdedaeeb0 ("arm64: dts: freescale: imx93-phyboard-nash: Add USB
> > vbus regulators") fixes that issue (and my USB3.0 FLASH driver is
> > detected, yeah!), but a more accurate description would be better.
>
> This piece of code in drivers/usb/phy/phy-generic.c [1] shouldn't fail
> the probe if "vbus-supply" property is not present in DT. If
> "vbus-supply" property is not present in DT, then
> PTR_ERR(nop->vbus_draw) == -ENODEV is true, nop->vbus_draw will be set
> to NULL, but won't encode error, so the dev_err_probe() won't trigger.
>
> "
> 259         nop->vbus_draw = devm_regulator_get_exclusive(dev, "vbus");
> 260         if (PTR_ERR(nop->vbus_draw) == -ENODEV)
> 261                 nop->vbus_draw = NULL;
> 262         if (IS_ERR(nop->vbus_draw))
> 263                 return dev_err_probe(dev, PTR_ERR(nop->vbus_draw),
> 264                                      "could not get vbus regulator\n");
> "
>
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/phy/phy-generic.c#n259

Sorry, you are right. I missed the PHY driver ignores the error and
probes successfully, and thus didn't bother doing "echo ee000000.usb >
/sys/bus/platform/drivers/xhci-renesas-hcd/bind" after /lib/firmware
became available.

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
