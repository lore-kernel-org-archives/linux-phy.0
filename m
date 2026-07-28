Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D0D6C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45Zas7pD1JJcAm/e/SRpgN43/pbQ5rL6t/8zYZ9Yb8I=; b=eEppf2VZDTYMgR
	UygIbzwMhidhl0qmyzcX5OEz/q2Q3Q4dxuVA+ndEPeUav/a6JecocJ6J3fRlLVGKZ0VUk6OnZtoiC
	vQxWlaKv4dLehP3f3NAJlqAwbuMA+6Nim+KT9nNwrpDmKAUWC1Hl6hxY4kILuO6XK2xVNBiDuFzhC
	Q3MGYg2Hi9nAQ4VVBKjYEf/md8YkA2OB/tHG3a9rqk9cjktuZ/rSCgRwJkIg5XUyvLs7J7tpZqgMQ
	ceCywdRrzc2DDI/TjvOVNwSNHp7Ex6s4sXokTOylIL1uSNOJIvHxs2LpdT68fUbmTWOT9LRKs+1Y3
	9dOoFYzYFW751sZXpRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woePB-00000004sRr-0G4Z;
	Tue, 28 Jul 2026 09:47:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woePA-00000004sQj-0wkZ
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:47:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A06160A8D;
	Tue, 28 Jul 2026 09:47:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD9A61F000E9;
	Tue, 28 Jul 2026 09:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785232039;
	bh=lERqEYS6Gzq+ad1gPjbOjs/4ZFsYx2p2WYpj9z+Mk5A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gr+ZM4OrD8ODjGsOjBfeLdhnDYDkZ0wLlHxE85E9FCnx5IavsLfW72bM+ilgB23Rd
	 1GMCiFXOWvzugK1e/hX00tmtlCarH0PjiG1Iump1cBsav/O7uezALd6a9JtNEwY2V4
	 /GtMq/klG3riRHpn7XBytZu5AGRaGbOjpl2NRGlShtK5dB2nsepQj5b1kgCePqnI07
	 X91RYz0qyFylTgV7uYsjLFYdIctQd2FQP2fdKZ+NJj9MBhC4xP7uAY+FnzqmWo0cV4
	 nuuFnsNexUj4iSXku5sJpO2tAnwMXpWfIukUmzAcKEsoarQU1tgTvdWgrQnSFkQYP6
	 rGD1bTZZhF2UQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 2/5] phy: core: Add devm_phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, media-ci@linuxtv.org, linux-phy@lists.infradead.org
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
Date: Tue, 28 Jul 2026 09:47:17 +0000
Message-Id: <20260728094717.DD9A61F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBBIFRPQ1RPVSByYWNlIGNvbmRpdGlvbiBleGlzdHMgYmV0d2VlbiBsb29raW5nIHVw
IHRoZSBQSFkgYW5kIGFjcXVpcmluZyBpdHMgbW9kdWxlL2RldmljZSByZWZlcmVuY2VzLCBsZWFk
aW5nIHRvIGEgVXNlLUFmdGVyLUZyZWUgKFVBRikuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0gg
djEzIDIvNV0gcGh5OiBjb3JlOiBBZGQgZGV2bV9waHlfZ2V0X2J5X29mX25vZGUoKSAtLS0KY29t
bWl0IDY1YTI0MDMxZmU0OTY5NTMzMzQzODdjZjE5MGYxNDI1YThiMzExNjgKQXV0aG9yOiBCcnlh
biBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KCnBoeTogY29yZTogQWRk
IGRldm1fcGh5X2dldF9ieV9vZl9ub2RlKCkKCkFkZCBhIGRldm0gdmFyaWFudCBvZiBwaHlfZ2V0
X2J5X29mX25vZGUoKSB0byBhbGxvdyBmb3IgdGhlIGZhbWlsaWFyCnBhdHRlcm4gb2YgaGF2aW5n
IGRldnJlcyBhdXRvbWF0aWNhbGx5IHJlbGVhc2UgcmVzb3VyY2VzIG9uIHRoZSBkcml2ZXIncwpl
eGl0IHBhdGguCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVy
cy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IGViZmFkNTMyNTA3MmUuLjdhZjI0ZjJmNDEyMGYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMKClsgLi4uIF0KCj4gQEAgLTEwMjksNiArMTAyOSw0MCBAQCBzdHJ1Y3QgcGh5ICpw
aHlfZ2V0X2J5X29mX25vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiAgfQo+ICBFWFBPUlRf
U1lNQk9MX0dQTChwaHlfZ2V0X2J5X29mX25vZGUpOwo+ICAKPiArLyoqCj4gKyAqIGRldm1fcGh5
X2dldF9ieV9vZl9ub2RlKCkgLSBkZXZtIG1hbmFnZWQgbG9va3VwIGFuZCBvYnRhaW4gcGh5IHJl
ZmVyZW5jZSBieSBkZXZpY2Ugbm9kZQo+ICsgKiBAZGV2OiBkZXZpY2UgcmVxdWVzdGluZyB0aGUg
UEhZCj4gKyAqIEBucDogZGV2aWNlX25vZGUgb2YgdGhlIFBIWSBwcm92aWRlcgo+ICsgKgo+ICsg
KiBSZXR1cm5zIHBoeSBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZV9ub2RlIG9yIEVSUl9QVFIu
IGRldnJlcyBtYW5hZ2VzCj4gKyAqIHJlbGVhc2luZyByZXNvdXJjZXMuCj4gKyAqLwo+ICtzdHJ1
Y3QgcGh5ICpkZXZtX3BoeV9nZXRfYnlfb2Zfbm9kZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnApCj4gK3sKPiArCXN0cnVjdCBwaHkgKipwdHIsICpwaHk7Cj4gKwlz
dHJ1Y3QgZGV2aWNlX2xpbmsgKmxpbms7Cj4gKwo+ICsJcHRyID0gZGV2cmVzX2FsbG9jKGRldm1f
cGh5X3JlbGVhc2UsIHNpemVvZigqcHRyKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXB0cikKPiAr
CQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPiArCj4gKwlwaHkgPSBwaHlfZ2V0X2J5X29mX25v
ZGUobnApOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBi
dXQgZG9lcyBhIFRPQ1RPVSByYWNlIGNvbmRpdGlvbiBleGlzdCBpbiB0aGUKdW5kZXJseWluZyBw
aHlfZ2V0X2J5X29mX25vZGUoKSB0aGF0IGNvdWxkIGxlYWQgdG8gYSB1c2UtYWZ0ZXItZnJlZSBo
ZXJlPwoKTG9va2luZyBhdCBwaHlfZ2V0X2J5X29mX25vZGUoKSwgaXQgY2FsbHMgX29mX3BoeV9n
ZXRfd2l0aF9hcmdzKCkgdG8gbG9vayB1cAp0aGUgUEhZLiBJbnNpZGUgX29mX3BoeV9nZXRfd2l0
aF9hcmdzKCksIHRoZSBmdW5jdGlvbiB0ZW1wb3JhcmlseSBlbGV2YXRlcyB0aGUKcHJvdmlkZXIn
cyBtb2R1bGUgcmVmY291bnQsIGNhbGxzIG9mX3hsYXRlKCkgKHdoaWNoIHJldHVybnMgYSBiYXJl
IHBoeQpwb2ludGVyIHdpdGhvdXQgaW5jcmVtZW50aW5nIHRoZSBkZXZpY2UgcmVmY291bnQpLCBh
bmQgdGhlbiBkcm9wcyB0aGUgbW9kdWxlCnJlZmNvdW50IGFuZCB1bmxvY2tzIHBoeV9wcm92aWRl
cl9tdXRleCBiZWZvcmUgcmV0dXJuaW5nIHRoZSByYXcgcGh5IHBvaW50ZXIuCgpUaGUgY2FsbGVy
IHRoZW4gYWNjZXNzZXMgcGh5LT5vcHMtPm93bmVyIGFuZCBjYWxscyBnZXRfZGV2aWNlKCZwaHkt
PmRldik6Cgpkcml2ZXJzL3BoeS9waHktY29yZS5jOnBoeV9nZXRfYnlfb2Zfbm9kZSgpIHsKICAg
IC4uLgoJcGh5ID0gX29mX3BoeV9nZXRfd2l0aF9hcmdzKCZhcmdzKTsKCglpZiAoSVNfRVJSKHBo
eSkpCgkJcmV0dXJuIHBoeTsKCglpZiAoIXRyeV9tb2R1bGVfZ2V0KHBoeS0+b3BzLT5vd25lcikp
CgkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7CgoJZ2V0X2RldmljZSgmcGh5LT5kZXYp
OwogICAgLi4uCn0KCklmIHRoZSBQSFkgcHJvdmlkZXIgbW9kdWxlIGlzIHVubG9hZGVkIG9yIGl0
cyBkcml2ZXIgaXMgdW5ib3VuZCB2aWEgc3lzZnMKY29uY3VycmVudGx5IGluIHRoZSB3aW5kb3cg
YmV0d2VlbiBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoKSByZXR1cm5pbmcgYW5kIHRoZQp0cnlfbW9k
dWxlX2dldCgpIGNhbGwsIHRoZSBwaHkgc3RydWN0IGNvdWxkIGJlIHVucmVnaXN0ZXJlZCBhbmQg
ZnJlZWQuCgpDb3VsZCB0aGlzIGNhdXNlIHRoZSBzdWJzZXF1ZW50IGRlcmVmZXJlbmNlcyBvZiBw
aHktPm9wcyBhbmQgcGh5LT5kZXYgdG8KYWNjZXNzIGZyZWVkIG1lbW9yeT8KCj4gKwlpZiAoSVNf
RVJSKHBoeSkpIHsKPiArCQlkZXZyZXNfZnJlZShwdHIpOwo+ICsJCXJldHVybiBwaHk7Cj4gKwl9
Cj4gKwo+ICsJKnB0ciA9IHBoeTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjgtYjQtbGludXgtbmV4dC0yNS0wMy0xMy1kdHNp
LXgxZTgwMTAwLWNhbXNzLXYxMy0wLWFlODExZTJmMDc5OUBsaW5hcm8ub3JnP3BhcnQ9MgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
