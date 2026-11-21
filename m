Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D915B606A320
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 13:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fJHG0nZL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=zfxowsvl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kwUgFkRhQxtkxq+oBtyanyyCf6+qwDOF3PjK7b0xt24=; b=fJHG0nZLz3LgFKkg0s+5XUkoum
	X+2Peqn4X4Pixrd838lEuU9PNnlou9VrQB2pNJJtHOZksNhtjsXMJ9gPB/mXYhJecHxHMV1d2ZxkS
	QlQBD/asQLEhy7U0Qn7FOH5kevWMr9kmH7RJmP/f17GPz1tN8kl6t5JtnnOQgzLSYcj4Kf49TYM3r
	nUOTiFkb9IBkFx28GoJZRWUM6j3nrY/CVJm+0mt07EGJLxbEzCxnqjDHkc+kchX8O/y7UdOjVbWpE
	WEnBkuVKKTwa1vptgiTqW1QbV760FoWKWkqFCKwOVwYx1O0bHuWSqMAEgYAVJdGnHDQEz3EL7wZ1i
	lepPP5FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUlDp-0000000HI0e-2Ywh;
	Sat, 21 Nov 2026 13:33:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUlDn-0000000HHzw-3LjD;
	Sat, 21 Nov 2026 13:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EJoKIhVOzRTnCw3xv/1juimw9ds0gPz48EALk+RpXY0=; b=zfxowsvl0narWz7XL1vtgZauEK
	BeLrteWBesDZMjmKbHncnpM+0lnUPnWydEKcvIeQn5xgTESNLgleJn9C1SYHBWARI12RGqOM5sPUx
	2blof2VIlx/5AfA+Z3Z8RL/gtwH+GLS7Vi/lQzpkXCewoD5gSHMcTwr2KGkMNkA22x5rUXSe3ckDV
	u47yJpyTjikF6ObpU2At8jVp6q3IzaIwe1wmyhfzSGK32698Gs2/ESWyLTkyZsW1y0Ex2QgkaofcK
	8dKRJTqabwMvTB4RHz5QJoSdOTWL5VlLGReRMpF3Ga6Oqnvxj1f97ifIjaUM3HVsMmctRVSyZgjMN
	1RU8AIdQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Sandy Huang <hjc@rock-chips.com>, ZhuXiangyu <1194781887@qq.com>
Cc: Andy Yan <andyshrk@163.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 ZhuXiangyu <1194781887@qq.com>
Subject: Re: [PATCH] drm/phy: rockchip: fix RK3506 DSI low-power command handling
Date: Sat, 21 Nov 2026 14:33:23 +0100
Message-ID: <I1iUkWzgR2mQ2vL4ooyigA@sntech.de>
In-Reply-To: <tencent_F495CC22423581B98A12990F93C04F33CB06@qq.com>
References: <tencent_F495CC22423581B98A12990F93C04F33CB06@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_053340_101222_E6E3F2B1 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU2Ftc3RhZywgMjEuIE5vdmVtYmVyIDIwMjYsIDA5OjA1OjU1IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgWmh1WGlhbmd5dToKPiBUd28gYnVncyBrZWVwIHRoZSBSSzM1
MDYgTUlQSS1EU0kgbGluayBmcm9tIGluaXRpYWxpc2luZyBhIHBhbmVsOiB0aGUKPiBEUEhZIHBy
b2dyYW1zIHRoZSB3cm9uZyBoaWdoLXNwZWVkIHRpbWluZyBlbnRyeSwgYW5kIHRoZSBQSFkgZGF0
YSBsYW5lcwo+IGFyZSBuZXZlciBlbmFibGVkIGluIHRoZSBHUkYuCj4gCj4gMS4gcGh5LXJvY2tj
aGlwLWlubm8tZHNpZHBoeSBwaWNrcyB0aGUgd3JvbmcgSFMgdGltaW5nIGVudHJ5Cj4gCj4gICAg
VGhlIDEuNSBHSHogaW5ubyBEU0kgUEhZIHRpbWluZyB0YWJsZSBzdG9yZXMgaXRzIHJhdGVzIGlu
IE1icHMgd2hpbGUKPiAgICB0aGUgb3RoZXIgdGFibGVzIGFuZCB0aGUgbG9va3VwIHVzZSBIei4g
VGhlIG1vZGUgZW5hYmxlIGNvZGUgY29tcGFyZXMKPiAgICBpbm5vLT5wbGwucmF0ZSBpbiBIeiAo
ZS5nLiAzNzIwMDAwMDApIGFnYWluc3QgdGltaW5nc1tdLnJhdGUgaW4gTWJwcwo+ICAgIChlLmcu
IDQwMCksIHNvIHRoZSBjb21wYXJpc29uIG5ldmVyIG1hdGNoZXMuIFRoZSBsb29wIHJ1bnMgdG8g
dGhlIGVuZAo+ICAgIGFuZCB0aGUgbGFzdCwgZmFzdGVzdCBlbnRyeSBpcyB1c2VkLCB3aGljaCBw
cm9ncmFtcyBhIFRMUFgvTFBYCj4gICAgY291bnRlciB0aGF0IGlzIGZhciB0b28gbGFyZ2UuIFRo
ZSBwYW5lbCB0aGVuIGNhbm5vdCBkZWNvZGUgdGhlCj4gICAgbG93LXBvd2VyIERDUyBjb21tYW5k
cyBhbmQgc3RheXMgaW4gc2xlZXAgbW9kZSwgc28gdGhlIGRpc3BsYXkgc3RheXMKPiAgICBibGFj
ayBldmVuIHRob3VnaCB0aGUgTFAgcGFja2V0cyBhcmUgdmlzaWJsZSBvbiB0aGUgZGF0YSBsYW5l
Lgo+IAo+ICAgIENvbnZlcnQgdGhlIDEuNSBHSHogdGltaW5nIHRhYmxlIHJhdGVzIHRvIEh6IHNv
IHRoYXQgdGhlIGxvb2t1cAo+ICAgIHNlbGVjdHMgdGhlIGNvcnJlY3QgZW50cnkuCj4gCj4gMi4g
VGhlIFJLMzUwNiBEU0kgR1JGIGxhbmUgZW5hYmxlIGJpdHMgYXJlIG5ldmVyIHdyaXR0ZW4KPiAK
PiAgICByazM1MDZfY2hpcF9kYXRhIG9ubHkgY2xlYXJzIHRoZSB0dXJuYXJvdW5kIC8gZm9yY2Ut
c3RvcCBmaWVsZHMsIHNvCj4gICAgdGhlIFBIWSBkYXRhIGxhbmVzIHN0YXkgZGlzYWJsZWQgdW5s
ZXNzIHRoZSBib290IGxvYWRlciBoYXBwZW5zIHRvCj4gICAgZW5hYmxlIHRoZW0uIFByb2dyYW0g
UkszNTA2X0RTSV9QSFlfRU5BQkxFX0xBTkUwLzEgYXMgd2VsbC4KPiAKPiBUZXN0ZWQgb24gdGhl
IFJLMzUwNkIgSmVycnlUZWNoIGJvYXJkOiB0aGUgcGFuZWwgbm93IHJlY2VpdmVzIHRoZSBpbml0
Cj4gc2VxdWVuY2Ugb3ZlciBMUCBhbmQgdGhlIGZyYW1lYnVmZmVyIGNvbnNvbGUgaXMgdmlzaWJs
ZS4KPiAKPiBGaXhlczogNzg1YTlkNWJiMTQ1ICgicGh5OiByb2NrY2hpcDogaW5uby1kc2lkcGh5
OiBBZGQgc3VwcG9ydCBmb3IgcmszNTA2IikKPiBGaXhlczogY2FiZWFjYzdlYWRjICgiZHJtL3Jv
Y2tjaGlwOiBkc2k6IEFkZCBzdXBwb3J0IGZvciByazM1MDYiKQo+IFNpZ25lZC1vZmYtYnk6IFpo
dVhpYW5neXUgPDExOTQ3ODE4ODdAcXEuY29tPgoKZG9uJ3QgbWl4IHN1YnN5c3RlbXMgaW4gcGF0
Y2ggc3VibWlzc2lvbiBwbGVhc2UuCgpBbGwgdGhlIHByb2Nlc3MgaXNzdWVzLCBLcnp5c3p0b2Yg
cG9pbnRlZCBvdXQgaW4gYW5vdGhlciB0aHJlYWQgc3RpbGwKYXBwbHkgdG9vLgoKCkhlaWtvCgoK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
