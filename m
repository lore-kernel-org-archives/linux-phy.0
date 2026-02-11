Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B97E3ECD6D6
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 19:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLeWsyN/9BMDfeti9nNxMxmZkgZ3pJL6kgc34Ln3Fa8=; b=x7vcn1P8vjuhmm
	x4YzK34UYCNs35NhKZ6b7QyW1QdmjEf/ZncN34Az59EG/mZYZ4mVBQwIVqIXnjcBXbM6eccQX8hdP
	bU1PjRU1Mqc8PjJ0Ie/VCGe1HP3Ezjo5udzjvj56RN0paHARqwXypF/GKAMh5l+CCrtW7RSMgTNP1
	YINYnwuHVC99I5/+/84G9RSVttb15d0ySvKhVgpocg13LaEHw5eJTgxcxFTF0JBPSA8doN4Ai6mMI
	QQWVO3I1IDboW5nhdowJ5k7J9djdFPYeurtWavrj/d37pmJk0gqJc5XZS7v/3omnmePnfioeRnmd7
	qWDg8F1jw9FAX30GaI3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqFuh-00000000z42-0Wvf;
	Wed, 11 Feb 2026 19:30:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqFud-00000000z3c-1URf
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 19:30:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-4806853efb5so7941855e9.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 11:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770838209; x=1771443009; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jhwCRNFlRYh87Mc83Zq8JMicvS9mTTgPjf8zviSQBYM=;
        b=Un2mqK6N38fRI7r39+K6j99nVaO4kNjY60zHZx6K08iGh70qG85hRsjzryEDLVk9wH
         c1TU8s1mjO6KuQhQl5xmwRk3EtO5qASfDNgtR2GkPOqFZpdNAmYr/DwDhO7IA/BKSgu6
         cXOOrsz/AZ1M6QnDuLYidgWVa7VeCGw16qmUOOO7EQgvT0b/KHsga7paq+FSbeaScrdl
         eJqo2kbyVMZOEhCaopIkgvWbzo7lh70FoGe8dOpZrPXwccK6qshv2XxA87ZSysItdi/4
         M32vBe3f/8Yxlft9rq2ZDtJ2R3ND0MKaYLXiMwR8feb1FFpVn7xxfMyEGi8yDFP2mWja
         aJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770838209; x=1771443009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhwCRNFlRYh87Mc83Zq8JMicvS9mTTgPjf8zviSQBYM=;
        b=Fppuj01nzz3Hf2EejmYEYNo13Zy1cu8516XRf452sO4pg0tkHbNLNWMqBXJ9T1h950
         ibii1jChqS5+fJKIxtnK/4uJAZvnfylPam+SpC6q6R31VLsaTpCRAU936xkRIHx/abM6
         58Z+H/vZ4/eMumIft4oSEljGbcJlayBP0dcwVlYLcr1otFHTydSoIboKoMIa1SzrQLK4
         55kzJa/8eTHtjXCk+g/rpxiJPbsBNMPIwJ8+vvjM+ZK6cBDL869A8mf6+elFRFVGBzvJ
         0xHwdb2rWCEgC1TidJMsZb5B5B0CUKLtep3QSW6kzLBn46NbJrM8agpzR3QdvUd+fK/Z
         ldwg==
X-Forwarded-Encrypted: i=1; AJvYcCUOcrytTgq9mNM8jjXkNz2wsfewsFbJvwv9MC4H+GqOLHUSUCE/s99qY979MDv8M0ZUh7djcZEny4U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2U1MYW8+bMtcHuxjAIDGruw4Dr9Uv6RWHRwWZJEel4TJN7CMa
	jZV4L4gtPZgQeKSCPq909PGnl0IXRG1KhCnCW1y6ilHIJ5igoLjGo6C7
X-Gm-Gg: AZuq6aJ+jnD1U5ZEIlVlQmAIyWLczFwq7qY6l3vtBiGHGFChQRl5dOIVFpywcHslHqV
	53Y1L06ajU+9JE2KK9km6GIQFDgMhcLYhKINQdeDXBgaxfrznQyUy85Wn/jHpSvRcM71IIFSae/
	NlY5GROkteLBWOzqO727GnquJVd6CSwIVR6dfNHlv5XEiVKDVO0gyPJhwUx945I3ElIOzJvAolY
	RhdtfBsMNuKGL5QRM1XyzPQyzwwNUykkYT5VvuGwKhsZ8jSst4/GdYpQpcN5azsUt4TpCxDX+cs
	aAMgYiYcobWjjTpnQBYKTq8tQN2YHXK/wu88obcAoSCpPINMRfVX45cYf1mIKynkzEAfwtQgVM3
	aWJwLZZ5HuRvj2BpYJvTcFuCweZsb7OvtQec14EIYfBqbsSZi2RozSORGHhIynC3i2lZ0/1uKxx
	xy0/wgPX1ZEdCTE8M=
X-Received: by 2002:a05:600c:a09:b0:477:9fa8:bc99 with SMTP id 5b1f17b1804b1-4836570e260mr2336315e9.4.1770838208998;
        Wed, 11 Feb 2026 11:30:08 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783d46f9csm6295445f8f.10.2026.02.11.11.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:30:08 -0800 (PST)
Date: Wed, 11 Feb 2026 21:30:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <20260211193006.ad2piivyoqhvg22r@skbuf>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_113011_430024_0ED6276D 
X-CRM114-Status: GOOD (  24.59  )
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

On Wed, Feb 11, 2026 at 06:15:11PM +0000, Russell King (Oracle) wrote:
> On Wed, Feb 11, 2026 at 05:48:39PM +0200, Vladimir Oltean wrote:
> > My 2 cents: I would actually remove any reference to any sort of preferred
> > call order. There's nothing in the framework to back up such a concept.
> > Just say that it is recommended for PHY provider drivers to not rely on
> > a particular calling order, such that PHY consumers have the freedom to
> > choose depending on what suits them best.
> 
> Sending out this patch was a last ditch attempt to get a response to
> improve the "generic" PHY subsystem, However, as the issue is now
> almost two weeks old, and the current patch series causes a regression
> according to Mohd's testing, I've rewritten the series to be a finer
> set of smaller incremental changes.
> 
> This has meant dropping the idea of using the "generic" PHY subsystem
> in generic code, because as "generic" PHY drivers are currently
> written, that's just impossible given the current state of "generic"
> PHY.
> 
> There are "generic" PHY drivers that require to be powered up for
> any of the phy_set_*() functions to not error out. There are also
> "generic" PHY drivers that require the PHY to be powered down
> before calling phy_set_*() before the new setting taking effect
> at PHY power up time. In this group there are drivers that error
> out if phy_set_*() is called while the PHY is powered, and there
> are drivers that silently accept the call, returning success, but
> do not change the PHY mode.

Are we talking about PHY_MODE_ETHERNET generic PHYs here, or in general?

> This makes it pretty much impossible for platform independent code to
> know the correct order to call the functions, and what to do if an
> error or success is returned from any particular API call.
> 
> In other words, it's a trainwreck as currently implemented, and this
> was my attempt to try and get some consistency.

Do you have a list of such PHYs relevant to phylink? We can still
document the expectation, and modify them.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
