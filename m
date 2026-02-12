Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 409B3EE3698
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJL9cp5tfdQSjOSOdMJ0o3TFapLP/16GILE9MbI/rqI=; b=evelXQGAuoU5gb
	Hkv+KVS7VTUFCfSy4oMz71D3qoVcZXzQEWsd7ucXyNugT6NaPTIzThJn8zJ6KkWvhJAduw8J8df9V
	lqROGSjKB4TKifnYiRwvAv4S1XVyWYCUpMFJskY4rYBghkGuTjoEEldOjdcVuG/EwNlaMoYtgeSDX
	OYWWky4pMpESu/WbYt5rt9OtIQcCKAHwBpmpLv6A4yxpBPF6XQPxC31iAkMrjzd4hUdU0sWucNZru
	7pMAcINkwgLrNxKei8QtDYWlm1KZnF2uzqAgbIsZmLBQyJji5VHPeAbcShMBbJOT01ybG/2VksOJI
	7eK1N4eLgOaCe5qVXP/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZrk-00000002OI0-3DZK;
	Thu, 12 Feb 2026 16:48:32 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZrh-00000002OFX-3WHS
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 16:48:31 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso40215e9.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 08:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770914908; x=1771519708; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s35shHfPlRPLdZc28zpITEbCE57T/ice0Q0E5ta0TZU=;
        b=FZa2pwE6tpbTBNaloKkbrJKwExUG0MHIlqj1XVJMlPK6AKCNQKFi5Kvj5BxltEBFty
         n8TIOJSQos4/9kRL2LBShTRLVTMz+IANT732GXwuZuqoiszmyyANBT7lFyhcs/MLj2ZB
         yIypUGN6jpBkgGgSdw8K/iBO41AizPd/AJjc1pzYmNlt2Z0/yeOVcuCuEQwkCs09F9mo
         Wwu1VXrXiXdJKN5ckDCBVndGEJyGAYr4GKMyUVyzq0LSyBK3q4X3CDxPUMw/F63lEuWC
         GPPfdOn8so/jlJDi+7tF1fAQDwdjkx/2WKuJ9ZW5HiqGNBis8uy/80fSv4efv4DOaLWs
         wTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770914908; x=1771519708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s35shHfPlRPLdZc28zpITEbCE57T/ice0Q0E5ta0TZU=;
        b=ZdEqTYQyrJ68WsoNj3mqqpSJtACxtlyjXSLvdMVRy9veDZHU9rVZJh3HXqif/g7EPT
         CbAPJAC4tF6EgJ1d0BH6YWlrpHCiMjnUl50veoOPl1cSNmuHr07n7ayUXYvoNDxk6GA1
         ege5XwesTgFtnT2g+WzVPhdGJXxG+qA/3fHYHJ3CUi3iU248A/2xh4eRiGZPnFnvTcBV
         PLJn81NfG8dV7i0mM65ll0u1Rrx94EXmYNmshQlkj8qY0gVZlDp0OrZj8hYY4gm+steh
         8jK1mcf3bCzH9q073PVwKTjB6f/AM60+LFbr9l9WsCzxIjFDM/7dNKYVKmkr5O8sUo7D
         ySSg==
X-Forwarded-Encrypted: i=1; AJvYcCUkxn9W3kBhT0LLnaOGq2qBey1nLsYm6hP7I4g44GHyfewnuEz3i2Y6vdAxLwHB+GlO7qIaU4VCwQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfnQiGj4u6chYP0sTVTb2TPlC547G+o5Tuq/mr46fX67GgUTvQ
	/CY+FUUetNSlIEE41qJeBKGhSc76S0miFryD91xl43Z/bJRnZCKD4Yyd
X-Gm-Gg: AZuq6aJgu8SaN2DUypxbnWx2Y82HiYPlqNApLSrPMjoSdW3Xx9+qEHv7a6Mramve9EM
	kErMcM1mIBBRKMQu8kcYPaG4YwDPDOKUBEVKeI63+VnVLPgy9U45aaBJaQGHlE0RoWJykORBNEM
	Xn7CAbi03UP5nz3qVzOPrqjKxke2F8rGpKjyCAx1XwN6KgCgVjNmvEnLTsNEv10IjwViyttPKqA
	u+Z/G4BUXFE4esfVqAyvonCcfvCFjwdwjM6FXQVBx234nKJOvtf4jQCtDvfZmLJosek90HPll1U
	Lf1XF3RQYyipTU6neRkkiGcw3Vi/9IzeNdgxUK6LnZeIbq7U5hd8SvnoE0NcOrlyBln1PCeRmzn
	RB8EsidKI2aTwXr4zHHFKrsAmSjLy5yxOLJgmSwXYrjToMtD/J0VC5WLIBSmLKza80anYoA7Fuz
	DxXctx0C+lwt1fBNA=
X-Received: by 2002:a05:600c:1d9a:b0:477:5ca6:4d51 with SMTP id 5b1f17b1804b1-4836570e3c5mr29720595e9.3.1770914907561;
        Thu, 12 Feb 2026 08:48:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5e0ed5sm192002555e9.5.2026.02.12.08.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:48:26 -0800 (PST)
Date: Thu, 12 Feb 2026 18:48:23 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260212164823.mbeycqwzsy2dfq6e@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_084829_893487_66159867 
X-CRM114-Status: GOOD (  11.14  )
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

Hi Josua,

On Sun, Feb 08, 2026 at 05:38:56PM +0200, Josua Mayer wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---

In the future, when you have a series with cross-tree dependencies,
please try to think of it as individual mini-series for each tree's
'next' branch, and specify clearly that you need stable tags (to be
pulled into other trees). Telling maintainers what is your expected
merge strategy helps avoid making mistakes.

For example, if you did that in this set, you wouldn't have missed the
fact that in linux-phy/next, phy-can-transceiver is _not_ the only
occurrence of devm_mux_state_get_optional(). There's another one in
drivers/phy/renesas/phy-rcar-gen3-usb2.c, and that should be also
handled in order for trees to not enter inconsistent states.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
