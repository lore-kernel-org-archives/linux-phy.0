Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80872C4167B
	for <linux-phy@archiver.kernel.org>; Sat, 10 Dec 2022 22:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ah89tSjAy+NOmmIrSwPttkiDkULLH0dJATLpGJRhO0c=; b=hxq6f0RkOa6b/2
	Y4pFelwEfd6rpvJ5pAtD3KsjdHZGtlbTKlvZkj15LtdAtunq3IZjnZE0Rkp/Rp7Sbw2YsYHHHmfTy
	ERAk2pv4RbO6uQPYbAa/g9VL+0UC5m11lICep2W+LxNxZ1IA0AJOwRjZSVr9sFRbyE1zI5VTkt7jk
	w8RrJML0MEZEYk9ELm4bkfsMJQ7HAuWwZz7tjT4jt+WWCeu5bHQrUGOz8D+5O7sEBLndzo2op+t4M
	Hcjf7bgv5n8UpI8QgePLdHAYIquET8AKURxtiE2U+Pp/0c+Mi4mZM40llG4WAkF48emPRqEKhmc3y
	bClfKaIQ+MdPp5bIAbqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p480P-0060Jy-Be; Sat, 10 Dec 2022 22:07:37 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p480B-005zqE-R3; Sat, 10 Dec 2022 22:07:25 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 754C61C0002;
	Sat, 10 Dec 2022 22:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1670710038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ueh8h8K5la+rt80fMQ8vcYLiSzG6Mqr+N8q3yCay810=;
	b=Zv8t/FhTd1Zc2QlXoRmxmacKAZv75Rfx3VVjjTJns95L95S8o352asFO7BYWrY0IIsdnl8
	lHxeqg2CWb6BSAQzY7ZeV6YBsa4zQD88dIX3uDi459AKB0ZVgTdZukGZe+eM02YXuSH9Rx
	J7TNQLGd29uFin7i6PDyyAdPhQVV929JwWWbk5mX6owi7CHB4wXcsE3ilKaAFaBwNBrtDU
	UZXWRd5dvg5KlxiDvDkAO0VB0vLCf9tlZZjN0K/iSInx7RiGuHboPdNgBzNNosDnGmVzbR
	R+snAOpDsaRqivcL9kcaNdpu2Mm+SMX9Nvw0WHqqllaPmrJ0+qtmj3uCavQWoA==
Date: Sat, 10 Dec 2022 23:07:14 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jerome Brunet <jbrunet@baylibre.com>,
	Eric Dumazet <edumazet@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Rob Herring <robh+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	"David S. Miller" <davem@davemloft.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Vinod Koul <vkoul@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Kevin Hilman <khilman@baylibre.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Russell King <linux@armlinux.org.uk>,
	Paolo Abeni <pabeni@redhat.com>
Cc: linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-watchdog@vger.kernel.org
Subject: Re: (subset) [PATCH 06/12] dt-bindings: rtc: convert rtc-meson.txt
 to dt-schema
Message-ID: <167070996827.280754.10880226731567626980.b4-ty@bootlin.com>
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v1-6-3f025599b968@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-6-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221210_140724_038484_B73DC4FF 
X-CRM114-Status: UNSURE (   7.15  )
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

On Fri, 18 Nov 2022 15:33:32 +0100, Neil Armstrong wrote:
> Convert the Amlogic Meson6 RTC bindings to dt-schema.
> 
> 

Applied, thanks!

[06/12] dt-bindings: rtc: convert rtc-meson.txt to dt-schema
        commit: 800b55b4dc62c4348fbc1f7570a8ac8be3f0eb66

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
