Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24EC1C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUB4KbUP4z397SN870nKu2gNdk+pCU7JN6z5OgHVkuw=; b=Q1xCVt82NCBHne
	0uFS9PvlRsqSuaPppOYO6mb8lSwaR+i/mEdsyX/l908QBxzVX2emy1s7zcEFNbZLkWiX2FFVX6P/l
	A+lvbVVbfRIqdw8xwnI3pggM5LWTJzv8iHVqrBbAZhsemRzx8cONQ2ffJV07VAxGiD6WzQaevySnt
	DN08i/ycqUtvdg1UG7XAzY8yeMv2f+ceauVMb+hwBZTuC+ot8k8xyf7lLvI4l7CXKPxUjMWbk8xa/
	takIrqc9K2hGhjlKfmalAa0eBiaKZSkdK0Yf/r4as2iRkGbnZxGPIjHklYrHWB9egNVBrj31JI0eN
	rQm91s+ZaFvyHoV2ZLkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8e-0000000Dcjt-32UL;
	Wed, 12 Jun 2024 17:52:00 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8a-0000000Dcid-1erm;
	Wed, 12 Jun 2024 17:51:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D58F2CE20D3;
	Wed, 12 Jun 2024 17:51:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E7D5C116B1;
	Wed, 12 Jun 2024 17:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214710;
	bh=vvib4mDLNFGbxtjwNx1VQX4FbVFw8DxDSeb+iVnMLJk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ABTrFF7vZPtXgioJTr56V+Wpd5t2B3DAoaYSkgl/Yq3NXgAmw+I8YohN9jMOnxdxw
	 qFAJ1NyOXzpjnjWsirudk7Kjzul7zJnTS2Nlo4xGr6sKrQ08ndJww33cJ7ymKNhm5o
	 oFTB1L+wZDlT+eDtek53ypwzyguDr0mKOtuPTps4mOcBCkfuregZOodH9buqpUoyFd
	 H8ATPdOY3sVPlXB0dnEDXSHmR9Shb+Pp4NLGo8zGSgDZaqaJgTT+C1FDaocsAoqVmW
	 9zr328B7Av3dk3GNTU1MpSsx90jfgDm7f3EBDlLMx1kmtXW4Ou3JHueJfnXfDRTpVJ
	 dKD/rxqCpLJkQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
Subject: Re: [PATCH 0/5] a few fixes for the Samsung USB phy driver
Message-Id: <171821470509.586907.3119518278516252634.b4-ty@kernel.org>
Date: Wed, 12 Jun 2024 23:21:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_105156_639397_1F76B44E 
X-CRM114-Status: UNSURE (   8.17  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIFR1ZSwgMDcgTWF5IDIwMjQgMTU6MTQ6NDMgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IEJlZm9yZSBjb21pbmcgdG8gYW4gYWdyZWVtZW50IG9uIG15IFNhbXN1bmcgVVNCMzEgLyBn
czEwMSBwaHkgY2hhbmdlcyBbMV0KPiBbMl0sIEkgZGVjaWRlZCB0byBzcGxpdCBvdXQgdGhvc2Ug
Y2hhbmdlcyBmcm9tIHRoYXQgc2VyaWVzIHdoaWNoIGNhbiBhbHNvIGJlCj4gYXBwbGllZCBpbmRl
cGVuZGVudGx5IGFuZCBhZGQgYSBmZXcgYWRkaXRpb25hbCBmaXhlcyBJIGhhZCBseWluZyBhcm91
bmQuCj4gCj4gVGhpcyBjb250YWlucyBtb3N0bHkgY2xlYW51cCwgYnV0IGFsc28gYSBjaGFuZ2Ug
dG8gdXNpbmcgZnNsZWVwKCkgYXMKPiByZWNvbW1lbmRlZCBieSB0aGUgdGltZXJzLWhvd3RvLCBh
bmQgYSBmaXggZm9yIHNldHRpbmcgdGhlIHJlZiBmcmVxdWVuY3kgZm9yCj4gRTg1MC4KPiAKPiBb
Li4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvNV0gcGh5OiBleHlub3M1LXVzYmRyZDogdW5pZm9y
bSBvcmRlciBvZiByZWdpc3RlciBiaXQgbWFjcm9zCiAgICAgIGNvbW1pdDogMmEwZGMzNGJhYjhl
ZGU1ZmE1MDM3OGVmMjA2ZjU4MDMwM2VlZDhkZQpbMi81XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBj
b252ZXJ0IHVkZWxheSgpIHRvIGZzbGVlcCgpCiAgICAgIGNvbW1pdDogMjdmM2QzZjZkODdmNjUw
Y2M2YjNlYTA4MzM1ZGVhNzQ5ZjFiMDRhYQpbMy81XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBtYWtl
IHBoeV9pc29sKCkgdGFrZSBhIGJvb2wgZm9yIGNsYXJpdHkKICAgICAgY29tbWl0OiBmMmI2ZmM0
ZDVjOTc5M2M1NTY0MTJlOWE4YWMxMjI2NzBhMGQ4ZGNiCls0LzVdIHBoeTogZXh5bm9zNS11c2Jk
cmQ6IGZpeCBkZWZpbml0aW9uIG9mIEVYWU5PUzVfRlNFTF8yNk1IWgogICAgICBjb21taXQ6IDMy
YjI0OTVlNzMxZjJhNTYxMTgwMzRlOWM2NjVlNmZlNTZiYmZlM2EKWzUvNV0gcGh5OiBleHlub3M1
LXVzYmRyZDogc2V0IHJlZiBjbGsgZnJlcSBpbiBleHlub3M4NTBfdXNiZHJkX3V0bWlfaW5pdCgp
CiAgICAgIGNvbW1pdDogZDE0YzE0NjE4ZTg1MWViMjVkNTU4MDc4MTBjMmMxNzkxYTYzNzcxMgoK
QmVzdCByZWdhcmRzLAotLSAKVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
