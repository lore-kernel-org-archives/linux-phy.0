Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23ADBE9E311
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 15:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPYpbzGY5ZP8HjFDEV+SlCYFh+diQqjF5F7fnd3iMkE=; b=Fl3UwKbtcFBVK4
	P88YsN57j0wZVHi0c4tdgwOY5AqBQAx67OaPorvyOoUDWhMBYY2T39d0W1Jtdv1h7PnoJvtpoL8cw
	9S2nKR5rbinppmBwJrZTGog53lkse/Mr9KKfJxfPBF5hxjBXWLTKjjN6jeTaoN+FHjTdw5dqHdwRf
	LcKlm3vxYa4vBY+rLWQebm8Pa8b1AliUVWMs++hC/ipppVSIv1NwI2mgSr9ZlR2ZxAO1k5bMcr1B6
	HqTKXEZIp6uKt04nZs87elQQEPM0eHY5yM7zEBu1cPA8+xxi521jvfuOyRGwOPL6esg4522R6dZYO
	HtmY3a0vBmLl9PNPTcCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqCSN-00000000o6F-2zKD;
	Wed, 11 Feb 2026 15:48:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqCSK-00000000o5o-3xwL
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 15:48:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-4806853efb5so7802645e9.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 07:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770824923; x=1771429723; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kUog19f3UA9QhTl6kEgUYlRzsmDFYZZB3pA0WGtflsQ=;
        b=XiayFGOu8W8dXzq4oB2tWTvuy5aGOPqT/cIbXH3ZriiXBzMerJ5C4mljQEjhD9ebR4
         2bfi+VdvjS0ChBIBAO22KmtnvLuYJ55QZNg/4DtnbzQvmWNN3yUBFQoboz607k7rKiVz
         bPS7mb7J53OKl15fQ0uk4opIMdwJKrbqjzqtn3zv3YcycIpKiZnNkxdf4o+31an95ZJX
         5RPXpcXCxNIPuL9mhtq1/zFnFK5gAmCl+W0k9I++TyTXoywGQOOs+qdYT71p4m9NCvwy
         4MHiBHdawSf9ysGpmhYroRHu9GuuYOozS/+pCUFprJbDqiZSkhcs7uFW5nLdeNvJYHPi
         vE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770824923; x=1771429723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kUog19f3UA9QhTl6kEgUYlRzsmDFYZZB3pA0WGtflsQ=;
        b=q+UAjIe8eGT0DO3+J+61/a+Yevk2MMrE25j1eMt4ty+Upc9gSdl2S7GW7qy1/LcOP9
         DBuQ58BEdyfUCdvNoPNqmJZUpy4MGj+aQBX5nNIukQzwpiCC+g/wNZQz2n1q+FcHX+Yg
         SK95B65FKhdYyPU4kZzXHt8GL1WSy5QZ3F1BzqI45e6HYlE/CnkBSfuJDkZFJ7VQ0DmL
         KpmN0vxV5M7HFz9nr0m+iElZWJeYXCYwEUpfE+gZLNi6Kj4VRQ37yTamFGW0R2GPdBWu
         t6Gpy05lS3YpTbiy62vF/tvAi8KOjl61ykyDoxZ+ck+WLNo+cWPwlCc5bbJs1A6T2C73
         s+NA==
X-Forwarded-Encrypted: i=1; AJvYcCWclL1H9j+17aOLhuygMTrzbZRUptzlZcepLUuOYxzGbqh8ldY68RydOLJJu7uWZa8Nta3lqOHCFa4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwW7RT32z2YsRzjrFyIuVZ7RNRrH9oZ5cI7mfBHTmdQgHPJiUR5
	5fINlDfGWheqvOQgmKQrArHcTiY/HgKE2qqGB5dVAHlsSs5cLj+PIi0O
X-Gm-Gg: AZuq6aJivY1lGsaN5FjzoEGf4kqL4YRNLrzLtXTMKjFJ/K80WHCYnvBms52cGv3u7Pv
	M1bMS5FrxXKE2q/z6wxNcZDyLOw8TzorrbUBZM5d6H3rT6l2oz5vC6W8A+wPqqXEXVMPZx+KyjH
	Qe6heC9jS+ApudcGeAYH6qmS4Pi4QWYLIHbH3IyA7CywzRqGV9FDD3fxkV+M/b99iFce/EbG2yp
	4NRblAh4fNtDRn6mfuyMkHPH5TZh+48NLRIa9gKmc3gkZsPCUoRs/UWF5fs+tbWp0rSqlNzz08Z
	IdivCsEgxmFU9EsEa+04nUIVW77s14bpkJeBAcNkrW47wMO3f044mrPpih7yu+hihyg2n9Oootv
	DmPEXuPKGJxniO8u7+vYfzZiF1GCl8+p7PWlwaiWm+X1KqOOiJCfmF3BNdMBsRfIpdeHOZ1ZAgf
	0b1wnp4/+OW/JIua8KYjE6RWM=
X-Received: by 2002:a05:600c:8214:b0:475:d7b8:8505 with SMTP id 5b1f17b1804b1-4835e2dca60mr23446085e9.7.1770824922660;
        Wed, 11 Feb 2026 07:48:42 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d82a4c4sm246760765e9.10.2026.02.11.07.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 07:48:42 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
X-Google-Original-From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Wed, 11 Feb 2026 17:48:39 +0200
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <20260211154839.lbh4uovxr5b5s4nv@skbuf>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_074845_009122_62945A40 
X-CRM114-Status: GOOD (  32.90  )
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

On Thu, Feb 05, 2026 at 02:56:15PM +0000, Russell King (Oracle) wrote:
> Update the generic PHY documentation as a result of the discussion for
> the s32g submission.
> 
> Link: https://lore.kernel.org/r/aXtvDn_-pCuKPrnf@vaman
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
> I didn't get any replies to my follow-up question to Vinod:
> 
>   Please also indicate in the documentation whether changing the submode
>   of the serdes (particularly for ethernet) is permitted without doing a
>   phy_power_down()..phy_power_up() dance around the phy_set_mode_ext()
>   call.

There's certainly nothing *not* permitting that call sequence.

> I also didn't get any response to:
> 
>   For drivers such as stmmac, it will be important that details such as
>   whether phy_est_mode*() can be called with the PHY powered on are
>   riveted down and not left up to the generic PHY driver author - without
>   that, generic PHYs basically aren't usable from SoC/platform
>   independent code, and stmmac has bazillions of platform specific glue
>   already because of (a) bad code structuring and (b) lack of
>   generalisation through standardised interfaces that abstract platform
>   differences.
> 
>   I want to be able for core stmmac code, or even phylink code (which
>   is even more platform generic) to be able to make use of generic PHY
>   stuff, but if the calls that can be made into generic PHY are platform
>   dependent, that is a blocking issue against that, and makes me question
>   why we have the generic PHY subsystem... it's not very generic if it
>   exposes the differences of each implementation to users of its
>   interfaces.

It may well be that the "one consumer, multiple PHY providers, requiring
unified behaviour" situation you bring up is sufficiently unique here,
with stmmac/phylink, that local conventions are not sufficient.

I'm not sure that precise answers exist for your questions. Rather,
it's best if you could lay out common sense requirements, and generic
PHY reviewers will make sure they are followed.

As far as the framework is concerned, power and mode are fundamentally
decoupled, so I think the documentation is actually muddying the waters,
more than anything, by talking about a preferred calling order.
If there's any connection between power and mode, it should be handled
internally by the PHY provider driver.

>  Documentation/driver-api/phy/phy.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
> index 719a2b3fd2ab..cf73e4fb0951 100644
> --- a/Documentation/driver-api/phy/phy.rst
> +++ b/Documentation/driver-api/phy/phy.rst
> @@ -142,6 +142,7 @@ Order of API calls
>  
>      [devm_][of_]phy_get()
>      phy_init()
> +    [phy_set_mode[_ext]()]
>      phy_power_on()
>      [phy_set_mode[_ext]()]
>      ...
> @@ -154,7 +155,7 @@ but controllers should always call these functions to be compatible with other
>  PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
>  others may use a default mode (typically configured via devicetree or other
>  firmware). For compatibility, you should always call this function if you know
> -what mode you will be using. Generally, this function should be called after
> +what mode you will be using. Generally, this function should be called before
>  :c:func:`phy_power_on`, although some PHY drivers may allow it at any time.

My 2 cents: I would actually remove any reference to any sort of preferred
call order. There's nothing in the framework to back up such a concept.
Just say that it is recommended for PHY provider drivers to not rely on
a particular calling order, such that PHY consumers have the freedom to
choose depending on what suits them best.

>  
>  Releasing a reference to the PHY
> -- 
> 2.47.3
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
