Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F3F7C55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 07:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3M6Ws4sVVpZZcIeuwZSQryBvSK3wUNvZ7ec+t+Ty3Y=; b=ppWxk4Z6dJrU1q
	r/J5D2o6rk/Lg1ab9HxOlkpNv7yf+zNKVhN0qFbsMfJ3pM+MyIPKaI+cq/jl6x3HggutxfUoN9lEH
	qyLR7KRi6GPsCz53D+nRHq/Hr4QTwCTbhscY1zE7yFn4bSAtiJ5EY7a36WbzXE91rfLDD6wXU9gjX
	R35WUGaa4pParMAqu55p7pc13uTW+JKD4GYXn0+IqpGTR3tryUR0Y7kD4QkX+q7GacItdNMOEo0aC
	4HPszTNgr6+8p6JupQ2AAdHtb/627ljzOClSPqEEkHzNHACRCyLwLx4yUeB4iS85ulQQCL2i+xUrh
	31TgjdQ9gehfsOnVP2vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9gE-00000001FSg-3lUi;
	Tue, 04 Aug 2026 07:35:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9gD-00000001FSY-48lH
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 07:35:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4DA3160A77;
	Tue,  4 Aug 2026 07:35:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 560F71F000E9;
	Tue,  4 Aug 2026 07:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785828917;
	bh=e7qRs4IqtYJoIg5+mk7KbBb3QrwL3cGkLcEJyc3Ym5c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SQYBSKz0BOB9mAdZEF0rl81gs4JjTKmV9foVwORdAF2ANieWFUF/wz0h5gaTgsq46
	 YQjrbKqY95Llny6IPE+hn1lfsxQoeLbmkK7qXEpApHtdWforOpkov4CMR/3V7wQlP4
	 CU/0yisln0CTF9wxigxE0be7lwwzyZZMxhBnRnwEO6RRB0QW+VOYHv+dsJxf36BeIf
	 oLUKCKznUu4h8l9Kx0/wtnKBP48aIpBZKFhy9gRNBrrxd0kCv5c+lFKG2zA+XSDDPi
	 TzdmKFOZq6++mDhCD6AciWB7np43zquiP2c92qm4Z/HoV/4MngdPInmIu2IhBP3dG+
	 O13nKDY1s1qjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/7] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260804070730.68-7-kernel@airkyi.com>
References: <20260804070730.68-1-kernel@airkyi.com>
 <20260804070730.68-7-kernel@airkyi.com>
Date: Tue, 04 Aug 2026 07:35:15 +0000
Message-Id: <20260804073516.560F71F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBMb2dpYyBlcnJv
ciBpbiBwb2ludGVyIGVycm9yIGNoZWNraW5nIGJyZWFrcyBwcm9iZSBmb3IgYWxsIGV4aXN0aW5n
IGJvYXJkcyB1c2luZyBleHRjb24uCi0gW0hpZ2hdIE1pc3NpbmcgaG90cGx1ZyBkZXRlY3Rpb24g
KEhQRCkgbWVjaGFuaXNtIHdoZW4gZXh0Y29uIGlzIGFic2VudC4KLS0KCi0tLSBQYXRjaCBbNl06
IFtQQVRDSCB2NiA2LzddIGRybS9yb2NrY2hpcDogY2RuLWRwOiBTdXBwb3J0IGhhbmRsZSBsYW5l
IGluZm8gd2l0aG91dCBleHRjb24gLS0tCmNvbW1pdCAyZWM1ZjExMGYxNTU3ZWJhZWM4MmNiZTZi
MzlkNGUyYWI3ZjRhODhmCkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hp
cHMuY29tPgoKZHJtL3JvY2tjaGlwOiBjZG4tZHA6IFN1cHBvcnQgaGFuZGxlIGxhbmUgaW5mbyB3
aXRob3V0IGV4dGNvbgoKVGhpcyBwYXRjaCBhZGQgc3VwcG9ydCBmb3IgZ2V0IFBIWSBsYW5lIGlu
Zm8gd2l0aG91dCBoZWxwIG9mIGV4dGNvbi4KClRoZXJlIGlzIG5vIGV4dGNvbiBuZWVkZWQgaWYg
dGhlIFR5cGUtQyBjb250cm9sbGVyIGlzIHByZXNlbnQuIEluIHRoaXMKY2FzZSwgdGhlIGxhbmUg
aW5mbyBjYW4gYmUgZ2V0IGZyb20gUEhZIGluc3RlYWQgb2YgZXh0Y29uLgoKVGhlIGV4dGNvbiBk
ZXZpY2Ugc2hvdWxkIHN0aWxsIGJlIHN1cHBvcnRlZCBpZiBUeXBlLUMgY29udHJvbGxlciBpcwpu
b3QgcHJlc2VudC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4t
ZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiBpbmRl
eCAxOTBjY2U5NTMwYzgyLi43NGUxZjU0MjJhNmUyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2Nkbi1kcC1jb3JlLmMKClsgLi4uIF0KCj4gQEAgLTEwMjcsNiArMTAzMyw5IEBAIHN0YXRp
YyBpbnQgY2RuX2RwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0
ZXIsIHZvaWQgKmRhdGEpCj4gIAlmb3IgKGkgPSAwOyBpIDwgZHAtPnBvcnRzOyBpKyspIHsKPiAg
CQlwb3J0ID0gZHAtPnBvcnRbaV07Cj4gIAo+ICsJCWlmICghcG9ydC0+ZXh0Y29uKQo+ICsJCQlj
b250aW51ZTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgc2tpcHBpbmcgdGhlIG5vdGlmaWVy
IHJlZ2lzdHJhdGlvbiB3aGVuIGV4dGNvbiBpcyBhYnNlbnQgYnJlYWsgaG90cGx1ZyAKZGV0ZWN0
aW9uPyAKClRoZSBkcml2ZXIgcmVsaWVzIG9uIGNkbl9kcF9wZF9ldmVudF93b3JrKCkgdG8gdHJh
bnNpdGlvbiBkcC0+Y29ubmVjdGVkIHRvIAp0cnVlLCBsb2FkIGZpcm13YXJlLCBhbmQgdHJhaW4g
dGhlIGxpbmsuIFdpdGhvdXQgdGhlIGV4dGNvbiBub3RpZmllciwgCmV2ZW50X3dvcmsgaXMgbmV2
ZXIgc2NoZWR1bGVkIG9uIGhvdHBsdWcuIAoKU2luY2UgY2RuX2RwX2JyaWRnZV9kZXRlY3QoKSBz
aW1wbHkgcmV0dXJucyB0aGUgc3RhdGljIGRwLT5jb25uZWN0ZWQgc3RhdGU6Cgpkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYzpjZG5fZHBfYnJpZGdlX2RldGVjdCgpIHsKICAg
IG11dGV4X2xvY2soJmRwLT5sb2NrKTsKICAgIGlmIChkcC0+Y29ubmVjdGVkKQogICAgICAgIHN0
YXR1cyA9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkOwogICAgbXV0ZXhfdW5sb2NrKCZkcC0+
bG9jayk7CiAgICAuLi4KfQoKQ291bGQgS01TIHBvbGxpbmcgYWx3YXlzIHNlZSB0aGUgcG9ydCBh
cyBkaXNjb25uZWN0ZWQgd2hlbiBoYXJkd2FyZSBpcyAKY29uZmlndXJlZCB3aXRob3V0IGFuIGV4
dGNvbiBkZXZpY2U/Cgo+ICAJCXBvcnQtPmV2ZW50X25iLm5vdGlmaWVyX2NhbGwgPSBjZG5fZHBf
cGRfZXZlbnQ7Cj4gIAkJcmV0ID0gZGV2bV9leHRjb25fcmVnaXN0ZXJfbm90aWZpZXIoZHAtPmRl
diwgcG9ydC0+ZXh0Y29uLAo+ICAJCQkJCQkgICAgRVhUQ09OX0RJU1BfRFAsCgpbIC4uLiBdCgo+
IEBAIC0xMTE5LDE0ICsxMTI4LDE0IEBAIHN0YXRpYyBpbnQgY2RuX2RwX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJICAgIFBUUl9FUlIocGh5KSA9PSAtRVBST0JFX0RF
RkVSKQo+ICAJCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiAgCj4gLQkJaWYgKElTX0VSUihleHRj
b24pIHx8IElTX0VSUihwaHkpKQo+ICsJCWlmIChJU19FUlIocGh5KSB8fCBQVFJfRVJSKGV4dGNv
bikgIT0gLUVOT0RFVikKPiAgCQkJY29udGludWU7Cj4gIAoKW1NldmVyaXR5OiBDcml0aWNhbF0K
V2lsbCB0aGlzIGNvbmRpdGlvbiBhY2NpZGVudGFsbHkgc2tpcCBwb3J0IGluaXRpYWxpemF0aW9u
IGZvciBhbGwgdmFsaWQgZXh0Y29uCnBvaW50ZXJzPwoKSWYgZXh0Y29uIGlzIGEgdmFsaWQgcG9p
bnRlciwgUFRSX0VSUihleHRjb24pIGV2YWx1YXRlcyB0byBpdHMgbWVtb3J5IGFkZHJlc3MsCndo
aWNoIHdpbGwgbmV2ZXIgZXF1YWwgLUVOT0RFVi4gVGhpcyBjYXVzZXMgdGhlIGNvbmRpdGlvbiB0
byBldmFsdWF0ZSB0byB0cnVlLAp0cmlnZ2VyaW5nIHRoZSBjb250aW51ZSBzdGF0ZW1lbnQgYW5k
IGJ5cGFzc2luZyBwb3J0IHNldHVwIGNvbXBsZXRlbHkgZm9yIGFueQpoYXJkd2FyZSB0aGF0IGhh
cyBhbiBleHRjb24gZGV2aWNlLgoKPiAgCQlwb3J0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpwb3J0KSwgR0ZQX0tFUk5FTCk7Cj4gIAkJaWYgKCFwb3J0KQo+ICAJCQlyZXR1cm4gLUVOT01F
TTsKPiAgCj4gLQkJcG9ydC0+ZXh0Y29uID0gZXh0Y29uOwo+ICsJCXBvcnQtPmV4dGNvbiA9IElT
X0VSUihleHRjb24pID8gTlVMTCA6IGV4dGNvbjsKPiAgCQlwb3J0LT5waHkgPSBwaHk7CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
ODA0MDcwNzMwLjY4LTEta2VybmVsQGFpcmt5aS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
