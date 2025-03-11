Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34976C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 11:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2l+B//6WT2Bt627CKI3c34p8nZaU2zgYlTweU4H6UB0=; b=hRrEuWoHGtEZzo
	u3R8hq5zPXa6tYaT7alWWJXQ1uZIK17sjW/TqVyWsFNTrkFXzT2uZNvH4aI0mPiWUtT29+GnqNGSh
	l8GdyqMPOjLyZTIFhzTrefTmcpl8IKbr3zL2+yRNP5vzpPpydHmEJBrr942pvZdmjcoBMWCMR55Xx
	k0aCYD1FWKUD9lkP2D7vT3omOrgHSKyV3S/BxZoYDDHfvmm+F6NVYl6y0RR0/ZxtPSUNWKXCjtcQS
	1D8ROBagMgcyC7j4eYd7i7O2xkvxm7sQqEjZYdqUfjz5bwP/bDvFZcjimcn7YfyIgFckeRodhjWxV
	RhVhqGcPBhv2vvAPXWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxap-00000005RFa-3zIM;
	Tue, 11 Mar 2025 11:16:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxYY-00000005Qlk-0s9u;
	Tue, 11 Mar 2025 11:13:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AD8C3A4692F;
	Tue, 11 Mar 2025 11:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF06CC4CEEB;
	Tue, 11 Mar 2025 11:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741691632;
	bh=qbtvWIP1+nIeEYbvoZdR0xecYHAOBTcof1Joj/nAUfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hx7W61u36GJWwC4o/LYS+nsWiIqB+uVKZflDZ/STvcQba1rMkyR0sMb/WTvCvXG0k
	 PV/ssav8qlAYZPM21ROnyngQYSaNUJ7H5Enm94EUDQObkEgpD1QmFt0uCXgQaYt2w9
	 cybLrZX1cJ+FWa8pRrmSZ0gJwAtiDSpNAH34LLtrG6Rcn//BZEwUsbUe2A2joCpFiV
	 sBwWyQZzyAM2m3sTppC6u8swt6Ga9oCcCd8Hy97X0K1xm8TmjjwMOb+UWQ3DdC3JZ/
	 sLPzU2R0grhsh812qwGJgnLLMEYK/afQ9ARJUamqfV88xNc9f6aOruBxCldJJM/J39
	 wKXmeeuquRz4Q==
Date: Tue, 11 Mar 2025 12:13:46 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, kishon@kernel.org, sebastian.reichel@collabora.com,
	yubing.zhang@rock-chips.com, dmitry.baryshkov@linaro.org,
	frank.wang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: Re: [PATCH] phy: rockchip: usbdp: Check these parameters only
 when the corresponding set flags are set
Message-ID: <Z9Aa6v1/1KRdZDKE@vaman>
References: <20250306065952.485809-1-andyshrk@163.com>
 <Z86UOmPg/UDSBajZ@vaman>
 <1379400c.90c.19582b05f74.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379400c.90c.19582b05f74.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_041354_312314_F11FAFF6 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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

On 11-03-25, 08:52, Andy Yan wrote:

> Do you mean we should do it like this:
> 
> static int rk_udphy_dp_phy_configure(struct phy *phy,
>                                      union phy_configure_opts *opts)
> {
>         struct rk_udphy *udphy = phy_get_drvdata(phy);
>         struct phy_configure_opts_dp *dp = &opts->dp;
>         u32 i, val, lane;
>         int ret;
> 
>        .............
>       if (dp->set_rate)
>            	ret = rk_udphy_dp_phy_verify_link_rate(dp->link_rate);
>      if (dp->set_lanes)
>                 ret = rk_udphy_dp_phy_verify_link_lanes(dp->lanes);
>      if (dp->set_voltates)
>                ret = rk_udphy_dp_phy_verify_link_voltate(dp->voltate);
> 
> 
> Add helper for each of them ?

That would look better for sure

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
