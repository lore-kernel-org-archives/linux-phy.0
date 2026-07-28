Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F57C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmHQGsahGegyc/wTkvnGIk5PCf1HTDdg+o03wC585ws=; b=FXxkWvu5juJYPo
	rMEetFdh1bFuvSmwY8wnqh9eWXCH0oCCoGdomP7ED/udfgMJD10GW5BzFGwsxK4nHid1i3ZqTyBye
	py26mhjbpmGSVlnnOnyPIOIZizBivhH6vAlPL0QuYHPO0soMWO6G7e6Y4ohWh0j9iV11UU/7kEMDJ
	lX+/qCqkbQaenoQAFom+sPDBQY+AYeplZRVafD7d8TBE111rv5FY9phBma3LYknhslQh/+0hkXmyB
	aXOX3dh4BI+hBhBHkIJejLB6aKcG+J7g7r7leW8x/mkW2Y3HWsuvggCBgdp7+UtnDlsEAT/teIbb1
	Nn2TqW5OGobPjbsCZLhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeOD-00000004rwl-2rwU;
	Tue, 28 Jul 2026 09:46:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeOC-00000004rwZ-3r6t
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:46:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4999060A8D;
	Tue, 28 Jul 2026 09:46:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 830C91F00A3A;
	Tue, 28 Jul 2026 09:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785231980;
	bh=e030KLhmFu+lNyOMh4TMHraDnfsl3heQ77IpJ9k4ncA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MEwnYkh+5F4aErKBJXRc/yPlftTSs59igb5z8Og+66gRp/h4pc6si6S3wK4AYFqnc
	 15FvTQ9okIGeTeIbsAN7dDGswlInDbT/PDGXFQR/uu7BWMXqX52z+6GsyJXxpNOK4g
	 vARoqEacbmN6wzK2uPuyaS/Q7XdrK63NBc1vCiH71tmGAex7jLIhN4Q5ZerSZBVkHD
	 IkhEBJg/4dMYn5pK5X+Izs/+cjv2GY8XVtOwYNQU7j9kzcDOR+3rCIsA0APTvBm7xs
	 5AFo47AQEu+Y/c2LKz3R6sgPIATcPmrdS/aZQ72/uF3geeT4/A5OqKtnO8k6kLnHMJ
	 XTpu7Th4QB9bg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 1/5] phy: core: Add phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, media-ci@linuxtv.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-1-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-1-ae811e2f0799@linaro.org>
Date: Tue, 28 Jul 2026 09:46:19 +0000
Message-Id: <20260728094619.830C91F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBU
aGUgbmV3bHkgaW50cm9kdWNlZCBwaHlfZ2V0X2J5X29mX25vZGUoKSBBUEkgYnlwYXNzZXMgdGhl
IHVzYi1ub3AteGNlaXYgY29tcGF0aWJpbGl0eSBjaGVjaywgbGVhZGluZyB0byBpbmZpbml0ZSBw
cm9iZSBkZWZlcnJhbC4KClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIEEgVGltZS1vZi1D
aGVjayB0byBUaW1lLW9mLVVzZSAoVE9DVE9VKSByYWNlIGNvbmRpdGlvbiBkdXJpbmcgUEhZIGxv
b2t1cCByZXR1cm5zIGFuIHVucGlubmVkIHBvaW50ZXIsIGFsbG93aW5nIGNvbmN1cnJlbnQgUEhZ
IGRlc3RydWN0aW9uIHRvIGNhdXNlIGEgVXNlLUFmdGVyLUZyZWUuCi0tCgotLS0gUGF0Y2ggWzFd
OiBbUEFUQ0ggdjEzIDEvNV0gcGh5OiBjb3JlOiBBZGQgcGh5X2dldF9ieV9vZl9ub2RlKCkgLS0t
CmNvbW1pdCAyOTY0ZjE5NTdlNzEzOGExM2Q3MjE4NWY0N2E3MmNiYjFlNGUxOTNjCkF1dGhvcjog
QnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgpwaHk6IGNvcmU6
IEFkZCBwaHlfZ2V0X2J5X29mX25vZGUoKQoKQWRkIG5ldyBmdW5jdGlvbiBwaHlfZ2V0X2J5X29m
X25vZGUoKSBhbGxvd2luZyBsb29rdXAgb2YgYSBwaHkgYnkKZGV2aWNlX25vZGUuIFNlcGFyYXRl
cyBleGlzdGluZyBsb2dpYyBpbiBfb2ZfcGh5X2dldCgpIGludG8gYW4gaW50ZXJuYWwKaGVscGVy
IG1ldGhvZCBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSB0byBhbGxvdyBmb3IgcmV1c2UgaW4gbmV3
IG1ldGhvZC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJz
L3BoeS9waHktY29yZS5jCj4gaW5kZXggMjFhYWYyZjc2ZTUzZS4uZWJmYWQ1MzI1MDcyZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcGh5
LWNvcmUuYwpbIC4uLiBdCj4gQEAgLTYwNyw1NCArNjA3LDY5IEBAIGludCBwaHlfdmFsaWRhdGUo
c3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsIGludCBzdWJtb2RlLApbIC4uLiBd
Cj4gK3N0YXRpYyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
LCBpbnQgaW5kZXgpCj4gK3sKPiArCWludCByZXQ7Cj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4gKwlz
dHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIGFyZ3M7Cj4gKwo+ICsJcmV0ID0gb2ZfcGFyc2VfcGhhbmRs
ZV93aXRoX2FyZ3MobnAsICJwaHlzIiwgIiNwaHktY2VsbHMiLAo+ICsJCWluZGV4LCAmYXJncyk7
Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+ICsKPiArCS8qIFRo
aXMgcGh5IHR5cGUgaGFuZGxlZCBieSB0aGUgdXNiLXBoeSBzdWJzeXN0ZW0gZm9yIG5vdyAqLwo+
ICsJaWYgKG9mX2RldmljZV9pc19jb21wYXRpYmxlKGFyZ3MubnAsICJ1c2Itbm9wLXhjZWl2Iikp
IHsKPiArCQlwaHkgPSBFUlJfUFRSKC1FTk9ERVYpOwo+ICsJCWdvdG8gb3V0X3B1dF9ub2RlOwo+
ICsJfQo+ICsKPiArCXBoeSA9IF9vZl9waHlfZ2V0X3dpdGhfYXJncygmYXJncyk7CgpbU2V2ZXJp
dHk6IEhpZ2hdCklmIGEgY2FsbGVyIHVzZXMgdGhlIG5ldyBwaHlfZ2V0X2J5X29mX25vZGUoKSBB
UEkgb24gYSBkZXZpY2Ugbm9kZSBjb21wYXRpYmxlCndpdGggInVzYi1ub3AteGNlaXYiLCB3aWxs
IGl0IGJ5cGFzcyB0aGlzIGNoZWNrPyAKCkJlY2F1c2UgdGhlIGNvbXBhdGliaWxpdHkgY2hlY2sg
d2FzIGxlZnQgaGVyZSBpbiBfb2ZfcGh5X2dldCgpIGluc3RlYWQgb2YKYmVpbmcgbW92ZWQgaW50
byB0aGUgc2hhcmVkIF9vZl9waHlfZ2V0X3dpdGhfYXJncygpIGhlbHBlciwgaXQgYXBwZWFycyB0
aGUKbmV3IEFQSSB3aWxsIHNraXAgdGhpcyBmYWxsYmFjayBhbmQgY291bGQgZW50ZXIgYW4gaW5m
aW5pdGUgcHJvYmUgZGVmZXJyYWwKaW5zdGVhZCBvZiBjb3JyZWN0bHkgcmV0dXJuaW5nIC1FTk9E
RVYuCgpbIC4uLiBdCj4gQEAgLTk4Niw2ICsxMDAxLDM0IEBAIHN0cnVjdCBwaHkgKmRldm1fb2Zf
cGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KTsK
PiAgCj4gKy8qKgo+ICsgKiBwaHlfZ2V0X2J5X29mX25vZGUoKSAtIGxvb2t1cCBhbmQgb2J0YWlu
IGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IGRldmljZV9ub2RlCj4gKyAqIEBucDogbm9kZSBjb250
YWluaW5nIHRoZSBwaHkKPiArICoKPiArICogUmV0dXJucyB0aGUgcGh5IGFzc29jaWF0ZWQgd2l0
aCB0aGUgZGV2aWNlIG5vZGUgb3IgRVJSX1BUUi4KPiArICovCj4gK3N0cnVjdCBwaHkgKnBoeV9n
ZXRfYnlfb2Zfbm9kZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICt7Cj4gKwlzdHJ1Y3Qgb2Zf
cGhhbmRsZV9hcmdzIGFyZ3MgPSB7IC5ucCA9IG5wLCAuYXJnc19jb3VudCA9IDAgfTsKPiArCXN0
cnVjdCBwaHkgKnBoeTsKPiArCj4gKwlpZiAoIW5wKQo+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOwo+ICsKPiArCXBoeSA9IF9vZl9waHlfZ2V0X3dpdGhfYXJncygmYXJncyk7Cj4gKwo+ICsJ
aWYgKElTX0VSUihwaHkpKQo+ICsJCXJldHVybiBwaHk7Cj4gKwo+ICsJaWYgKCF0cnlfbW9kdWxl
X2dldChwaHktPm9wcy0+b3duZXIpKQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVn
IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGlzIHRoZXJlIGEgcmFjZSBjb25kaXRpb24K
aGVyZSBiZXR3ZWVuIHJldHJpZXZpbmcgdGhlIHBoeSBhbmQgcGlubmluZyBpdHMgbW9kdWxlPwoK
VGhlIF9vZl9waHlfZ2V0X3dpdGhfYXJncygpIGhlbHBlciByZXRyaWV2ZXMgdGhlIHBoeSBwb2lu
dGVyIHZpYSB0aGUKcHJvdmlkZXIncyBvZl94bGF0ZSBjYWxsYmFjay4gVHlwaWNhbCBjYWxsYmFj
a3MgKGxpa2Ugb2ZfcGh5X3NpbXBsZV94bGF0ZSgpKQpkcm9wIHRoZSBQSFkgZGV2aWNlIHJlZmVy
ZW5jZSBiZWZvcmUgcmV0dXJuaW5nLiBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSB0aGVuCnVubG9j
a3MgcGh5X3Byb3ZpZGVyX211dGV4IGFuZCBkcm9wcyB0aGUgcHJvdmlkZXIncyBtb2R1bGUgcmVm
ZXJlbmNlLgoKQ291bGQgYSBjb25jdXJyZW50IHRocmVhZCB1bmJpbmRpbmcgdGhlIFBIWSBwcm92
aWRlciBkZXN0cm95IHRoZSBQSFkgb2JqZWN0CmJlZm9yZSB0aGlzIGNhbGxlciBldmFsdWF0ZXMg
dHJ5X21vZHVsZV9nZXQocGh5LT5vcHMtPm93bmVyKSwgcmVzdWx0aW5nIGluIGEKdXNlLWFmdGVy
LWZyZWU/Cgo+ICsJCXJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsKPiArCWdldF9k
ZXZpY2UoJnBoeS0+ZGV2KTsKPiArCj4gKwlyZXR1cm4gcGh5Owo+ICt9Cj4gK0VYUE9SVF9TWU1C
T0xfR1BMKHBoeV9nZXRfYnlfb2Zfbm9kZSk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzI4LWI0LWxpbnV4LW5leHQtMjUtMDMt
MTMtZHRzaS14MWU4MDEwMC1jYW1zcy12MTMtMC1hZTgxMWUyZjA3OTlAbGluYXJvLm9yZz9wYXJ0
PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
