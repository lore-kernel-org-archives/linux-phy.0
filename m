Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9547EE020A
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 05:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1MPAvGk8uyESYH5Ndbsh4mqrCYDUmqdNw4a44mDlFk=; b=cZVXfFY4nRDEI/
	Hh7bs4EiPzYO41Y4A6KAcGxurWVhJQOBohexlCByb0EskavgXlA2p2Sfb4/bjSN57EtIj55C4l3RF
	nVWOP5r2Wc8s8B8IFYKUagpZUPKofdX32zIPtNGPwszkrYMFJDKhSjK9WRokUnRW+FeJb5GqTwP+/
	XgHtGrrdsUE0095LC1axDDuvSAQ8B0PYhqni4IBt1C4oTNq+2giOm3JIXtk07YKzFYLZIjTLwkxrN
	e3qPZAyUDdRkCtyE/+IGakzK4++ntu2czGNMyU+v3h0xZK6NoxJIJy+ajBfmCWo7qQs53Sn33+o3E
	aKUNzDwww3+JvM8DIFZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFfm-000000086Zy-2Hbc;
	Wed, 11 Sep 2024 05:13:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFfk-000000086Zq-2h4x
	for linux-phy@bombadil.infradead.org;
	Wed, 11 Sep 2024 05:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=M72DOsqFVTnrcHoK2U9FFgneRCYV3HTdRRCjNnLI+Oo=; b=nCxZbuGCzu74qcOE0yaR7Dudi3
	7PL6tQLQd7cOtdWw+6PyfehjCpM1vm/nPlGFw5v/bArPpT2LU4QF46zOE7NqzNPZdJcGuXN7okXS2
	J9+rBj+WiBhqx1lmuqxS38qlV38QTdvuVcaoabpcW3nV6XFPY0Mw1snSlL95Z713hCrOY0chDw095
	FJEnnXwBX+iDQ7kbcsOhT2gIFvFC4tdEqvRw8FCA22cjiHj4v9cpQY4F+NQJjnmkLkFv6Dj5RG17q
	xky8ZZWWCND65REY+A1IRmbkpKUKH8VoVZ4O25k8sn2j5Os1VhI0joviJ6lrbKKWagQBPayRH23qs
	pZ2n6U1Q==;
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1soFfg-000000007ql-1uPE
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 05:13:43 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=GiRq3K0R;
	dkim-atps=neutral
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id E878992D
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 14:13:03 +0900 (JST)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-719064437cdso2630825b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 22:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726031583; x=1726636383; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M72DOsqFVTnrcHoK2U9FFgneRCYV3HTdRRCjNnLI+Oo=;
        b=GiRq3K0RvsyfKGEmfhLfImsbBZgySWv8488OeT+MajpauS2SqISGF6sire5TqNQDgx
         CQP5cM+t2WCQbLxS+stlLUtyHhqX/URSem0ReKtI4brQtUzpowuqz8gVOLXh6VHGmR5E
         iAI3cqYGR+CFLUxNNM+pT5AnsJgLay4r3ToErn+y2y7RcqQGWxEL5Bcc6bALbR4a/hKH
         E0Jza1oF2Ep8ZL0vBf3zeV7MrDkGIjYYlhQOjTolVBS0Q0vdzEYZBMWPrT8HxAvMoGV3
         wVoHFe5RQ0EGKbKLgbf9kyoyc9aW7jUyNXbWrbFg+eg5yGMl2raOVFXxIhUQhRjQBRzV
         1LFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726031583; x=1726636383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M72DOsqFVTnrcHoK2U9FFgneRCYV3HTdRRCjNnLI+Oo=;
        b=Xek0eBeowEdPS8P/bCk1iMy3EexXSdr9OdFuKBYuKXcKeC7EVbvZeq32zZiQKPopIe
         kJcfoCvz1BRR8gxiqgQju7IgUIBJ5s3I7AOrktisIaDYvRnXjivd2HPbLpz3XDEoecaP
         0pZ2cjNZE5xAEBfjSTfMiWSuXJ8T2nvzbx+go7AM+REB0ND/iOYR1N2rsGEjB+pRe3Px
         nDpHqGf08AZtCjrnDcP3E22/dKdbKfDs9DDYAH8iOmDBGVvh6TRTSrK5mOS/D5QpTJdp
         eQYCQrIG2EA+vjBWJkZ1d4+H7QkQl3MEMcZdQgbuZW68cJwN+Xec+NBnsGQKKxHhTV6m
         u8WA==
X-Gm-Message-State: AOJu0YwMTxDx+7KP/WQGoS0V0j50Ju312l0nZcyLPrdlZh46niepp3kp
	JVUAmUFdGXORCtD5GURN6GL/kXnzWVQfrnGHd4PkLncE3gX8wAR6RNWseardVXN0wVta+MW8Y9G
	DAk7zHCtnDAdtTsbLVKpQotFjPTBfIRvm39XDZp2OO59T3d2npAsxImAQ9dAo/Jz4
X-Received: by 2002:a05:6a21:393:b0:1cf:37bd:b548 with SMTP id adf61e73a8af0-1cf5e19a2b3mr3944117637.37.1726031582667;
        Tue, 10 Sep 2024 22:13:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLTqARgcsRts1O+Mv9NbupTsXE0tf7ZCPEC92Erkmnr9ct7YtJEGFnhPlItc/mapUBP/swmA==
X-Received: by 2002:a05:6a21:393:b0:1cf:37bd:b548 with SMTP id adf61e73a8af0-1cf5e19a2b3mr3944084637.37.1726031582212;
        Tue, 10 Sep 2024 22:13:02 -0700 (PDT)
Received: from localhost (76.125.194.35.bc.googleusercontent.com. [35.194.125.76])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8256d0750sm6563261a12.75.2024.09.10.22.13.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 22:13:01 -0700 (PDT)
Date: Wed, 11 Sep 2024 14:12:50 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Marco Felsch <m.felsch@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 1/5] phy: freescale: fsl-samsung-hdmi: Replace
 register defines with macro
Message-ID: <ZuEm0t7HgA5dxe0n@atmark-techno.com>
References: <20240911012838.944630-1-aford173@gmail.com>
 <20240911012838.944630-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911012838.944630-2-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_061341_120703_E44117C9 
X-CRM114-Status: GOOD (  24.30  )
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

Adam Ford wrote on Tue, Sep 10, 2024 at 08:28:07PM -0500:
> There are 47 registers defined as PHY_REG_xx were xx goes from 00 to
> 47.  Simplify this by replacing them all with a macro which is passed
> the register number to return the proper register offset.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 133 ++++++-------------
>  1 file changed, 43 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 9048cdc760c2..acea7008aefc 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -14,76 +14,29 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  
> -#define PHY_REG_00		0x00
> -#define PHY_REG_01		0x04
> -#define PHY_REG_02		0x08
> -#define PHY_REG_08		0x20
> -#define PHY_REG_09		0x24
> -#define PHY_REG_10		0x28
> -#define PHY_REG_11		0x2c
> -
> -#define PHY_REG_12		0x30
> -#define  REG12_CK_DIV_MASK	GENMASK(5, 4)
> -
> -#define PHY_REG_13		0x34
> -#define  REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
> -
> -#define PHY_REG_14		0x38
> -#define  REG14_TOL_MASK		GENMASK(7, 4)
> -#define  REG14_RP_CODE_MASK	GENMASK(3, 1)
> -#define  REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
> -
> -#define PHY_REG_15		0x3c
> -#define PHY_REG_16		0x40
> -#define PHY_REG_17		0x44
> -#define PHY_REG_18		0x48
> -#define PHY_REG_19		0x4c
> -#define PHY_REG_20		0x50
> -
> -#define PHY_REG_21		0x54
> -#define  REG21_SEL_TX_CK_INV	BIT(7)
> -#define  REG21_PMS_S_MASK	GENMASK(3, 0)
> -
> -#define PHY_REG_22		0x58
> -#define PHY_REG_23		0x5c
> -#define PHY_REG_24		0x60
> -#define PHY_REG_25		0x64
> -#define PHY_REG_26		0x68
> -#define PHY_REG_27		0x6c
> -#define PHY_REG_28		0x70
> -#define PHY_REG_29		0x74
> -#define PHY_REG_30		0x78
> -#define PHY_REG_31		0x7c
> -#define PHY_REG_32		0x80
> +#define PHY_REG(reg)		(reg * 4)
>  
> +#define REG12_CK_DIV_MASK	GENMASK(5, 4)
> +
> +#define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
> +
> +#define REG14_TOL_MASK		GENMASK(7, 4)
> +#define REG14_RP_CODE_MASK	GENMASK(3, 1)
> +#define REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
> +
> +#define REG21_SEL_TX_CK_INV	BIT(7)
> +#define REG21_PMS_S_MASK	GENMASK(3, 0)
>  /*
>   * REG33 does not match the ref manual. According to Sandor Yu from NXP,
>   * "There is a doc issue on the i.MX8MP latest RM"
>   * REG33 is being used per guidance from Sandor
>   */
> +#define REG33_MODE_SET_DONE	BIT(7)
> +#define REG33_FIX_DA		BIT(1)
>  
> -#define PHY_REG_33		0x84
> -#define  REG33_MODE_SET_DONE	BIT(7)
> -#define  REG33_FIX_DA		BIT(1)
> -
> -#define PHY_REG_34		0x88
> -#define  REG34_PHY_READY	BIT(7)
> -#define  REG34_PLL_LOCK		BIT(6)
> -#define  REG34_PHY_CLK_READY	BIT(5)
> -
> -#define PHY_REG_35		0x8c
> -#define PHY_REG_36		0x90
> -#define PHY_REG_37		0x94
> -#define PHY_REG_38		0x98
> -#define PHY_REG_39		0x9c
> -#define PHY_REG_40		0xa0
> -#define PHY_REG_41		0xa4
> -#define PHY_REG_42		0xa8
> -#define PHY_REG_43		0xac
> -#define PHY_REG_44		0xb0
> -#define PHY_REG_45		0xb4
> -#define PHY_REG_46		0xb8
> -#define PHY_REG_47		0xbc
> +#define REG34_PHY_READY	BIT(7)
> +#define REG34_PLL_LOCK		BIT(6)
> +#define REG34_PHY_CLK_READY	BIT(5)
>  
>  #define PHY_PLL_DIV_REGS_NUM 6
>  
> @@ -369,29 +322,29 @@ struct reg_settings {
>  };
>  
>  static const struct reg_settings common_phy_cfg[] = {
> -	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xd1 },
> -	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
> -	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
> +	{ PHY_REG(0), 0x00 }, { PHY_REG(1), 0xd1 },
> +	{ PHY_REG(8), 0x4f }, { PHY_REG(9), 0x30 },
> +	{ PHY_REG(10), 0x33 }, { PHY_REG(11), 0x65 },
>  	/* REG12 pixclk specific */
>  	/* REG13 pixclk specific */
>  	/* REG14 pixclk specific */
> -	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6c },
> -	{ PHY_REG_17, 0xf2 }, { PHY_REG_18, 0x67 },
> -	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
> +	{ PHY_REG(15), 0x80 }, { PHY_REG(16), 0x6c },
> +	{ PHY_REG(17), 0xf2 }, { PHY_REG(18), 0x67 },
> +	{ PHY_REG(19), 0x00 }, { PHY_REG(20), 0x10 },
>  	/* REG21 pixclk specific */
> -	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
> -	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8f },
> -	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
> -	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
> -	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
> -	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
> -	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
> -	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
> -	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
> -	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xe0 },
> -	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0f },
> -	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xf8 },
> -	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
> +	{ PHY_REG(22), 0x30 }, { PHY_REG(23), 0x32 },
> +	{ PHY_REG(24), 0x60 }, { PHY_REG(25), 0x8f },
> +	{ PHY_REG(26), 0x00 }, { PHY_REG(27), 0x00 },
> +	{ PHY_REG(28), 0x08 }, { PHY_REG(29), 0x00 },
> +	{ PHY_REG(30), 0x00 }, { PHY_REG(31), 0x00 },
> +	{ PHY_REG(32), 0x00 }, { PHY_REG(33), 0x80 },
> +	{ PHY_REG(34), 0x00 }, { PHY_REG(35), 0x00 },
> +	{ PHY_REG(36), 0x00 }, { PHY_REG(37), 0x00 },
> +	{ PHY_REG(38), 0x00 }, { PHY_REG(39), 0x00 },
> +	{ PHY_REG(40), 0x00 }, { PHY_REG(41), 0xe0 },
> +	{ PHY_REG(42), 0x83 }, { PHY_REG(43), 0x0f },
> +	{ PHY_REG(44), 0x3E }, { PHY_REG(45), 0xf8 },
> +	{ PHY_REG(46), 0x00 }, { PHY_REG(47), 0x00 }
>  };
>  
>  struct fsl_samsung_hdmi_phy {
> @@ -442,7 +395,7 @@ fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
>  	}
>  
>  	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
> -	       phy->regs + PHY_REG_21);
> +	       phy->regs + PHY_REG(21));
>  }
>  
>  static void
> @@ -469,7 +422,7 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  		break;
>  	}
>  
> -	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG_12);
> +	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs + PHY_REG(12));
>  
>  	/*
>  	 * Calculation for the frequency lock detector target code (fld_tg_code)
> @@ -489,11 +442,11 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  
>  	/* FLD_TOL and FLD_RP_CODE taken from downstream driver */
>  	writeb(FIELD_PREP(REG13_TG_CODE_LOW_MASK, fld_tg_code),
> -	       phy->regs + PHY_REG_13);
> +	       phy->regs + PHY_REG(13));
>  	writeb(FIELD_PREP(REG14_TOL_MASK, 2) |
>  	       FIELD_PREP(REG14_RP_CODE_MASK, 2) |
>  	       FIELD_PREP(REG14_TG_CODE_HIGH_MASK, fld_tg_code >> 8),
> -	       phy->regs + PHY_REG_14);
> +	       phy->regs + PHY_REG(14));
>  }
>  
>  static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
> @@ -503,7 +456,7 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  	u8 val;
>  
>  	/* HDMI PHY init */
> -	writeb(REG33_FIX_DA, phy->regs + PHY_REG_33);
> +	writeb(REG33_FIX_DA, phy->regs + PHY_REG(33));
>  
>  	/* common PHY registers */
>  	for (i = 0; i < ARRAY_SIZE(common_phy_cfg); i++)
> @@ -511,14 +464,14 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  
>  	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
>  	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
> -		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG_02 + i * 4);
> +		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
>  
>  	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
>  	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
>  
> -	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG_33);
> +	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
>  
> -	ret = readb_poll_timeout(phy->regs + PHY_REG_34, val,
> +	ret = readb_poll_timeout(phy->regs + PHY_REG(34), val,
>  				 val & REG34_PLL_LOCK, 50, 20000);
>  	if (ret)
>  		dev_err(phy->dev, "PLL failed to lock\n");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
