Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40626D29FEF
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 11:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0p1UgrK+OBbR6g7RupkdGTZ2ArTbrcXL9XWXJHiqxpk=; b=hRzyGImgkHSBOz
	ADrLcnCdDEM7wBEjFuXGWZ2+GFdRpnluEMxpVlAr0kTKln/bi3jAWnIlN161+pEyb2GPbBWC+3OnK
	hqws8QhFRitZdATGUzDdldqOasqhINn7LqzGWwqEcYT7TYP1cTIvkOPrloeRqF6ets+9d9sO/42HV
	jh5wN3OFQHCMa0KVxNXFl9zt1kXtkFkQvj149/WrqAJ5So+yD0gbafoCrH3DtpXxpIAQ0pZaX8gTX
	WB8G9g0lG45EvnLAZC/CyhSshVwE6HY6zEIkNSJV3zCVrCro3732Tv/8wvAWKzzUzX24U4Dqpv/km
	eh+sZwtm4VwLVcN3qOxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzOT-000000092Su-43vu;
	Wed, 14 Jan 2026 11:50:33 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzO2-000000092Ka-3ev1
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 11:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=gNMi
	hpzhf2NxKZIcbZg7O2NEUbdwfbHtTszJtzgTj5I=; b=Z+N4yastOsG1hmW6/MpE
	qJn3S1j5gjDiWLbMXPIr5OKNab4rVxTQ1ISuU/PcwKJNFCP4kxxx0cMd9ocJEYwl
	rBtM208IDnsTl8YCpApJaEv88+NT0Em1NPc6Tbvj3/9uHqA8vQBIxg0QH3KVhUAz
	SwzHYADFiSMrJvV/ycsNqExqc0zRxVlOU39NKRHInFy+QXnjDjIz30avvFuZ8F5g
	Gri7hALcq59mlzxXhbANhpN56BlQ/DVpj6Snpm6iAjr2YruLmkQC+vnuhFN6BWmF
	JGzVQI/FhDVQVlpXXlNU8Dcyl5bl8RnycG1yAVJyIZ51ICoNtHhpMUKvwBQ20Fi/
	7Q==
Received: (qmail 2113255 invoked from network); 14 Jan 2026 12:49:58 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 14 Jan 2026 12:49:58 +0100
X-UD-Smtp-Session: l3s3148p1@tokXtVdIoNkujnsM
Date: Wed, 14 Jan 2026 12:49:57 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Vignesh R <vigneshr@ti.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v4 7/7] mmc: host: renesas_sdhi_core: support selecting
 an optional mux
Message-ID: <aWeC5brP_KdrCmHz@ninjato>
References: <20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com>
 <20251229-rz-sdio-mux-v4-7-a023e55758fe@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251229-rz-sdio-mux-v4-7-a023e55758fe@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_035010_117952_F01FC1EB 
X-CRM114-Status: GOOD (  10.29  )
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

Hi Josua,

thanks for your work and kudos for striving for a generic solution. It
seems worthwhile to me to add the helpers. I have questions, though:

> +	priv->mux_state = devm_mux_state_get_optional_selected(&pdev->dev, NULL);

The minor nit (which may be bike-shedding): Maybe the function name
could be '*_select' instead of '*_selected'. To make more explicit that
this function is actively changing the selection and not passively
retrieving the current state?

The bigger thing is that with devm_* I had the expectation that
deselection is also handled automatically...

> +edselmux:
> +	if (priv->mux_state)
> +		mux_state_deselect(priv->mux_state);

... so I was a bit surprised to see this manual cleanup. Has it been
discussed if that deselection can also be in the helpers?

Happy hacking,

   Wolfram


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
