Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B4D9C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 10:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZ9WDKLG6UWwXhVEj70NjCMntAHvm29J3JAcAPiO6pA=; b=lH8WzPDIMhcer9
	/wdPtkw/0KVVR3pilG8duQxmoHfqvnS5OUD5B4GYNxYSpBQI0y/rrgiyjU6hIuAaobdFy4Z37eeEU
	gg5nKYrcES1+Lq+Z7WQOWJjGtp27dOl5qmDkLJuukIY+TTbgG94UC5t4vd/Smz5DYMOMebqt6h6QJ
	G/j+PeKLlIqinyia3brqM80BjgFAQ7O6GNW9DrrzR99Y6WNVOQhTJEddLOGdqaf5e4iQdSgSm+CUw
	1BVZPprm760P6iio9xEiWMPDpoFg2i9y+PMq2zRrdCr8RpaNAmrZBtQgub/peuPNcwU+HcDEAAgKp
	fUKq92159zPCuvbcXOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh330-0000000EkP2-0hKF;
	Tue, 07 Jul 2026 10:29:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh32y-0000000EkOh-200T
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 10:29:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E103B43832;
	Tue,  7 Jul 2026 10:28:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78A4B1F000E9;
	Tue,  7 Jul 2026 10:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783420139;
	bh=S3MOR6cr4pT1A75WiThoy4orHMTwaAcsjj66WetfWAY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AUBMRhLKTeVZXZT1PdsdhQTJcL/xU2FueJYZ+QkGPh+KivPkIUygc3I//lySgWEnh
	 BrE+oC0SvpRuSMdclGKilAsCOc8JUQDmSc4n5Z1oLjY4mp2i1mru6r8Dq2h+JO2CpO
	 vINTZIv4s38H+y7coykPC5vISHsEsQVp2LdvDDzbbpTX7AFipYQBBabG9/WncF8m1M
	 K7f08KOeymbMs7rW/D31uVsn2fQDY7DJpR1+nr59DQAc50fVPa7l1/+FF9vY/gBXj2
	 3N8dKo+pHc76EgvO8AHSl5ZitYvE4V7uO0icfqZsABF9wI4khch5Vaol2M0uP0Fr+l
	 ZtaEYfMjQwoCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 01/12] spmi: Fix potential use-after-free by
 grabbing of_node reference
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260707101821.173319-2-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-2-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 10:28:59 +0000
Message-Id: <20260707102859.78A4B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIG9m
IGRldmljZV9ub2RlIHJlZmVyZW5jZSBpbiB0aGUgZXJyb3IgcGF0aCBvZiBvZl9zcG1pX3JlZ2lz
dGVyX2RldmljZXMoKSB3aGVuIHNwbWlfZGV2aWNlX2FkZCgpIGZhaWxzLgotLQoKLS0tIFBhdGNo
IFsxXTogW1BBVENIIHYxMSAwMS8xMl0gc3BtaTogRml4IHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJl
ZSBieSBncmFiYmluZyBvZl9ub2RlIHJlZmVyZW5jZSAtLS0KY29tbWl0IGU3NWM0N2FhOGMxZjJm
NzIwZDJmYmQxZTVmMTZhMGQyODhkODhiZGIKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKc3BtaTogRml4
IHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJlZSBieSBncmFiYmluZyBvZl9ub2RlIHJlZmVyZW5jZQoK
VGhpcyBjb21taXQgaW5jcmVhc2VzIHRoZSBvZl9ub2RlIHJlZmNvdW50IHdoZW4gYXNzaWduaW5n
IGEgbm9kZSB0byBhCm5ld2x5IGNyZWF0ZWQgU1BNSSBjaGlsZCBkZXZpY2UgaW4gb2Zfc3BtaV9y
ZWdpc3Rlcl9kZXZpY2VzKCkuIEl0IGFsc28KcmVsZWFzZXMgdGhlIHJlZmVyZW5jZSBpbiBzcG1p
X2Rldl9yZWxlYXNlKCkgdG8gYXZvaWQgYSB1c2UtYWZ0ZXItZnJlZQp3aGVuIGFuIG92ZXJsYXkg
aXMgZHluYW1pY2FsbHkgdW5sb2FkZWQuCgpGaXhlczogYmMzMmJiZDA0MDExICgic3BtaTogU2V0
IGZ3bm9kZSBmb3Igc3BtaSBkZXZpY2VzIikKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKUmVw
b3J0ZWQtYnk6IFNhc2hpa28gQm90IDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPgpDbG9zZXM6IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYwODEwMDk0OS4zNjMwOS0xLWFuZ2Vs
b2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTIKCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3BtaS9zcG1pLmMgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gaW5kZXggNTdiN2Mw
Y2I0MjQwNy4uMjkzZTFhZGRkY2Q3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwbWkvc3BtaS5j
Cj4gKysrIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+IEBAIC0yNCw2ICsyNCw5IEBAIHN0YXRpYyB2
b2lkIHNwbWlfZGV2X3JlbGVhc2Uoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3Qg
c3BtaV9kZXZpY2UgKnNkZXYgPSB0b19zcG1pX2RldmljZShkZXYpOwo+ICAKPiArCWlmIChJU19F
TkFCTEVEKENPTkZJR19PRikpCj4gKwkJb2Zfbm9kZV9wdXQoZGV2LT5vZl9ub2RlKTsKPiArCj4g
IAlrZnJlZShzZGV2KTsKPiAgfQo+ICAKClsgLi4uIF0KCj4gQEAgLTUxNywxMyArNTIwLDE0IEBA
IHN0YXRpYyB2b2lkIG9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcyhzdHJ1Y3Qgc3BtaV9jb250cm9s
bGVyICpjdHJsKQo+ICAJCWlmICghc2RldikKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCWRldmlj
ZV9zZXRfbm9kZSgmc2Rldi0+ZGV2LCBvZl9md25vZGVfaGFuZGxlKG5vZGUpKTsKPiArCQlkZXZp
Y2Vfc2V0X25vZGUoJnNkZXYtPmRldiwgb2ZfZndub2RlX2hhbmRsZShvZl9ub2RlX2dldChub2Rl
KSkpOwo+ICAJCXNkZXYtPnVzaWQgPSAodTgpcmVnWzBdOwo+ICAKPiAgCQllcnIgPSBzcG1pX2Rl
dmljZV9hZGQoc2Rldik7Cj4gIAkJaWYgKGVycikgewo+ICAJCQlkZXZfZXJyKCZzZGV2LT5kZXYs
Cj4gIAkJCQkiZmFpbHVyZSBhZGRpbmcgZGV2aWNlLiBzdGF0dXMgJWRcbiIsIGVycik7Cj4gIAkJ
CW9mX25vZGVfcHV0KG5vZGUpOwo+ICAJCQlzcG1pX2RldmljZV9wdXQoc2Rldik7CgpbU2V2ZXJp
dHk6IEhpZ2hdCkRvZXMgdGhpcyBlcnJvciBwYXRoIHRyaWdnZXIgYSBkb3VibGUtZnJlZSBvZiB0
aGUgZGV2aWNlIG5vZGUgcmVmZXJlbmNlPwoKU2luY2UgdGhlIHBhdGNoIG1vZGlmaWVzIHNwbWlf
ZGV2X3JlbGVhc2UoKSB0byB1bmNvbmRpdGlvbmFsbHkgZHJvcCB0aGUKbm9kZSByZWZlcmVuY2Ug
ZHVyaW5nIGRldmljZSBkZXN0cnVjdGlvbiwgc3BtaV9kZXZpY2VfcHV0KHNkZXYpIHdpbGwgbm93
CmNhbGwgb2Zfbm9kZV9wdXQoKSBhcyB3ZWxsLgoKV2l0aCB0aGUgZXhwbGljaXQgb2Zfbm9kZV9w
dXQobm9kZSkgcmVtYWluaW5nIHJpZ2h0IGJlZm9yZSAKc3BtaV9kZXZpY2VfcHV0KHNkZXYpLCBp
dCBhcHBlYXJzIHRoZSByZWZlcmVuY2Ugd2lsbCBiZSBkcm9wcGVkIHR3aWNlIHdoZW4Kc3BtaV9k
ZXZpY2VfYWRkKCkgZmFpbHM6Cgpkcml2ZXJzL3NwbWkvc3BtaS5jOm9mX3NwbWlfcmVnaXN0ZXJf
ZGV2aWNlcygpIHsKICAgIC4uLgoJCWlmIChlcnIpIHsKCQkJZGV2X2Vycigmc2Rldi0+ZGV2LAoJ
CQkJImZhaWx1cmUgYWRkaW5nIGRldmljZS4gc3RhdHVzICVkXG4iLCBlcnIpOwoJCQlvZl9ub2Rl
X3B1dChub2RlKTsgICAgICAgICAgPC0tIEZpcnN0IGRyb3AKCQkJc3BtaV9kZXZpY2VfcHV0KHNk
ZXYpOyAgICAgIDwtLSBTZWNvbmQgZHJvcCAodmlhIHNwbWlfZGV2X3JlbGVhc2UpCgkJfQp9CgpD
b3VsZCB0aGlzIGxlYWQgdG8gYW4gdW5kZXJmbG93IHdoZW4gdGhlIGxvb3AgaXRlcmF0b3IgbWFj
cm8gYXV0b21hdGljYWxseQpkcm9wcyB0aGUgcmVmZXJlbmNlIGEgdGhpcmQgdGltZSBhdCB0aGUg
ZW5kIG9mIHRoZSBpdGVyYXRpb24/Cgo+ICAJCX0KPiAgCX0KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxMDE4MjEuMTczMzE5
LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
