Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5760ECD6E0
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 19:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYO9zRz7PIzG8c0e7+HCyxoz//itZExeg43o64rwcQE=; b=jwMarZyimXl204
	pfkCIjTK+P05/VCOsNmamhTRS+ezkYG0dADXdGx5torAo7OBQ2DR6igU9GE69bZNg0IC8BbyP16/6
	ncKMxnTE18Z1kxnyEOdF5LoUHd75WG/Fvcbc8cvp9V6BslA606xK3BV47jQMWb3MQVaAGiVQRB+ax
	UuoTydbLVROhFbpVA/vlmRgL50VPt6qYeD+6YWHDitLvVVJ28m5MdFq0yRh+nWs2S85rSJEN3LvPC
	tTVEXiPDwyW9DkHb/Fnxd6JU6lK0Dqyxi2Ul1KHbCamTXNY320OvcKX4ZBIAwAY9J9TxNbsRg+IEh
	O3NoOYXxxv9ZilF0dNJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqG9l-00000000zpY-26hX;
	Wed, 11 Feb 2026 19:45:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqG9j-00000000zpC-31PC
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 19:45:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5b1f17b1804b1-4806b8fca44so6171085e9.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 11:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770839145; x=1771443945; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sATJTWP6VGxlaE427y6MSJ+Bn4pIXNhYj+8pUC44xQ4=;
        b=iTRGWHKwM03JUjBWHJGb5tvu/zdrIUEYVNyxi4lRUkByRuooQdY82z3B1MUX/aUKbm
         VlumitRBMY7Er7cavdAr9tM3pzH3EVzO7WWfcQp+wkhR/xMmE0dzVu+X3nI0KU/ed+I6
         yYgk8vtTq1YRCXNSfRiXdDuvdXluUxyJ1kbglzGMgUnpi6/yEJH/RlM3ugFOpSqZsLhd
         tswA26Ffutmo8a+YyGk7lW5xUs7bVbj5o1YfomcqvwzcjYdNOItIXgn16LjiYwHFgeT/
         Fd5qeT4ls2xJ8ytDy630vAZzjbaRuAQmVCvv8z0MctMHxpgYkzAMoi4gEqo3orCnhvat
         cWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770839145; x=1771443945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sATJTWP6VGxlaE427y6MSJ+Bn4pIXNhYj+8pUC44xQ4=;
        b=Qf9dYUKIR4RNKnuzk+dhzuli9B0rAI4/T/ry7IgXqi1LgjaoRptEDdNSyoO7z+vn+E
         NbNANCnSfG7saMnym4P4hN4a93iWrV5iMRU9fDwFtcqtytXqtJW7dEj9nEU53t+jCXkh
         +KX7FheEdUO98hoeJhnR8UM4l0RfYaRm3IS0tzqV8cCGqoqF1eLgrtCne8gfcK2h9mk1
         Iftihh0eck3nPsuEtGspEyFAr8QCtHamWhWkGJkDtzxLXRI+YCkWdXZkIJgyFtxWqb8d
         OsRdWqcgE5oIQdWWK0wzWkbNY5bXLS2c8y3b2L01Fjk4do+dUO2ytFmU4u3AKO/ic4F6
         bIjg==
X-Forwarded-Encrypted: i=1; AJvYcCWKUnqub85tvhR6HoDH9XqUfN+ucQHBapE3S2gPDi0lSqbIHFhIlL/7tMAupLPA/umZbuDHemD9xdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxbgXLJqTW5IHQWW+mvcD1gSO+JT3EXJdy0ydQT11/QzteCId+
	MVTg/RK1TI1MVOk438mzh/wp+oAUsMGIJYuuPaMsEDHrrBwjfhn2dYVH
X-Gm-Gg: AZuq6aJqGZ4EoxiIj2hPpD+vuTwLtZNPf1WroYx2JeMeZ5Gt34LS02tnRNVN2OIJ8q3
	hRCx5f4Vk6CVgRq3nADgeVU0muy/KrpJiV+WkKlwhhLYy13tz0ZWL59zppp6iP5EP3ADrjunZmL
	a7yqIkCcb8A/QfGJGbEUenCUzZ9YNUlCBZQSmhNU1xa3LpvhtvfzGDDnK29GnMJK/7aHMuTU23j
	ZhysbZKwrU1IhXYxW7MkZlEtQ1JAQwZSLnpLQHkfqe13Y1uRasSb6bJUPVivXuw1axfBqIn8I/2
	uETNR7ewsvgYp9p13m0htuFBAIIbClQVNv2IkyXpuyeueBgdtoqTIFXCktwZbP8K6DNLJADgT8V
	qexdiq1PsU9knX0AHYoqcAj2Lb+i/Vf0OVaft+HCHD9GWl92aOWViyHJae7O+bsbB4tvi6ASJKW
	tX0Dx0Q/oBePeUNRM=
X-Received: by 2002:a05:600c:1d9a:b0:480:6612:253 with SMTP id 5b1f17b1804b1-4836570d35cmr2840895e9.3.1770839144977;
        Wed, 11 Feb 2026 11:45:44 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm208008415e9.1.2026.02.11.11.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:45:44 -0800 (PST)
Date: Wed, 11 Feb 2026 21:45:41 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <20260211194541.cdmibrpfn6ej6e74@skbuf>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211193006.ad2piivyoqhvg22r@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_114547_780675_BEE130B6 
X-CRM114-Status: GOOD (  32.02  )
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

On Wed, Feb 11, 2026 at 09:30:06PM +0200, Vladimir Oltean wrote:
> On Wed, Feb 11, 2026 at 06:15:11PM +0000, Russell King (Oracle) wrote:
> > On Wed, Feb 11, 2026 at 05:48:39PM +0200, Vladimir Oltean wrote:
> > > My 2 cents: I would actually remove any reference to any sort of preferred
> > > call order. There's nothing in the framework to back up such a concept.
> > > Just say that it is recommended for PHY provider drivers to not rely on
> > > a particular calling order, such that PHY consumers have the freedom to
> > > choose depending on what suits them best.
> > 
> > Sending out this patch was a last ditch attempt to get a response to
> > improve the "generic" PHY subsystem, However, as the issue is now
> > almost two weeks old, and the current patch series causes a regression
> > according to Mohd's testing, I've rewritten the series to be a finer
> > set of smaller incremental changes.
> > 
> > This has meant dropping the idea of using the "generic" PHY subsystem
> > in generic code, because as "generic" PHY drivers are currently
> > written, that's just impossible given the current state of "generic"
> > PHY.
> > 
> > There are "generic" PHY drivers that require to be powered up for
> > any of the phy_set_*() functions to not error out. There are also
> > "generic" PHY drivers that require the PHY to be powered down
> > before calling phy_set_*() before the new setting taking effect
> > at PHY power up time. In this group there are drivers that error
> > out if phy_set_*() is called while the PHY is powered, and there
> > are drivers that silently accept the call, returning success, but
> > do not change the PHY mode.
> 
> Are we talking about PHY_MODE_ETHERNET generic PHYs here, or in general?
> 
> > This makes it pretty much impossible for platform independent code to
> > know the correct order to call the functions, and what to do if an
> > error or success is returned from any particular API call.
> > 
> > In other words, it's a trainwreck as currently implemented, and this
> > was my attempt to try and get some consistency.
> 
> Do you have a list of such PHYs relevant to phylink? We can still
> document the expectation, and modify them.

To (partially) answer my own question, here is what I found so far:

commit 5cb630925b49dd13bf3aa43f299b11615c8fe9cd
Author: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Date:   Wed Feb 1 22:14:53 2023 +0900

    net: renesas: rswitch: Add phy_power_{on,off}() calling

    Some Ethernet PHYs (like marvell10g) will decide the host interface
    mode by the media-side speed. So, the rswitch driver needs to
    initialize one of the Ethernet SERDES (r8a779f0-eth-serdes) ports
    after linked the Ethernet PHY up. The r8a779f0-eth-serdes driver has
    .init() for initializing all ports and .power_on() for initializing
    each port. So, add phy_power_{on,off} calling for it.

    Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

This needs to be changed, for sure.

I'll take a closer look tomorrow at the rest and see how bad the
situation is overall.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
