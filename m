Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90337CF58F4
	for <linux-phy@archiver.kernel.org>; Fri, 20 Sep 2024 08:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiAQViR9vLhLVhOif5a+Z7bob1HTjAfr0OUrbOtQ25g=; b=kdqabsrxvzH/FQ
	5Ss0KYoiPWKV+ktosa74nQ1pENf3N8wDpcr0Agl423JgnZGjKNOYE5TQZo8k4osqLXF/rcJbODrn/
	GY0STG1wYIKfnFY42ixlVLTZezkubwtSZxYE3o8d0vyDoogAgrT9F144f2Mue9Umz9D+kj1Bus0uG
	l7t4RUZiwZDvtRAjCeAagNYd86FTwapIqq32RdvD3NE50UGty/kSSmxa65TVvcV6CsfDYb6ApH9Ac
	bIFmXjg5+Zw3L4FhyP+oKoUInLqGMrBTF44zpajf6r5cYcgOeQ/o4BRuhyo9e9YDCSllHf/3K7IEY
	kt8v8fZgOm3TgmZyNHbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZOb-0000000Bq2B-0JKu;
	Fri, 20 Sep 2024 08:53:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srZBa-0000000BnoP-1JgO
	for linux-phy@lists.infradead.org;
	Fri, 20 Sep 2024 08:40:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 546A35C0349;
	Fri, 20 Sep 2024 08:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B680FC4CEC3;
	Fri, 20 Sep 2024 08:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726821616;
	bh=T6eEFVRQyoo07Wn65ust8kGnoZmk5hgOcPaHEAsIAro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RivngTb6Y2tJZX2EcEVdvwZQjnyjsIOsb0U0ekD1XiAs/JuCA1XOwRDGbiMpX7HO0
	 KtpPrn3yL1Cmr8hVUl2QJqDbg9VkFlB95ie0Id5dyVOq8x9JH2FaL+zDm28XA/pwnP
	 BKE2QWAQ8q3fYnQ6kkRVjR1YhU9aD40erxUGYBnatZUTBsgMdovSaTb326mpJ0uQNR
	 G4yJ7cNfOwUkfyqxSDaWELVDadb+8cMCWn/b7JjsAxF2w8TEd28Ia+4F12HvT9AMi6
	 lO8xw8n1bqtv/XrP3AjM/Qs7JnXxfsBmOXkxIa5Pjy/I7Ta6+JhHf0XRyKmBOUTAwM
	 /lpcRWu0m/F6g==
Received: from johan by theta with local (Exim 4.98)
	(envelope-from <johan@kernel.org>)
	id 1srZBV-000000001PK-0Nj4;
	Fri, 20 Sep 2024 10:40:13 +0200
Date: Fri, 20 Sep 2024 10:40:13 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <Zu007YUYie7bEQvj@hovoldconsulting.com>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <ZuqmB3Cn7mGfA2PU@hovoldconsulting.com>
 <ZurRLf8S1j6s8GPz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZurRLf8S1j6s8GPz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_014018_444201_9C49F54E 
X-CRM114-Status: GOOD (  20.79  )
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

On Wed, Sep 18, 2024 at 04:10:05PM +0300, Abel Vesa wrote:
> On 24-09-18 12:05:59, Johan Hovold wrote:
> > On Sat, Sep 07, 2024 at 06:25:21PM +0300, Abel Vesa wrote:
> > > Enable runtime PM support by adding proper ops which will handle the
 
> > > clocks and regulators. These resources will now be handled on power_on and
> > > power_off instead of init and exit PHY ops.
> > 
> > No, this is simply a false claim and indicates that you haven't reviewed
> > how PHY runtime PM works. Core will increment the usage count on init()
> > and decrement it on exit().
> 
> Yeah, I guess the better argument here would be that the PHY needs
> regulators and clocks enabled

No, that's already handled today so is clearly not a valid argument.

> Anyway, ignore this version as it was already NACKed by Dmitry.

No, my feedback is still valid, and you're bound to repeat the same
mistakes over and over again unless you try to understand what I've been
saying here.

> > > Also enable these resources on
> > > probe in order to balance out the disabling that is happening right after.
> > > Prevent runtime PM from being ON by default as well.
> > 
> > And here you just regressed all current systems that do not have udev
> > rules to enable runtime PM, and which will now be stuck with these
> > resources always-on (e.g. during DPMS off and system suspend).
> > 
> > In fact, you are even regressing systems that would enable runtime PM,
> > as the runtime suspend callback would not currently be called when you
> > enter system suspend so the regulators and clocks will be left on.
> > 
> > This clearly hasn't been tested and analysed properly.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
