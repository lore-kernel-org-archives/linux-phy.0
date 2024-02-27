Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F6DC54798
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 18:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKa6hBGCByMSMjYo7x5SwiHc0DtH0OaLnhlgTsNfQpk=; b=qfKK9Sd2vEfFVQ
	AO8ZySX/YQ+OyF3K05w5bdmRfgG25vRl5f7MBzWXVA+KdWgQBM7JBVpSgjGKQR4zYxoIyttE4tHc6
	kMAAolUTXcQhspYJzAqgrX2lvopZOIjOEvSD002PF3oJS+m5G+dJdHUGvrPTRLE5HZlGNxpsFf50b
	jz4wdzDYybhUOsOFNYov8p7t/qb17xIh3vtZb3bfyieWbjb6C+l5O9eyq8uKUrj/ZUxLjamVhXj3O
	Bti/r9ZdzMHuyqUA3+r3oMbGBB1ch8EOQBn7h3IOyJbgpMn5IM7VogQk9hQKvE+9Xsnp+GNZb0MhK
	+ojLSrS6/FwtelvqsFMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf2Er-00000006SDB-2rLY;
	Tue, 27 Feb 2024 18:31:37 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf1BR-00000006BV8-2nLT;
	Tue, 27 Feb 2024 17:24:29 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B123D60003;
	Tue, 27 Feb 2024 17:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709054631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sl3yY0W8c5HJd45w2Vd535hfLRJOaX7Ck1Cj7Bauwxc=;
	b=XJOxg1siDRaJgIfy64860PCWq4wFV5cuCinGiDdOwRKiX6ANk4dFMOr6WfOJNhFT5AGfE9
	VMTvHBOM6oJR+7rYkkhDC6WHj3ZtnfRiN6kJqubVDYic5KDv2689jr8KNswAaPYxbxcRdd
	asKmhwLumJQj2RdBlxr5Qpo9RcIec+VDhW4WKUbLm0Y81D3FYRO9+jtyH6ugJI1hoo71Ag
	5zK2I1mZ7fcsPo2eka09VbAOmflI8GtvuX9hR+5MhmbaNS5NnDd2g+LkJq58p33//0SSrW
	3INvr9x8HcV6KbqqEMfe/JkiZo7d4Jd7FpFiCxvjC09wD5ezQiDNaQzySvVrPw==
Date: Tue, 27 Feb 2024 18:23:46 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Marek
 Vasut <marex@denx.de>, Kishon Vijay Abraham I <kishon@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Will Deacon
 <will@kernel.org>, Rob Herring <robh@kernel.org>, imx@lists.linux.dev,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconembedded.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH V6 5/6] arm64: dts: imx8mp: add HDMI display pipeline
Message-ID: <20240227182346.6e67cc88@booty>
In-Reply-To: <CAHCN7xKnEvrfYMZau95e7aknTkdqrQLfgWZTfb6mS3Yt5BT6+Q@mail.gmail.com>
References: <20240226234532.80114-1-aford173@gmail.com>
	<20240226234532.80114-6-aford173@gmail.com>
	<20240227083301.4saxxuv4n6aoqnl6@pengutronix.de>
	<CAHCN7xKnEvrfYMZau95e7aknTkdqrQLfgWZTfb6mS3Yt5BT6+Q@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_092402_672541_1A74FBA9 
X-CRM114-Status: GOOD (  25.72  )
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

T24gVHVlLCAyNyBGZWIgMjAyNCAwNzo1MTo1OCAtMDYwMApBZGFtIEZvcmQgPGFmb3JkMTczQGdt
YWlsLmNvbT4gd3JvdGU6Cgo+IE9uIFR1ZSwgRmViIDI3LCAyMDI0IGF0IDI6MzPigK9BTSBNYXJj
byBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+Cj4gPiBIaSBBZGFt
LAo+ID4KPiA+IHRoYW5rcyBhIGxvdCBmb3IgcHVzaGluZyB0aGlzIHRvcGljLgo+ID4KPiA+IE9u
IDI0LTAyLTI2LCBBZGFtIEZvcmQgd3JvdGU6ICAKPiA+ID4gRnJvbTogTHVjYXMgU3RhY2ggPGwu
c3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiA+Cj4gPiA+IFRoaXMgYWRkcyB0aGUgRFQgbm9kZXMg
Zm9yIGFsbCB0aGUgcGVyaXBoZXJhbHMgdGhhdCBtYWtlIHVwIHRoZQo+ID4gPiBIRE1JIGRpc3Bs
YXkgcGlwZWxpbmUuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0
YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3Jk
MTczQGdtYWlsLmNvbT4KPiA+ID4gVGVzdGVkLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT4KPiA+ID4gVGVzdGVkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4u
Y29tPgo+ID4gPiAtLS0KPiA+ID4gVjY6ICBNYWtlIExDRElGMyBkaXNhYmxlZCBieSBkZWZhdWx0
Cj4gPiA+Cj4gPiA+IFY1OiAgTm8gY2hhbmdlCj4gPiA+Cj4gPiA+IFYzOiAgUmUtb3JkZXJlZCB0
aGUgSERNSSBwYXJ0cyB0byBwcm9wZXJseSBjb21lIGFmdGVyIGlycXN0cmVlX2hkbWkKPiA+ID4g
ICAgICBpbnNpZGUgQUlQUzQuICBDaGFuZ2Ugc2l6ZSBvZiBMQ0RJRjMgYW5kIFBWSSB0byBtYXRj
aCBUUk0gc2l6ZXMKPiA+ID4gICAgICBvZiA0S0IuCj4gPiA+Cj4gPiA+IFYyOiAgSSB0b29rIHRo
aXMgZnJvbSBMdWNhcycgb3JpZ2luYWwgc3VibWlzc2lvbiB3aXRoIHRoZSBmb2xsb3dpbmc6Cj4g
PiA+ICAgICAgUmVtb3ZlZCBleHRyYSBjbG9jayBmcm9tIEhETUktVFggc2luY2UgaXQgaXMgbm93
IHBhcnQgb2YgdGhlCj4gPiA+ICAgICAgcG93ZXIgZG9tYWluCj4gPiA+ICAgICAgQWRkZWQgaW50
ZXJydXB0LXBhcmVudCB0byBQVkkKPiA+ID4gICAgICBDaGFuZ2VkIHRoZSBuYW1lIG9mIHRoZSBI
RE1JIHRyYW5taXR0ZXIgdG8gZnNsLGlteDhtcC1oZG1pLXR4Cj4gPiA+ICAgICAgQWRkZWQgcG9y
dHMgdG8gSERNSS10eAo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcC5kdHNpIHwgOTUgKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA5NSBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gPiA+IGluZGV4IDE4YmZhN2Q5YWE3Zi4uNjM3YjAy
NjViMGYxIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXAuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXAuZHRzaQo+ID4gPiBAQCAtMTk0MCw2ICsxOTQwLDEwMSBAQCBpcnFzdGVlcl9oZG1pOiBpbnRl
cnJ1cHQtY29udHJvbGxlckAzMmZjMjAwMCB7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrLW5hbWVzID0gImlwZyI7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JmhkbWlfYmxrX2N0cmwgSU1YOE1QX0hETUlCTEtfUERf
SVJRU1RFRVI+Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgaGRtaV9wdmk6IGRpc3BsYXktYnJpZGdlQDMyZmM0MDAwIHsK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14
OG1wLWhkbWktcHZpIjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0g
PDB4MzJmYzQwMDAgMHgxMDAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW50ZXJydXB0LXBhcmVudCA9IDwmaXJxc3RlZXJfaGRtaT47Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8MTI+Owo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZoZG1pX2Jsa19jdHJsIElNWDhNUF9IRE1J
QkxLX1BEX1BWST47ICAKPiA+Cj4gPiB0aGlzIG5vZGUgc2hvdWxkIGJlICdzdGF0dXMgPSAiZGlz
YWJsZWQiOycgYXMgcmVwb3J0ZWQgYnkgTHVjYSBlbHNlIHRoaXMKPiA+IG5vZGUgd2lsbCBFUFJP
QkVfREVGRVIuIFdpdGggdGhhdCBiZWVpbmcgZml4ZWQgeW91IGNhbiBhZGQgbXk6ICAKPiAKPiBz
b3JyeSBJIG1pc3NlZCB0aGF0IG9uZS4uLmFuZCBJIHRob3VnaCBJIHdhcyBkb25lLi4uc2lnaC4g
IEkgaG9wZSBpdCdzCj4gbm90IHRvbyBsYXRlIHRvIGdldCB0aGlzIGludG8gdGhlIG5leHQgcmVs
ZWFzZS4KPiA+Cj4gPiBUZXN0ZWQtYnk6IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9u
aXguZGU+Cj4gPiAgCj4gCj4gSSdsbCBwdXNoIGEgVjcgdG9uaWdodCBhbmQgYWRkIHlvdXIgdGVz
dGVkLWJ5LiAgVGhhbmtzIGZvciB0ZXN0aW5nLgoKQW5kIHdpdGggdGhhdCBmaXhlZCB5b3UgY2Fu
IGFkZCB0byB2NzoKCiBSZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBi
b290bGluLmNvbT4KCkx1Y2EKCi0tIApMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExp
bnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
