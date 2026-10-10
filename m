Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383E2CA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQSnlbYGnTvuMH095yHgXRWFYpmJKPUMKjuoHkAMp4Q=; b=E4zGnnMp4ceCIw
	2u59FRuxuaX767F4wZ4ml7V6CPL4OwOxSVmelaC+Th3E7pUqmI9c8KBjw0W/3zHhnhP+rEcVhPtYW
	ygAntKoayM1drNKWrJ6ymaZRa7omgrae9kCuggBqkfofdQ+2+uVYFMYMVnUWEfliGX3zjtFiuP9ER
	cE5LPLcxRzLrLnE3cMhIZ+p1Zriy4rZlYTTOSLiVhUFurgWBZtyiIiubvmYsNKSfU4UB3YFXwPiny
	vjxf7m+IbmXfKnNVbvgrKh7Todc5b5fQOr73nDWn4vc8yFN3Xvp8aDiyUfIG3tvn12ZFqMJgUAUl0
	hDdD1h9jG0QmIySg/nHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZr5-00000008Gjc-3sAJ;
	Sat, 10 Oct 2026 16:23:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZr4-00000008GjW-1Vch
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:23:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C9D94363D;
	Sat, 10 Oct 2026 16:23:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8381F00893;
	Sat, 10 Oct 2026 16:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791649405;
	bh=JVyksopITaUHR/LMg8KqXG3l9Gsaif1T31GDC6NmJH4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GbReUmCaiKAozOgFQoeSmQsDTUi7lxqv00vlWixBuEpLHBNToh6TsTZnsPcmMBy/6
	 frsIzeB53qSEWplaUPUcuHGDHF75YGWLecLsMHyzpqcWCxqWEK4vIQyCF2YTD8A93Z
	 pNzRaxDKFqUh6z/Egib7MZOD2FfnPB3RwSWdGYTiZL1wM0cSMJt8fD7YF012gD6u1l
	 Udr9Psn8mzR2FN2Y4i5HfFVpabf+Sm55IfG1l11L0roUsNIbS+j1lPIhRQbMnmEtL+
	 MdKexN+AOWKbcQGD3YyjQFCvFnrfKO18NYzGQqEt8XFUvKj1Ig/7Bh6zR7TJKTeb/c
	 joIxfGKAbyoqg==
Message-ID: <sashiko-outbox-166734@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v20 06/13] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: media-ci@linuxtv.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20261010-kaanapali-camss-v20-6-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
 <20261010-kaanapali-camss-v20-6-63e98ce9ac0c@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 16:23:24 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogTlVMTCBkZXJlZiBpbiBtc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeSgpIG9uIG1h
bGZvcm1lZCBEVAotLQoKY29tbWl0IDA4ZjkxZDc0YjY1MGI1YTNlMDM5YTljZGRmYTlhY2JlNDc4
M2Q3OGIKQXV0aG9yOiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29t
PgoKbWVkaWE6IHFjb206IGNhbXNzOiBjc2lwaHk6IEFkZCBzdXBwb3J0IGZvciB2Mi40LjAgdHdv
LXBoYXNlIENTSVBIWQoKQWRkIHN1cHBvcnQgZm9yIHRoZSB2Mi40LjAgdHdvLXBoYXNlIENTSVBI
WSBmb3VuZCBvbiBLYWFuYXBhbGksIHdoZXJlCnRoZSBQSFkgaXMgZHJpdmVuIGJ5IHRoZSBzdGFu
ZGFsb25lIHBoeS1xY29tLW1pcGktY3NpMiBEUEhZIGRyaXZlcgpyYXRoZXIgdGhhbiBieSBDQU1T
Uy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBpbmRleCBm
Y2EzZGUyMTRhOTIyLi5lZWNlYjc5YzFlODYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtMzgsNiArMzgsNTEgQEAKPiAgCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcGFyZW50X2Rldl9vcHMgdmZlX3BhcmVudF9kZXZfb3BzOwo+ICAKPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVzb3VyY2VzIGNzaXBoeV9yZXNfa2FhbmFw
YWxpW10gPSB7Cj4gKwkvKiBDU0lQSFkwICovCj4gKwl7Cj4gKwkJLmNzaXBoeSA9IHsKPiArCQkJ
LmlkID0gMCwKPiArCQkJLmZvcm1hdHMgPSAmY3NpcGh5X2Zvcm1hdHNfc2RtODQ1Cj4gKwkJfSwK
PiArCX0sCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjb25maWd1cmF0aW9uIGNhdXNlIGEg
TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlmIHRoZSBEZXZpY2UgVHJlZQppcyBtYWxmb3JtZWQ/
CgpTaW5jZSAuaHdfb3BzIGlzIGludGVudGlvbmFsbHkgb21pdHRlZCBmb3IgdGhpcyBjb25maWd1
cmF0aW9uLCBpdCBleHBlY3RzIHRvCnVzZSB0aGUgc3RhbmRhbG9uZSBkcml2ZXIuIEhvd2V2ZXIs
IGlmIHRoZSBEZXZpY2UgVHJlZSBpcyBtYWxmb3JtZWQgYW5kIGxhY2tzCmVuZHBvaW50cyAoZm9y
IGV4YW1wbGUsIGlmIGFuIG92ZXJsYXkgaXMgbWlzc2luZyBvciBpbmNvcnJlY3RseSBjb25maWd1
cmVkKSwKY2Ftc3NfZGV0ZWN0X2xlZ2FjeV9waHkoKSBkb2VzIG5vdCBleGVjdXRlIGl0cyBsb29w
IGFuZCBsZWdhY3lfcGh5IHJlbWFpbnMKdHJ1ZToKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy5jOmNhbXNzX2RldGVjdF9sZWdhY3lfcGh5KCkgewogICAgLi4uCiAgICBj
YW1zcy0+bGVnYWN5X3BoeSA9IHRydWU7CgogICAgLyogRmluZCBmaXJzdCByZW1vdGUtZW5kcG9p
bnQgYW5kIGRldGVybWluZSBpZiBpdHMgYSBQSFkgKi8KICAgIGZvcl9lYWNoX2VuZHBvaW50X29m
X25vZGUoY2Ftc3MtPmRldi0+b2Zfbm9kZSwgZXApIHsKICAgIC4uLgp9CgpUaGlzIHRydWUgdmFs
dWUgZm9yY2VzIHRoZSBwcm9iZSB0byB0YWtlIHRoZSBmYWxsYmFjayBsZWdhY3kgcGF0aCBhbmQg
Y2FsbAptc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeSgpLCB3aGljaCB1bmNvbmRpdGlvbmFs
bHkgZGVyZWZlcmVuY2VzCmh3X29wcy0+aW5pdDoKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy1jc2lwaHkuYzptc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeSgpIHsK
ICAgIC4uLgogICAgY3NpcGh5LT5yZXMgPSAmcmVzLT5jc2lwaHk7CgogICAgcmV0ID0gY3NpcGh5
LT5yZXMtPmh3X29wcy0+aW5pdChjc2lwaHkpOwogICAgLi4uCn0KClNob3VsZCB1bnRydXN0ZWQg
b3IgbWFsZm9ybWVkIGNvbmZpZ3VyYXRpb25zIGJlIGhhbmRsZWQgd2l0aG91dCBwYW5pY2tpbmcg
dGhlCmtlcm5lbD8KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTAta2FhbmFwYWxpLWNhbXNzLXYyMC0wLTYzZTk4
Y2U5YWMwY0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
