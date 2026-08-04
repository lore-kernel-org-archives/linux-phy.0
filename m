Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F11EC5518F
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 07:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPmR1aeKJCOlSmlfKrQG9W4SXgy7ASFejRiZ1f9nw7M=; b=OR0bhtwqYYrLdJ
	P2IaQySGPWI3U5CDbHmCipfW/pvLslQr1oe58cqtfuqmEpCRWepmMd0z5Ho330FEkfo6U7EhMbZr9
	/CmyWEHclklOX5cndADUUGurypITh5cvmvcUOjt4FWvaF8tYJ7EuRQlwTA8TWNAM+9M7SnhPsBQrX
	eu1Hp+NnBDnFmT8zkW82flFeqmnTL4BdFwcCqhuTY9UFGI2ssKfRRn1ThZkHPPbupWqRAL0G1Y8eO
	mUjQRC6YM1PZPxuz3jwET+5k/JKkB3vfTnnqjLAFd9gJKj24ryJPrf7gAf+6ry2dX0zQn4kPe2802
	i5gYtRWsBgArMi3cPOcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9dE-00000001F9Y-1Kvu;
	Tue, 04 Aug 2026 07:32:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9dC-00000001F9O-0bkA
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 07:32:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5E76B60A6B;
	Tue,  4 Aug 2026 07:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BD3F1F00A3A;
	Tue,  4 Aug 2026 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785828729;
	bh=tlgSfQXHOULHBdJhxAmVT6LrpphatOIWdmSljqGdoPU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fTs0q75C4ANOI358ZYN8RM+Z+H9GLbhr+w8rpFjlC/ZC7z/P2xTzqrxw4UB7RZrSZ
	 p9oBfEx/WnS15NKc277r/CDH+5Cf1ZUBTBn05q2JBCjFJzhPIYwOXnRCyjUoiXgdOf
	 cvYTXfFV7S8PctJRpgXJQItUnKzn1GisUo6bUrFVfFewiAdQpTwZ+XLSq1jhM7C4ZJ
	 nHjI4rPnWC92OzZx5cziYoAL6VKiAwKJDUHw71Aw3rhDCx5ZIfYy9Tq11MGahw4PSu
	 x9jlx9lkpFqSxuYPK1wzHIzMIsgEZs+hkpg/kqY053dHdyZb2i1OjXam6myJMYVPdR
	 1Dmj2QU8o2MbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/7] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260804070730.68-6-kernel@airkyi.com>
References: <20260804070730.68-1-kernel@airkyi.com>
 <20260804070730.68-6-kernel@airkyi.com>
Date: Tue, 04 Aug 2026 07:32:07 +0000
Message-Id: <20260804073208.9BD3F1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFBhc3NpbmcgYGNoaWxk
X25wYCB0byBgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKClgIHdpdGhvdXQgYWNx
dWlyaW5nIGFuIGFkZGl0aW9uYWwgcmVmZXJlbmNlIGxlYWRzIHRvIGEgcmVmY291bnQgdW5kZXJm
bG93IGFuZCBwb3RlbnRpYWwgZG91YmxlLWZyZWUuCi0gW01lZGl1bV0gVGhlIHJlc3VsdCBvZiBg
ZGV2bV9waHlfY3JlYXRlKClgIGlzIG5vdCBjaGVja2VkIGltbWVkaWF0ZWx5LCBsZWFkaW5nIHRv
IHBvdGVudGlhbCBlcnJvciBzaGFkb3dpbmcgYW5kIGJyb2tlbiBwcm9iZSBkZWZlcnJhbC4KLS0K
Ci0tLSBQYXRjaCBbNV06IFtQQVRDSCB2NiA1LzddIHBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hp
cC10eXBlYzogQWRkIERSTSBBVVggYnJpZGdlIC0tLQpjb21taXQgZWQwMzA4NzBmY2EwMWE4OTk5
YjMxOTNjMzhiZWNhYWViNDI3NmE5MQpBdXRob3I6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KCnBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC10eXBlYzogQWRkIERS
TSBBVVggYnJpZGdlCgpVc2luZyB0aGUgRFJNX0FVWF9CUklER0UgaGVscGVyIHRvIGNyZWF0ZSB0
aGUgdHJhbnNwYXJlbnQgRFJNIGJyaWRnZQpkZXZpY2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gaW5kZXggZDk3MDFiNjEwNmQ1NS4uNDgwNzBiNTA0MTZl
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCgpbIC4u
LiBdCgo+IEBAIC0xMTYyLDE2ICsxMTYzLDI0IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdHlwZWNf
cGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJZm9yX2VhY2hf
YXZhaWxhYmxlX2NoaWxkX29mX25vZGUobnAsIGNoaWxkX25wKSB7Cj4gIAkJc3RydWN0IHBoeSAq
cGh5Owo+ICsJCXJldCA9IDA7Cj4gIAo+IC0JCWlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAs
ICJkcC1wb3J0IikpCj4gKwkJaWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwgImRwLXBvcnQi
KSkgewo+ICAJCQlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAgCQkJCQkg
ICAgICAmcm9ja2NoaXBfZHBfcGh5X29wcyk7Cj4gLQkJZWxzZSBpZiAob2Zfbm9kZV9uYW1lX2Vx
KGNoaWxkX25wLCAidXNiMy1wb3J0IikpCj4gKwkJCXJldCA9IGRybV9hdXhfYnJpZGdlX3JlZ2lz
dGVyX2Zyb21fbm9kZShkZXYsIGNoaWxkX25wKTsKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQg
d2UgY2hlY2sgaWYgZGV2bV9waHlfY3JlYXRlKCkgZmFpbGVkIGJlZm9yZSByZWdpc3RlcmluZyB0
aGUgYnJpZGdlPwoKSWYgZGV2bV9waHlfY3JlYXRlKCkgZmFpbHMgd2l0aCBhbiBlcnJvciBsaWtl
IC1FUFJPQkVfREVGRVIsIGJ1dApkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSBh
bHNvIGZhaWxzLCB0aGUgY29kZSBiZWxvdyBjaGVja3MgJ3JldCcKZmlyc3QgYW5kIHJldHVybnMg
dGhhdCBlcnJvci4gVGhpcyBjb3VsZCBzaGFkb3cgdGhlIC1FUFJPQkVfREVGRVIgZnJvbSB0aGUK
UEhZIGNyZWF0aW9uIGFuZCBwcmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBwcm9wZXJseSBwcm9iaW5n
IGFnYWluLgoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBuZWVkIHRvIGNhbGwgb2Zf
bm9kZV9nZXQoKSBvbiBjaGlsZF9ucCBiZWZvcmUgcGFzc2luZyBpdCBoZXJlPwoKVGhlIGZvcl9l
YWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKCkgbG9vcCBvbmx5IGhvbGRzIGEgcmVmZXJlbmNl
IHRvIGNoaWxkX25wCmR1cmluZyB0aGUgY3VycmVudCBpdGVyYXRpb24sIGRyb3BwaW5nIGl0IHdo
ZW4gYWR2YW5jaW5nIHRvIHRoZSBuZXh0IG5vZGUuCkhvd2V2ZXIsIGRybV9hdXhfYnJpZGdlX3Jl
Z2lzdGVyX2Zyb21fbm9kZSgpIGFzc2lnbnMgdGhlIG5vZGUgdG8gdGhlIGJyaWRnZQpkZXZpY2Ug
d2l0aG91dCBpbmNyZW1lbnRpbmcgdGhlIHJlZmVyZW5jZSBjb3VudCwgYW5kIGxhdGVyIGNhbGxz
IG9mX25vZGVfcHV0KCkKaW4gaXRzIHJlbGVhc2UgY2FsbGJhY2suCgpXaWxsIHRoaXMgbGVhZCB0
byBhIHJlZmNvdW50IHVuZGVyZmxvdyBhbmQgdXNlLWFmdGVyLWZyZWUgb2YgdGhlIG5vZGUgbWVt
b3J5Cm9uY2UgdGhlIGxvb3AgYWR2YW5jZXM/Cgo+ICsJCX0gZWxzZSBpZiAob2Zfbm9kZV9uYW1l
X2VxKGNoaWxkX25wLCAidXNiMy1wb3J0IikpCj4gIAkJCXBoeSA9IGRldm1fcGh5X2NyZWF0ZShk
ZXYsIGNoaWxkX25wLAo+ICAJCQkJCSAgICAgICZyb2NrY2hpcF91c2IzX3BoeV9vcHMpOwo+ICAJ
CWVsc2UKPiAgCQkJY29udGludWU7Cj4gIAo+ICsJCWlmIChyZXQpIHsKPiArCQkJcG1fcnVudGlt
ZV9kaXNhYmxlKGRldik7Cj4gKwkJCW9mX25vZGVfcHV0KGNoaWxkX25wKTsKCltTZXZlcml0eTog
SGlnaF0KSWYgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgZmFpbHMsIGRvZXMg
dGhpcyBjYXVzZSBhIGRvdWJsZS1mcmVlCm9mIHRoZSBPRiBub2RlPwoKQmVjYXVzZSB0aGUgbG9v
cCByZWZlcmVuY2Ugd2FzIHBhc3NlZCBkaXJlY3RseSB0byB0aGUgYnJpZGdlIHJlZ2lzdHJhdGlv
bgp3aXRob3V0IGluY3JlbWVudGluZyB0aGUgcmVmZXJlbmNlIGNvdW50LCBhbmQgdGhlIGJyaWRn
ZSBhbHJlYWR5IGNhbGxzCm9mX25vZGVfcHV0KCkgb24gaXRzIG93biBpbnRlcm5hbCBlcnJvciBw
YXRoLCBjYWxsaW5nIG9mX25vZGVfcHV0KCkgaGVyZQphZ2FpbiB3aWxsIGRyb3AgdGhlIHJlZmVy
ZW5jZSBjb3VudCBhIHNlY29uZCB0aW1lLgoKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwo+
ICAJCWlmIChJU19FUlIocGh5KSkgewo+ICAJCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBjcmVh
dGUgcGh5OiAlcE9GblxuIiwKPiAgCQkJCWNoaWxkX25wKTsKCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQwNzA3MzAuNjgtMS1r
ZXJuZWxAYWlya3lpLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
