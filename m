Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BBAC44515
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 07:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/IZEC9Tq5bdPaX9uWySE9sj3/P9KU1uzcsf0fZBVw8=; b=lSU4dxBV7KkYCa
	NlhgIZpAn3rkK4Tty3D8e4YOvJpRZlxHGvc1GF0z7bGqQRdTfn7RmPyWsdhWLg/3zECA0E25pgQnJ
	44iSRanPZeO/UTnrKJsjLgu15pjtWzf7rsc4SlqMQrj9Q/lLpMA8khq+lFpOZww2KSaf1/0Kg2L71
	oiYykzkYLI7WPTtoco8G6+QFu8ta0mA1h92sSw1tOMo7RYsnQN1ufazeigwqkgOcyqbaVfLHtme9E
	BEKPJU0m4EAtentsg8DUDmJ87LCScjaTEHJAozTS8VqQuimf7HapajQzEcRQq3J9CaL7mAPtp4QCl
	oY+OO1AkPqJreVW5ZUng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdQw-00000001WXh-3GQs;
	Fri, 17 Jul 2026 07:56:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdQv-00000001WX5-3AUk
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 07:56:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 422454146F;
	Fri, 17 Jul 2026 07:56:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC24E1F000E9;
	Fri, 17 Jul 2026 07:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784274993;
	bh=ut8qNtIyxsOvnRwMY68Ryxwa0RJgWxJXx89jScypmjg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZtSNv0vis1P+5aMe6+4Noj1S2n0/QxR3UtTptmV34AANC9Gm+lerRsbQdArYFxdmg
	 PcTv4Ezx9Za9psU2OAiwZJ9j4UZB6J8Jon1wA2oDWUGfUUH35IedJs/2LGvvEobxE6
	 Yzbu5W5o9Paqzf/N93lh0p6ZBBDuoq+M9Z820Y5IKa2Ogej7sndWc+BnOKIqbWNgmA
	 Go7/NJpalI3R0hEEQiovRyuKfKCiVKRsIfxcaWdfzgljoFd/suKwDKEpKk4NV8TUrG
	 FYR/92Sh6DPnfkWLnoPTDOz6hehJCz4dbnRwlA09V493ip2Cbj0Og86fq81qzJhJT6
	 /f+o5//9HyeTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/5] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org
In-Reply-To: <20260717072323.96-5-kernel@airkyi.com>
References: <20260717072323.96-1-kernel@airkyi.com>
 <20260717072323.96-5-kernel@airkyi.com>
Date: Fri, 17 Jul 2026 07:56:32 +0000
Message-Id: <20260717075632.BC24E1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBlcnJv
ciBjaGVja2luZyBsb2dpYyBpbiBgY2RuX2RwX3Byb2JlYCBza2lwcyBwb3J0IGluaXRpYWxpemF0
aW9uIGZvciB2YWxpZCBleHRjb24gZGV2aWNlcywgYnJlYWtpbmcgRGlzcGxheVBvcnQgZm9yIGxl
Z2FjeSBib2FyZHMuCi0gW0hpZ2hdIFJlbW92aW5nIHRoZSBgZXh0Y29uYCBub3RpZmllciB3aXRo
b3V0IHByb3ZpZGluZyBhbiBhbHRlcm5hdGl2ZSBtZWNoYW5pc20gY29tcGxldGVseSBicmVha3Mg
aG90cGx1ZyBkZXRlY3Rpb24gZm9yIFR5cGUtQyBjb25uZWN0aW9ucyB3aXRob3V0IGFuIGV4dGNv
biBkZXZpY2UuCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggdjMgNC81XSBkcm0vcm9ja2NoaXA6
IGNkbi1kcDogU3VwcG9ydCBoYW5kbGUgbGFuZSBpbmZvIHdpdGhvdXQgZXh0Y29uIC0tLQpjb21t
aXQgMjc4OWQ3Y2NiMGJiNDVmODJkNDM5NTM4Y2Y5YWVhYWMxZGE5YzVlOQpBdXRob3I6IENoYW95
aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KCmRybS9yb2NrY2hpcDogY2RuLWRw
OiBTdXBwb3J0IGhhbmRsZSBsYW5lIGluZm8gd2l0aG91dCBleHRjb24KClRoaXMgcGF0Y2ggYWRk
cyBzdXBwb3J0IGZvciBnZXR0aW5nIFBIWSBsYW5lIGluZm8gd2l0aG91dCB0aGUgaGVscCBvZiBl
eHRjb24uClRoZXJlIGlzIG5vIGV4dGNvbiBuZWVkZWQgaWYgdGhlIFR5cGUtQyBjb250cm9sbGVy
IGlzIHByZXNlbnQuIFRoZSBleHRjb24KZGV2aWNlIHNob3VsZCBzdGlsbCBiZSBzdXBwb3J0ZWQg
aWYgdGhlIFR5cGUtQyBjb250cm9sbGVyIGlzIG5vdCBwcmVzZW50LgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+IGluZGV4IDE5MGNjZTk1MzBjODIuLjc0ZTFmNTQyMmE2
ZTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpbIC4uLiBdCj4g
QEAgLTEwMjcsNiArMTAzMyw5IEBAIHN0YXRpYyBpbnQgY2RuX2RwX2JpbmQoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQgKmRhdGEpCj4gIAlmb3IgKGkgPSAw
OyBpIDwgZHAtPnBvcnRzOyBpKyspIHsKPiAgCQlwb3J0ID0gZHAtPnBvcnRbaV07Cj4gIAo+ICsJ
CWlmICghcG9ydC0+ZXh0Y29uKQo+ICsJCQljb250aW51ZTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hd
CkRvZXMgc2tpcHBpbmcgdGhlIG5vdGlmaWVyIHJlZ2lzdHJhdGlvbiB3aGVuIGV4dGNvbiBpcyBh
YnNlbnQgbGVhdmUgdGhlIGRyaXZlcgp3aXRob3V0IGFueSBob3RwbHVnIGRldGVjdGlvbiBtZWNo
YW5pc20/CgpUaGUgZHJpdmVyIHJlbGllcyBvbiB0aGUgY2RuX2RwX3BkX2V2ZW50IG5vdGlmaWVy
IChyZWdpc3RlcmVkIHZpYSBleHRjb24pIHRvCnNjaGVkdWxlIGRwLT5ldmVudF93b3JrLCB3aGlj
aCBwcm9iZXMgdGhlIGhhcmR3YXJlLCB1cGRhdGVzIHRoZSBjb25uZWN0aW9uCnN0YXRlLCBhbmQg
Y2FsbHMgZHJtX2JyaWRnZV9ocGRfbm90aWZ5KCkuCgpXaXRob3V0IGFuIGFsdGVybmF0aXZlIEhQ
RCBtZWNoYW5pc20gd2hlbiBleHRjb24gaXMgYWJzZW50LCB3b24ndCBob3RwbHVnCmV2ZW50cyBi
ZSBzaWxlbnRseSBpZ25vcmVkLCBjYXVzaW5nIGRpc3BsYXlzIHRvIG9ubHkgYmUgZGV0ZWN0ZWQg
aWYgcGx1Z2dlZCBpbgpkdXJpbmcgYm9vdCBvciByZXN1bWU/Cgo+ICAJCXBvcnQtPmV2ZW50X25i
Lm5vdGlmaWVyX2NhbGwgPSBjZG5fZHBfcGRfZXZlbnQ7Cj4gIAkJcmV0ID0gZGV2bV9leHRjb25f
cmVnaXN0ZXJfbm90aWZpZXIoZHAtPmRldiwgcG9ydC0+ZXh0Y29uLAo+ICAJCQkJCQkgICAgRVhU
Q09OX0RJU1BfRFAsClsgLi4uIF0KPiBAQCAtMTExOSwxNCArMTEyOCwxNCBAQCBzdGF0aWMgaW50
IGNkbl9kcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCSAgICBQVFJf
RVJSKHBoeSkgPT0gLUVQUk9CRV9ERUZFUikKPiAgCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4g
IAo+IC0JCWlmIChJU19FUlIoZXh0Y29uKSB8fCBJU19FUlIocGh5KSkKPiArCQlpZiAoSVNfRVJS
KHBoeSkgfHwgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYpCj4gIAkJCWNvbnRpbnVlOwoKW1Nl
dmVyaXR5OiBIaWdoXQpEb2VzIGV2YWx1YXRpbmcgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYg
d2l0aG91dCBmaXJzdCBjaGVja2luZyBpZiBleHRjb24KaXMgYW4gZXJyb3IgcG9pbnRlciBicmVh
ayBpbml0aWFsaXphdGlvbiBmb3IgdmFsaWQgZXh0Y29uIGRldmljZXM/CgpXaGVuIGEgdmFsaWQg
ZXh0Y29uIGRldmljZSBpcyBzdWNjZXNzZnVsbHkgZm91bmQsIGV4dGNvbiBpcyBhIHZhbGlkIGtl
cm5lbApwb2ludGVyLiBDYXN0aW5nIHRoaXMgcG9pbnRlciB0byBsb25nIHZpYSBQVFJfRVJSKCkg
eWllbGRzIGEgbWVtb3J5IGFkZHJlc3MKdGhhdCBpcyBub3QgZXF1YWwgdG8gLUVOT0RFVi4KClNp
bmNlIHRoZSBjb25kaXRpb24gaW5jb3JyZWN0bHkgZXZhbHVhdGVzIHRvIHRydWUsIHdvbid0IHRo
ZSBsb29wIGNvbnRpbnVlCmFuZCBza2lwIHBvcnQgYWxsb2NhdGlvbiBmb3IgYWxsIHZhbGlkIGV4
dGNvbiBkZXZpY2VzLCBicmVha2luZyBEaXNwbGF5UG9ydApvbiBleGlzdGluZyBwbGF0Zm9ybXMg
dGhhdCB1c2UgZXh0Y29uPwoKPiAgCj4gIAkJcG9ydCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVv
ZigqcG9ydCksIEdGUF9LRVJORUwpOwo+ICAJCWlmICghcG9ydCkKPiAgCQkJcmV0dXJuIC1FTk9N
RU07Cj4gIAo+IC0JCXBvcnQtPmV4dGNvbiA9IGV4dGNvbjsKPiArCQlwb3J0LT5leHRjb24gPSBJ
U19FUlIoZXh0Y29uKSA/IE5VTEwgOiBleHRjb247Cj4gIAkJcG9ydC0+cGh5ID0gcGh5Owo+ICAJ
CXBvcnQtPmRwID0gZHA7Cj4gIAkJcG9ydC0+aWQgPSBpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNzA3MjMyMy45Ni0xLWtl
cm5lbEBhaXJreWkuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
