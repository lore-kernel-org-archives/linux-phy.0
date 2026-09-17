Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2460DC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDm3fRkyU8ilw7UBTMxYsXw0ceqLUDutQjFy8IaqYHc=; b=qE+jq5oPKTkCmk
	2EW9PL5OpBhP4zhz5oMIRbxU3ayZ3gb3UD0C4KsrGK/h9QDhfEoo4q/0QnjXQekgEoeo5pZ3iF5Ej
	FTc0lMf+x6fiBgvX/U0iLbZsC8TfuLWWVJsimvbCgGtyIYY3Y844sErPyK/f8hFZe4H8aW+xLdEQV
	efhtYMlKtHeTFt6hPdUydCa55lq1Y5VdBuqhAxfO2DJg5sB2yzfjq9h4GcYbZ0JD7QVFhA/Pi+ymZ
	Vv9hEfSqPjnTl5Bps3pqMwQEy4tTYp5JKO6tbiY2gNAyI2zpzP1rMJDOBGLtPvrS0kM8QT+uBnQqF
	VUJYiDRzwOmNtIYWJKeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A8d-0000000BAop-3jtN;
	Thu, 17 Sep 2026 11:18:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A8c-0000000BAoP-2sCs
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:18:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C7FDC600D4;
	Thu, 17 Sep 2026 11:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B28E31F000FF;
	Thu, 17 Sep 2026 11:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789643925;
	bh=+DyLswLX2Y42eiWuvsMgtzrRBjaK8b4kmwZ8IlfxW0c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=inCUYLJe30um5vnB5LMyRbXRCYS573Z2hCASyaI2oYQpNDtu8lucxVUQHVXogmj5h
	 eNKo/Aa58kLyGMjimPMM1mwzjK2LpC/ruOZUfu2UrFbRkWNWMBfNvRrK/Jkw0AdxBt
	 wsqwQ9OpJHatkxK6TbTDMhF2KUfrpVIGlFj64PWkvm6GEcAWwEkp6gE/CNCIOr9I/V
	 YeLn9qPXyTCVuw7ekGmQGAKdng7OcJw0O3/oqu/o/qzHoJeQ0RawxcMUZngzWD53ey
	 9Xn6bLZtLnJOO+fLDqyQ4ZsKowep7nfLuc/RcnQAyXhxIA6p3WeSYLJIvz2GP7uRCZ
	 SCg781dQN6A7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 2/5] phy: core: Add phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, media-ci@linuxtv.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-2-f85c9103177e@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-2-f85c9103177e@linaro.org>
Date: Thu, 17 Sep 2026 11:18:44 +0000
Message-Id: <20260917111844.B28E31F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBwaHlfZ2V0
X2J5X29mX25vZGUoKSBieXBhc3NlcyB1c2Itbm9wLXhjZWl2IGxlZ2FjeSBjaGVjawotLQoKY29t
bWl0IGQ4YzFjYzAwNDk2ZDQzYjVkOGUzYjVmMDM4NTNlNDYxOTEyMTIwYzkKQXV0aG9yOiBCcnlh
biBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KcGh5OiBjb3JlOiBBZGQg
cGh5X2dldF9ieV9vZl9ub2RlKCkKClRoaXMgY29tbWl0IGludHJvZHVjZXMgcGh5X2dldF9ieV9v
Zl9ub2RlKCkgdG8gYWxsb3cgUEhZIGxvb2t1cHMgYnkgZGV2aWNlCm5vZGUuIEl0IHNwbGl0cyB0
aGUgbG9va3VwIGxvZ2ljIGZyb20gX29mX3BoeV9nZXQoKSBpbnRvIGEgbmV3IGludGVybmFsCl9v
Zl9waHlfZ2V0X3dpdGhfYXJncygpIGhlbHBlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gLS0tIGEvZHJpdmVycy9waHkv
cGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKClsgLi4uIF0KCj4gQEAg
LTEwMDEsNiArMTAxNSw0MSBAQCBzdHJ1Y3QgcGh5ICpkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICB9Cj4gIEVYUE9S
VF9TWU1CT0xfR1BMKGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCk7Cj4gIAo+ICsvKioKPiArICog
cGh5X2dldF9ieV9vZl9ub2RlKCkgLSBsb29rdXAgYW5kIG9idGFpbiBhIHJlZmVyZW5jZSB0byBh
IHBoeSBieSBkZXZpY2Vfbm9kZQo+ICsgKiBAbnA6IG5vZGUgY29udGFpbmluZyB0aGUgcGh5Cj4g
KyAqCj4gKyAqIFJldHVybnMgdGhlIHBoeSBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZSBub2Rl
IG9yIEVSUl9QVFIuCj4gKyAqLwo+ICtzdHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3Ry
dWN0IGRldmljZV9ub2RlICpucCkKPiArewo+ICsJc3RydWN0IG9mX3BoYW5kbGVfYXJncyBhcmdz
ID0geyAubnAgPSBucCwgLmFyZ3NfY291bnQgPSAwIH07Cj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4g
Kwo+ICsJaWYgKCFucCkKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArCj4gKwltdXRl
eF9sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICsKPiArCXBoeSA9IF9vZl9waHlfZ2V0X3dp
dGhfYXJncygmYXJncyk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIGJ5cGFzcyB0aGUg
bGVnYWN5IGNvbXBhdGliaWxpdHkgY2hlY2sgZm9yIHVzYi1ub3AteGNlaXYgUEhZcz8KCkxvb2tp
bmcgYXQgdGhlIG5ld2x5IGludHJvZHVjZWQgaGVscGVyIF9vZl9waHlfZ2V0X3dpdGhfYXJncygp
LCBpdCBkb2VzCm5vdCBjb250YWluIHRoZSBjaGVjayBmb3IgdXNiLW5vcC14Y2VpdiB0aGF0IHJl
bWFpbnMgaW4gX29mX3BoeV9nZXQoKToKCmRyaXZlcnMvcGh5L3BoeS1jb3JlLmM6X29mX3BoeV9n
ZXQoKSB7CiAgICAgICAgLi4uCiAgICAgICAgLyogVGhpcyBwaHkgdHlwZSBoYW5kbGVkIGJ5IHRo
ZSB1c2ItcGh5IHN1YnN5c3RlbSBmb3Igbm93ICovCiAgICAgICAgaWYgKG9mX2RldmljZV9pc19j
b21wYXRpYmxlKGFyZ3MubnAsICJ1c2Itbm9wLXhjZWl2IikpIHsKICAgICAgICAgICAgICAgIHBo
eSA9IEVSUl9QVFIoLUVOT0RFVik7CiAgICAgICAgICAgICAgICAuLi4KICAgICAgICB9CiAgICAg
ICAgLi4uCn0KCkJlY2F1c2UgcGh5X2dldF9ieV9vZl9ub2RlKCkgY2FsbHMgX29mX3BoeV9nZXRf
d2l0aF9hcmdzKCkgZGlyZWN0bHksCmlmIGl0IGlzIGNhbGxlZCBvbiBhIGRldmljZSBub2RlIHdp
dGggdGhlIHVzYi1ub3AteGNlaXYgY29tcGF0aWJsZSBzdHJpbmcsCml0IHdpbGwgZmFpbCB0byBm
aW5kIHRoZSBsZWdhY3kgUEhZIHByb3ZpZGVyIGFuZCByZXR1cm4gLUVQUk9CRV9ERUZFUgppbnN0
ZWFkIG9mIC1FTk9ERVYuCgpDb3VsZCB0aGlzIGNhdXNlIGNhbGxlciBkcml2ZXJzIHRvIGVudGVy
IGluZmluaXRlIHByb2JlIGRlZmVycmFsIGxvb3BzCnNpbmNlIHRoZSBsZWdhY3kgUEhZIHdpbGwg
bmV2ZXIgcmVnaXN0ZXIgd2l0aCB0aGlzIGdlbmVyaWMgZnJhbWV3b3JrPwoKPiArCj4gKwlpZiAo
SVNfRVJSKHBoeSkpCj4gKwkJZ290byBvdXRfdW5sb2NrOwoKWyAuLi4gXQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNy1iNC1s
aW51eC1uZXh0LTI1LTAzLTEzLWR0c2kteDFlODAxMDAtY2Ftc3MtdjE4LTAtZjg1YzkxMDMxNzdl
QGxpbmFyby5vcmc/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
