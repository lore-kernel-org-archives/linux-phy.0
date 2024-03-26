Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD78C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 08:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9LosnLaZXpcTUAoQ7n+0kqRTzqBDUbg5eLoAGQYOAg=; b=SGRTunbRZDR3uG
	YfyNb877e20z8Rok3zqeDgE0f9vBtK884+6wQEf49+SGGtBdRtljFNDhMMWXVUVYCuO5Dp10I4dhS
	GBMyPfjTD1evTbhbuqsD1+Nj1KPksXYyf0hE+7q8oBi/KiBEAEi5FImCkk9xqdTXNoOpnB5HMJZlJ
	YJo84YljqVFzG5whzlRQcdTdSLN5Nohlc/EIOuU2NHurT4K/qie5VC0BhqjGwrMla098iNieG4i17
	ev7nLopcl+XKYLv/5r25dn4trKutWnQm+4rluHZ1SMEfzlFm83UT6BYhUoWrio+uIc9HAmvtBELFT
	3GjVoGnIShSh4uJHsnyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2En-00000003ceE-3a29;
	Tue, 26 Mar 2024 08:32:53 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2Ek-00000003cbG-3Cvg
	for linux-phy@lists.infradead.org;
	Tue, 26 Mar 2024 08:32:52 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 568201BF208;
	Tue, 26 Mar 2024 08:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711441965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m0DOnNUIL7uNqVz6saMER7ZM2ibzgIW/MgrZTA4gZWI=;
	b=ZKEDIBPe3059LDifO3jfRqa+dkAT0jRat+d9rxbUEu1y38yXNydx08uUtIKny7J/ikrxRt
	rbKEYaT+SBHznlmE7TC5rSU8MLVAYg4QU3h2Y0CpWn30mLiswDaAbIJFYxiF9ScldrzzGI
	f38FQrPOzRyR/Os481anE/mgUvc1Bq3SB3UwH2Svui4x2KTn8mk1EZlMvbnMR41kZeo3xg
	UJUA08ckGKCBxfoJ5vQ3nRyJUIpHfoC7IywrYc9hZMzYoKhEWjqkmzonA0xY3bhSRvmxVJ
	OjWEswbpgJmbkMOkivz8y6sC6dkU1ZUqh0UDkL00CkBC0AkJ637NDXRF6z5HVQ==
Date: Tue, 26 Mar 2024 09:32:42 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>, Marek
 =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, Alexey
 Khoroshilov <khoroshilov@ispras.ru>
Subject: Re: [PATCH v2 2/2] phy: marvell: a3700-comphy: Fix hardcoded array
 size
Message-ID: <20240326093242.79ee848a@xps-13>
In-Reply-To: <20240325201254.54445-3-m.kobuk@ispras.ru>
References: <20240325201254.54445-1-m.kobuk@ispras.ru>
	<20240325201254.54445-3-m.kobuk@ispras.ru>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_013251_108922_D14D5C69 
X-CRM114-Status: UNSURE (   4.08  )
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

SGkgTWlraGFpbCwKCm0ua29idWtAaXNwcmFzLnJ1IHdyb3RlIG9uIE1vbiwgMjUgTWFyIDIwMjQg
MjM6MTI6NTAgKzAzMDA6Cgo+IFJlcGxhY2UgaGFyZGNvZGVkICdnYmVfcGh5X2luaXQnIGFycmF5
IHNpemUgd2l0aCBkZWZpbmVkIHZhbHVlLgo+IAo+IEZpeGVzOiA5MzQzMzcwODBjNmMgKCJwaHk6
IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IEFkZCBuYXRpdmUga2VybmVsIGltcGxl
bWVudGF0aW9uIikKPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIEtvYnVrIDxtLmtvYnVrQGlzcHJh
cy5ydT4KCkxHVE0uCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4KClRoYW5rcywKTWlxdcOobAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
