Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1729E606A319
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 06:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iPiwos24;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=GmTf6oYL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqzPGpUjUO+NVa93U+H06E/W4u5Kpv6FDBLBD0Nt+8Q=; b=iPiwos24TChLcB
	TWF/A8j0T/nJA7PB38Ig7B2nxHxk9TYJipVHbdHmpWG3cXlcyqcmBRKBk2tKPcxwSgv3/vbfu+AqV
	16gr9odhmtlNsmlNyroZe5ydHQwiknj7t2onYs2tD91O/y6zErvL9Ks5983akma8zuiMS9HcgvniJ
	0qfkTj+lGS4shS7qxVZY5AX6tTPxgr2U+y94R6/web910gFJfWc/MGR2iqvO/VyLhVMRgKwI6YBZq
	AM+zGD/eUB5E7f7TXu8idlu0vjXkehB1B1w5sF9Ds8X6zQuEZNPNnXjzIGtEDwsgUhEniXEixJzY1
	lHAyHjqy2FxxHzc+pHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJmQn-0000000DU0e-2Uis;
	Thu, 22 Oct 2026 06:37:41 +0000
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJmQk-0000000DTzr-2QtW
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 06:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792651052; bh=VQFTusPZWZAQO9ncVP5/pVATTKlUKVRB9FJ/9plts7M=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=GmTf6oYL8AKlduANqJiMvZbkQOf7gKp/zQwFXmoaknAFcT1VltESHTOaOrg1fcjsW
	 ooQVtPfnStMG4UMWTARNwo+QdJW0/ktwQv7oAfnOSn7krkbD0yr8PCfT2j9MVsT4Ld
	 a+4EUQyPnJwSlLkvXFQ17TUOpHSAfKWsStATXj6U=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: N6vT1niysq6m+dolIeSRQmZ0Z/lSCBqEUxgMgKnhlcqyDzFYwRYb/nFI862AH8
	 hx16FZ7vQ76yOO4KNrAZLP9nGxJ89E38Vmc3rNG+xB70iOUAV7wSRAQwTihTOulk5fqrM0fPZ230B
	 KEjiMz7HM7L4qzHyBVCqvG9OHxF9AE9K5R4nq44q5B5A5vDvoF2e6N2kZaxF1Xwl7qyXn0HPU+w0q
	 jx+hU0FDBXH84DVvxXpEVC45nfZW7RE5b4cT+s2JTCz893w+J65yZGKPYhKhbfVjLu1uzs423rZHF
	 YhpWLoHB7Z5iyFTSqhVekL+bsNuil22wBS381bllGmpRd0Z5eGD8IpYIPKcsKtvIw3suSvGWztqCp
	 ZGnIzV/u3oZCv65hNU2vXGJYFoE1CwNhDvwyxZLhcqUptZfdM3alzxLkTi4sZcGcAkl0YQLxv0wcs
	 xDYdGeTy4dt8w7sun/yBo2hbrgzaosoCMO9RohKNuUElD6qUPsPbWHI0n7ImrN45HY2QPGs1bCvVk
	 MWSRQYnB5gBQQseXW+2S7fzKMYfLxHzAz/06wSHooNP221o35sl8hHLxnG+gxrgIhpp8SEAZcRLdv
	 wttYLqc66aRhuxibq6faN+1fdUvvf0l4cS04L724Xdz7CC95Ngz5WGvieS2ipVQY1PH3RPEC0SCQc
	 LLZDi4lUTEtGHPpV3lXVwSsXOJZKBClnzlse4Bo/O+ZEZSX8poOOa0aS22M1U1Gi0XNUU8VxABkh2
	 bEmFwFeuf6x8bwc+bj+CMBVRMOBbJozHjSlFbbqRMjHcly44ucpG1KRKT5UmvuIARe2VdvezT5O6l
	 4AjpimmT+Wwm48X5K++Szf3pWy8brWR888+n7HrXrJNl+S1bpTLclyQC60yZO5MIsRD1+1zgcsxEy
	 Y16MLptC3/0G6NBTSzeoOt/17k+XaE4mdHZh69reiQfF1CWqaBhKA87ASDRQ945nLDYWOlNQ6C5AI
	 wOHX74OkmtP7bfnjvPr48Afne4f9RYdonvRTS0CxUYkICRgEbasogiv1kyvxnWGZzdyciyj+lRx9T
	 ZTKQ1aSJt3odwsS1uNe1fIHMqU8WkURomskKvfn9JQJrjd4w=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?U2hhd24gTGlu?=" <shawn.lin@rock-chips.com>
Cc: "=?utf-8?B?c2hhd24ubGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bWZk?=" <mfd@lists.linux.dev>, "=?utf-8?B?bGludXgtZ3Bpbw==?=" <linux-gpio@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?bGludXgtcG0=?=" <linux-pm@vger.kernel.org>, "=?utf-8?B?bGludXgtaTJj?=" <linux-i2c@vger.kernel.org>, "=?utf-8?B?bGludXgtc2VyaWFs?=" <linux-serial@vger.kernel.org>, "=?utf-8?B?bGludXgtbW1j?=" <linux-mmc@vger.kernel.org>, 
	"=?utf-8?B?bGludXgtc3RtMzI=?=" <linux-stm32@st-md-mailman.stormreply.com>, "=?utf-8?B?bGludXgtcGh5?=" <linux-phy@lists.infradead.org>, "=?utf-8?B?bGludXgtdXNi?=" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 00/27] rockchip: Add RK3572 and Forlinx OK3572-C support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Thu, 22 Oct 2026 14:37:30 +0800
X-Priority: 3
Message-ID: <tencent_1468586598128C460803261171FD769AA209@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
	<7fa26028-5c7c-4c5d-8cc5-3116b2e51cc0@rock-chips.com>
In-Reply-To: <7fa26028-5c7c-4c5d-8cc5-3116b2e51cc0@rock-chips.com>
X-QQ-mid: xmsezb41-0t1792651050t9mjujcfl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_233739_163792_42CDA454 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgo+IFRoYW5rcyBmb3IgeW91ciBwYXRjaGVzLiBUeXBpY2FsbHksIGEgc2VyaWVzIG9mIHRo
aXMgc2l6ZSBjb3ZlcmluZyBTb0MKPiBzdXBwb3J0IHNob3VsZCBiZSBzcGxpdCBieSBzdWJzeXN0
ZW3vvIxmb3IgaW5zdGFuY2UsIHNlcGFyYXRlIERUIGJpbmRpbmcKPiBhbmQgZHJpdmVyIHBhdGNo
ZXMgZm9yIGVhY2ggc3Vic3lzdGVt77yMYW5kIG9ubHkgQ0MgdGhlIHJlbGV2YW50Cj4gbWFpbnRh
aW5lcnMgYW5kIG1haWxpbmcgbGlzdHMuIFRoZSBEVFMgcGF0Y2ggY2FuIGZvbGxvdyBhZnRlcndh
cmRzLgoKVGhhbmsgeW91IGZvciB0aGUgZ3VpZGFuY2UuIEkgYXBvbG9naXplIGZvciB0aGUgaW5j
b252ZW5pZW5jZS4gSSdsbCBzcGxpdAp2MiBieSBzdWJzeXN0ZW0uCgpCZXN0IHJlZ2FyZHMsCkN1
bmhhbwotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
