Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF9BD73E9B
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 22:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sikod8XXboSljtxRIDDvn4TMzXdXHYdnKxx/6COnJ4Y=; b=SZoi6Jk2cTM01M
	r0C9Uh1f2coX1j/HZ2x6yJhWsJzQ4N6/HlbDC5wRtJzWvUmPWkK9zuya3TL3y8g8zl5gtIhuBXPDU
	dMDY52wgCFtpg6Z5q6WIVBZwNJWIWJYCNA4zXnDBqhV9D83R8/mjwWdFO9q8Zbll0N+w4qitrEBm4
	Kq24xFw7R06bF2iMHSh3aaip0uT5XmaQQ0QzkKlyfBUXgYMSpnMc9IvFuQYYSg8Kt72oeWDy92WWB
	6l7Am4MxygfwI5FX7foyILzDCCuv/Jf6B5Ra6qTcR2+h9CMKaCEUeemqV/hOUy6eumo+MLT4Y85IJ
	jR3ffvFITsCxXJ9enwbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vla4N-00000000i6w-26cq;
	Thu, 29 Jan 2026 22:00:55 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vla4K-00000000i62-0Ulw;
	Thu, 29 Jan 2026 22:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5NaZq7/qOx5j3sYVWWAXyxivGGckilTrm3I0MWAebJ0=; b=FuORfFkKV0DQIUUuMAonHTBSMq
	HF2MOUM/Hc7enwPm0B5st77tQNNjf0eKU/pZo/h8uFpZk3KazeRogVT16rnuLFu4rRtaZ6WB50HuT
	oQloQVUjqsYNnVPMNueythTNsQumeeZJpD7lFjQuMi2kGPSSZ/2aqJe5xufgqTlMcawAYyslgphns
	OxxQAsBSIewVc03grwlhmNGyURyOFRkdaZLHvnAGAntQeeeLslHwVSeWeW1Nl1gP66MfK6N91OFj9
	5OB/+2cFKWTslP6LNj6Kz3pKBbMrqn4RcR2kAjhsppKEXH6aexaqY+7IKQt7qE+B8ThTjVf70J7OS
	v6U1biyg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39260)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vla4A-000000000Va-0f2c;
	Thu, 29 Jan 2026 22:00:42 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vla44-000000008Kd-1QMZ;
	Thu, 29 Jan 2026 22:00:36 +0000
Date: Thu, 29 Jan 2026 22:00:36 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 00/14] net: stmmac: SerDes, PCS, BASE-X, and
 inband goodies
Message-ID: <aXvYhM6mHE4p_B14@shell.armlinux.org.uk>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <aXN5BFXMshnhwBQ7@oss.qualcomm.com>
 <aXPo5R1Q-qWG3r3l@shell.armlinux.org.uk>
 <aXjSbu6L6ICYOPiJ@oss.qualcomm.com>
 <aXjdAZeUl2Dsu4mE@shell.armlinux.org.uk>
 <aXsLyb+x76/WaXcs@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXsLyb+x76/WaXcs@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_140052_159665_DB2C87B5 
X-CRM114-Status: GOOD (  12.60  )
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

On Thu, Jan 29, 2026 at 12:57:05PM +0530, Mohd Ayaan Anwar wrote:
> I was thinking about the "good" sequence (i.e., the current net-next
> tree):
> 	-> phylink_up
> 	  -> mac_link_up
> 	    -> fix_mac_speed
> 	      -> SerDes configured via phy_set_speed
> 	      -> stmmac_pcs_ctrl_ane(priv, enable/disable, 0)
> 
> Please let me know if you want me to try any other experiments.
> Maybe I need to do some more testing after playing around with the
> sequence followed by this series?

Given discussion elsewhere, it seems that the generic PHY maintainers
have come to the conclusion (at my request) that the documentation is
incorrect and needs to be changed:

	Order of API calls
	==================

	The general order of calls should be::

	    [devm_][of_]phy_get()
	    phy_init()
	    phy_power_on()
	    [phy_set_mode[_ext]()]
	    ...
	    phy_power_off()
	    phy_exit()
	    [[of_]phy_put()]

Essentially, most users of generic PHY do not follow this, but call
phy_set_mode[_ext]() before phy_power_on().

This will have implications for this patch series, particularly the
serdes related changes, and will make the update to qcom-sgmii-eth
more complex (as its current phy_power_on() implementation does
very little and isn't the reverse of phy_power_off().)


In the mean time, please test patch 2 to see whether that can be
merged.

I'm going to re-order some of the patches in this series to see what
else can be merged without depending on that and without affecting
dwmac-qcom-ethqos, and thus shrinking this series.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
