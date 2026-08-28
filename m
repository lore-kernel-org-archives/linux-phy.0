Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97327C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0irvYzWMbDwyNJbtd2sGPORHed2JeScuQBG6LCD79ek=; b=0n7lMXpuud5jl+
	1DUv8n5ILnZyk31TfNA7hzutFp5ITbRkCOVYOVZvbjQmqGytVYfi8ucZz8adYawRaw+37i/ItG193
	S/j04NxPT0hoL/+ffoYCIUFJrEtQECZUevJO0f3o2GFQTDZ98FvQBnvKJVRXDYDUakRlaWcDcUlW+
	79I5mDwC0iIblM8Iwt+CtubPHrabM32ewe+ePnS/Lk2zBfi7ItyT0StEuhmnqnii229OJUQmBNOCL
	iMtYAwKKvA8mYWsBjlR78HJXdy3jxRpT7dwmoigI3gneygTOdfKXymAsaP+biPZJepRFh4iqk5l2Y
	i04sIpwABWARARn+ICIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxTK-00000005yG7-36BT;
	Fri, 28 Aug 2026 14:22:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxTJ-00000005yFi-2Rp3
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:22:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 21BED4165D;
	Fri, 28 Aug 2026 14:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB61C1F000E9;
	Fri, 28 Aug 2026 14:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787926941;
	bh=F9R/jw6fYGhp1qHHGXXhrB4PiqZq9JvnVHSFVZEmj60=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dDVw5G315pwn0fGWL6AsIMRtMdil0F89XAJbS0Dz03fjldMTlf09yMSsbjG1yk3B0
	 5FKHszYwjjo87qz2ZraeG1AuJJjHJCuNNlWEoYEPciEpn8j3D4jwhoHVHrUEmLPdkF
	 Usm2FkJ/ZSbstnkYDdaO8q6Z7zRx+iAiqF11DpMOeyAw3+p6kReQTsU7iT6BBZuRfz
	 A7uf8sGVbmBNJSfq5w1KRAWHu8mGxhBmtKZoJDXylPCwexWVnWYPvNfTkJ/OnRURSg
	 9xvywwUBPEYsuTodARQR87C5ZWGlNUkSEvTJT/GgNvr/Z6dGWdqTO0rb9t4vthmU2j
	 hCKEvxnT6ml+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC/DO NOT MERGE 09/12] drm/msm/hdmi: Add HDMI for Eliza
 SoC
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-9-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-9-67843277de17@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:22:20 +0000
Message-Id: <20260828142220.AB61C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBUTURTIHJhdGUg
dmFsaWRhdGlvbiBmb3IgcGxhdGZvcm1zIHdpdGggT1BQIHRhYmxlcyBhY2NlcHRzIGluZXhhY3Qg
cGl4ZWwgY2xvY2tzIGJ5IHNraXBwaW5nIGNsb2NrIHN5bnRoZXNpemFiaWxpdHkgY2hlY2tzLgot
LQoKY29tbWl0IGUyZTJkMTEyYzNmYTA0MjA2MDAxYjhhOWNjNTZhY2RkYTk5NWE3MzEKQXV0aG9y
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5j
b20+Cgpkcm0vbXNtL2hkbWk6IEFkZCBIRE1JIGZvciBFbGl6YSBTb0MKICAgIApUaGlzIGNvbW1p
dCBhZGRzIEhETUkgc3VwcG9ydCBmb3IgdGhlIFF1YWxjb21tIEVsaXphIFNvQyAoRFBVIHYxMi40
KS4gSXQKaW50cm9kdWNlcyBjb25maWd1cmF0aW9uIGZvciBJTlRGXzExIHdpdGggbmV3IGludGVy
cnVwdCByZWdpc3RlcnMgYW5kIGhhbmRsZXMKRWxpemEncyBkaXN0aW5jdCBjbG9jayBhbmQgcG93
ZXIgcmVxdWlyZW1lbnRzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9oZG1p
L2hkbWlfYnJpZGdlLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2hkbWkvaGRtaV9icmlkZ2UuYwo+
IGluZGV4IDE3ZTgxNjI4NTI1YTkuLmI1MzUzYTE2ODhkZGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9oZG1pL2hkbWlfYnJpZGdlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bXNtL2hkbWkvaGRtaV9icmlkZ2UuYwoKWyAuLi4gXQoKPiBAQCAtNDU5LDIxICs0OTAsNDcgQEAg
c3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzIG1zbV9oZG1pX2JyaWRnZV90bWRzX2NoYXJfcmF0
ZV92YWxpZChjb25zdCBzdHJ1Y3QgZHIKPiAgCSAqIG1kcDQvZHR2IHN0dWZmIHdoZXJlIHBpeGVs
IGNsayBpcyBhc3NpZ25lZCB0byBtZHAvZW5jb2Rlcgo+ICAJICogaW5zdGVhZCk6Cj4gIAkgKi8K
PiAtCWlmIChrbXMtPmZ1bmNzLT5yb3VuZF9waXhjbGspCj4gKwlpZiAoa21zLT5mdW5jcy0+cm91
bmRfcGl4Y2xrKSB7Cj4gIAkJYWN0dWFsID0ga21zLT5mdW5jcy0+cm91bmRfcGl4Y2xrKGttcywK
PiAgCQkJCQkJICB0bWRzX3JhdGUsCj4gIAkJCQkJCSAgaGRtaV9icmlkZ2UtPmhkbWktPmVuY29k
ZXIpOwo+IC0JZWxzZSBpZiAoaGRtaS0+ZXh0cF9jbGspCj4gLQkJYWN0dWFsID0gY2xrX3JvdW5k
X3JhdGUoaGRtaS0+ZXh0cF9jbGssIHRtZHNfcmF0ZSk7Cj4gLQllbHNlCj4gLQkJYWN0dWFsID0g
dG1kc19yYXRlOwo+IC0KPiAtCURCRygicmVxdWVzdGVkPSVsbGQsIGFjdHVhbD0lbGQiLCB0bWRz
X3JhdGUsIGFjdHVhbCk7Cj4gLQo+IC0JaWYgKGFjdHVhbCAhPSB0bWRzX3JhdGUpCj4gLQkJcmV0
dXJuIE1PREVfQ0xPQ0tfUkFOR0U7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gKwkJREJHKCJyZXF1ZXN0
ZWQ9JWxsZCwgYWN0dWFsPSVsZCIsIHRtZHNfcmF0ZSwgYWN0dWFsKTsKPiArCj4gKwkJaWYgKGFj
dHVhbCAhPSB0bWRzX3JhdGUpCj4gKwkJCXJldHVybiBNT0RFX0NMT0NLX1JBTkdFOwo+ICsJCXJl
dHVybiBNT0RFX09LOwo+ICsJfSBlbHNlIGlmICghZGV2X3BtX29wcF9nZXRfb3BwX2NvdW50KCZo
ZG1pLT5wZGV2LT5kZXYpKSB7Cj4gKwkJaWYgKGhkbWktPmV4dHBfY2xrKQo+ICsJCQlhY3R1YWwg
PSBjbGtfcm91bmRfcmF0ZShoZG1pLT5leHRwX2NsaywgdG1kc19yYXRlKTsKPiArCQllbHNlCj4g
KwkJCWFjdHVhbCA9IHRtZHNfcmF0ZTsKPiArCj4gKwkJaWYgKGFjdHVhbCAhPSB0bWRzX3JhdGUp
Cj4gKwkJCXJldHVybiBNT0RFX0NMT0NLX1JBTkdFOwo+ICsJCXJldHVybiBNT0RFX09LOwo+ICsJ
fSBlbHNlIHsKPiArCQlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOwo+ICsJCXVuc2lnbmVkIGxvbmcg
cGNsa19yYXRlID0gdG1kc19yYXRlOwo+ICsKPiArCQlpZiAobW9kZS0+Y2xvY2sgPiA2MDAwMDAp
Cj4gKwkJCXJldHVybiBNT0RFX0NMT0NLX0hJR0g7Cj4gKwo+ICsJCW9wcCA9IGRldl9wbV9vcHBf
ZmluZF9mcmVxX2NlaWwoJmhkbWktPnBkZXYtPmRldiwgJnBjbGtfcmF0ZSk7Cj4gKwkJaWYgKCFJ
U19FUlIob3BwKSkgewo+ICsJCQlkZXZfcG1fb3BwX3B1dChvcHApOwo+ICsJCX0gZWxzZSBpZiAo
UFRSX0VSUihvcHApID09IC1FUkFOR0UpIHsKPiArCQkJLyoKPiArCQkJICogQW4gZW1wdHkgdGFi
bGUgaXMgY3JlYXRlZCBieSBkZXZtX3BtX29wcF9zZXRfY2xrbmFtZSgpIGV2ZW4KPiArCQkJICog
aWYgdGhlcmUgaXMgbm9uZS4gVGh1cyBmaW5kX2ZyZXFfY2VpbCB3aWxsIHN0aWxsIHJldHVybgo+
ICsJCQkgKiAtRVJBTkdFIGluIHN1Y2ggY2FzZS4KPiArCQkJICovCj4gKwkJCXJldHVybiBNT0RF
X0NMT0NLX1JBTkdFOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCXJldHVybiBNT0RFX0VSUk9SOwo+ICsJ
CX0KPiArCj4gKwkJcmV0dXJuIE1PREVfT0s7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBi
eXBhc3MgY2xvY2sgc3ludGhlc2l6YWJpbGl0eSBjaGVja3MgZm9yIHBsYXRmb3JtcyB3aXRoIE9Q
UCB0YWJsZXM/CgpUaGUgVE1EUyByYXRlIHZhbGlkYXRpb24gaGVyZSBhY2NlcHRzIGluZXhhY3Qg
cGl4ZWwgY2xvY2tzIGJlY2F1c2UgaXQgc2tpcHMKdGhlIGV4YWN0IG1hdGNoIGNoZWNrIHRoYXQg
aXMgZW5mb3JjZWQgaW4gdGhlIG5vbi1PUFAgcGF0aDoKCglpZiAoaGRtaS0+ZXh0cF9jbGspCgkJ
YWN0dWFsID0gY2xrX3JvdW5kX3JhdGUoaGRtaS0+ZXh0cF9jbGssIHRtZHNfcmF0ZSk7CgkuLi4K
CWlmIChhY3R1YWwgIT0gdG1kc19yYXRlKQoJCXJldHVybiBNT0RFX0NMT0NLX1JBTkdFOwoKV2hl
biBtc21faGRtaV9icmlkZ2VfdG1kc19jaGFyX3JhdGVfdmFsaWQoKSBzZWFyY2hlcyBmb3IgYW4g
T1BQIGVudHJ5LCBpdAp1c2VzIGRldl9wbV9vcHBfZmluZF9mcmVxX2NlaWwoKSB3aGljaCBmaW5k
cyBhIGNlaWxpbmcgcmF0aGVyIHRoYW4gYW4gZXhhY3QKbWF0Y2guIEJlY2F1c2UgaXQgcmV0dXJu
cyBNT0RFX09LIHVuY29uZGl0aW9uYWxseSB1cG9uIGZpbmRpbmcgYSBjZWlsaW5nLAppdCBjYW4g
YWNjZXB0IGRpc3BsYXkgbW9kZXMgdGhhdCB0aGUgaGFyZHdhcmUgY2xvY2sgZ2VuZXJhdG9yIGNh
bm5vdApleGFjdGx5IHN5bnRoZXNpemUuCgpDb3VsZCB0aGlzIHJlc3VsdCBpbiBjb25maWd1cmlu
ZyBhbiBpbmFjY3VyYXRlIHBpeGVsIGNsb2NrIGZvciB0aGUgZGlzcGxheSwKbGVhZGluZyB0byBP
dXQgb2YgUmFuZ2UgZXJyb3JzIG9yIHZpc3VhbCBjb3JydXB0aW9uPwoKPiArCX0KPiAgfQoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDgyOC1kcm0tbXNtLWhkbWktZWxpemEtdjEtMC02Nzg0MzI3N2RlMTdAb3NzLnF1YWxjb21tLmNv
bT9wYXJ0PTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
