Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D51AC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEZilv9qDJe9mTMAntdmb9sGxhnemScT3OjsYM0pLQ0=; b=0vHMEJcseaC3gx
	SOEqHw87nCgQN0Yh1a0jFAls14b5eliDFdwYWVpG45FSupB+tVzAV7zaIdWXpYFX3h7ZYFATd79Qm
	A7Tfehr5zd9Yc4IAxCalLXmmk/rddKykQXRYlqvO5wY/Qpz3/X3Kll1w+r7q2xpXVCND39jIUejp1
	Rxh9e9H27P+9uZD6asx1LyGG7Uz1Tq20OXMx6hRQhbjKWNaFBA1odI1zx1/3osZtPVEH1dBObJ5UY
	2xU9khO92gEofGFJZd4Cx8kWKVLO8PxsH+28AtlMmNH8LTq4RPHVk2a2h0KG9Zv37VHK4QetGsY6t
	84ohvbziyJTCmChvTumw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YHV-00000006mDe-0Apc;
	Mon, 07 Sep 2026 12:17:01 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YHS-00000006mCu-0eiG
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:16:59 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4838dbf1bbeso254696f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 05:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788783416; x=1789388216; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3wWAlUzVTWK+l/c0CBIcXBp0GcykYm1XFSVWNetoGyg=;
        b=PD+ApW9HB9tqVhhwEpD9ak4FGe/ROVAUzhMNoVYsUCeyLF9o77+Jm1SsfBTCf3ARlg
         bFcmsud3Zj/8MhlOPbEYZ+ockrhdFxusY0+MZQY29HTPm7avNr1vnIayU1kydzhU/x11
         AiT82B+fxwidyqjIDjvloUqSyUpM8ZjyHCcMYsc4JzM50lMuoD+r4FZy3jDU/Q2baysX
         pzOg5IgQrcnY4Ti6WmTSQVcirBxQyEtY5hhZ7tZlm/D+Mez0vDGnNd5fJMMjpeP5QhTe
         inqcGu6FyAXom6UDPG8mY+hKzsiZorjW8737dmc9SyRSQL8cvrofZp79D6XT0nhDomfQ
         EV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788783416; x=1789388216;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3wWAlUzVTWK+l/c0CBIcXBp0GcykYm1XFSVWNetoGyg=;
        b=YGqWcQ9x83mFJT0wNYhuJ1chFDG8b+3yEWGM59TZ+bJf22RAV0ycfgid5LGGEXNX1e
         GGseXMmd55t1S4VdfSJOi0QkgKoSJwUxJunMt5sjmxoDz3/1QT03LyBdlr2y4B9StQun
         VUzxOhdh3BK0eHVAuUUBworu/OyKX26XlvjwPhUSS4iM9DDlGQ7O342fjXo1Rs95S0YD
         K7RTywQnsz+TwsFFgL9j3VRsAhYbX7kF3QYxDel7Vmm/y5KNlZaQQXooBLn6oAix23/x
         npjDgCE3SUPhtgEu3V+oZTGLQvQB/duuLoGIJdhIV6hhid/6mTgTYqXf6ChiBERMS/L1
         Z/nA==
X-Forwarded-Encrypted: i=1; AKwUvByRtn8m2R2Di+wFlB40cJ8biPeVOcjicb7t/yvWbGr7VGa5+i4EmTWS73C7PMjRbwDhASjRal4P9DQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nr++Xxt/hJuSOcyDq7VaVJEWulsxziYr0eNzz5o9DIO/xKZWaI
	/rxLVMQGapP6eTKgC1kdsThN9q+u05AiU5JcL9mXNAJJk/yWC54djOxv
X-Gm-Gg: AYBFou0PHvm6FGY5nt4ALnGP7Y6ovp9ErNJtNYwQ4c0PB7I5IDn2Z5awGIA9JAQgoHf
	ojfhtjkHKZnB3PjMq3A2YqwbwiDDLMCzJcHuYtRGJp5Yg3Uj+7IMp0d40HT9z8o+EoyawxX6jTa
	+CdEidrU1qvyJE8dL9G2k+2/rbRyg6OZNnigEuEd8hm02uKZfvG+XbT1PqRel2E+59Mwwo8Zv8s
	bY0eQ6oE4QPbRh6y/nLDXqXWx3z3EpvHxWaJtdjwFAuPHYV7nVg30RDYr+VamDnK43Sn/ae3oyL
	z/kXExpHlCpdxjrwahlofDUksBDFIVIg8JJero5e59sn8KyaScWlXb3IJpaGMAB4hRBkS5w1J+K
	SDn9R2PfVkRp85K3LRkR1fQ5LSGlmpujG3iPSS0hxje9upblBt8p3kmkpll2ikqhfaLrsN+zbB0
	Z4/9RivxKI6TYPRtjZ4kace740jg9zN0QoJig9E0fwlhgrPJRRxA==
X-Received: by 2002:a05:6000:144e:b0:485:8d31:ccf9 with SMTP id ffacd0b85a97d-485907ef7a6mr12996882f8f.4.1788783416126;
        Mon, 07 Sep 2026 05:16:56 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588135600sm24401218f8f.2.2026.09.07.05.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 05:16:55 -0700 (PDT)
Date: Mon, 7 Sep 2026 15:16:53 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <20260907121653.4ajpkjt2i5opmwzc@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
 <ap6fcP7Oct109dkY@inochi.infowork>
 <20260907115712.dg5pw4ajvrtdipey@skbuf>
 <ap6ngAxlztCAFSH0@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ap6ngAxlztCAFSH0@inochi.infowork>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_051658_211430_F2C218CE 
X-CRM114-Status: GOOD (  24.90  )
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

On Mon, Sep 07, 2026 at 08:05:57PM +0800, Inochi Amaoto wrote:
> On Mon, Sep 07, 2026 at 02:57:12PM +0300, Vladimir Oltean wrote:
> > On Mon, Sep 07, 2026 at 07:29:49PM +0800, Inochi Amaoto wrote:
> > > Yes, I have one for it. This is the spacemit pcie driver.
> > > https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/
> > > 
> > > But it only uses a few of these helpers. So should I remove all the
> > > things that are not directly used, and let others add these if they
> > > need?
> > 
> > How many functions would go away, and how difficult would they be to
> > reconstruct, if we only were to add them on an "as-needed" basis?
> > 
> > If the answer is "many", I suppose you could also leave a note in
> > phy.rst that links to v2 and mentions unimplemented functions because
> > they lack a user.
> > 
> 
> In fact I think it is happy. This PCIe driver only use three APIs:
> - devm_of_phy_bulk_get_all
> - phy_bulk_init
> - phy_bulk_exit
> 
> So most of them will be removed as only a few are on the path.
> I will follow you suggestion. Thanks.
> 
> Regards,
> Inochi

I think you should call phy_bulk_power_on()/phy_bulk_power_off() as
well from the PCI controller driver, even if the PHY provider driver
doesn't (currently) implement them. The Generic PHY API is about
offering some degree of mutual consumer<->provider intercompatibility,
not just a pretentious indirect function call k1_pcie_init() ->
k1_pcie_phy_init().

So those 2 functions should also make it to your v3 patch set.

BTW, do you need a stable tag to be provided by linux-phy, to continue
your work on PCI in this development cycle? You should mention this in
your cover letter, because it does require a bit of maintainer
preparation beforehand.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
