Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B035DC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 15:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYX6mnmv2Gcni9E0gRYds7nxaeGjAgi8vPIe0vgDS0E=; b=d9HT+cY/03dEHY
	181srBEBFXEuhjW+EUabJUJsGQ/+/Dg/h9c/4V9MXxcXkB4NajAjiCW+3uX+J0b5fqw3rS2m4erCY
	JGIA3OgZxunHTvylxLY+y+gaC4SYYfD1Rbb4cNZjZoi3QCfn/tNewGNWQ2RQLGLsEIAYCeK86KRz7
	dBiHfd8r/gG1O45m6QN6AM5XsSrEqXr+EWkm6vS/hbcmq+Z6sMhIrbFJs98HVGaUD2x+tSDA/erdB
	BvWOycT2gBBKatR+L9Vi9WR96lgfHIgqBshkcequxmQY/6ekV/1SMXDalbl27ZS1wtMv5sx3Qvdev
	K4znerJcU2wPSl2XTKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlqN4-00000007HZU-1iwO;
	Mon, 20 Jul 2026 15:57:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlqN3-00000007HZK-3zbW
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 15:57:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 403D9600AD;
	Mon, 20 Jul 2026 15:57:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DA581F000E9;
	Mon, 20 Jul 2026 15:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784563053;
	bh=B3Gd7Uai0SkshhPO4+FoxI0iPpFm6ifnJWLaTlByDwA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fkxPoeKuhYMg2C5XOig95EVpXPVzU/I/vOu/X/iD/mHlxZfRlsUazZieHA93kHWeb
	 plnE2pcPoF0zHsJTR7dpVDiU+yH4BfyTohFbLMiJIBc2CU1TgROC7hepLoL+4I3sAp
	 jf62kOU5fAc9rq9AUNp9xr46QA280Mcl+IqG4Gy1uYe9yCJibSWN9UDyeJ1s1jfD5N
	 44D5sdDTQqDAP2qgp4D/3Iy5U2ocemtHimgG8HP+uKN4RjbnwfDt1znTfLEm7mal0n
	 BI6unQCqqqSWHsIG7e16z3UJYfQXdIvAk5ULNeEP/DtP2yFq9eVz1qdQEetUtxLmLh
	 MyOqmLnzvSvkA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: zynqmp: fix runtime PM leak on probe
 allocation failure
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260720153832.1130006-3-radhey.shyam.pandey@amd.com>
References: <20260720153832.1130006-1-radhey.shyam.pandey@amd.com>
 <20260720153832.1130006-3-radhey.shyam.pandey@amd.com>
Date: Mon, 20 Jul 2026 15:57:32 +0000
Message-Id: <20260720155732.9DA581F000E9@smtp.kernel.org>
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
IFtIaWdoXSBQcmVtYXR1cmUgcmVnaXN0cmF0aW9uIG9mIHRoZSBQSFkgcHJvdmlkZXIgZXhwb3Nl
cyBjb25zdW1lcnMgdG8gYSBVc2UtQWZ0ZXItRnJlZSAoVUFGKSBpZiBhIHN1YnNlcXVlbnQgcHJv
YmUgaW5pdGlhbGl6YXRpb24gc3RlcCBmYWlscy4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCAy
LzJdIHBoeTogenlucW1wOiBmaXggcnVudGltZSBQTSBsZWFrIG9uIHByb2JlIGFsbG9jYXRpb24g
ZmFpbHVyZSAtLS0KY29tbWl0IGUwN2QyYTAzZDU2ZWNhZDYyZjFmMzg0MjFhZDEwNTQ4NzJhNWZm
YjYKQXV0aG9yOiBSYWRoZXkgU2h5YW0gUGFuZGV5IDxyYWRoZXkuc2h5YW0ucGFuZGV5QGFtZC5j
b20+CiAgICAKcGh5OiB6eW5xbXA6IGZpeCBydW50aW1lIFBNIGxlYWsgb24gcHJvYmUgYWxsb2Nh
dGlvbiBmYWlsdXJlCiAgICAKVGhpcyBjb21taXQgbW92ZXMgdGhlIGRldm1fa21hbGxvYygpIGFs
bG9jYXRpb24gZm9yIHNhdmVkX3JlZ3MgYmVmb3JlIGNhbGxpbmcKcG1fcnVudGltZV9yZXN1bWVf
YW5kX2dldCgpLiBUaGlzIGVuc3VyZXMgdGhhdCBhbiBhbGxvY2F0aW9uIGZhaWx1cmUgZG9lcyBu
b3QKbGVhdmUgYW4gdW5yZWxlYXNlZCBydW50aW1lIFBNIHVzYWdlIGNvdW50ZXIuCiAgICAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMvcGh5
L3hpbGlueC9waHktenlucW1wLmMKPiBpbmRleCBjODIzMGYyYmRhNjI5Li4yMTM4ZjUzOTk4MjFh
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKPiArKysgYi9k
cml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jCj4gQEAgLTEwNDQsNiArMTA0NCwxMiBAQCBz
dGF0aWMgaW50IHhwc2d0cl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJ
CXJldHVybiBQVFJfRVJSKHByb3ZpZGVyKTsKPiAgCX0KPiAgCj4gKwlndHJfZGV2LT5zYXZlZF9y
ZWdzID0gZGV2bV9rbWFsbG9jKGd0cl9kZXYtPmRldiwKPiArCQkJCQkgICBzaXplb2Yoc2F2ZV9y
ZWdfYWRkcmVzcyksCj4gKwkJCQkJICAgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIWd0cl9kZXYtPnNh
dmVkX3JlZ3MpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyBmYWlsaW5nIHRoZSBwcm9iZSBoZXJl
IGV4cG9zZSBhCnVzZS1hZnRlci1mcmVlIHJhY2UgY29uZGl0aW9uPwoKSnVzdCBhYm92ZSB0aGlz
IGJsb2NrIGluIHhwc2d0cl9wcm9iZSgpLCB0aGUgZHJpdmVyIHJlZ2lzdGVycyB0aGUgUEhZIHBy
b3ZpZGVyCnVzaW5nIGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKCkuIElmIHRoaXMgbmV3
IGRldm1fa21hbGxvYygpIGNhbGwgKG9yIHRoZQpzdWJzZXF1ZW50IHBtX3J1bnRpbWVfcmVzdW1l
X2FuZF9nZXQoKSBjYWxsKSBmYWlscywgdGhlIHByb2JlIGZ1bmN0aW9uIHdpbGwKcmV0dXJuIGFu
IGVycm9yLiBEZXZyZXMgd2lsbCB0aGVuIGF1dG9tYXRpY2FsbHkgZnJlZSB0aGUgZHJpdmVyIGRh
dGEsIGluY2x1ZGluZwpndHJfZGV2LgoKSWYgYSBjb25zdW1lciBkZXZpY2UgaXMgcHJvYmluZyBj
b25jdXJyZW50bHkgYW5kIG9idGFpbnMgYSByZWZlcmVuY2UgdG8gdGhlIFBIWQpiZWZvcmUgdGhp
cyBlcnJvciBwYXRoIGV4ZWN1dGVzLCBjb3VsZCB0aGF0IGNvbnN1bWVyIGxhdGVyIGF0dGVtcHQg
dG8gdXNlIHRoZQpmcmVlZCBndHJfZGV2IG1lbW9yeSB3aGVuIGNhbGxpbmcgcGh5X2luaXQoKT8g
V291bGQgaXQgYmUgc2FmZXIgdG8gbW92ZSB0aGUKZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0
ZXIoKSBjYWxsIHRvIHRoZSB2ZXJ5IGVuZCBvZiB4cHNndHJfcHJvYmUoKSBhZnRlcgphbGwgaW5p
dGlhbGl6YXRpb24gYW5kIGFsbG9jYXRpb25zIGhhdmUgc3VjY2VlZGVkPwoKPiAgCXBtX3J1bnRp
bWVfc2V0X2FjdGl2ZShndHJfZGV2LT5kZXYpOwo+ICAJcG1fcnVudGltZV9lbmFibGUoZ3RyX2Rl
di0+ZGV2KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MjAxNTM4MzIuMTEzMDAwNi0xLXJhZGhleS5zaHlhbS5wYW5kZXlAYW1k
LmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
