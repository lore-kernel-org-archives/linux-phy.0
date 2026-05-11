Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CFD9CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 16:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJ9b221Z4dgAdl8fjoK8fJX/q1NlMBSMaJ4BN/3PyRk=; b=uoybi+o3ygYO/2
	GEtQ/PesZx6FUtzaHFG2jahrLRAO8tIHv9wyhO9FFZL66Ac4eaHrfJNoB6T52Wlty9lflas13UGPh
	5RKwxjvSiHTyTrUmdoxXprUCPXrj+6GFl/mqpvS9RcXJjYBCWGJSdCFKCoU/PgkHY48chSW0mmjW+
	DCreDzHbqNvPsDuzZQStlMuEvgzaAf7WYXwAvCs//+SpYtisEAQ1rFUvWHUhtWHSsOgyezpzBpaKu
	r22nX7yDjfrXaYnGm+5tsASIq/AKarenIUc8nwPfu7bqXRCNeLnPUg20yntDmTNZSdOrCH66vML81
	k5X8hg9sxbt7tThh+j7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTLN-0000000EBDc-2aXN;
	Mon, 11 May 2026 16:18:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMTLL-0000000EBCa-2ggQ;
	Mon, 11 May 2026 16:18:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C86B600CB;
	Mon, 11 May 2026 16:18:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F270C2BCB0;
	Mon, 11 May 2026 16:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778516334;
	bh=U42E3LWzv0TbWP6oMpvlSaV2MRzXzGekhXV6lEcRbbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bp5IggbtfeBSdhgblUSlx5B9HKMPMNBePGqseTxadNe/RW825h2Z3OeVKgEDn3tcd
	 xR3p4DuwGz3q9YXyxWYPblbXKoiI/tl6KzE3P2pfCLBgMHVySY/JLfAe77NL7aVBJZ
	 Gp6TKLJ0a/MSOsI9UmCKZJxU020GgO6lwRQs3sLdLbdgfXGNyewkbUCc91qq4YOKDu
	 xvMiYzOipBjq2iJvWHbxoWmxAFedqQd4iXjrt6KNElYEJ2qH5z+Bk0UQHqR4IxMIrx
	 9MQmVrHtTuLRxBojQCIvevJ6espW6NozkWG+87beE1gvTi9gls3oCzx98M5NWzqzuz
	 t/g6f7FJAkwVg==
Date: Mon, 11 May 2026 21:48:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Algea Cao <algea.cao@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
Message-ID: <agIBa7qxIGgqCYZ1@vaman>
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
 <agA1dFpheTaBfyUt@vaman>
 <c76d7020-2b3b-4f30-ab40-a8442c953966@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c76d7020-2b3b-4f30-ab40-a8442c953966@collabora.com>
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

On 10-05-26, 11:55, Cristian Ciocaltea wrote:
> Hi Vinod,
> 
> On 5/10/26 10:36 AM, Vinod Koul wrote:
> > On 27-02-26, 22:48, Cristian Ciocaltea wrote:
> >> This series provides a set of bug fixes and cleanups for the Rockchip
> >> Samsung HDPTX PHY driver.
> >>
> >> The first part of the series (i.e. PATCH 1 & 2) addresses clock rate
> >> calculation and synchronization issues.  Specifically, it fixes edge
> >> cases where the PHY PLL is pre-programmed by an external component (like
> >> a bootloader) or when changing the color depth (bpc) while keeping the
> >> modeline constant.  Because the Common Clock Framework .set_rate()
> >> callback might not be invoked if the pixel clock remains unchanged, this
> >> previously led to out-of-sync states between CCF and the actual HDMI PHY
> >> configuration.
> >>
> >> The second part focuses on code cleanups and modernizing the register
> >> access.  Now that dw_hdmi_qp driver has fully switched to using
> >> phy_configure(), we can drop the deprecated TMDS rate setup workarounds
> >> and the restrict_rate_change flag logic.  Finally, it refactors the
> >> driver to consistently use standard bitfield macros.
> > 
> > Sorry looks like I have missed to review this one.
> > Can you please rebase on phy/fixes and send...
> 
> I've just verified and it applies cleanly on top of phy/fixes.
> Do you still need a resend?

Yes please, it didnt apply for me

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
