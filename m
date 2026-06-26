Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2442DC43327
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCPl2KoYbPIl6bf6nCYQW/1lTJfC7r0WRbf4C9g88Is=; b=SdJ9Jco/LIx35t
	X+O4YGYQO4ioU81JQ7U1nbUazgnA3wAcQNLlWsf3kt8TlrRxvzb+tKjH0B7gPM1uDlLh99EKkPtGz
	bTBHMY7ZIUe5NbJiMysoG51sSrBKtkBLm2vHPNaDBkyoOSMx5QmV8MqdxZ1Ndu9f9Ilbg8N1ANoDi
	/lCuFnmZNZ1UHhEvwzWCOIPU8nqvQhjL/WqVj+JQilwDdvqrENUAMDm/cdtAHMHaYbf9bUB/vHRI1
	zcD4DttOsUjT7UtQ++BZbnsMUTqL4ROXHdIS7vFi7S7bBnfc1Ih6acK8z+kxvYN6GmKw1Uf9HZsxl
	FsA5BFGJF2BKITA58CwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDuU-0000000BtiN-3id3;
	Fri, 26 Jun 2026 21:16:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDuT-0000000Bthv-30t5
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:16:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2DDA1600AA;
	Fri, 26 Jun 2026 21:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B06A1F00A3A;
	Fri, 26 Jun 2026 21:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508584;
	bh=KmTa9EWFcjjs/UzPD8dR70INSTu++99OmYLpPcfybYM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NP7SHClvdT3HEvWwt5zxzgx7b0RMNIQKW23poSBlsG3pUj7/6o2Dt7pCpxyHj5kMN
	 jXDlIz/DsZ3gDs5VFNJB73bMCgkEDGX6eSxiPSaaUX2sQvYOsZ7Sse1br1d475V2n+
	 IAbnBNceviyUL4Sw3ebnHmMoMqC9QCkPJNQbWDvA9EEkibS4bSL2lbNoL7uxTsU4Qa
	 za216jPtOOceGg1UwJfZWk9HHTGroQ+cXPalnPhJZDqx47cCX/08yJRpGcNuUMNo4L
	 Qg6BC3Sv3ZE6wtZcdMjK7Dt4IbY5MY4cL5UGY7PpgBuyB0eYSinR0vrENWXmCGd5VS
	 HV4EIsCt0W3UA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 06/29] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-6-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-6-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:16:23 +0000
Message-Id: <20260626211624.5B06A1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWxs
eSBkaXNhYmxpbmcgdGhlIGFjdGl2ZSBEUCBQSFkgd2hpbGUgdGhlIHVwc3RyZWFtIGRpc3BsYXkg
Y29udHJvbGxlciBpcyBzdGlsbCBzdHJlYW1pbmcgZGF0YSBjYXVzZXMgYW4gQVhJIGJ1cyBzdGFs
bCBhbmQgc3lzdGVtIGhhbmcgb24gUm9ja2NoaXAgU29Dcy4KLSBbSGlnaF0gRm9yY2luZyBEUCBI
UEQgdG8gZGlzY29ubmVjdGVkIGR1cmluZyBwcm9iZSBwZXJtYW5lbnRseSBicmVha3MgZml4ZWQg
ZURQL0RQIGRpc3BsYXlzLgotLQoKY29tbWl0IDMxYWRkZDBhOWZmNjY2NzkxNmUxYTQwY2E3M2Qw
NjFhYmFiYTg1ODMKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxA
Y29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIHNlYW1sZXNzIERQIHRh
a2VvdmVyCgpUaGlzIGNvbW1pdCBkcm9wcyBzdXBwb3J0IGZvciBzZWFtbGVzcyBEUCB0YWtlb3Zl
ciBmcm9tIHRoZSBib290bG9hZGVyLiBJZiBhCnByZS1lbmFibGVkIERQIFBIWSBpcyBkZXRlY3Rl
ZCwgaXQgbG9ncyBhIHdhcm5pbmcsIGZvcmNlcyBIUEQgbG93LCBhbmQKdW5jb25kaXRpb25hbGx5
IGRpc2FibGVzIHRoZSBQSFkuCgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1w
aHkvMjAyNjA2MTIxNjQxMDcuQzdEQjIxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCAzZmM4MjIyZmNhZWMy
Li5mN2ZmNTVmMDNiN2NmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmMKPiBAQCAtOTM4LDEwICs5MzksMTIgQEAgc3RhdGljIGludCBya191ZHBoeV9nZXRf
aW5pdGlhbF9zdGF0dXMoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSkKPiAgCXJrX3VkcGh5X3Jlc2V0
X2RlYXNzZXJ0X2FsbCh1ZHBoeSk7Cj4gIAo+ICAJcmVnbWFwX3JlYWQodWRwaHktPnBtYV9yZWdt
YXAsIENNTl9MQU5FX01VWF9BTkRfRU5fT0ZGU0VULCAmdmFsdWUpOwo+IC0JaWYgKEZJRUxEX0dF
VChDTU5fRFBfTEFORV9NVVhfQUxMLCB2YWx1ZSkgJiYgRklFTERfR0VUKENNTl9EUF9MQU5FX0VO
X0FMTCwgdmFsdWUpKQo+IC0JCXVkcGh5LT5zdGF0dXMgPSBVRFBIWV9NT0RFX0RQOwo+IC0JZWxz
ZQo+IC0JCXJrX3VkcGh5X2Rpc2FibGUodWRwaHkpOwo+ICsJaWYgKEZJRUxEX0dFVChDTU5fRFBf
TEFORV9NVVhfQUxMLCB2YWx1ZSkgJiYgRklFTERfR0VUKENNTl9EUF9MQU5FX0VOX0FMTCwgdmFs
dWUpKSB7Cj4gKwkJZGV2X2luZm8odWRwaHktPmRldiwgIlN0YXJ0ZWQgd2l0aCBEUCBQSFkgcHJl
LWVuYWJsZWQ7IHNlYW1sZXNzIHRha2VvdmVyIHVuc3VwcG9ydGVkXG4iKTsKPiArCQlya191ZHBo
eV9ncmZyZWdfd3JpdGUodWRwaHktPnZvZ3JmLCAmY2ZnLT52b2dyZmNmZ1t1ZHBoeS0+aWRdLmhw
ZF90cmlnZ2VyLCBmYWxzZSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldpbGwgZm9yY2luZyBIUEQgbG93
IGhlcmUgcGVybWFuZW50bHkgYnJlYWsgZml4ZWQgZURQIG9yIERQIGRpc3BsYXlzPwoKV2hpbGUg
dGhpcyBwdWxscyBIUEQgbG93IHRvIHNpZ25hbCBhIGRpc2Nvbm5lY3QsIGZpeGVkIGVEUC9EUCBi
b2FyZHMgZG8gbm90CnVzZSBUeXBlLUMgbXV4ZXMgYW5kIHdpbGwgbmV2ZXIgdHJpZ2dlciBhIHJl
LWFzc2VydGlvbiB2aWEgVHlwZS1DIGV2ZW50cy4KU2luY2UgdGhlIHVwc3RyZWFtIERQIGNvbnRy
b2xsZXIgZHJpdmVyIGRvZXMgbm90IGtub3cgYWJvdXQgdGhlIFZPIEdSRgpvdmVycmlkZSwgdGhl
IEhQRCBzaWduYWwgcmVtYWlucyBwZXJtYW5lbnRseSBmb3JjZWQgbG93LCBhbmQgdGhlIGRpc3Bs
YXkKd2lsbCBiZSBzZWVuIGFzIGRpc2Nvbm5lY3RlZCBieSB0aGUga2VybmVsLgoKPiArCX0KPiAr
Cj4gKwlya191ZHBoeV9kaXNhYmxlKHVkcGh5KTsKCltTZXZlcml0eTogSGlnaF0KQ291bGQgY2Fs
bGluZyBya191ZHBoeV9kaXNhYmxlKCkgc3luY2hyb25vdXNseSByaWdodCBhZnRlciBmb3JjaW5n
IEhQRCBsb3cKdHJpZ2dlciBhbiBBWEkgYnVzIHN0YWxsPwoKSWYgdGhlIERQIFBIWSB3YXMgbGVm
dCBlbmFibGVkIGJ5IHRoZSBib290bG9hZGVyLCB0aGUgdXBzdHJlYW0gZGlzcGxheQpjb250cm9s
bGVyIChWT1ApIG1pZ2h0IHN0aWxsIGJlIGFjdGl2ZWx5IGlzc3VpbmcgQVhJL0FIQiB0cmFuc2Fj
dGlvbnMgdG8gdGhlClBIWS4gCgpUaGUgSFBEIHN0YXRlIGNoYW5nZSB2aWEgR1JGIGlzIGFzeW5j
aHJvbm91cywgYnV0IHRoaXMgZGlzYWJsZXMgdGhlIFBIWSBjbG9ja3MKaW1tZWRpYXRlbHkgb24g
dGhlIHZlcnkgbmV4dCBsaW5lLiBSZW1vdmluZyB0aGUgY2xvY2sgZnJvbSBhbiBhY3RpdmUgQVhJ
IHNsYXZlCm9mdGVuIGNhdXNlcyB0aGUgYnVzIHRvIHN0YWxsIGluZGVmaW5pdGVseSwgcmVzdWx0
aW5nIGluIGEgaGFyZCBzeXN0ZW0gZnJlZXplLgoKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDYyNi1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY4LTAtNDdmNjgyOTg3ODk1QGNvbGxhYm9yYS5j
b20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
