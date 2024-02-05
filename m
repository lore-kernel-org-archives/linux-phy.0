Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 594CAC48292
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 19:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdSdO15AR7W8To13Y2SX0FdlnCtUIoq2om+VcsKHsa4=; b=RyzJQhRM/xq8Fg
	N0dTLQNZf2HMxIuUUktxvi57mT6KriT1iXhobWucZ3rr/AJ2TmPceUG9cItTcfl2aHRP65LXS1Ily
	wDfJzFGoz7ipK4YZXDUbciUQR9p3l6oF0pDI2OKhgIdM3EshHZU8MYxTEfTbKbaMuV+YjAeBshXRd
	FAec8CkzU5aLNDENv3y/9+aMhuGF1fj7FD7b5Rn01ixeDOUK/TcPr2XPGpKAClCtwNNtyWLuzeopu
	BjMihXddYZCntEqcqZwGSq8cTcBVTHB9ySqKv4vA2+3l6Oi1VxJ2cv66GhG9IQqYZmOirtpGn3MHv
	+hFwAkBwfnRwK0xl2cWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX4V5-00000004YQZ-3uDa;
	Mon, 05 Feb 2024 19:19:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX4V0-00000004YMk-3Wrg;
	Mon, 05 Feb 2024 19:19:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AC509CE0F20;
	Mon,  5 Feb 2024 19:19:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B54C433C7;
	Mon,  5 Feb 2024 19:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707160758;
	bh=IQgAhNiM9Q3k0p3uoVL7JBB79afL2zsOoVNpWvCcKl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qtKVLMrtkrK2hMUJn94uioxTjvRe0KKC3dIcgh4mWv/uMQK3iM7kyMimKmR0kBweM
	 2VyhcNFlxjudSEn7ZKDga6Mtcj1PmYaCjnQFrlqWdldeavwXGpUYuoDcwR4yBaNjiy
	 Vzadv3oNb0ObugFg5PT+JoDxRMND8EDRg7B5lwsMO46Hk6UHv2DjiL4MxyrpoRIn6q
	 By68DuMz4rjTBxnWm8gPnpvcEAUo/aihoZ1X+SRyNWC2OPCZWE6k5XiZoULWw41D6Y
	 ovLAm/Bievxa7cZT8ZStH2zGyjQkg3JLZMFlG62kCiyCS/cdypB2ZQ5vFFk3cqqcyR
	 uze7Hi4MG6BQg==
Date: Mon, 5 Feb 2024 19:19:15 +0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	David Airlie <airlied@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	frieder.schrempf@kontron.de, alexander.stein@ew.tq-group.com,
	Maxime Ripard <mripard@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Lucas Stach <l.stach@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, marex@denx.de,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Liu Ying <victor.liu@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 03/12] dt-bindings: soc: imx: add missing clock and
 power-domains to imx8mp-hdmi-blk-ctrl
Message-ID: <170716075503.138486.15196612878281167365.robh@kernel.org>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240203165307.7806-4-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_111923_274377_002435AE 
X-CRM114-Status: GOOD (  18.24  )
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


On Sat, 03 Feb 2024 10:52:43 -0600, Adam Ford wrote:
> Per guidance from the NXP downstream kernel, if the clock is
> disabled before HDMI/LCDIF probe, LCDIF will not get pixel
> clock from HDMI PHY and throw an error:
> 
> [CRTC:39:crtc-2] vblank wait timed out
>     WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_atomic_helper.c:
>         1634 drm_atomic_helper_wait_for_vblanks.part.0+0x23c/0x260
> 
> Fix this by adding the fdcc clock to the hdmi_blk_ctrl.  This
> should be safe, since neither this power domain nor the dependent
> HDMI and LCDIF drivers been enabled or added to the SoC device
> tree yet.
> 
> According to Sandor Yu from NXP, "the FDCC clock is not for HDMITX
> in desgin, but it is part of HDMI domain that needed by HDMITX.
> So I think it is reasonable added it to the power domain driver."
> 
> The driver also supports two power domains which are missing from the binding
> that also fix an issue with resuming from suspend.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  Update commit message to both show error and give a bit more
>      background.
>      Add missing power domains hdcp and hdrv as pointed out by Marek Vasut
> ---
>  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     | 22 ++++++++++++-------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
