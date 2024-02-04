Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8184AC4828F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Feb 2024 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRwELRLsCj7S/SSq41I0QHHQ0UucR6LVe4V1x7iPYUA=; b=a691bZQQfGFpSe
	dEx1KarFnSl1D2UjAEKUzZxRXaBGG5COpEGzuncmsJ2KEs1l20kOhXspYUoyJN2LdafIKxpllsepz
	N1RrjbcoOQbwSZg+Y6/eQQzpaslvy695NwecQGfOTT8fuk29nwl7ceKpYvb3KVfXF/uBTVKHGlkwL
	8xaFnNXBzm+Bo5yhcvAZNVpERhlmEMSviXtofdt/B/IOEBrgJ6fo2AMj+ypOmDVdpk2+lvpV+CY9q
	beEifNqjkNtYu/6LWDFRxy+vvV7x7X+Xm+09DAJHOXc25T3v0/yiS19YyJO1jX1VZXqhEgwFWGHXO
	UhwSPyWbaS2Ru6fEAiBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWbBL-00000000hjQ-3uji;
	Sun, 04 Feb 2024 12:01:07 +0000
Received: from mail11.truemail.it ([2001:4b7e:0:8::81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWbBD-00000000hhC-3khA;
	Sun, 04 Feb 2024 12:01:05 +0000
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 5D2C122352;
	Sun,  4 Feb 2024 13:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1707048049;
	bh=hNBhjuj5iOFzwHKbDLRqgrUiUwu8spdC0cNIku83Ix0=; h=From:To:Subject;
	b=ROOY3X9dZiwGhbpObv9MEW8DVpX0EPcrjFwq235uTkOz73e5j5rQznImCKXF23efY
	 r6rlHe/Q3W3CpUCPZQPfQDCaGm5xIZ/EU23Rr/pyeS3exy4D1M5zyEcWGEInbELBs4
	 rWPLoalJDge8ZAQ9OokOWfW1km4xH9YQRYlowrLOTVhy2w84kpvg1x4WSxnGzDTNhL
	 Nhgo6L6H4LP/OBVeVFVhHx75vrX+tkpon9aG5LaAXYPpn1MojgJbbvucyy4OvOV4ug
	 3SWXfZV0uxdEFR0e/X+y8/CEKSGam5cOKpBEHAocLvh0mhSLOQu39atHEwFTQZfrRm
	 bX9wgy/4St07w==
Date: Sun, 4 Feb 2024 13:00:33 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 06/12] arm64: dts: imx8mp: add HDMI irqsteer
Message-ID: <20240204120033.GA4656@francesco-nb>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-7-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240203165307.7806-7-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_040101_008542_1BF9FE24 
X-CRM114-Status: UNSURE (   9.69  )
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

On Sat, Feb 03, 2024 at 10:52:46AM -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> The HDMI irqsteer is a secondary interrupt controller within the HDMI
> subsystem that maps all HDMI peripheral IRQs into a single upstream
> IRQ line.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

This is missing your signed-off-by, and in other patches of this series
your signed-off-by is not the last, as it should be.

Please have a look and fix this and the other instances.

Thanks for this work!

Francesco


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
