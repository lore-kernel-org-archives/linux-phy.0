Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75A73EB48F2
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 10:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRT9Ts8j2jM7yTEwIz/Rbkh0hka5VxhFSxwABBZZPiE=; b=AQtx2/S9FOB7Ab
	DJ0MwVsVwS/utA0Yp48uXtD3cHEO/LZT5ekARGDliShgIBNqx6jJUnaTXWKAV9Sl5Qc3vo+C5GJfV
	k2bEdwSh2pmg4v8GEFKoh0uEtDQ/Qoskvvqv7V8q3AZUixjGgVLPCBdzsBUwHJgv/lgxyay+cCcm/
	qa5+yydWjRRlaVlr0PfMRSkG6FM0K79nUozQ4pEFL+T4toU3e5w0BH52iB/p4tu7XwjcZGAIwb0DZ
	a0AyA2N/1zmAUFbwSmMVWJBWjIY8Otr3TZlw4VksMD5X+Ks0VQlZgR0tK0RnznmRPaeqg3d9mB9R5
	NNZVIKWIcctLxPTuQfHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqTWT-00000001tBv-42KW;
	Thu, 12 Feb 2026 10:02:09 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqTWQ-00000001tAd-3jsw
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 10:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sx3Q5aNefX7HOT6b+kVI2kTR6lTX/IZfs9lrMdrOZB0=; b=SyMnRx2ho6g7oa6+GW5/0Ecy1i
	LXaOUWjuAGc1HmkoCo9QzGPi3owD439E1/suseOi8rYnK4IUpcQopebJ0t9VWT4gqsNkP9U2fOqlP
	3kMjwGrJdvcp8SzQeLV8/wjFyNz3m0c1YXArdF5jsSeRHequxNCHx46wWXtkE/dofzrJavounDWCY
	zphmv9HUuxfFO2gIgslwfgdW5lH7swhgQF37+xtaubYfYpTV289wir6qxuGDfzIA7ZdACJZZwJ7sq
	qbHWSMN6G3gGcuoJcrk6USQGPrx8seW72xotnP547b3Mj6eEYoeyCvtMjiQ1L1fuIcbpKYnzTlWpz
	/lHISLgQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48140)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vqTWJ-000000004OQ-4AYb;
	Thu, 12 Feb 2026 10:02:00 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vqTWH-000000004gQ-2r0T;
	Thu, 12 Feb 2026 10:01:57 +0000
Date: Thu, 12 Feb 2026 10:01:57 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aY2lFTIALH7qEJmM@shell.armlinux.org.uk>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
 <aYznE1FIbs_0OcPR@shell.armlinux.org.uk>
 <aY1hs4XKZSpvKd3B@vaman>
 <20260212091332.qcpi3qyynmdp4acv@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212091332.qcpi3qyynmdp4acv@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_020206_928721_CA432FFD 
X-CRM114-Status: GOOD (  16.36  )
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

On Thu, Feb 12, 2026 at 11:13:32AM +0200, Vladimir Oltean wrote:
> Also thinking out loud, we could do something else - introduce something
> similar in spirit to CONFIG_DEBUG_TEST_DRIVER_REMOVE, which would be a
> debug option that sees what power state the PHY is in during the
> phy_set_mode_ext() call, flips it before calling ->set_mode() (calling
> either ->power_on() or ->power_off()), and restores it after the call.
> 
> Having this option should also give PHY provider developers a quick way
> of testing both calling orders without modifying the consumers.

I don't think anyone would enable that option, beause clearly what
happens is they develop their generic PHY driver, and also develop
the consumer of that generic PHY driver. Once it works, they say
"job done" and submit it.

I was thinking that maybe some automated testing is needed, but
that runs into other problems:

1. any test code doesn't have any way to determine what a PHY
   driver supports, because phy_validate() is optional. So it has
   no way to know whether e.g. PHY_MODE_ETHERNET is supported or
   not. Calling phy_set_mode() isn't sufficient, if ->set_mode()
   isn't implemented, this is effectively a no-op.

2. drivers that just return success for ->set_mode() irrespective
   of the PHY power state but don't program the hardware would be
   undetectable.

I'm also going to point out that phy-core allows ->set_mode() to be
unimplemented, yet the phy_mode is stored. It looks to me like this is
intentional part of the API, which means that phy_set_mode*() is not
expected to always result in the hardware being programmed. That
brings up the obvious question: if phy_set_mode() is not expected to
always reprogram the hardware, then what phy API call should follow
this to ensure the hardware is reprogrammed.

On the other hand, if the API intention was that ->set_mode() must be
implemented if phy_set_mode*() is to be accepted, then surely
phy_set_mode_ext() should be checking that phy->ops->set_mode exists,
and returning -EOPNOTSUPP if it doesn't.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
