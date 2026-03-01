Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67645FD0068
	for <linux-phy@archiver.kernel.org>; Sun,  1 Mar 2026 13:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQTM96CNtGKcy+2UjcGYexCLWoBo/uVEPTiX4pTPQmU=; b=XRlcq+43dm5W8I
	Mf4wUtkZPuJyxduj9qTsMlNZwmEDZSfWVS/ojF6Qi+Y+cnFi+RtrHLwEWWFFdQdr0tbcuIAOXpPuf
	qGIVACIMmRnAhm722dDOnaOiPozAYRvqO0x5bohfa8BxK0idwOq4jx45AX4pYUKm5xna+CTWseu+l
	gUmvI5Ie9th0zMaa1bMVmi/yEr44yXJYxPootr+aEpi/IQfPpgi98iqo1zwF73kSeZ1bFgG5M4AJb
	UHnGxjEs9oZCUflmT5PY02qZuNIEV+JvScTBESOwatud/i2nohInOcsMn4Ct9HmfrP4PNrZozelOL
	g891smWi3JCUKgDLblYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwh40-0000000BXjU-0bj7;
	Sun, 01 Mar 2026 13:42:28 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwh3x-0000000BXia-0M0X;
	Sun, 01 Mar 2026 13:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WpLeXtLyKHRcvN1WgzNsqUfY7g82mlvTHaVSolT+rAw=; b=mSynvnueSrkVI69YpKkbBjRG9f
	aDqJMD3Z92UYypxgYcWlSpCCtaGG2y5OYeYOflT/SvZk3WJSEFJHK+L4vcEl0QEUh/m7fdWN1X8nD
	UjUsf4wbB5jtulQNCeRci5aBAJSaol5Z3TYzHhfJ7KrF9ikCaGhXijMFvUJ8Xu7OiZS40PeV0uWKJ
	6r9q6qFwUJLNJ9ROOSBrzNHPwcUQ2O7GDrXGAjhsH4CViafGcb9wnhbllqGjyN6QWTHhN663z4boG
	z14caRvnp4pi0+vYszyFsw7gFgYh3yopRncaw+ZSz/0GlrMYVQJy2mfwnHUizYlAXgzrjlVOLi4Ka
	qv/Sd9YA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41064)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vwh3p-0000000030E-41Ie;
	Sun, 01 Mar 2026 13:42:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vwh3n-0000000052j-1vRB;
	Sun, 01 Mar 2026 13:42:15 +0000
Date: Sun, 1 Mar 2026 13:42:15 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <aaRCN7zbX6FjUtQ_@shell.armlinux.org.uk>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <aaIysVxy-WxbiJz9@shell.armlinux.org.uk>
 <20260227165556.5cf9e844@kernel.org>
 <20260228083111.5df8550c@kernel.org>
 <20260301001453.lpd2rawy7bqxyivp@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260301001453.lpd2rawy7bqxyivp@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_054225_120480_C29D18C7 
X-CRM114-Status: GOOD (  20.94  )
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

On Sun, Mar 01, 2026 at 02:14:53AM +0200, Vladimir Oltean wrote:
> On Sat, Feb 28, 2026 at 08:31:11AM -0800, Jakub Kicinski wrote:
> > On Fri, 27 Feb 2026 16:55:56 -0800 Jakub Kicinski wrote:
> > > On Sat, 28 Feb 2026 00:11:29 +0000 Russell King (Oracle) wrote:
> > > > The AI review for patch 7 says:
> > > > 
> > > >   This commit fixes a bug but lacks a Fixes: tag. The commit modifies
> > > >   behavior introduced in 360000820ae2 ("phy: qcom-sgmii-eth: add
> > > >   .set_mode() and .validate() methods") by making phy_power_on() call
> > > >   qcom_dwmac_sgmii_phy_calibrate() to restore the previous setup, and by
> > > >   making qcom_dwmac_sgmii_phy_set_mode() check if the PHY is powered on
> > > >   before attempting calibration.
> > > > 
> > > >   Should this commit include:
> > > > 
> > > >   Fixes: 360000820ae2 ("phy: qcom-sgmii-eth: add .set_mode() and .validate() methods")
> > > > 
> > > > which is _wrong_, this isn't a bug fix.  
> > > 
> > > Yes, that's what I thought but then I saw the other thread..
> > 
> > Trying to apply this now but stmmac parts don't apply on Linus's tree,
> > and Vinod wants a tag :( What do we do? 
> > 
> > Could you, perhaps, send us a PR with this on top of Linus's tree 
> > (a resolution of the inevitable conflict with net-next would be helpful
> > too).
> > 
> > Or do we give up on the tag?
> 
> Actually, I think it's mainly me who wants a stable tag. I'm working on
> a series for phy-next which will conflict with this hunk from Russell's
> patch 1:

Is this because of the issues I raised with the quality of generic PHY
API implementation by drivers?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
