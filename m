Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F77A1061B22
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 21:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3urybYUo/LE4vyqodvlK+cweG5Z2SQWxY2Mpfk8qP88=; b=uanPxqt31H/QHT
	DEBmuZBvztM+JWX6+P0A9sxODFvHjPUDLpasvKww02TJykRDAoWtYubQLrVz/TYPwMl/pOF05aiDT
	N9LQwjnN7ZgUMCg4ThlR+Sq+bJzmkVircyAApbswGCeH2ukY97OeU8WuP43SjUAq5duzCTVAokCxb
	0B0bhKVOMpWSIYAiwGz6isxoyFyADpEgl3RS/vJxiKPSlTx77Sm/awBhc6DZ0Am4juYd2iio+cOXI
	b12Nfrmk4ptKSv9V4w+UxheWnGzUzsm2hg+f3CeqeWFiaJu8uK/XKGZVpJX3hHJ2GFm5TxbDgqvLN
	JkR/N5AiTm7ACyhqiOSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KWs-0000000Bvqi-1KmV;
	Mon, 30 Mar 2026 21:52:14 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7KWp-0000000BvqN-3nmx
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 21:52:13 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4853a5ffc05so10653495e9.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 14:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774907530; x=1775512330; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i9VtVxRJozztTdXG3B3HhY7EDhQNxzzr8H6rdGSXE0o=;
        b=fIbQYntsWsAZwvPTy2v2VYzQrz5IG2B4pFXfrD/609tHhE7PzgvE5C1Rv+Ocuz2MTY
         JqwU4ct2uD7arv1cLIpfhz+/TQ9hNtwMq7dZjWsl0F7Dpb6q6iZqVKNdPJt2Bztw+vqS
         RY0JV3/fB727MnTEEhF7k5IyBXjiRGpXPpXy+nS/OMBbZ243y0XbsejALskFAOkxDz/k
         UtaTOMKVyKe1Ttn1jk6ytZyZsIWO3LJE+GvXr3Xp6FdYwBXKLlm2FAOVxrcikIAoiCu/
         4WyMn4coYodl/qRjuW6LuLYQnvxjE7QWIwyJG5kl63EBgC8xgt7fTu1d/OjIUO/sYLNM
         ES1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774907530; x=1775512330;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9VtVxRJozztTdXG3B3HhY7EDhQNxzzr8H6rdGSXE0o=;
        b=KstujJ++7kDYJndeUH4eq8e282/fhCqaaxNc67IjdvbcP0r4RUP+GVxzQadizIs0Rj
         eFniSgQmqaIn6AW5I9azZvn1Vo1eZxdbqy2NcnDBOZn2EfMLEqz/jPIn9Frx5DrClmWn
         4ON1yPdtOJSr8OnU+v9lHS5QFIxhSAVnu1zY8AGcIy5K2iU2CEII2CjsjzXCwf6DrxvV
         H+X7Pof62bnDaTx73dGMsxYlF/BiWea4yXht3fGGJZUFW93NqPdVG5sYRPhtTzbTnCap
         +9oEM/O3/nK4huPU/De8cDVRUStH0LESguuEgT82XYWz63D+4zxRvOpx1uZJ6XiNBAWJ
         exmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvKig2rrkCrji6r4uTcnADF9xEu7WrVvRuRgGf/qiWNEQw3j09JAJ2rlVWf3LBITh500ciXWt5l4w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOxwx2XtsXvc6fQaVCCF+gsS+qCEJ5Isa2b6isuJxUghzfNlw1
	w2M6HJ+z/XeKnTQMIMTmcu8j4D29y+LE+9Zr5ItwMjDWl5pg9SukQcUR
X-Gm-Gg: ATEYQzz41605UvYzGUVwRPyCJp7ok0iNyx2yW6rzNh7a++s/B/P4s6Pa0QdFACw0b3Z
	did+Dr7SwESEH2Yt/bUVDW4HekAGGzzH/WNmvpA03l3cEO19lNoTeX6+oWCzBHua4p+PcmeEVO7
	/CzLOARKz+iTAAMXrLTt6ok/unVqA/djR9mR+8VnZu8uClbXhzI+AMZStvPMms0RYmRI4MWOOKa
	I5ZDXJp4FNqZWfOv6/S0SDyZkO0rqIY5mldaHCuhk+9kvOVKIyVsVPWIscl5jABTahjuog4PQp+
	fWUX1nQbtf0BopNajm2VBxMYIKf2kqMf5TXQFi8nr7XnxlUaXcQrvn8SNDROorP+lBQxBnnu3Q0
	iHpwpYQjCulERG1AVKaK5mUznyEuRhGWSM7aXw+kjJOPhCl/qHQm9NETB4guj7Wi/tZVr7hDR9D
	xKqREc9Np15ZppwNH8In9HkQC9Ew==
X-Received: by 2002:a05:600c:1d1e:b0:485:385f:674d with SMTP id 5b1f17b1804b1-48727f0e5acmr122902805e9.8.1774907529964;
        Mon, 30 Mar 2026 14:52:09 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887ad2b379sm3209085e9.4.2026.03.30.14.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 14:52:09 -0700 (PDT)
Date: Tue, 31 Mar 2026 00:52:07 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] phy: realtek: usb2: Make configs available for
 MACH_REALTEK_RTL
Message-ID: <20260330215207.stx6qbjr7kctm4xt@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-7-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327160638.15134-7-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_145212_034711_CC33022F 
X-CRM114-Status: GOOD (  16.19  )
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

On Fri, Mar 27, 2026 at 09:06:38PM +0500, Rustam Adilov wrote:
> Add the MACH_REALTEK_RTL to the if statement to make the config
> options available for Realtek RTL SoCs as well.
> 
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  drivers/phy/realtek/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
> index 75ac7e7c31ae..f9eadffacd18 100644
> --- a/drivers/phy/realtek/Kconfig
> +++ b/drivers/phy/realtek/Kconfig
> @@ -3,7 +3,7 @@
>  # Phy drivers for Realtek platforms
>  #
>  
> -if ARCH_REALTEK || COMPILE_TEST
> +if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
>  
>  config PHY_RTK_RTD_USB2PHY
>  	tristate "Realtek RTD USB2 PHY Transceiver Driver"
> -- 
> 2.53.0
> 
> 

The file now reads:

if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST

...

endif # ARCH_REALTEK || COMPILE_TEST

Please update the end comment as well.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
