Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AADE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk0BMDXLVV//R5e2aG67oE/s05NIIWlY7DI2ozGAhpw=; b=cBMyT6cFiyKrRb
	KJPbDt4yf7ArfkMdhNV0FhnEwkKO6UGJK/Po2D1PxW/PbZUKX0IpONNY/8unoaB6+ToEgsUilPX0b
	7FUQslGQVcWTtIv+J5WhXKAFbcSMYGG/O0RuB7DCgosMulIG67m1DRu5ytXgoLixOow/lIPgo0XoO
	6HoakVOfjVShSSBVID2XFMGwTHyY1sZhRjZG/FG91AMVcX/qgHukhXonODZVzj2nGHwgFm9MEEBEa
	ilvNyq7w7H3R6NkgUwGBrKDH1d6I9jE+QyhcDe8Vyo/k2NHiA89zJHlp5+R0Ui9wXwZNGhvMVqpL6
	3N/7HPdWPxLIqDjlMBtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgC-006Gwx-1w;
	Thu, 21 Sep 2023 14:29:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKg8-006Gv1-18;
	Thu, 21 Sep 2023 14:29:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B7EC6609E9;
	Thu, 21 Sep 2023 14:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F2B1C4E766;
	Thu, 21 Sep 2023 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306555;
	bh=VLihWTTWDyRcN1oKbSXsMzwTgw3e5f2Nt4JgNqgjmHc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SuLiY+Tf7wIE6HHdVRCxC/G1lDF/gX0c75BgE/AgAsn5nX2ZKPM3+Z++XNKC0svQJ
	 HfQbsEaMJh+rA+a0YH4xaqhnT4kOef4nrv9ecIYbjV+CSIDgJFM8q32cIE3Mbhtiev
	 f7dSWqUSt5OMbhSWI5Qae26S0NKOij9BSt1wBncwhEOVT3aA8hiWtoi7PrI/fVPcBF
	 cJowBwpV6q+fia1qTvE+4vML1ae0iosmzIw0YzMB9KxyO/z2rNAaZGBKQMMkRKEX14
	 bbqPeBFnkK0n8n3GPrVtOYfDpo3kEioTgoddzPejSuiASIRvVansYwxQXue70uQcOr
	 QbqdeBZ2sIQOw==
From: Vinod Koul <vkoul@kernel.org>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Robert Foss <rfoss@kernel.org>, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
In-Reply-To: <cover.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 0/8] Initial support for Cadence MHDP8501(HDMI/DP)
 for i.MX8MQ
Message-Id: <169530654998.106263.143064512083801166.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:09 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072916_437339_425830FC 
X-CRM114-Status: UNSURE (   9.28  )
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


On Thu, 15 Jun 2023 09:38:10 +0800, Sandor Yu wrote:
> The patch set initial support for Cadence MHDP8501(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for Freescale i.MX8MQ.
> 
> The patch set compose of DRM bridge drivers and PHY drivers.
> 
> Both of them need the followed two patches to pass build.
>   drm: bridge: Cadence: convert mailbox functions to macro functions
>   phy: Add HDMI configuration options
> 
> [...]

Applied, thanks!

[1/8] drm: bridge: Cadence: convert mailbox functions to macro functions
      (no commit info)
[2/8] dt-bindings: display: bridge: Add Cadence MHDP8501 HDMI and DP
      (no commit info)
[3/8] drm: bridge: Cadence: Add MHDP8501 DP driver
      (no commit info)
[4/8] phy: Add HDMI configuration options
      commit: 7f90516edb5cbfa4108b92bb83cbc8ef35a4cccd
[5/8] drm: bridge: Cadence: Add MHDP8501 HDMI driver
      (no commit info)
[6/8] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
      (no commit info)
[7/8] phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
      commit: a2717f1d7c64660679441c407b96103abb7c4a8c
[8/8] phy: freescale: Add HDMI PHY driver for i.MX8MQ
      commit: 8e36091a94d2d28e8dccb9bfda081b2e42e951ae

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
