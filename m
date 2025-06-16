Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 804A6C71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 15:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tvB3LVoSg5CPdnneepD9uEq/Zu9SeVZniz4ux8JsQ4=; b=BsqMoeZn2WZQb4
	KCBuJUcFJoUm/rqXBbNr2GiZEKV7+ne4wbtWyuhDdXTdvw+OIYb7CZRNIDY/mKlJ8cztDyv5IRk2v
	ePVvMaiufwOcKzAd/QCiVG+K/pkxOr0mgxuisjyH1Eh5lpzGqJ6MCA8dAcdHN2OMbsafkU6Dtgu2N
	vjS44koONaPnYBLqHI0+Jz+3UMIAQpLr1/0CF+rg2CIX/X/WPznSYrVTr1Be+2V8XDbnvf7ri4q63
	A7xI1KFks4QEop6DF9hf1v7BMeJE/1pL/Upun8K4ArpGfdG/Bkjj+8qE412JhqteGz3CFnG79O7qB
	Jzl/6PSUvDqK1gyvvPcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBk2-00000004qpL-1wQE;
	Mon, 16 Jun 2025 15:27:22 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9uo-00000004Y86-1gIO
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 13:30:24 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e81ec95d944so4710784276.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750080621; x=1750685421; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8dIM4ggq6nkqhLbVMKcT1ezBsK840f8IM9RKNGuYHjk=;
        b=MKzUXo98qQWXnacho74Ez0BjonbseTA5zpAsUGG1FxO5ncaVvRBocQt+5cW+FPdLkI
         Gh7GD+62/cwire0Kephgwp1/CArZR8zNs8UrzC3FFsJsXnrgtOs9Q9gleAYImA/1HmH3
         l+xsVencfHtDc7G6fWHjbh6sWvoUkdicHmTzu/uYujzm0V4UphzPaajy3o9BRDPsJXxg
         2MsX2aZ0IpYnVx9PMBuS/s6okewjzfZAUbHOQgSnqr1ZGH1usgTnRdmUEH7Ghw18q3be
         80DOIlKVQdy92LhvgEJyamfdT4G02h4n4VyoWZqpd9sQoWQ+UL0YY41uUPhlMol+0kHk
         NHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750080621; x=1750685421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dIM4ggq6nkqhLbVMKcT1ezBsK840f8IM9RKNGuYHjk=;
        b=C1QwoLufcKqqhWEy613uUSuc5aNFgJvB+/QZpwTURnJXIHxjgUq6IFzF+tpfw4taFX
         rrsj673H4QWrIwYv/dmIeLKyDck5BvFOoB5fqO3vR2LHMI35n2QcnmdBfsFWmwqrXvdo
         kP6CmNf/XzTgxMZqusuYTkBVlMNhNdIub0v/2z/tCX+yveH2X76NufdakjBL8nmelLq7
         DmPj9Vn04T6RyLDU6VF/Smph3vrliFJ2fgGVHs0ZcxD9ksPuSCoGQHhXReJFDUDNBIa0
         N6VGCDS4ozK6tpjfOzTnE7GxUR8VAzozzScxJxDBYGLCs3YOF6wzVeCc5ZG4CloVoeiV
         nfjA==
X-Forwarded-Encrypted: i=1; AJvYcCWw42sPBt2FSXUL9egrSMbGq7wnwkXMq2G2RuIBYsPKKJwI70Cwtdl34QrybC1SUrUMCFqUAFgEfck=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxRnhpF5aXWgFtfBNAOdymX0xbmpKOWBn79JL/SGzzdpnfMyYb
	4Ja7onteXjAp/uIqbiMXoKJhrpxQQqBEbDc1n0vgp0k1NVAGUnF2+aIMVN9h4n1DJnGwiaOG/Mu
	LNBHiS9bdJl9b2Q0GGL2nGaRGoAzjCwKBVFY7yrX+Vw==
X-Gm-Gg: ASbGnctn06V/sngw+2XLrDWsMBVBuB5IE9yNS61vIi1QY4udXkWY0qBYMZBODBc4fPq
	0VSaVr3zFquqtL0KI4sDub6dcW6kXdEcYdfOKPbDlMdkgz+etVcrJknprIBCPVBgGeksOnsnMG9
	TDDsPDhGqdi4jZibS1q6HAAKS8rSpg3pbV2EDhfIGKtJR/
X-Google-Smtp-Source: AGHT+IHvwFdTtrctzoiWIaPE71W/8FTAI+xhZY2HkhDJbIaDsGip4BNw9qrbXT3Tk9Kd8tGyhyS35T/gDOg+zFs+nYI=
X-Received: by 2002:a05:6902:703:b0:e81:566c:3085 with SMTP id
 3f1490d57ef6-e8227f0e61bmr12875927276.1.1750080620760; Mon, 16 Jun 2025
 06:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com> <20250612-byeword-update-v1-2-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-2-f4afb8f6313f@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 16 Jun 2025 15:29:44 +0200
X-Gm-Features: AX0GCFucmmVjhuxKNu1-kopwQ1Ifcn7b36ykDZEf_SV72XMHIWGaSa8Aqxa6A60
Message-ID: <CAPDyKFr_-aQ+YoRqYVUFhRR=94NWOredaSYQsVb-xvot83HJ3w@mail.gmail.com>
Subject: Re: [PATCH 02/20] mmc: dw_mmc-rockchip: switch to HWORD_UPDATE macro
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Jaehoon Chung <jh80.chung@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org, llvm@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_063022_452974_387DCB71 
X-CRM114-Status: GOOD (  19.71  )
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

On Thu, 12 Jun 2025 at 20:57, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
>
> Switch to the new HWORD_UPDATE macro in bitfield.h, which has error
> checking. Instead of redefining the driver's HIWORD_UPDATE macro in this
> case, replace the two only instances of it with the new macro, as I
> could test that they result in an equivalent value.
>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index baa23b51773127b4137f472581259b61649273a5..9e3d17becf65ffb60fe3d32d2cdec341fbd30b1e 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -5,6 +5,7 @@
>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/mmc/host.h>
>  #include <linux/of_address.h>
> @@ -24,8 +25,6 @@
>  #define ROCKCHIP_MMC_DELAYNUM_OFFSET   2
>  #define ROCKCHIP_MMC_DELAYNUM_MASK     (0xff << ROCKCHIP_MMC_DELAYNUM_OFFSET)
>  #define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC        60
> -#define HIWORD_UPDATE(val, mask, shift) \
> -               ((val) << (shift) | (mask) << ((shift) + 16))
>
>  static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
>
> @@ -148,9 +147,9 @@ static int rockchip_mmc_set_internal_phase(struct dw_mci *host, bool sample, int
>         raw_value |= nineties;
>
>         if (sample)
> -               mci_writel(host, TIMING_CON1, HIWORD_UPDATE(raw_value, 0x07ff, 1));
> +               mci_writel(host, TIMING_CON1, HWORD_UPDATE(GENMASK(11, 1), raw_value));
>         else
> -               mci_writel(host, TIMING_CON0, HIWORD_UPDATE(raw_value, 0x07ff, 1));
> +               mci_writel(host, TIMING_CON0, HWORD_UPDATE(GENMASK(11, 1), raw_value));
>
>         dev_dbg(host->dev, "set %s_phase(%d) delay_nums=%u actual_degrees=%d\n",
>                 sample ? "sample" : "drv", degrees, delay_num,
>
> --
> 2.49.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
