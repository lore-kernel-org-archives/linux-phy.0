Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4ECFC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKoq8dqm/rQ+yzHK/PhM++BWvJWe5arykn9W0DGP/So=; b=D42j2L375tAK3u
	bJMRSLuiKSfC3TKw6exVuYDQQSWMHeABX+qE6Yl7UEnCWR20R5XWOaVLoNG8OMTjXTB8jfB8TeEd4
	71LHYdZCUidNfYsadlfLPNqcLCN+m34i5DYB1pcpBRoGeC90PCbZtxJEGNWyzsSnmXksftDVsRner
	B2bDK1mLLXj+VcXYdUtPEeBdidhCbFIEHjUnbXS2sQ7cJGP3cubJQtgcV+xYdwyrgOz/ez7zyhaST
	tHSB8wwUVBd3mj3UN3I3CypiMFCvsrONI7EBgLeZbJlm92SAfnv2zKNUNZA1mxDgvs0FElCeP3RYJ
	KSxA1tfH/1g/KNBLAkAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOzb-00B6db-W4; Thu, 07 Apr 2022 10:03:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOyq-00B6Hf-2z
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:03:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncOyZ-0001ZV-OJ; Thu, 07 Apr 2022 12:02:51 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncOyY-001aOd-GN; Thu, 07 Apr 2022 12:02:49 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncOyW-0004W1-6F; Thu, 07 Apr 2022 12:02:48 +0200
Message-ID: <96af8c40159970480f2a2118bbbdc62e0fee5de6.camel@pengutronix.de>
Subject: Re: [PATCH v0 03/10] drm/imx: add bridge wrapper driver for i.MX8MP
 DWC HDMI
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, NXP Linux Team
 <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Robert Foss <robert.foss@linaro.org>, Neil
 Armstrong <narmstrong@baylibre.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>,  dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org,  patchwork-lst@pengutronix.de
Date: Thu, 07 Apr 2022 12:02:48 +0200
In-Reply-To: <20220406160123.1272911-4-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-4-l.stach@pengutronix.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_030308_160630_4DC56EE9 
X-CRM114-Status: UNSURE (   6.87  )
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

On Mi, 2022-04-06 at 18:01 +0200, Lucas Stach wrote:
> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>


Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
