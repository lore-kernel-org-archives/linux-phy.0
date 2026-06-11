Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 693D7CD98CE
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lo3HMtPKlpIWZonF4a9uOd3z3Jo0ctJsuCAolGN2a3k=; b=zZpgbq0SBVrTwA
	pN1Zy0w81GS011fARymI2LsYUKz2q+kpSnGxEbDp4fLG9XWiurbrt+eYXNUr2+SAAvn/lx+iTsjnN
	yVrEGgJvszO7Dm7tlTAl/6GbpzvZOTG7tC9ZWddMUFXZyGx6AiCjqH0PBjeTfJQZDnFKks7qdadFz
	g4lfTvEcFVKIvcWnyOKjBMxWHxaDyBa9/5vVq78hJhtOjT5eMDbrdDpDoTiok3IjsmIROlcbV/rag
	eSytme0+wTBfQysSpcupK6Soeuc3RGRvskUkxSjFP2LugS8pFpMgqfF2ptwn3yk+ZGM+LP99Qk4/v
	zuwWm1V2iTWhP4Kb6zag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRM-00000009gmg-0jM4;
	Thu, 11 Jun 2026 15:35:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRL-00000009gmK-07aJ
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD54A42BB8;
	Thu, 11 Jun 2026 15:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C22A1F00899;
	Thu, 11 Jun 2026 15:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192130;
	bh=qK/QoqfAojcInEKx7Zf6ecG7nrM/+3GrwVu81ovaSR0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=FNEKV4Az8AasAX4zazd1x1589P00pLgmR8p1Pwnmnk/R34qB3m1N8zwcn+9EDiszU
	 toci8tPm3YYB/dc009s084w4wPTAnRWeZWo5qZQaLWBYIBkB1mwr243dopymheqwYc
	 HkcaQqnehpViX1PlYBo2GaZfOVZfc+2jHouhBEcPIKW1vyhG07swewDiHPkZfYH2p7
	 VGyxvuOzU0HEIYJROlDh1wL4+DE9aCxwa9pRYIphWON29T/0YSuURRLyGNywoMK5Ws
	 Zd7YR6RKDfht3TcAJFs9C7QGFYUv4SUwHTlF+y+0clnJ2mmP/sAX7p3dOiLDGJA3Mi
	 US7pNcCrFPWkg==
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260519151957.1593214-2-u.kleine-koenig@baylibre.com>
References: <20260519151957.1593214-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v1] phy: nxp-ptn3222: Use named initializers for struct
 i2c_device_id
Message-Id: <178119212906.568088.4380025411379874938.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:29 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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

Ck9uIFR1ZSwgMTkgTWF5IDIwMjYgMTc6MTk6NTcgKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIChU
aGUgQ2FwYWJsZSBIdWIpIHdyb3RlOgo+IFdoaWxlIGJlaW5nIGxlc3MgY29tcGFjdCwgdXNpbmcg
bmFtZWQgaW5pdGlhbGl6ZXJzIGFsbG93cyB0byBtb3JlIGVhc2lseQo+IHNlZSB3aGljaCBtZW1i
ZXJzIG9mIHRoZSBzdHJ1Y3RzIGFyZSBhc3NpZ25lZCB3aGljaCB2YWx1ZSB3aXRob3V0IGhhdmlu
Zwo+IHRvIGxvb2t1cCB0aGUgZGVjbGFyYXRpb24gb2YgdGhlIHN0cnVjdC4gQW5kIGl0J3MgYWxz
byBtb3JlIHJvYnVzdAo+IGFnYWluc3QgY2hhbmdlcyB0byB0aGUgc3RydWN0IGRlZmluaXRpb24u
Cj4gCj4gVGhpcyBwYXRjaCBkb2Vzbid0IG1vZGlmeSB0aGUgY29tcGlsZWQgYXJyYXlzLCBvbmx5
IHRoZWlyIHJlcHJlc2VudGF0aW9uCj4gaW4gc291cmNlIGZvcm0gYmVuZWZpdHMuIFRoZSBmb3Jt
ZXIgd2FzIGNvbmZpcm1lZCB3aXRoIHg4NiBhbmQgYXJtNjQKPiBidWlsZHMuCj4gCj4gWy4uLl0K
CkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIHBoeTogbnhwLXB0bjMyMjI6IFVzZSBuYW1lZCBpbml0
aWFsaXplcnMgZm9yIHN0cnVjdCBpMmNfZGV2aWNlX2lkCiAgICAgIGNvbW1pdDogNDkwNDExNzkz
NTMxOTIzM2IxZWM4ZjA1Mjg1NjBkYzkxZThhZTRjMgoKQmVzdCByZWdhcmRzLAotLSAKflZpbm9k
CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
