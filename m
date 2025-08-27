Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CD5C8303F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 07:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VctRgK6uB3VZK1Vhtps0MH26ysGCJt/zE2yQGlkbc0=; b=eUTBpvDhf6GyBJ
	gFGe11B9us4D1yiRkHXwWRa0d3hGMvlNef1WBJDy2yYUDP3yTCl1LYLQYADqWnNUNVQe8t2h17ZRH
	GNGZcJwZQ1J5kKwiRsIJgfaxoH0nkaJicMmidnL3Gk3GG09CcX/tRpUg2jL07PPdS6YkXexeiX/Wj
	hbl5cWSOgW8DzekXFsCNjDG7BLWstJmy5jmQTrj2Et3S9W1I7BXQh30OSlDAQuxxLOM6mQQj2QbIP
	8/2/XTU5WfjZws50ifvQmeggkEY3B0rMyQO6clARfWqirjz94LYVm8EfWpq+oR6k978s2XMRyzoOs
	zpTARKLeAjk1fj2IYOxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAeh-0000000ER1y-3KaG;
	Wed, 27 Aug 2025 07:33:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAeW-0000000EQyQ-1AcU;
	Wed, 27 Aug 2025 07:33:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=csfpHjHmYUMd0X65UNDX1fL+H+H1B/gOfT575ffmaGg=; b=LPGjs4HiOUL+6qJjZIy0E0Q1E/
	GPc22+hrsgpalA+ZMJSvrs3EF+x3lDBS4eOjIoVhn1n5XFy1kDlDB6oLDYpxqEyMxjFBuRs6WcEgL
	lWFoDiM39WOdeEu+bC5KZw9TRS2NgcaeklTuYuox76neFVMeWOhA17rGqe06/3fWrC9ZSmK77yJAv
	ceoP9KVnQ0v60dGhllll7uPy/tf9twBlu/04YMb5ZJM34SA4VWrdMzvXTcYRWp84uAHmDoI+KHcqH
	HwLk3iU5N3ZdKuOCg8cK+nI6UNQe2tuCg2BXw5hBNCDmlf3wJff+RxcOoEMMm+pHCm21SVAEx7xW9
	iKD4y66A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAeT-00000002NGK-01Oz;
	Wed, 27 Aug 2025 07:33:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=csfpHjHmYUMd0X65UNDX1fL+H+H1B/gOfT575ffmaGg=; b=hoP2Ahk2JAPZOAkRsNvAGKlrru
	bFII+CNjGmCnvMOBsIRx6bMU/RJPWf/ru1JqMI7UaSocMEv8Yo4eDu7vViO9rifOWHqa0Y5ZonMgI
	XuAeSS1HEfelwMRcunyJMEgg07TLO6nBT4LKVKcmMSRkClgtR1gUAAVbCkkeC/SaF3ALB5URggZL4
	P8wZG4RWoZEzseopv1FU6hZwUt6VEjSkeeDyHSl+yGqqYSXgERRZnLWBuCUM96JeVgmekns8Y+Woi
	h73tlXiAjfpHoPOmgAnlyu+Cz+XZaw4KQREmmO/vb1Gmr3yV3zz5vNgkd7DpxWEo9qiZJQRlUxgzU
	faZYj0sA==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAdw-0004nS-Rr; Wed, 27 Aug 2025 09:32:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 11/20] drm/rockchip: inno-hdmi: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:32:26 +0200
Message-ID: <5006976.yKVeVyVuyW@phil>
In-Reply-To: <20250825-byeword-update-v3-11-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-11-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_083301_623030_68E9D413 
X-CRM114-Status: GOOD (  12.64  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjMxIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBUaGUgaW5uby1oZG1pIGRyaXZl
cidzIG93biBISVdPUkRfVVBEQVRFIG1hY3JvIGlzIGluc3RhbnRpYXRlZCBvbmx5Cj4gdHdpY2Uu
IFJlbW92ZSBpdCwgYW5kIHJlcGxhY2UgaXRzIHVzZXMgd2l0aCBGSUVMRF9QUkVQX1dNMTYuIFNp
bmNlCj4gRklFTERfUFJFUF9XTTE2IHNoaWZ0cyB0aGUgdmFsdWUgZm9yIHVzLCB3ZSByZXBsYWNl
IHVzaW5nIHRoZSBtYXNrIGFzCj4gdGhlIHZhbHVlIGJ5IHNpbXBseSB1c2luZyAxIGluc3RlYWQu
Cj4gCj4gV2l0aCB0aGUgbmV3IEZJRUxEX1BSRVBfV00xNiBtYWNybywgd2UgZ2FpbiBiZXR0ZXIg
ZXJyb3IgY2hlY2tpbmcgYW5kIGEKPiBjZW50cmFsIHNoYXJlZCBkZWZpbml0aW9uLgo+IAo+IFRo
aXMgaGFzIGJlZW4gY29tcGlsZS10ZXN0ZWQgb25seSBhcyBJIGxhY2sgaGFyZHdhcmUgdGhpcyBv
bGQsIGJ1dCB0aGUKPiBjaGFuZ2UgaXMgdHJpdmlhbCBlbm91Z2ggdGhhdCBJIGFtIGZhaXJseSBj
ZXJ0YWluIGl0J3MgZXF1aXZhbGVudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0
YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
