Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6863606A339
	for <linux-phy@archiver.kernel.org>; Sun,  8 Nov 2026 15:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IVkAUB1G;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AzxNPZd3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=W8PdgcsWDIxEdmiC23x7o6l0WDqHNN2zzFmitJCV5Lk=; b=IVkAUB1GjIF6M4+BKuf4sceOlE
	EVuA312olnDD0lreMS1yZyZ5J5OQk4r9FzfbrtHBZDh3xYOnIdSoQk0Pr/30+t5xNqHwR1BeYWvq5
	q/G2H2KkCItXeZ2ygvsl+Piejb9n3wV+qCHPlQk1BDcn4TdXXvZYEtSkyHa347CyaD1LTzaWCcDLP
	maJdbLiANpW/IZ25wbxKgwsujRgByj3PlOGuQBI4TXzon6Tu2xQnw+ja8onUQd9e1CN/CcWtFiJdP
	ZnZsgkL/9kCpgfgtwvA0JPciqQwzOIPBs5bHAksXG/lzmT9xycOfj4PqKcA3aUNBkclN08PZacfit
	x8+OUWkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ5GJ-0000000GMtq-23Am;
	Sun, 08 Nov 2026 15:56:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ5GH-0000000GMtL-24RD
	for linux-phy@lists.infradead.org;
	Sun, 08 Nov 2026 15:56:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BE1660A75;
	Sun,  8 Nov 2026 15:56:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D847A1F008A1;
	Sun,  8 Nov 2026 15:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794153412;
	bh=iFumVZw/KTs0udQHVgqzZMBcP5AsfpB1o8cnS5VmbTM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AzxNPZd3KoZXc+lHrwK2QfO+/5naa/QymHOjVXqasnqTBq7hsdXM5LsYPUt4zTDOn
	 Z/6ADgXQuNQuEcPutOgTZ9dRjepo1cTxi5LyeNfnvgeCYhlF7r+2+48dQpaCYrZRzK
	 m/PXWmaBaqSUuE2G0jzbv+UpXf/GDitniZsTR2q7MdGw4rzSwi2RB2hHCe/mMVqrfK
	 7t2d+JY2qLUXWPH1OLJqJeKldjjrrAIkxouQopDm+1UDaaIuYn16dXdxdPoYvpv5QL
	 8pgTRFHLpm8dVksjz8d/Uj+xHllViOcOHeN1Z7p56Cl+aTuy62/LdKONbKI7A5c6qM
	 xpXxWjUp2nz3w==
Message-ID: <sashiko-outbox-203866@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] phy: apple: atc: Add initial M3 series support
To: "Sasha Finkelstein" <k@chaosmail.tech>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
References: <20261108-t8122-phy-v1-0-c2783b2a53a8@chaosmail.tech>
 <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
Date: Sun, 08 Nov 2026 15:56:51 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIHBoeTogYXBwbGU6IGF0
YzogbWlzc2luZyBwb3dlciBvZmYgb24gUkNBTDEgdGltZW91dCBpbgogIGF0Y3BoeV9jb25maWd1
cmUoKQotIFtMb3ddIHBoeTogYXBwbGU6IGF0YzogbWlzc2luZyBAaHcga2VybmVsLWRvYyBlbnRy
eSBpbiBzdHJ1Y3QKICBhcHBsZV9hdGNwaHkKLS0KCmNvbW1pdCA3MGU4MTg2NDllNWIxZGMwMDQ1
OTRjNzJhNjAxMmJlNGJkOGNmMzY5CkF1dGhvcjogU2FzaGEgRmlua2Vsc3RlaW4gPGtAY2hhb3Nt
YWlsLnRlY2g+CgpwaHk6IGFwcGxlOiBhdGM6IEFkZCBpbml0aWFsIE0zIHNlcmllcyBzdXBwb3J0
CgpUaGlzIGNvbW1pdCBhZGRzIGluaXRpYWwgVVNCIGFuZCBUaHVuZGVyYm9sdCBQSFkgc3VwcG9y
dCBmb3IgdGhlIEFwcGxlCk0zIHNlcmllcyAodDgxMjIpLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvYXBwbGUvYXRjLmMgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IGluZGV4IDQ1ZjEy
ODBhNmZhYTMuLjI1NmEwODQ5OTY0NjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYXBwbGUv
YXRjLmMKPiArKysgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwoKWyAuLi4gXQoKPiBAQCAtNTk5
LDkgKzY0NywxMCBAQCBzdHJ1Y3QgYXBwbGVfYXRjcGh5IHsKPiAgCQlzdHJ1Y3QgYXBwbGVfdHVu
YWJsZSAqbGFuZV91c2I0WzJdOwo+ICAJfSB0dW5hYmxlczsKPiAgCj4gKwljb25zdCBzdHJ1Y3Qg
YXRjcGh5X2h3ICpodzsKPiAgCWVudW0gYXRjcGh5X21vZGUgbW9kZTsKPiAtCWJvb2wgc3dhcF9s
YW5lczsKPiAgCWludCBkcF9saW5rX3JhdGU7Cj4gKwlib29sIHN3YXBfbGFuZXM7Cj4gIAlib29s
IHBpcGVoYW5kbGVyX3VwOwo+ICAKPiAgCXN0cnVjdCB7CgpbU2V2ZXJpdHk6IExvd10Kc3RydWN0
IGFwcGxlX2F0Y3BoeSBoYXMgYSBrZXJuZWwtZG9jIGNvbW1lbnQgYmxvY2ssIHNvIGFkZGluZyBo
dyB3aXRob3V0CmEgbWF0Y2hpbmcgQGh3IGVudHJ5IHRyaWdnZXJzIGEgVz0xIGtlcm5lbC1kb2Mg
d2FybmluZyAoYW5kIGxhdGVyIGNvbW1pdAoicGh5OiBhcHBsZTogYXRjOiBBZGQgVDgxMjIgRGlz
cGxheVBvcnQgc3VwcG9ydCIgYWxzbyBsZWF2ZXMgQGh3CnVuZG9jdW1lbnRlZCkuCgpbIC4uLiBd
Cgo+ICtzdGF0aWMgaW50IGF0Y3BoeV9jb25maWd1cmUoc3RydWN0IGFwcGxlX2F0Y3BoeSAqYXRj
cGh5LCBlbnVtIGF0Y3BoeV9tb2RlIG1vZGUpCj4gK3sKPiArCWludCByZXQgPSAwOwo+ICsJdTMy
IHJlZzsKPiArCj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZhdGNwaHktPmxvY2spOwo+ICsKPiAr
CWlmIChtb2RlID09IEFQUExFX0FUQ1BIWV9NT0RFX09GRikgewo+ICsJCXJldCA9IGF0Y3BoeV9w
b3dlcl9vZmYoYXRjcGh5KTsKPiArCQlhdGNwaHktPm1vZGUgPSBtb2RlOwo+ICsJCXJldHVybiBy
ZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gYXRjcGh5X3Bvd2VyX29uKGF0Y3BoeSk7Cj4gKwlpZiAo
cmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJYXRjcGh5X2FwcGx5X3R1bmFibGVzKGF0Y3Bo
eSwgbW9kZSk7Cj4gKwlhdGNwaHktPmh3LT5jb25maWd1cmVfcG9zdF90dW5hYmxlKGF0Y3BoeSwg
bW9kZSk7Cj4gIAo+ICAJLyogU2V0dXAgQVVYIGNoYW5uZWwgaWYgRFAgYWx0bW9kZSBpcyByZXF1
ZXN0ZWQgKi8KPiAgCWlmIChhdGNwaHlfbW9kZXNbbW9kZV0uZW5hYmxlX2RwX2F1eCkKPiAgCQlh
dGNwaHlfZW5hYmxlX2RwX2F1eChhdGNwaHkpOwo+ICAKPiAgCS8qIEVuYWJsZSBjbG9ja3MgYW5k
IGNvbmZpZ3VyZSBsYW5lcyAqLwo+IC0JY29yZV9zZXQzMihhdGNwaHksIENJTzNQTExfQ0xLX0NU
UkwsIENJTzNQTExfQ0xLX1BDTEtfRU4pOwo+IC0JY29yZV9zZXQzMihhdGNwaHksIENJTzNQTExf
Q0xLX0NUUkwsIENJTzNQTExfQ0xLX1JFRkNMS19FTik7Cj4gKwlpZiAoYXRjcGh5LT5ody0+Z2Vu
ID09IEFUQ1BIWV9HRU5FUkFUSU9OX1Q4MTAzKSB7Cj4gKwkJY29yZV9zZXQzMihhdGNwaHksIENJ
TzNQTExfQ0xLX0NUUkwsIENJTzNQTExfQ0xLX1BDTEtfRU4pOwo+ICsJCWNvcmVfc2V0MzIoYXRj
cGh5LCBDSU8zUExMX0NMS19DVFJMLCBDSU8zUExMX0NMS19SRUZDTEtfRU4pOwo+ICsJfQo+ICAJ
YXRjcGh5X2NvbmZpZ3VyZV9sYW5lcyhhdGNwaHksIG1vZGUpOwo+ICAKPiAgCS8qIFRha2UgdGhl
IFVTQjMgUEhZIG91dCBvZiByZXNldCAqLwo+ICAJY29yZV9zZXQzMihhdGNwaHksIEFUQ1BIWV9Q
T1dFUl9DVFJMLCBBVENQSFlfUE9XRVJfUEhZX1JFU0VUX04pOwo+ICsJLyoKPiArCSAqIE5PVEU6
IE5vdCB3aGF0IG1hY29zIGRvZXMsIGl0IHRha2VzIHRoZSBwaHkgb3V0IG9mIHJlc2V0IHJpZ2h0
IGJlZm9yZSB3cml0aW5nIHRvCj4gKwkgKiBBQ0lPUEhZX0NGRzBfQ09NTU9OX1NNQUxMIGRvZXMg
bGFuZSBjb25maWd1cmF0aW9uIHdpdGggcGh5IG91dCBvZiByZXNldCwgYW5kIHRoZSBwb2xsIGlz
Cj4gKwkgKiByaWdodCBhZnRlciBBVVNfQ09NTU9OX1NISU1fQkxLX0JJQVNfUkVHIHdyaXRlLiBE
b2VzIG5vdCBzZWVtIHRvIG1hdHRlciwgYnV0IGlmIHNvbWV0aGluZwo+ICsJICogZG9lcyBub3Qg
d29yaywgY29uc2lkZXIgcmUtb3JkZXJpbmcgdGhpbmdzIHRvIG1hY29zIG9yZGVyLgo+ICsJICov
Cj4gKwlpZiAoYXRjcGh5LT5ody0+Z2VuID09IEFUQ1BIWV9HRU5FUkFUSU9OX1Q4MTIyICYmCj4g
KwkgICAgYXRjcGh5X21vZGVzW21vZGVdLnBpcGVoYW5kbGVyX3N0YXRlID09IEFUQ1BIWV9QSVBF
SEFORExFUl9TVEFURV9VU0IzKSB7Cj4gKwkJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGF0Y3Bo
eS0+cmVncy5jb3JlICsgQVVTX0NPTU1PTl9ESUdfUkNBTDEsIHJlZywKPiArCQkJCQkgKHJlZyAm
IEFVU19DT01NT05fRElHX1JDQUwxX0FMTF9DT0RFU19ET05FKSwgMTAsIDEwMDAwMCk7Cj4gKwkJ
aWYgKHJldCkgewo+ICsJCQlkZXZfZXJyKGF0Y3BoeS0+ZGV2LCAiRmFpbGVkIHRvIHdhaXQgZm9y
IFJDQUwxIGRvbmVcbiIpOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KCltTZXZlcml0
eTogTWVkaXVtXQpTaG91bGQgdGhpcyBlcnJvciBwYXRoIGNhbGwgYXRjcGh5X3Bvd2VyX29mZihh
dGNwaHkpIGJlZm9yZSByZXR1cm5pbmc/CgpXaGVuIHJlYWRsX3BvbGxfdGltZW91dCgpIGZhaWxz
IGhlcmUsIHRoZSBQSFkgaGFzIGFscmVhZHkgYmVlbiBwb3dlcmVkCm9uIGFuZCB0YWtlbiBvdXQg
b2YgcmVzZXQgKEFUQ1BIWV9QT1dFUl9QSFlfUkVTRVRfTiksIHdoaWxlIGF0Y3BoeS0+bW9kZQpy
ZW1haW5zIEFQUExFX0FUQ1BIWV9NT0RFX09GRi4gIEJlY2F1c2UgdGVhcmRvd24gaW4KYXRjcGh5
X3VzYjNfcG93ZXJfb2ZmKCkgYW5kIGF0Y3BoeV9tdXhfc2V0KCkgKGZvciBUWVBFQ19TVEFURV9T
QUZFKSBvbmx5CnBvd2VycyBkb3duIHRoZSBQSFkgd2hlbiBhdGNwaHktPm1vZGUgIT0gQVBQTEVf
QVRDUEhZX01PREVfT0ZGLCB0aGUgUEhZCmFuZCBEUCBBVVggc3RheSBwb3dlcmVkIG9uIGFmdGVy
IGRpc2Nvbm5lY3QgYW5kIEFUQ1BIWV9QT1dFUl9QSFlfUkVTRVRfTgpyZW1haW5zIGRlYXNzZXJ0
ZWQgd2hlbiB0dW5hYmxlcyBhcmUgYXBwbGllZCBvbiB0aGUgbmV4dCBjb25uZWN0aW9uLgoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MTEwOC10ODEyMi1waHktdjEtMC1jMjc4M2IyYTUzYThAY2hhb3NtYWlsLnRlY2g/cGFydD0zCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
