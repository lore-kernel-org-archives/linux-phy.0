Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF22CC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 08:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4O2Po/YFr14wpAqv8X9BhOmxVUv8fuql/Z9Xbrmmf4=; b=MpCPEONVHPAFEI
	wSgvCEFuoMxYrlegRF+V7FDshUZCTcprfUbyhT3fpQHkLyNoJM8++iDkQYQq/8Hj3U2VLwmju3R4u
	7uRSls7NNlDExQwpvLy7AiuvhubADMr5kve7p+scoAwfpIG+lIWRwTwvs1qDQ3mjciejb3qHAF/5A
	gmCd2TlxCduFTCtzYBFjU0AwkX6PXIz9hc728KmHadqobMu65HmmzgXQ0u66ZSVWiQPVkVmVmAUq2
	UTpmefJHIBYxqVW1e5lTe8g8ZLaJ0ko3oL8Nx0Rs9UADlAEMdTjEm61AR+HH6Ba7DbXsYcUCf1BMp
	rbozagUNFrS8wkh7JOEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHuR-000000095qh-2V0Q;
	Sun, 05 Jul 2026 08:09:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHuQ-000000095qD-11Rb
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 08:09:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 23F4561379;
	Sun,  5 Jul 2026 08:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF541F000E9;
	Sun,  5 Jul 2026 08:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783238940;
	bh=Bm49Kmwpt3bZ2ktWJdVGNo8ZXSv+LvGOuBljF4ICPzk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jKVWJJBgunsIbEZbkWXSBdRvBtUGhkIj3UxM7qdov7mkVRABl5X8ZjukoDPjyqi54
	 Tab4HLuwZ6n9zv9KZ/vtk7vCQDCra/xEwln4AMBsCdEdWt6fueNL3fsvieWj7Vcn4k
	 AxQNciodOUVC78fviXvgaiybqdAtuGi8AJBN/ixWdqxq57z6JiAHKTFuHRLHMZuMkY
	 ktvamc5MdPKR/QFw1XWyixJ4VtW9FKkHZHSksBn1CHwq1jt4X1V8EclXYv1f2UVp/F
	 mbFfsl6bFq7FzhXi+z9LX5Gjl8hf95j1BshzfzQHfvl1IXwMynMLgwD9VNjCJlXENm
	 cvfhqkSo/QFtA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] phy: cpcap-usb: Prevent line glitches from
 triggering sysrq
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260705075809.1793784-2-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-2-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 08:08:59 +0000
Message-Id: <20260705080900.5CF541F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1vZGlmeWluZyBzeXN0
ZW0td2lkZSBTeXNScSBzdGF0ZSBmcm9tIGEgbGVhZiBQSFkgZHJpdmVyIGlzIGEgc2V2ZXJlIGxh
eWVyIHZpb2xhdGlvbiwgYW5kIHRoZSBpbXBsZW1lbnRhdGlvbiBmYWlscyB0byBkaXNhYmxlIFN5
c1JxIGluIG1hbnkgY29uZmlndXJhdGlvbnMgd2hpbGUgYWxzbyBvdmVyd3JpdGluZyBhZG1pbmlz
dHJhdGl2ZSBjaGFuZ2VzLgotIFtIaWdoXSBMb2NrbGVzcyBtYW5pcHVsYXRpb24gb2YgdGhlIGds
b2JhbCBTeXNScSBzdGF0ZSBpbnRyb2R1Y2VzIGEgZGF0YSByYWNlIHRoYXQgY29ycnVwdHMgdGhl
IGlucHV0IHN1YnN5c3RlbSdzIGhhbmRsZXIgbGlzdCwgbGVhZGluZyB0byBhIGtlcm5lbCBwYW5p
Yy4KLS0KCmNvbW1pdCAxZTQ3YmIzNzQxYTJkNzcwN2I1NWNmMjQ1MTBlODUxZjExZmFkMjQwCkF1
dGhvcjogSXZheWxvIERpbWl0cm92IDxpdm8uZy5kaW1pdHJvdi43NUBnbWFpbC5jb20+CgpwaHk6
IGNwY2FwLXVzYjogUHJldmVudCBsaW5lIGdsaXRjaGVzIGZyb20gdHJpZ2dlcmluZyBzeXNycQoK
VGhpcyBjb21taXQgdGVtcG9yYXJpbHkgZGlzYWJsZXMgc3lzcnEgc3VwcG9ydCB3aGVuIHN3aXRj
aGluZyBiZXR3ZWVuClVTQiBhbmQgZGVidWcgc2VyaWFsIHBvcnQgbW9kZXMgdG8gcHJldmVudCBs
aW5lIGdsaXRjaGVzIGZyb20KdHJpZ2dlcmluZyBzcHVyaW91cyBzeXNycSBldmVudHMuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMgYi9kcml2ZXJz
L3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMKPiBpbmRleCA3Y2IwMjBkZDM0MjNjLi5kMWM3
MGM3MTUzNDY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11
c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwoKWyAuLi4g
XQoKPiBAQCAtNDEzLDcgKzQxNCwxMiBAQCBzdGF0aWMgaW50IGNwY2FwX3VzYl9ncGlvX3NldF9t
b2RlKHN0cnVjdCBjcGNhcF9waHlfZGRhdGEgKmRkYXRhLAo+ICAKPiAgc3RhdGljIGludCBjcGNh
cF91c2Jfc2V0X3VhcnRfbW9kZShzdHJ1Y3QgY3BjYXBfcGh5X2RkYXRhICpkZGF0YSkKPiAgewo+
IC0JaW50IGVycm9yOwo+ICsJaW50IG9sZF9zeXNycV9tYXNrLCBlcnJvcjsKPiArCj4gKwkvKiBE
aXNhYmxlIHN5c3JxIHRvIHByZXZlbnQgcmFuZG9tIHN5c3JxIGV2ZW50cyBvbiBsaW5lIGdsaXRj
aGVzICovCj4gKwlvbGRfc3lzcnFfbWFzayA9IHN5c3JxX21hc2soKTsKPiArCWlmIChvbGRfc3lz
cnFfbWFzayAmIDEpCj4gKwkJc3lzcnFfdG9nZ2xlX3N1cHBvcnQob2xkX3N5c3JxX21hc2sgJiB+
MSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCklzIGl0IHNhZmUgdG8gbW9kaWZ5IHRoZSBnbG9iYWwgc3lz
cnEgc3RhdGUgZnJvbSBhIGxlYWYgUEhZIGRyaXZlcj8KQXJiaXRyYXJpbHkgdG9nZ2xpbmcgZ2xv
YmFsIFN5c1JxIHN0YXRlIGFmZmVjdHMgYWxsIGlucHV0IGRldmljZXMgKGtleWJvYXJkLApuZXR3
b3JrLCBldGMuKSBzeXN0ZW0td2lkZS4KCkFsc28sIGNoZWNraW5nIChvbGRfc3lzcnFfbWFzayAm
IDEpIGFzc3VtZXMgYml0IDAgaXMgYWx3YXlzIHNldCB3aGVuIHN5c3JxCmlzIGVuYWJsZWQuIElm
IHRoZSBzeXN0ZW0gdXNlcyBhIGN1c3RvbSBtYXNrIHdpdGhvdXQgYml0IDAgKGxpa2UgMHgwMWI2
KSwKd291bGQgdGhpcyBmYWlsIHRvIGRpc2FibGUgc3lzcnEgYW5kIGxlYXZlIHRoZSBzeXN0ZW0g
dnVsbmVyYWJsZSB0byB0aGUKZ2xpdGNoIHBhbmljPwoKQWRkaXRpb25hbGx5LCBjYWxsaW5nIHN5
c3JxX3RvZ2dsZV9zdXBwb3J0KCkgbG9ja2xlc3NseSBmcm9tIHRoaXMgYmFja2dyb3VuZAp3b3Jr
ZXIgcGF0aCBjYW4gcmFjZSB3aXRoIGFkbWluaXN0cmF0aXZlIHN5c2N0bCBjaGFuZ2VzIG9yIG90
aGVyIGRyaXZlcnMuCklmIHRoaXMgcmFjZXMgd2l0aCBhbm90aGVyIHRocmVhZCBjYWxsaW5nIHN5
c3JxX3RvZ2dsZV9zdXBwb3J0KCksIGNvdWxkbid0CmJvdGggdGhyZWFkcyBvYnNlcnZlIHRoYXQg
c3lzcnFfb24oKSBpcyBmYWxzZSBhbmQgY29uY3VycmVudGx5IGNhbGwKc3lzcnFfcmVnaXN0ZXJf
aGFuZGxlcigpPwoKU2luY2Ugc3lzcnFfcmVnaXN0ZXJfaGFuZGxlcigpIHVzZXMgaW5wdXRfcmVn
aXN0ZXJfaGFuZGxlcigpIG9uIGEgc2luZ2xlCnN0YXRpY2FsbHkgYWxsb2NhdGVkIHN5c3JxX2hh
bmRsZXIsIHJlZ2lzdGVyaW5nIGl0IHR3aWNlIHdvdWxkIGNvcnJ1cHQgdGhlCmlucHV0X2hhbmRs
ZXJfbGlzdCBhbmQgbGVhZCB0byBhIGNyYXNoLgoKPiAgCS8qIERpc2FibGUgbGluZXMgdG8gcHJl
dmVudCBnbGl0Y2hlcyBmcm9tIHdha2luZyB1cCBtZG02NjAwICovCj4gIAllcnJvciA9IGNwY2Fw
X3VzYl9ncGlvX3NldF9tb2RlKGRkYXRhLCBDUENBUF9VTktOT1dOX0RJU0FCTEVEKTsKClsgLi4u
IF0KCj4gIG91dF9lcnI6Cj4gLQlkZXZfZXJyKGRkYXRhLT5kZXYsICIlcyBmYWlsZWQgd2l0aCAl
aVxuIiwgX19mdW5jX18sIGVycm9yKTsKPiArCWlmIChvbGRfc3lzcnFfbWFzayAmIDEpCj4gKwkJ
c3lzcnFfdG9nZ2xlX3N1cHBvcnQob2xkX3N5c3JxX21hc2spOwoKW1NldmVyaXR5OiBIaWdoXQpC
eSB1bmNvbmRpdGlvbmFsbHkgcmVzdG9yaW5nIHRoZSBvbGQgbWFzayBoZXJlLCBjb3VsZCB0aGlz
IGFjY2lkZW50YWxseQpjbG9iYmVyIGNvbmN1cnJlbnQgYWRtaW5pc3RyYXRpdmUgY2hhbmdlcyBt
YWRlIHZpYSBzeXNjdGwga2VybmVsLnN5c3JxIHdoaWxlCnRoZSBtb2RlIHN3aXRjaCB3YXMgaGFw
cGVuaW5nPwoKPiArCj4gKwlpZiAoZXJyb3IpCj4gKwkJZGV2X2VycihkZGF0YS0+ZGV2LCAiJXMg
ZmFpbGVkIHdpdGggJWlcbiIsIF9fZnVuY19fLCBlcnJvcik7Cj4gIAo+ICAJcmV0dXJuIGVycm9y
Owo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNzA1MDc1ODA5LjE3OTM3ODQtMS1pdm8uZy5kaW1pdHJvdi43NUBnbWFpbC5j
b20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
