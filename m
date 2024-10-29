Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B4FD2AB20
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 11:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	Mime-Version:References:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jlcCKluzDUCTeICCWr4O/964qk+wpGGgBt7+B9iFpuQ=; b=kwyMZabyZJ+5pdEIGadnXrRuFs
	2klM4myzeZD3gcGBK9iGUDOruUEJqDxqVGhhGVPnnSx2bFZdWb2uT/fewsNWcEvQowE2LWEHLld0q
	1OVL+E+d6Yk2QAVENrD3ifkHOlO5RqsKbL9jTi8G/Eqs14CMsD09vgGwQJS1IGPWwaVOxLuc5efCN
	TOBGwY+smoFlb+TkRNoMY/MSZhNPEjBxFGJZLSLcGhXtj19nS7Hzpx/sWV+/h+BWmmeijH1RKOfpU
	9vNQrFKdUcSz/GBgu1ik41keENOZptbTz0EDFvMoDrYfEAJrwG2Pyrb9bY0GKQKC2rQvRrDhChmFE
	pJmKPiLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5kha-0000000EHiT-46WR;
	Tue, 29 Oct 2024 11:47:58 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5kMe-0000000EEQq-48Lw
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 11:26:22 +0000
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B39424121B
	for <linux-phy@lists.infradead.org>; Tue, 29 Oct 2024 11:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1730201177;
	bh=v61ehPphC3SpuWBobmkEMN1kDRB/yHy45WnKnBTik4Y=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=TPc6VxiETpv+l2wpr/mrGQ/CcLZuJEUSvddDiaVOe4cxUDrVZwfxp+Rwy45vuCS+T
	 2Df4AgshOPi16oSPxXxOjwxXSZ1QfNZrkaIoVrmoRoyKuQ8yzRt50cE7M7c5NQ/soT
	 xzfBknLybnaloXQ/0PiF18USII0UCmsLDrJu/RAVq3MsRyCEHuBPaClA7A/QwLvtHU
	 82ddWTZf3m0lAeDwYUxBupoVlXkK0ZMyJNQGsX6XLmuqA7M6e1oU/EpdJ2lKgDI8zc
	 1BD7Pvxvsdbcas7Pojp8RuLkrNOSheX5ftW8FJRyAdmg31lEHfE2wlEJSsCKV8L7FR
	 Rx/h70PRnu0Dw==
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-718058978bdso4875899a34.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Oct 2024 04:26:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730201176; x=1730805976;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v61ehPphC3SpuWBobmkEMN1kDRB/yHy45WnKnBTik4Y=;
        b=ZeyDhcuYZ081ai5Hq+ag+z9x+UdafVUT0vfOT/lVsHGGZ/cx7E+81bri2PeTQjpaHN
         ixEqEQrwHoOc7HEUSF5TD986/laQSJxgTzhefA1QAF4CcFZFTRFgkeX7HhZzmmNEa2gs
         AhD07omTWiKAMYTEvBg+A+2xDdwxpD5l35Di45yD9MYrCQJQwd22k/GCKJV/kf4GBOjj
         irtceG98AIqMHSeblDRvmxgKngToJbqBJ/TFSpeHaSRIZd24kLnAfDMc5lwelN9fDWf2
         X2LOvZ5CG82UMriHJEDTIraySuwEtvQCey0FcAjiRD8I9KnNxAENs8zRqiX3jLBkoV7c
         sB5w==
X-Forwarded-Encrypted: i=1; AJvYcCWHByvZKSMGv63htr7DhL49A0ohn1U4uzhgML5t30+fUX4ssNB2V0H42NgOAVmZ8cGgsOuai42mCAE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzwnyC0iekDgtNc2HkiZI9xug5J7KsZdx9Hhzr0ylv02r9SKwc
	RGY2byiCNKpH+LqVRTjxC2JhYqrMsPGOQhOBYcASAcW1KF8KnFY60i5OMDtFwOyuW7QCxOHDTxZ
	gEL98X2p44LL2Ry8Nss6fKXfyAtakJPRSn//GJSWQYKjH4usbvGkIl3BBOR3D6efud1fPMKe4Gr
	fHQPiSalkmpPwVaPBdey48grXbAZo7q8qNZtZYg1whGonOh9GkXIODdw==
X-Received: by 2002:a05:6870:46a7:b0:251:2755:5a33 with SMTP id 586e51a60fabf-29051dd2a1fmr9702104fac.39.1730201176522;
        Tue, 29 Oct 2024 04:26:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6KUynuQ+DlJ0SAdxk9knLJkp8MoDFJfgMWvvrdfES/yU5CoPOQxKysfhlo/J2oaPVpFrqPL817POZllpwwZI=
X-Received: by 2002:a05:6870:46a7:b0:251:2755:5a33 with SMTP id
 586e51a60fabf-29051dd2a1fmr9702093fac.39.1730201176239; Tue, 29 Oct 2024
 04:26:16 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 29 Oct 2024 04:26:15 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240902111127.15155-2-minda.chen@starfivetech.com>
References: <20240902111127.15155-1-minda.chen@starfivetech.com> <20240902111127.15155-2-minda.chen@starfivetech.com>
Mime-Version: 1.0
Date: Tue, 29 Oct 2024 04:26:15 -0700
Message-ID: <CAJM55Z9sm6TVbjK4GpHN1yc5uub1uLh3++SPPP+h-T=CYhU25w@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] phy: starfive: jh7110-usb: Fix link configuration
 to controller
To: Minda Chen <minda.chen@starfivetech.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>, 
	linux-phy@lists.infradead.org
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_042621_176451_6E4270A5 
X-CRM114-Status: GOOD (  19.25  )
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

Minda Chen wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
>
> In order to connect the USB 2.0 PHY to its controller, we also need to
> set "u0_pdrstn_split_sw_usbpipe_plugen" [1]. Some downstream U-Boot
> versions did that, but upstream firmware does not, and the kernel must
> not rely on such behavior anyway. Failing to set this left the USB
> gadget port invisible to connected hosts behind.
>
> Link: https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_syscon.html#sys_syscon__section_b3l_fqs_wsb [1]
> Fixes: 16d3a71c20cf ("phy: starfive: Add JH7110 USB 2.0 PHY driver")
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>

Apologies if this was already applied somewhere, but I don't see message that
it was. In any case this looks good to me, thanks.

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  drivers/phy/starfive/phy-jh7110-usb.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/phy/starfive/phy-jh7110-usb.c b/drivers/phy/starfive/phy-jh7110-usb.c
> index 633912f8a05d..dabe59953070 100644
> --- a/drivers/phy/starfive/phy-jh7110-usb.c
> +++ b/drivers/phy/starfive/phy-jh7110-usb.c
> @@ -10,18 +10,24 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/usb/of.h>
>
>  #define USB_125M_CLK_RATE		125000000
>  #define USB_LS_KEEPALIVE_OFF		0x4
>  #define USB_LS_KEEPALIVE_ENABLE		BIT(4)
>
> +#define USB_PDRSTN_SPLIT		BIT(17)
> +#define SYSCON_USB_SPLIT_OFFSET		0x18
> +
>  struct jh7110_usb2_phy {
>  	struct phy *phy;
>  	void __iomem *regs;
> +	struct regmap *sys_syscon;
>  	struct clk *usb_125m_clk;
>  	struct clk *app_125m;
>  	enum phy_mode mode;
> @@ -61,6 +67,10 @@ static int usb2_phy_set_mode(struct phy *_phy,
>  		usb2_set_ls_keepalive(phy, (mode != PHY_MODE_USB_DEVICE));
>  	}
>
> +	/* Connect usb 2.0 phy mode */
> +	regmap_update_bits(phy->sys_syscon, SYSCON_USB_SPLIT_OFFSET,
> +			   USB_PDRSTN_SPLIT, USB_PDRSTN_SPLIT);
> +
>  	return 0;
>  }
>
> @@ -129,6 +139,12 @@ static int jh7110_usb_phy_probe(struct platform_device *pdev)
>  	phy_set_drvdata(phy->phy, phy);
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>
> +	phy->sys_syscon =
> +		syscon_regmap_lookup_by_compatible("starfive,jh7110-sys-syscon");
> +	if (IS_ERR(phy->sys_syscon))
> +		return dev_err_probe(dev, PTR_ERR(phy->sys_syscon),
> +			"Failed to get sys-syscon\n");
> +
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
