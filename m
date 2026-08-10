Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E18DEC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIINIviEkiOB7tjOs3aL6FKwDskKH0FGABeQUzN/R9w=; b=B75ksbuavAi5Hn
	h4QmnuAk3tq3ikdL5kziksz0rzCmkGKUUgZA7ugodNFZQoPYFIIz20KeyR63QULusYmGdKZ3tx0EB
	Iq56q6igTwscGm6uk/q0UGeaWE6AbMW8b0xvaGIALKHaQrNmkqd7j+UQJdW5q3w2fJ8KMRtKV6Qa+
	b3kIXL3CWjyoayU8Q7HgHYn62JUFF1cXQqjuKayOjWBLchZo8oN+Z9AvbHtpXG6H0weztwnep8udi
	3d299dxzdsZDJGL+HRM/gPyXNYEJ+uAktNGue4rweSVMgDxgD3ZyPP79Ml+PHdLG7d36oh+bX++JA
	kappIcr8I9U9hVwQBRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK6c-0000000BAkS-2M1M;
	Mon, 10 Aug 2026 07:07:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK6a-0000000BAk4-3wKX
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:07:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 00F0840813;
	Mon, 10 Aug 2026 07:07:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFC31F000E9;
	Mon, 10 Aug 2026 07:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345647;
	bh=O4CLj1IyPxPFEkmDHdGidGNXJkF6gn0MCx0pEi6/arE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QOQQr8UDMDJ7qBwa51S5mAdlRk6vM3UeRi3aYsEJNVMgNPn57NXC823de9ten1DUt
	 3yNk7VZQiV+qc2CmPipDjeZf4I/iNdoGpfbEKyXtnL1/4WTLvtShPoHvTs+N444fWg
	 h+3zTVaciAwJwRzwLVyZLmTB58nRj7oL0vHKqxX6ahradoe9r2dkIekMKGGMaNvzVF
	 eawW6/Fo1YY0XxDTGj4oza+A1VDEEtX4yDBPOwEwvDJGPH8OgwgXeWoIJclXRvRtcp
	 8UVrUq8GYQIoHD9hz8Bg6H6q33qCSWHHy+BduptfI8EmZ7pCXBW9OWnc9T2Px7T11O
	 ABSroe37KJrNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, lee@kernel.org, robh@kernel.org
In-Reply-To: <20260810-zx29clk-v10-2-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-2-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:07:26 +0000
Message-Id: <20260810070727.5DFC31F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBUaGlzIGNvbnRyb2xsZXIgY29udGFpbnMgY2xvY2tzIGFuZCByZXNldHMgZm9yIGhpZ2ggc3Bl
ZWQgZGV2aWNlcyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkIGFuZCBoYXJkd2FyZSBzcGlubG9j
a3MgdGhhdCBJIGV4cGVjdCB3aWxsIGJlIG5lY2Vzc2FyeQo+IHRvIGNvbW11bmljYXRlIGNvcnJl
Y3RseSB3aXRoIHRoZSBMVEUgRFNQIGZpcm13YXJlIGJsb2IuCj4gCj4gSSBkb24ndCBrbm93IG11
Y2ggYWJvdXQgdGhlIGh3bG9ja3MgeWV0IG90aGVyIHRoYW4gdGhhdCB0aGV5IGV4aXN0LCBzbwo+
IHRoZXJlIGlzIG5vIGhlYWRlciB5ZXQgYWRkaW5nIG1lYW5pbmcgdG8gdGhlaXIgaW5kaWNlcy4g
UHJlc3VtYWJseSB0aGF0Cj4gbWVhbmluZyBkb2Vzbid0IGV4aXN0IGluIGhhcmR3YXJlIGFuZCBp
cyBkZSBmYWN0byBkZWZpbmVkIGJ5IFpURSdzCj4gZmlybXdhcmUgYmxvYnMgcnVubmluZyBvbiB0
aGUgcnByb2NzLgo+IAo+IFRoZSB6dGUtengyOTc1MjB2My1jcm0gZHJpdmVyIHdpbGwgaW5zdGFu
dGlhdGUgc2VwYXJhdGUgTUZEIGNoaWxkcmVuIGZvcgo+IGNsb2NrcyBhbmQgcmVzZXRzLCB3aGlj
aCBhcmUgaGFuZGxlZCBieSBzZXBhcmF0ZSBjbG9jayBhbmQgcmVzZXQKPiBkcml2ZXJzLgo+IAo+
IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9z
cy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFu
ZG9lc2luZ2VyQGdtYWlsLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5k
IGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLXp4MjljbGstdjEwLTAt
NjM4NDY0OTA3MTJjQGdtYWlsLmNvbT9wYXJ0PTIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
