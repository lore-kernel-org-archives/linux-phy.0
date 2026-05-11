Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91330CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 16:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8wA3/mTb/5uUFJqrdQpCB+Z9EbvWPlouBb48BXXR+E=; b=2JAVRqe6rKBIhL
	W4Wf8sLwf77IQNgjnDP/iEVjjgMM8CbTAnxCPxc/zMZVZ9rDO1chvJ01FZ6U3ymgf7vfL1DSVK1mx
	psVWx92JMEefIq/tmPEWZB5a0epUbmHEJp1cQbDl11iAUf0kEduI7ZZ8zHHDwpCeguBf3k+v9k+Qq
	aTQwVDZA2AoYew969b0dXscRrk67pINhTW+IKF1HsNR6XRw1Dw45/XcwkXNxmYI0fEyW0pib1kIgp
	OInZNk1xT3MUINXq9sGm7wAgeLlZry0VwEprqNSgdkmUrrqCC8swmAnUszQevl3CxV4M0PTn1SlcN
	23mH34LCycDsguMX20OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTKM-0000000EAzL-0SoM;
	Mon, 11 May 2026 16:17:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTKF-0000000EAx0-2JdC
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 16:17:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F657423E3;
	Mon, 11 May 2026 16:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEEE9C2BCFA;
	Mon, 11 May 2026 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778516266;
	bh=UFuvMK57CtfTjbHAGJyZ/VJ+24ftQifxmTKwtfW1Swg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aKjDP0aim5w0VintAabsM53oFP2hCokMq2HPDSN5IbF2h59wV0XQ4WJ9SxwnJPGk5
	 ZvAnYmzl1jEq5OZz+aaMf9aTdp2xHf+uLJERGNYKraDhRZIF+HD+ShOa3Kf3nS9REP
	 G8NeyloTLCqXFbLFMMOfjRFetIz88Sv0UKempSjXdDcM2v6zUto0UsR+LZPwNQIjoE
	 NAKPlg1OukB7t7xAoWNJV4ndnFrTibZkDWwxI9x7MD5Sr3KNujp4Y7s57PtAXlRCjV
	 fKYO+7s78V3QYU8nl8v92FQQ5/AYd29nHs1KgL+nw9ZVr7yq5D7jHE37WiYJP9x7zD
	 70kTanvydI2Tg==
Date: Mon, 11 May 2026 21:47:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Peng Fan <peng.fan@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulfh@kernel.org>
Subject: Re: [PATCH v3 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <agIBJsOl4Trk4_KN@vaman>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
 <agBjOmnpKuZoDfWG@vaman>
 <agB_aj_2hzF3ON2h@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <agB_aj_2hzF3ON2h@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_091747_683943_A3231FE7 
X-CRM114-Status: GOOD (  22.36  )
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

On 10-05-26, 15:51, Andy Shevchenko wrote:
> On Sun, May 10, 2026 at 04:21:38PM +0530, Vinod Koul wrote:
> > On 04-05-26, 08:58, Andy Shevchenko wrote:
> > > The driver does two things that need to be addressed:
> > > - includes subject to remove gpio.h
> > > - checks for error code from device property APIs when it can be done in
> > >   a robust way
> > > 
> > > This series addresses the above and adds a couple of additional refactoring.
> > 
> > Sashiko flagged some issues, some of them not introduced by this, can
> > you please check this:
> > 
> > https://sashiko.dev/#/patchset/20260504070054.29508-1-andriy.shevchenko%40linux.intel.com
> 
> "Could this result in a null pointer dereference if device_get_match_data()
> returns null?"
> Yes, it sounds legit but not introduced here.
> 
> "In the original code, the warning was suppressed when the property was missing
> because err evaluated to -EINVAL. Now, if the property is absent, max_bitrate
> is explicitly set to 0 in the else block, which then unconditionally triggers
> this warning."
> True, but I don't know which is better here, I consider that it's
> good to inform user about default being used as a fallback. I can change
> this back to the original logic. What do you prefer?
> 
> The third one is the repetition of the first one (see above).
> 
> TL;DR: The only one legitimated question is about a (new old) warning.

Yeah would be great if we could fix these as well please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
