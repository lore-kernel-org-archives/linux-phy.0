Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9553C48297
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 17:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfR9gljyf6kNyCdsueckaSeVfgch/St4T7anomboc58=; b=fE9A2o6JD7Uuqu
	Mf4pGNHTZx9hsrZw+kRqlUcV+m9XYrLztqZInqSsi68g1eF2toMU9LkiqBKrEWtDbepKNr8S8I0J0
	1gP2/2ARttF6OtE/jq/RPjAYE92Q1XUtbKwDBhT0OJxGa1i/639hB6LgntxLKu6Nd9eMLFQokXXpx
	j+mUcJVTHxOZ0T8MbMN+iKnzSIRcfk5Vp6xZlBGgN2O8EuxXRMYaDdx4VFOdpNzFY3FgELNGDXzQr
	zXT9sZNr28Dj5et+XBOy5qDD/w+Gv7FG20kPKzo0WwEvtlzZEqGDIoz5blfvojxSs8qyo8EGTUceQ
	elf1/dNzxwwVVCT2leag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXPLV-00000008OeV-1iMO;
	Tue, 06 Feb 2024 17:34:57 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXPLS-00000008Oc1-08FB;
	Tue, 06 Feb 2024 17:34:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1762D1C0011;
	Tue,  6 Feb 2024 17:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707240889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i4B04GY4vnOTHYtk0bhdleBQty1iDee+JlHm0bxvCe0=;
	b=Ei6AcsfAETxB/nrhVk18gXN9oUwxDHfLz5X36Xq2Pwh6yheQOhj6sB9NpOYUsflquoGoQi
	71AG7mvafc6Fkipy6fEqxqaEE8/fM3Oi2sb3KOfqN6pyUDTOx40j64/mDpzUggNRT5r+8Q
	KX3v3ntkm3Os7+mmFporjg4RDrqMFevdv6N8AAZ6YGu28OFWbHxlPehHSS6lHr96RCm4Hh
	m8CGYQLGUvxG1bdtK0k5xCshvEhIqdummU8poN02NQr0tfbbUjNsTa260QTey+tFsdQkEx
	9oyPfOdWcGq60T5zRTzEBKsFtK5hT7uvUYRfGWUSEOgEu5Mt9dDHzgJCdjiw6w==
Date: Tue, 6 Feb 2024 18:34:43 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, Lucas Stach
 <l.stach@pengutronix.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 01/12] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <20240206183443.000dca1b@booty>
In-Reply-To: <20240203165307.7806-2-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-2-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_093454_250217_B99FEA64 
X-CRM114-Status: UNSURE (   8.96  )
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

On Sat,  3 Feb 2024 10:52:41 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
