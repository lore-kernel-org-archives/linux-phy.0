Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCDC606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2DVq7a+9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IEGnZ9s7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l7TTs4x/VCBUVbZeu5yyoT6kyEsTiiNVZY/W3XujaII=; b=2DVq7a+9qGbY0IZ+p13nVo9tMz
	eey4W4PWLbeizQoIRsaCSSFfLJqIm6G1ZRc0U0wJylk9RlYuuMELnMMZ0Et9ZJxQI/i6ovIpkEZ3E
	mFLXvBt1FyRJpv/Ljy9D7v/NEgEhNdgVTMBy2rS8lh2aGtRNhusoWix5H856cq4+zOEpKxg8FXQGL
	sgCHSAfEbWl1DqF6XGT5aWBV7lAl7yo3DgaP+yjqf9RxdDJp1jM9tsyM0y7TqOrssg8ZRM5UEwSLf
	/UuBTdKtJKqAA7+Kn996REUsIl7pmLRBowVSuAvKJMi4LqXIZUA7+93/jz4lyhafB4qqSIU34Uocu
	fMqNPCBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoMF-0000000CKa4-3Do4;
	Fri, 13 Nov 2026 10:18:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoM9-0000000CKYD-2BYX
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:18:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 48EFA4669D
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30B7D1F000C4
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794565085;
	bh=oWpj+fMcU0ldZMemXXF2GwJUPPqvOroaTzblSr6zsuI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=IEGnZ9s71CxuM1FatGWVZ7MjS/Ksms7wsHnU0cCjvI8yD6ri1brzQWsOTKwvf9scE
	 1x6Ik/hWXwA68bNMOJ2qk0IELCj40VL2vurKZg2CBldMMMeZzCnayO4J2Gnj0Az3+8
	 sLcpEApwpShOgzgYGnsC5zQ/BTQA1pPyK8jNvC4x12yPuP5UtkKRgIIy+9jLBgNocB
	 L9MMZWBtHuoQNREggu7MnqN8y/aUPyWkH6bNpbqXdfg0nDqFJKcg78yywZyRRLPCde
	 WmTYkuNtdC17dgd1l0oq+eyfgjAcECX5WMpRB1C91OhxyakR/QzDsp75gUIpaHPi3l
	 K27CaA5AGXzPw==
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-702dedeb70dso1000181eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 02:18:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErEhnep6/TzFnSVrJeLm+fpNULKDo2vL7IIy8AjkR5Ccw3jGLBYeA5hLqOBCQEzxQ+43nAVVBjKZs/A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/aiA/vRdXimBQznewjLJS8GWkmYFjOgbz0l7u7Ps85Y6yhD/Xq
	N+KxXdNqUlmUGobHEuh1Evs0yhZRugIyBRKN29ZDePHmANBFr1q5E2gebHltg5g9OI/3nIYm9VV
	sh2dhliuhKsoLbmdzcORbT6giSLoSCo0=
X-Received: by 2002:a05:6820:2228:b0:70a:1787:2696 with SMTP id
 006d021491bc7-71ab50522aamr1246436eaf.61.1794565084106; Fri, 13 Nov 2026
 02:18:04 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com> <20261022-add-board-ok3572-c-v1-8-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-8-0b0fd85a31ee@qq.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 13 Nov 2026 11:17:47 +0100
X-Gmail-Original-Message-ID: <CAD++jLkJsYtjKOF7wpiUqSLoBuiOe+C5sMEQo7XZ1dW773+pJQ@mail.gmail.com>
X-Gm-Features: AclHuK9FczXasoO8qxg9IxepytTJahNxlbbuShGYzvO1iLyvCzMkO5H7q2dWjZE
Message-ID: <CAD++jLkJsYtjKOF7wpiUqSLoBuiOe+C5sMEQo7XZ1dW773+pJQ@mail.gmail.com>
Subject: Re: [PATCH 08/27] pinctrl: rockchip: Add RK3572 support
To: 1579567540@qq.com
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Ulf Hansson <ulfh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, David Wu <david.wu@rock-chips.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBPY3QgMjEsIDIwMjYgYXQgNjoxMuKAr1BNIEN1bmhhbyBMdSB2aWEgQjQgUmVsYXkK
PGRldm51bGwrMTU3OTU2NzU0MC5xcS5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cgo+IEZyb206IEN1
bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4KPiBTdXBwb3J0IFJLMzU3MiBwaW5tdXgsIGJp
YXMsIGRyaXZlLXN0cmVuZ3RoLCBhbmQgU2NobWl0dCBjb250cm9scy4KPiBFbmFibGUgaW5wdXQg
YnVmZmVycyBkdXJpbmcgbXV4IGNoYW5nZXMgZm9yIHRoZSBSR01JSSByZWNlaXZlIGNsb2Nrcy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+CgpUaGlzIHBh
dGNoIDgvMjcgYXBwbGllZCB0byB0aGUgcGluY3RybCB0cmVlLgoKWW91cnMsCkxpbnVzIFdhbGxl
aWoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
