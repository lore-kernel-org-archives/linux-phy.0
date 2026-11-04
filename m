Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE918606A32D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 13:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JY49J/yx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=C182rFoz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ykrnA64YM8qZGA5yPOlmfLb6OJvIgnqOLsYT9xCaYgQ=; b=JY49J/yxQWPqmy+rEvjU5Xn+sW
	i5rFK46uLdvjHbMzgt6dGp86lm21budrs00aLZAoEkhpaJk91qzCtwfQZ2+gwZjfcHcmvqaRSk10a
	V2LlgdxeLcSaRw9Cf01fNjoK0yR7WUsqCubhWkLKrj8AqMDBNZQLrp1qOxvWwy78qibuBGRim7x3l
	qgbg9Da+CGHalejN5bVL8nXaOPNkxMoO7V1boJpeZRMOLuzSilUG6DvRtaP5AUneTReAuwnF8twPF
	2SgraYjO9WKJ2xT9UgH6i/zczN6pdAcy1HoDvY5fHuuf/K9RKyU2PMXykFN3PMBJ5XEgw9edVkJc6
	HD6SG+2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOafG-00000005Qlj-2gHW;
	Wed, 04 Nov 2026 13:04:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOafD-00000005Qkx-0fIv
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 13:04:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7AE1B63D64
	for <linux-phy@lists.infradead.org>; Wed,  4 Nov 2026 13:04:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E96E1F00A26
	for <linux-phy@lists.infradead.org>; Wed,  4 Nov 2026 13:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793797466;
	bh=0gGIxmVj15HwpHlgucVC67kzMBeDjNiHcqiz6hAOrv8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=C182rFozjpn+i/0Ts1DVq3b+ldJzLaYXncXGSKU5f4XCAI4+yQi49mycFeAVy/gy7
	 8i034pd2KQtcZ+CDX7gNbb1ARO9RfgRTbhmouZunnvcULJfaG9HPLVwZ3ytUngroM8
	 egwAbMwpz9XNDrjkbvaFb7ks4aeC1jnf/7xgjiQSSRWyIkLiOi9LhuCZ0m05jFhICK
	 nr+140ioY7Z+vWkH+hoTBBLG9p9apDmaJAyXwiVWq7Jj1yLXp7seJxi3P3EtW934rg
	 oWpdYy+4j+63c1HAegqRqhpSl5cl6n6imJzOTlCBDI2RliYbTkTkC1EonSRTyah1Td
	 f1twz4w1M1Eww==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5bfc3292d90so486041e87.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 05:04:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvBz7fg6DQqBOmtRr16V1l9jr6bq1ImIiQK7gBAWzMWCDkAD6nlhgiIYE6Kkb7zE+puMjVJZPS+FxnJ0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8t7SKE/lD1Qzl9gzJ2VE4zGb/7hqvSzJhRE4v7g4VjVR1bSBpa
	v4pGw6RBcrcJzKDBUgXNFk9IUlfyN4LOUpIv61KuUKQ71FfRfmXAfnGevOwTDiN1QsClbMIXm2u
	cqAiujqtnLK7+rOJthEM89j2IDjLTIhM=
X-Received: by 2002:a05:6512:39cd:b0:5bf:b166:f58b with SMTP id
 2adb3069b0e04-5bfd95782a4mr5476115e87.55.1793797464785; Wed, 04 Nov 2026
 05:04:24 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com> <20261022-add-board-ok3572-c-v1-5-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-5-0b0fd85a31ee@qq.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 4 Nov 2026 14:04:12 +0100
X-Gmail-Original-Message-ID: <CAD++jL=2Z3hP74dHRyE3Aabp+PvpcHX_90PQy+a_HMQwBdNx6g@mail.gmail.com>
X-Gm-Features: AclHuK9_TlXav34NYeX4rfS2IYWnnq1y5c9wSfeOajfltWQaA7IZMQ4oBhaALpc
Message-ID: <CAD++jL=2Z3hP74dHRyE3Aabp+PvpcHX_90PQy+a_HMQwBdNx6g@mail.gmail.com>
Subject: Re: [PATCH 05/27] dt-bindings: pinctrl: rockchip: Add RK3572
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
bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4KPiBBZGQgdGhlIFJLMzU3MiBwaW5jdHJsIGNv
bXBhdGlibGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDdW5oYW8gTHUgPDE1Nzk1Njc1NDBAcXEuY29t
PgoKVGhpcyBwYXRjaCA1LzI3IGFwcGxpZWQgdG8gdGhlIHBpbmN0cmwgdHJlZS4KCllvdXJzLApM
aW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
