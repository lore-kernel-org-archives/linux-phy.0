Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D961061B24
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 21:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AG3ReRla2kYRPMKP5e+xm0HC1xQ+i2uejJAQBmeHi+s=; b=a+0YcJVHYTLF+g
	h1pnGVnaWh/S7fXjjLleFxC+4r2p8a8IUf6TKvfYNlHodx35G1entrJbFppDIKVzxbOHfEDrklA/u
	OCUPvgDbAmHzgk4VV8SJrgXKzuoSxw1IJG9zTh0rSMoMRiMYoAkOneYZdNtBTIGfytI1ZhO1ZzcFi
	4k+Tb4lc90ZGS7TFlTJg5XeOxCevwdyBBe+tX9DtlT2/JyfSFZbgiDEvkRSUWNWpCxoRRD6HqzDFK
	Obm8bpAxh4s8bTQkKRxLdWlLQgsHkUsYvg2AIuwhC5fRnD0BS5GCvr5ISCa6mNNzmi7H1SwqTw7XB
	EdKDgTyoO6+FLl5IfYkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KL5-0000000Bv9C-0uCZ;
	Mon, 30 Mar 2026 21:40:03 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KL2-0000000Bv8V-1Fno
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 21:40:01 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-486fca3245cso3629345e9.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 14:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774906798; x=1775511598; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CZq16Vvm2OcalCR/KaecqgDhE8kt3cyv+A0i59T0APc=;
        b=qrcIFCvRxOwJA5Nt4XmHcIVkFK4PsTd2Vb5kfwsr17ls4s0Ipr3lPsrfSjUaUPxQyB
         7pZ6r39vv8NFrSdoUo/D9oSIf3e4+YvyQ8jIhYhGEt6gfA/SgNpMXX1eh845TmYXKSXj
         ik6Gr4lFT+iXz8pEGHTtCB8v5WDy4zztFWZCgFIoWNy+tQoeeCs7aR8Fxh7ysnn5bkQx
         4ZyZ76LeAoByMaLdslu1e8puNx7iFYIIf0GB2+SL9RaM4S/b3ITLFnpWhaQLDyMG4YVN
         t5yB2OPlDwo4Y2lRyrryBwLwzW86dhusUiuHV927d0R27ULfHXpN4jpMbllRKqZwFcjg
         e9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774906798; x=1775511598;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZq16Vvm2OcalCR/KaecqgDhE8kt3cyv+A0i59T0APc=;
        b=mMF6+GzzzkzOqp3XjTVMVug9aOPLB9kxN/sM5kFB9mlJ7DW5EGvEJQkNLhNEcA4bET
         GHlHC+1Ms4oQxE8SDckPLiUk0Rw0VE2SH0lzaPX3HoJLWJuI2LVM8upOSdlsgDBGrR1e
         zJTzaRXk3HRiUpig5BuL130yJAq3UYo5CxoR1SkHmZ6c9KqCIUQssZBsYJ4/83YPO2U2
         m7T+c7rZp0wH33AM60DCVTz5pi0o/rT7g8eDm24agA+fKWQxU20YlRoUhEFovnsOx0w4
         FAUVI3bFUzhjDlsAEEhuEah2K8XNnRjsuIhwIXyeJ8alr2bDBCuQ2G8uxgVDHaWyrVk7
         BPZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBswopb0KnllUjZeszWq0ku2bQtq9m75MiQo7iryYJmUX2f3UpB9j2SpGFOvKuYn+0voF91JXe3ig=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3nEibIQfLuzoFp3acx4Czk9L0A2a4hneOrgHIu0Es0yC3rF2B
	qVI/AGIhZSENBsZbk2dTMnmBb8ELMHBgC2XU8yTt3a9drSkICXrCIpk7
X-Gm-Gg: ATEYQzwNM76dbJgF609Eu2oLC6qRmLGhdgKu12I1947LcVXSaDjJyvYuWCd8p+HdxUZ
	RpqbYKGMVlJJwc1ql2SgkKs4QzqOSg/6ol3UrQAvV7MJWHdymVeqNOZsxds10KA/RhPSoEQB3AH
	k271QgoK86+O1+RblXvlEjME7iZyYXCWQvvUkuKuaKo88QQeaeP1eURxvJqvwTM/y6qrl01DXkt
	KvoUB05g7WcKuc8NrqMLEba2FW0uiifXkb1Jv2cbr06VoJ3Pn1qGzUFpzIQ1rbN2uC54Lh/HUeh
	wMhoSOSRZrKC01uSoJSP6QKtcYMaOmyutOZtk+ljZN9oAZW1jlIMLLEVKGQiS3pR7pwgPCr1u7B
	Q2uCAx6nJ+tW3jIhzEtins9vVQHVjpWBjGZgsi0OVBzYlyy8lK3bb3cnodyIdO+3yHXWsjwSQwI
	xTyzxre9TacBu7Zwk=
X-Received: by 2002:a05:600c:46cf:b0:485:3bc7:a224 with SMTP id 5b1f17b1804b1-487283d261bmr117767505e9.6.1774906798095;
        Mon, 30 Mar 2026 14:39:58 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48722c9506dsm293281905e9.7.2026.03.30.14.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 14:39:57 -0700 (PDT)
Date: Tue, 31 Mar 2026 00:39:55 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 4/6] phy: realtek: usb2: introduce reset controller
 struct
Message-ID: <20260330213955.udqpa77ek7n4arsq@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-5-adilov@disroot.org>
 <20260327160638.15134-5-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327160638.15134-5-adilov@disroot.org>
 <20260327160638.15134-5-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_144000_367607_72446261 
X-CRM114-Status: GOOD (  29.21  )
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

On Fri, Mar 27, 2026 at 09:06:36PM +0500, Rustam Adilov wrote:
> In RTL9607C, there is so called "IP Enable Controller" which resemble
> reset controller with reset lines and is used for various things like
> USB, PCIE, GMAC and such.
> 
> Introduce the reset_control struct to this driver to handle deasserting
> usb2 phy reset line.
> 
> Make use of the function devm_reset_control_array_get_optional_exclusive()
> function to get the reset controller and since existing RTD SoCs don't
> specify the resets we can have a cleaner code.
> 
> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  drivers/phy/realtek/phy-rtk-usb2.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
> index e65b8525b88b..070cba1e0e0a 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -17,6 +17,7 @@
>  #include <linux/sys_soc.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/phy/phy.h>
> +#include <linux/reset.h>
>  #include <linux/usb.h>
>  
>  /* GUSB2PHYACCn register */
> @@ -130,6 +131,7 @@ struct rtk_phy {
>  	struct phy_cfg *phy_cfg;
>  	int num_phy;
>  	struct phy_parameter *phy_parameter;
> +	struct reset_control *phy_rst;
>  
>  	struct dentry *debug_dir;
>  };
> @@ -602,6 +604,10 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>  	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
>  	phy_reg = &phy_parameter->phy_reg;
>  
> +	reset_control_deassert(rtk_phy->phy_rst);

LLM review says:

(less important)
Can reset_control_deassert() fail here? If there is a hardware communication
error with the reset controller, should this check the return value and
propagate the error up instead of proceeding to configure the PHY?
Additionally, since the exclusive reset line is deasserted here, does this
code need a corresponding reset_control_assert() in the driver's teardown
or exit path? Leaving the IP block permanently enabled after shutdown could
lead to power leaks and prevent proper hardware re-initialization.

> +
> +	mdelay(5);

(more important)
This code unnecessarily penalizes existing platforms. If rtk_phy->phy_rst
is NULL (as on older platforms where the optional reset is not defined), the
delay still executes.

Also, since PHY initialization callbacks run in a sleepable context, would it
be better to use a sleep-based delay like usleep_range(5000, 6000) to yield
the CPU instead of busy-waiting with mdelay(5)?

> +
>  	if (phy_cfg->use_default_parameter) {
>  		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
>  			__func__, index);
> @@ -1069,6 +1075,12 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
>  
>  	rtk_phy->num_phy = phy_cfg->num_phy;
>  
> +	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
> +	if (IS_ERR(rtk_phy->phy_rst)) {
> +		dev_err(dev, "usb2 phy resets are not working\n");
> +		return PTR_ERR(rtk_phy->phy_rst);
> +	}
> +

(still LLM review)
If the reset controller driver is not yet ready, this will return
-EPROBE_DEFER and print an error message to the kernel log.
Should this use dev_err_probe() to silently handle probe deferral while
correctly logging actual errors?

>  	ret = parse_phy_data(rtk_phy);
>  	if (ret)
>  		goto err;
> -- 
> 2.53.0
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
