Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00DDBC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf92/apEx34fmR5ZlOFsGf80mhfhx3E4XTfy6ZjQes0=; b=F8gXf6vjAyCTQH
	0OQvU36WaeESf0HjcVdorLntDNSKdlv1acmAT7lmWmaa4bLkj5yDx/jI6z2oBFJtS4NohRL2iFxVw
	5sMbshbclj3Ap/nCLoTG4Ikko1gNQrXqbXpi9nafC+6ytd1Ej4oBuvU4x5ZVr7QX14llNddLAJb3G
	KUZ60K1PYmM481xMffBfAEzCNHl+kATtnLZAVH27y8ii5vEwnnxCni2XArsMIrWkgfgnFZoqpOXIy
	RBhBJ59s/C3buaDNRyW8uaX6ashi3PP2FvM1XOvVwbiEo1qiJnZUZHTIl+J0i0zb+TVK0g/1b0+Xl
	R23714Sox5sI9ly7bnXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5go-0000000Fp8t-0dd3;
	Wed, 12 Aug 2026 09:56:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5gn-0000000Fp8j-0B4p
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:56:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C92FF4008B;
	Wed, 12 Aug 2026 09:56:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 377721F000E9;
	Wed, 12 Aug 2026 09:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528560;
	bh=wKOJNjrcbU5EqYgfLGFlgE1LxUhcZuyOEQvYklfU3M0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OJ92oCeDnEpVA5Q7ltS6WoCEZX7Kr99s8RSsMP/BlHgtUsK3a+jG3rV64sKa0imnN
	 Cu8Dud/kAwo84Mvn55WVNqG40xLe5CS3i+4YqS3fp0e2EqPP/gzXgBJlmbEFtzpLRN
	 FtIG92MS27Brvu50MYNwABig4ekUvUiC0Ngc/QaDK9j2j8UkQx+EPUDY2RzD+uUi9M
	 IPH0C/uW2ZXsA3q65ycjklp9tesVqfOeqxJwy2BisKYSdNJePaBSPlrxDu6EjOxoJS
	 7CK5CmOsnGNcWmA1/LdhgdKW1bLJoUT/HppFLRxEJmhKPnOaLAWTotHSJliSFoaQwq
	 oNRaJvQdoGxKA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/14] arm64: dts: qcom: ipq5332: Add Super-Speed
 UNIPHY to USB node
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-10-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-10-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:55:59 +0000
Message-Id: <20260812095600.377721F000E9@smtp.kernel.org>
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIGludHJv
ZHVjZXMgYSByZWZlcmVuY2UgdG8gYW4gdW5kZWZpbmVkIHBoYW5kbGUgYDwmdXNicGh5MT5gLCB3
aGljaCB3aWxsIGJyZWFrIGRldmljZXRyZWUgY29tcGlsYXRpb24uCi0tCgotLS0gUGF0Y2ggWzEw
XTogW1BBVENIIHYyIDEwLzE0XSBhcm02NDogZHRzOiBxY29tOiBpcHE1MzMyOiBBZGQgU3VwZXIt
U3BlZWQgVU5JUEhZIHRvIFVTQiBub2RlIC0tLQpjb21taXQgMjdhZmU3ZGY3ZGZkNjNiZjYxYTMy
N2ViMjQyNWUxNjkyYjU5MDAzYgpBdXRob3I6IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJA
cXVpY2luYy5jb20+Cgphcm02NDogZHRzOiBxY29tOiBpcHE1MzMyOiBBZGQgU3VwZXItU3BlZWQg
VU5JUEhZIHRvIFVTQiBub2RlCgpUaGlzIHBhdGNoIGFkZHMgdGhlIFVTQjMgVU5JUEhZIG5vZGUg
dG8gdGhlIFVTQiBjb250cm9sbGVyIG5vZGUuCkl0IGFsc28gc3dpdGNoZXMgdG8gdGhlIHBpcGUg
Y2xvY2sgc3VwcGxpZWQgYnkgdGhlIFVTQjMgVU5JUEhZCmluc3RlYWQgb2YgdGhlIFVUTUkgY2xv
Y2suCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRzaQo+IGluZGV4IDRjMTAxNmY1
MDU5ZTkuLmMyZDM4NGZhOWRmMTggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2lwcTUzMzIuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMy
LmR0c2kKPiBAQCAtNDg2LDEwICs0ODYsOCBAQCB1c2I6IHVzYkA4YTAwMDAwIHsKPiAgCQkJCQk8
JmdjYyBNQVNURVJfU05PQ19VU0IgJmdjYyBTTEFWRV9TTk9DX1VTQj47Cj4gIAkJCWludGVyY29u
bmVjdC1uYW1lcyA9ICJ1c2ItZGRyIiwgImFwcHMtdXNiIjsKPiAgCj4gLQkJCXBoeXMgPSA8JnVz
YnBoeTA+Owo+IC0JCQlwaHktbmFtZXMgPSAidXNiMi1waHkiOwo+IC0KPiAtCQkJcWNvbSxzZWxl
Y3QtdXRtaS1hcy1waXBlLWNsazsKPiArCQkJcGh5cyA9IDwmdXNicGh5MD4sIDwmdXNicGh5MT47
CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGludHJvZHVjZSBhIHJlZmVyZW5jZSB0byBhbiB1
bmRlZmluZWQgcGhhbmRsZSA8JnVzYnBoeTE+PyBJdAphcHBlYXJzIHRoaXMgbWlnaHQgYnJlYWsg
ZGV2aWNldHJlZSBjb21waWxhdGlvbiB3aXRoIGEgIlJlZmVyZW5jZSB0bwpub24tZXhpc3RlbnQg
bm9kZSBvciBsYWJlbCIgZXJyb3Igd2hlbiBidWlsZGluZyBhIGJvYXJkIHRoYXQgaW5jbHVkZXMK
dGhpcyBTb0MgLmR0c2kuCgo+ICsJCQlwaHktbmFtZXMgPSAidXNiMi1waHkiLCAidXNiMy1waHki
Owo+ICAKPiAgCQkJdHgtZmlmby1yZXNpemU7Cj4gIAkJCXNucHMsaXMtdXRtaS1sMS1zdXNwZW5k
OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgxMi1pcHE1MDE4LXVzYjMtdjItMC04ZjM1NWQ3ZmYwZWZAb3V0bG9vay5jb20/cGFy
dD0xMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
