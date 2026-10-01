Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9472CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJqBYMc8mJ+qme5TjmArfK8Jm/cGNi61DILJMqbI7z4=; b=q1hO+IiO+5CsLI
	foKbflEwR7paBUMLsUm2Rjuaz0xpwbZx7s+RDuj3zXvQSAWSJD4EFIdMBkrSl/r5mGTA6dhSXamnY
	z/6yIs0ol6ZhmygI50n9ZbrA0azAlPVRgRT/KpSveNK83BkglXri4zqg92PteI+bv7ASBhcvARwTf
	CNIRxe5axKZBTorANT/RpF6gT6vatblYp4juZdsO/wkveQVtCOvPSMndwivimu+bvAD8PJFLJBCY+
	zt3EWv3trn7BwgXLGrURRRPGm6ZnbiTo0FVFeS+uZilT55zhLxpeKnKU38t5TPRzz0Ol4QhtMvczi
	LQGOtG7dWnpVPpGdxDgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDWF-00000008RqW-2md5;
	Thu, 01 Oct 2026 09:56:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDWD-00000008Rq5-37FU
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:56:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 80C1F43CDE;
	Thu,  1 Oct 2026 09:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 955C61F00899;
	Thu,  1 Oct 2026 09:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790848561;
	bh=ncleY36Dlnp1CyB1LnOhC8Wii6mzRHjnGjSMcvdqEUk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=coRSpGA0TOTfjUpN0d9BXQ1w6w6cbWCF7yzAy6s7nXwy5NkJma0SbDB1W7ZqSXc/L
	 NSuxwBCjd0Ku9HiuO20FlfNyllhTjtjTu0HGTCOoXPHdRfIFsblTEBDi6DUEIE3Mje
	 zBB7LB41RAqPj0XQ6ot6yAYwCq2qq137sd4bnPTjl9nNR62Y9IRlYCRew0bLiDXJ+4
	 Y2k5U1U5UItyptLNTmDp4KKj0f16g2NVZKO9FwY+neSrkcvPUl6/IWqFwWXSJBNgSu
	 61JGCw3Hr2U6WhkaEQX5TRAJZ5r5C1kTn/KoXL8+vQjoh1oY7fdySPXS4bcqORqeX1
	 iOTLVWXShr+Ng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 11/11] phy: qualcomm: qmp-combo: Fix error
 propagation in qmp_combo_dp_power_on()
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 09:56:00 +0000
Message-Id: <20261001095600.955C61F00899@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBtaXNzaW5n
IERQIFBIWSBwb3dlciBkb3duIG9uIHFtcF9jb21ib19kcF9wb3dlcl9vbigpIGVycm9yIHBhdGgK
LS0KCmNvbW1pdCAxMmM4OGE3ZjgzZGNkYmQxZmFmYzNiODc4ZjczMDI2OTFhZTI0YzhkCkF1dGhv
cjogTmFiaWdlIEFhbGEgPG5hYmlnZS5hYWxhQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHF1YWxj
b21tOiBxbXAtY29tYm86IEZpeCBlcnJvciBwcm9wYWdhdGlvbiBpbiBxbXBfY29tYm9fZHBfcG93
ZXJfb24oKQoKVGhlIGNvbmZpZ3VyZV9kcF9waHkoKSBjYWxsYmFjayBjYW4gcmV0dXJuIGFuIGVy
cm9yIChlLmcuIC1FVElNRURPVVQgb24KUExMIGxvY2sgZmFpbHVyZSksIGJ1dCBxbXBfY29tYm9f
ZHBfcG93ZXJfb24oKSB3YXMgaWdub3JpbmcgdGhlIHJldHVybgp2YWx1ZSBhbmQgYWx3YXlzIHJl
dHVybmluZyAwLiBDYXB0dXJlIHRoZSByZXR1cm4gdmFsdWUsIHNraXAgc2V0dGluZwpkcF9wb3dl
cmVkX29uIG9uIGZhaWx1cmUsIGFuZCBwcm9wYWdhdGUgdGhlIGVycm9yIHRvIHRoZSBjYWxsZXIu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
YyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggNWJi
YjJiNWY4Yzc0ZC4uMTNkNTU4NmI5ODFjOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1jb21iby5jCgpbIC4uLiBdCgo+IEBAIC00Mzg4LDEzICs0Mzg5LDE3IEBAIHN0
YXRpYyBpbnQgcW1wX2NvbWJvX2RwX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCWNmZy0+
Y29uZmlndXJlX2RwX3R4KHFtcCk7Cj4gIAo+ICAJLyogQ29uZmlndXJlIGxpbmsgcmF0ZSwgc3dp
bmcsIGV0Yy4gKi8KPiAtCWNmZy0+Y29uZmlndXJlX2RwX3BoeShxbXApOwo+ICsJcmV0ID0gY2Zn
LT5jb25maWd1cmVfZHBfcGh5KHFtcCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihxbXAt
PmRldiwgIkRQIFBIWSBjb25maWd1cmF0aW9uIGZhaWxlZDogJWRcbiIsIHJldCk7Cj4gKwkJZ290
byBvdXRfdW5sb2NrOwo+ICsJfQoKW1NldmVyaXR5OiBNZWRpdW1dCklmIGNmZy0+Y29uZmlndXJl
X2RwX3BoeShxbXApIGZhaWxzIChlLmcuLCBkdWUgdG8gYSBQTEwgbG9jayB0aW1lb3V0KSwgZG9l
cwp0aGlzIGVycm9yIHBhdGggbGVhdmUgdGhlIERQIFBIWSBwZXJtYW5lbnRseSBwb3dlcmVkIHVw
PwoKVGhlIExpbnV4IFBIWSBjb3JlIGZyYW1ld29yayBkb2VzIG5vdCBhdXRvbWF0aWNhbGx5IGlu
dm9rZSBwaHlfcG93ZXJfb2ZmKCkgaWYKYSBwb3dlcl9vbiBjYWxsYmFjayBmYWlscywgYXMgc2Vl
biBpbiBkcml2ZXJzL3BoeS9waHktY29yZS5jOnBoeV9wb3dlcl9vbigpOgoKCXJldCA9IHBoeS0+
b3BzLT5wb3dlcl9vbihwaHkpOwoJaWYgKHJldCA8IDApIHsKCQlkZXZfZXJyKCZwaHktPmRldiwg
InBoeSBwb3dlcm9uIGZhaWxlZCAtLT4gJWRcbiIsIHJldCk7CgkJZ290byBlcnJfcHdyX29uOwoJ
fQoKQmVjYXVzZSBjb25maWd1cmVfZHBfcGh5KCkgaW50ZXJuYWxseSBjbGVhcnMgRFBfUEhZX1BE
X0NUTF9QU1JfUFdSRE4gdG8gdGFrZQp0aGUgUEhZIG91dCBvZiBwb3dlciBkb3duLCByZXR1cm5p
bmcgYW4gZXJyb3IgaGVyZSB3aXRob3V0IHJlLWFzc2VydGluZyB0aGlzCmJpdCBsZWF2ZXMgdGhl
IERQIFBIWSBwb3dlcmVkIHVwLgoKcW1wX2NvbWJvX2RwX3Bvd2VyX29mZigpIHBlcmZvcm1zIHRo
aXMgY2xlYW51cCBkdXJpbmcgbm9ybWFsIG9wZXJhdGlvbjoKCgl3cml0ZWwoRFBfUEhZX1BEX0NU
TF9QU1JfUFdSRE4sIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfUERfQ1RMKTsKClNo
b3VsZCB0aGUgZXJyb3IgcGF0aCBtYW51YWxseSBhc3NlcnQgRFBfUEhZX1BEX0NUTF9QU1JfUFdS
RE4gb3IgcGVyZm9ybSBvdGhlcgpuZWNlc3NhcnkgY2xlYW51cCBiZWZvcmUgcmV0dXJuaW5nPwoK
PiAgCj4gIAlxbXAtPmRwX3Bvd2VyZWRfb24gPSB0cnVlOwo+ICAKPiArb3V0X3VubG9jazoKPiAg
CW11dGV4X3VubG9jaygmcW1wLT5waHlfbXV0ZXgpOwo+IC0KPiAtCXJldHVybiAwOwo+ICsJcmV0
dXJuIHJldDsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MTAwMS1nbHltdXItcGh5LXYzLXY1LTAtMzg0OGMyNjE1ZDVhQG9z
cy5xdWFsY29tbS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
