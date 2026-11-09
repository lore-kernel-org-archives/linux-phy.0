Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F050C606A332
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 07:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PkeZuwPK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=aqU4JbKq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+CVtqxkaZKd+bmWxtX0VQWrlW3opovfVssVxZarHC3Q=; b=PkeZuwPKbcLqEJW8RuV6bgI3j+
	T4ouC6HWPr23VEjQY63wO8ZuQ0mCEGyfPYFkl3HUo1QsbwHOWl1fB8/bDQTkDyC0ap9XhWccy8zqo
	5ilTC465jYbuq7MI4ecXCQf4KzgqxLhgrOIr9vWauVlHpUXWCU4b88WOhuUFV/l06toE5Je5nJ4pm
	3TCBw/32wDZ4fsTIbhYt9j+cGwC+cwTePK1T2bbX0rPSkDB03PlNPtI1SHAcDHe5riX3xQuDaXA4T
	pBA+1kLIzPmcPGUAZFF8RtcaSEZOJVYZbRgj7XswPTFsNwxdrpX+hCzrQv4/Z6Ho8KGfe6Uae5WdJ
	hyap9Cbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJzM-0000000Hacu-2NSh;
	Mon, 09 Nov 2026 07:40:24 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJzJ-0000000Habz-0cw2
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 07:40:23 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3b12cb3c37bso242209a91.2
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 23:40:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794210020; cv=none;
        d=google.com; s=arc-20260327;
        b=bM3ueA73icm2C9YaOik44S5n4iqRx+69UCcpeMgmFxWLMgylRD4JAAswh5GB6VStqe
         U2JkQdfG2u6wNzBd+EN6xZ4jEXLzAE7uxpirNomJJwE82LD4pKaGFL0yEHo2iHHWqVcq
         8mJgg++69z35G9+SNs52a0rBaudkt8Q5VQKcpTjbMDl14zfCT8mkTGEnbGZduc8DUAc9
         OuwPeeLWlvxoTlyImeUcUbb1qfHv7iUat2oly4Om8xANT9b4DREYDRkhyYd3AuQfkxlV
         wctSh5KKs+KKhnAcILQbMMGr+cBfLTd/nmoNltIeU/b+Iz0VuWk8WjkaatfhPj4Akdxq
         6M0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qbtFVfAV0d//avrt7X6KHwZhQyPReObvw80fRr8okBY=;
        fh=LrGdF6hkx9zOFIs3LYqALF4VwQ+LxVSUbG/YF/w8su8=;
        b=W2Tr4MJMlZrKS6gR+vnL9MPWKlrzOkueGPLv4O2LL9anRYiVny0d5eHsuC4KQeNBNC
         BC/4i/daD9NcqamQ24Twe00kR/1+1+HBEuyVZDqJ8ETbkG48WBdz/3qvb8Pun+vOG+Hg
         9TnAMFb1jvZ5ZYXVJnF0LnwX9acDIjJa6pB6K2yl7gyYfxmnKKSD3kSv4TLoODWyuoQN
         OTtIzl/hvOnEUx1adH5F5nuMon0KG+jM1G+EgJExCSp1RBozbxnjc9E9ypH7Cx20+Yru
         dH/4HqFLQfui2amD4EbyUgSgQ4Eoh+7vMr2yxm7fmxbA0u7AnHTGYf6yyB1dwzFUX1ww
         EUEQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794210020; x=1794814820; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qbtFVfAV0d//avrt7X6KHwZhQyPReObvw80fRr8okBY=;
        b=aqU4JbKqZTTkU1yIwlFFjCCTy0OSP9ebYMGGsRMfBc8GTkypbNprGxufD8R4tTb6mH
         cQnIURdeH26TAUWmKOR/B1DYAK2s1M9dTRSx0MfqlNkx9Kf3mvmBdeKF4/gCZTCXz0Z+
         CM31Q61waqF3/hSn6TgMwZCXzPLoYQvmD98bg77jBd+sr8ORIYUuLxw3+VWSiQZFjViC
         sMruSmdai11uUdKt3BYCOC17fxxwnKHf+FiuBMGIKelujo1ucBPdq2N/UuEvuBCM2dfn
         SkY76jI7OcKUy+Tyq4f3V/9oHjh9z2hVpwAr19/L9tJkoIFnYcsJAOOcbT7p8EUWII4e
         DQZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794210020; x=1794814820;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qbtFVfAV0d//avrt7X6KHwZhQyPReObvw80fRr8okBY=;
        b=zG6hxyJzmBSTKnstqdy/Z3p5caZus3UmyxaSrKCq30txd6Tn+4qDX5zkRpL78U0fNo
         2gnJFhzhMlQ3zEBAEcqw9QxhySbNKE4+Bp0EUZS3O7kl7l+24mW4A8g6x8dm1rofzRR1
         ysR6gle9GcFDmvKQknYMilQoIMpoNFm4iCNcCb3CSwVWrfKHjLw0uzkLRHdNEqBGTO6D
         zZ5XPz+RcxYQ0d1diw8mu31/HRczEha34YYHxRGUDPP1nVPahPgm28e7MHhgtm78GHJs
         YUz9O8TrzI34LZFAG9k8xtSjX+0FGP0aKDOQ0looFo9NqPvE+BW0B6ovV6quT3h0m6oj
         1+LA==
X-Forwarded-Encrypted: i=1; AL+hErEKM8tnxkgEO7bN5eL+Eg4N1W+uAD28WY1+g0JY+wzS4mUxrviQOShLzgc+4apfGtJ2YiT4AcH8rNM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8DLXHk8ytvMaqQfZ9HLhbExVVwpsmG3jpYzqiHpkzwzrAqOPh1
	EMV2xuTmtd7OTirJuWp6dtlmMmQJNOX2JrCqPm7tcWQs+/Ah6oIs6ZzLYwxBXsA+V/nfGg4i42P
	lbeLSbEgH9iiDcbmzdKx0bwrt/hnX43Q=
X-Gm-Gg: AYBFou0vFvQXeHmOsuFdsbfMeg/DVODXTi4mdR/HMJlzPaDvRWkg63pFv2ZDs5Z947w
	HuZEerMKkuTTh+EmKhD2FPOUJ1lNJ8O7M3utTNH9EMN1rOujHwfnvbjB3WeYjPhui4lftpsRxNQ
	21Qk6s5cBBTVvQytPsd2hnsRT7ko8C+FqqrvjZiPftR/BrRZ4VWmutKmc+MHzsQZTj+tK9kG5/q
	FBi4dhcxpF3mqHIPV28uKu9P9Kfhq9ek+UbGbcDpgMEk4GUM8FGqcVWsExl4MdIChyRysuVMblV
	YJLq9qFwS0CdC7/m/EE5Fo+G9XeaPOGQCBVEsQvXjjqAxnuyjvJRrb8H4RT9ThyL5NRplpH9tk0
	EpUCVL8ZQtksFEKGVM3IJ2skJK+0eTPUAUiY=
X-Received: by 2002:a17:90b:384c:b0:3ad:a270:a623 with SMTP id
 98e67ed59e1d1-3b12d107e44mr3364118a91.4.1794210019701; Sun, 08 Nov 2026
 23:40:19 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261102135330.2493332-1-robh@kernel.org> <CAAfSe-uD=s0RpuqQ_h+_fErcEC+G=N_LA6e=p_sXJ=iG7jMc3Q@mail.gmail.com>
In-Reply-To: <CAAfSe-uD=s0RpuqQ_h+_fErcEC+G=N_LA6e=p_sXJ=iG7jMc3Q@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 9 Nov 2026 15:39:42 +0800
X-Gm-Features: AclHuK_dnPMk52UN3-2_wspDGRy5a6s-cwmnh8paY6ZY-G54Qz5KZ0bygsAWCVc
Message-ID: <CAAfSe-shr1+0YpxEvf+4k+DyGe3==PUiD72CwjE+RC4gX-ShiQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Use hex unit address patterns
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Jiri Pirko <jiri@resnulli.us>, 
	Ivan Vecera <ivecera@redhat.com>, Benson Leung <bleung@chromium.org>, 
	Guenter Roeck <groeck@chromium.org>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Lee Jones <lee@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, 
	Ulf Hansson <ulfh@kernel.org>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Shawn Guo <shawnguo@kernel.org>, 
	Chanh Nguyen <chanh@os.amperecomputing.com>, Alistair Francis <alistair@alistair23.me>, 
	Julius Werner <jwerner@chromium.org>, Paul Cercueil <paul@crapouillou.net>, 
	Dmitry Osipenko <digetx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Ray Jui <ray.jui@broadcom.com>, 
	Scott Branden <scott.branden@broadcom.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-gpio@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sound@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-tegra@vger.kernel.org, mfd@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_234021_193317_43AE72B2 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCA1IE5vdiAyMDI2IGF0IDEwOjM5LCBDaHVueWFuIFpoYW5nCjxjaHVueWFuLnpoYW5n
QGxpbnV4LnNwYWNlbWl0LmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIDIgTm92IDIwMjYgYXQgMjE6
NTMsIFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IFVu
aXQtYWRkcmVzc2VzIGJ5IGRlZmF1bHQgKGFuZCBtb3N0IGNvbW1vbmx5KSBhcmUgaGV4YWRlY2lt
YWwuIFRoZXJlJ3MgYQo+ID4gbnVtYmVyIG9mIGNhc2VzIHVzaW5nIGRlY2ltYWwgcGF0dGVybnMu
IEZpeCBhbGwgb2YgdGhlbSwgbGltaXRpbmcgdGhlCj4gPiBwYXR0ZXJuIHRvIG1hdGNoIHRoZSAn
cmVnJyBsaW1pdHMgaWYgdGhlcmUgYXJlIGFueS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2Ig
SGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+ID4gLS0tCj4KPiBbc25pcF0KPgo+ID4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3Nw
cmQtdGhlcm1hbC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvc3ByZC10aGVybWFsLnlhbWwKPiA+IGluZGV4IGFmYTU1MWY2MTg1Zi4uMjIyZDcwYmFlZjFl
IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvc3ByZC10aGVybWFsLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy90aGVybWFsL3NwcmQtdGhlcm1hbC55YW1sCj4gPiBAQCAtNDcsNyArNDcsNyBAQCBw
cm9wZXJ0aWVzOgo+ID4gICAgICBjb25zdDogMAo+ID4KPiA+ICBwYXR0ZXJuUHJvcGVydGllczoK
PiA+IC0gICJeKFthLXpdKi0pP3NlbnNvcigtc2VjdGlvbik/QFswLTldKyQiOgo+ID4gKyAgIl4o
W2Etel0qLSk/c2Vuc29yKC1zZWN0aW9uKT9AWzAtOWEtZl0rJCI6Cj4KPiBSZXZpZXdlZC1ieTog
Q2h1bnlhbiBaaGFuZyA8emhhbmcubHlyYUBnbWFpbC5jb20+CgpGb2xsb3dpbmcgdXAgb24gQW5k
eSdzIG5vdGUgYWJvdXQgdGhpczoKClBsZWFzZSBkaXNyZWdhcmQgbXkgUmV2aWV3ZWQtYnkuIEV2
ZW4gdGhvdWdoIEkgZGlkIGxvb2sgYXQgc29tZSBvZgp0aGUgb3RoZXIgaHVua3MsIGdpdmVuIHRo
YXQgSSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoZSBvdGhlciBoYXJkd2FyZSwKSSBkb24ndCBmZWVs
IGNvbWZvcnRhYmxlIGdpdmluZyBhIHdob2xlLXBhdGNoIFJldmlld2VkLWJ5IG91dCBvZgpjYXV0
aW9uLiBBbmQgc2luY2UgSSdtIG5vIGxvbmdlciB0aGUgU1BSRCBtYWludGFpbmVyLCBhbiBBY2tl
ZC1ieQp3b3VsZG4ndCBiZSBhcHByb3ByaWF0ZSBlaXRoZXIuIFNvIHdpdGhkcmF3aW5nIGlzIHRo
ZSBiZXN0IG9wdGlvbiDigJQKc29ycnkgZm9yIHRoZSBpbmNvbnZlbmllbmNlLgoKVGhhbmtzLApD
aHVueWFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
