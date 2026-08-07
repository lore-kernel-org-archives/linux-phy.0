Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18D6DC5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 16:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFOOmX89G7JQVywTt3Uia3EYiT/V/DuOy1/4CcNd45I=; b=XNfQmpO9HQCaJ3
	ZS0pD5JpuVPEFc0jV010QcIe1j38liKot5anDrg6s2l5paWRek8Z6TkEaX2AhtL0+xvx3Djb+paSg
	T5l8CSrUgEdGC8A5J7TS1CCbYLmXL4DCGTVPQpzNKdgfHmfeJCjhst9j5QqY0otMOI6j+8HKotbTF
	Rviez4ckwF5pLS15fIf6YNvPI58oWhHGVHuBJo70tg6qcURKrxqAI9+9cQvWbcbcdlg0AlnYgXYaU
	9+ggQvp3uVXQfPimPlSIHzqdLXEXW6xDuqoGMtFLOhgzL5y2aINg67oCDKVZEg4x2GxS20ocvfoAI
	9iic48t2ZxadxWMBPogA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsNU0-00000008Qdp-2kZR;
	Fri, 07 Aug 2026 16:31:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsNTz-00000008Qcx-3Cyg
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 16:31:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 16CA94088D;
	Fri,  7 Aug 2026 16:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB97A1F000E9;
	Fri,  7 Aug 2026 16:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786120303;
	bh=Zxh15rmHI5U07V1tn+ucx8KsBVx6tB7wihdRQcXeWGY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ub1gLVNlLIY54GH7xvVYnpCYEnDKZ3dhhmzTlVv5E4g4NlDsUhtO9FbK5p+AshsBC
	 UZzU8R7OSlT7agq1gWLwEmBiRyH05ERJSjPxbLLisAaFaXYlHJnMOigkE8N1HBHTtd
	 HonVy3V5gxph9r4Ne+7OhKLFqXcFSmRqNbg/dIPLKhYZqdw1mMUemABhcWhr7ZNB5O
	 +48rcBnhTJlTFXpAwHapKhy04B1TFOX04QqaT6Kgt/wlUdXGhHfHwvP4ctzceYf3Mr
	 dLs5s60oO8znYIVBe4BKPgfymDma8yfnIpD3si9U1EVVbnZv7op8XAb5rgwFp65vjC
	 Xs+CxXZ4bwC0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: zynqmp: register PHY provider after probe
 initialization
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260807162510.3681572-1-radhey.shyam.pandey@amd.com>
References: <20260807162510.3681572-1-radhey.shyam.pandey@amd.com>
Date: Fri, 07 Aug 2026 16:31:42 +0000
Message-Id: <20260807163142.AB97A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVXNpbmcgYXN5bmNo
cm9ub3VzIHBtX3J1bnRpbWVfcHV0KCkgaW1tZWRpYXRlbHkgYmVmb3JlIHBtX3J1bnRpbWVfZGlz
YWJsZSgpIG9uIHRoZSBuZXcgZXJyb3IgcGF0aCBjYW5jZWxzIHRoZSBwZW5kaW5nIHN1c3BlbmQs
IGxlYXZpbmcgdGhlIGhhcmR3YXJlIGluIGFuIGFjdGl2ZSBwb3dlciBzdGF0ZS4KLS0KCi0tLSBQ
YXRjaCBbMV06IFtQQVRDSF0gcGh5OiB6eW5xbXA6IHJlZ2lzdGVyIFBIWSBwcm92aWRlciBhZnRl
ciBwcm9iZSBpbml0aWFsaXphdGlvbiAtLS0KY29tbWl0IGQ3M2Y1NWY3YzU5ODJmZDY3MWE1ZWQ0
NDJjY2U3ZjM4Y2FhM2Q3OGEKQXV0aG9yOiBSYWRoZXkgU2h5YW0gUGFuZGV5IDxyYWRoZXkuc2h5
YW0ucGFuZGV5QGFtZC5jb20+CgpwaHk6IHp5bnFtcDogcmVnaXN0ZXIgUEhZIHByb3ZpZGVyIGFm
dGVyIHByb2JlIGluaXRpYWxpemF0aW9uCgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgcmVnaXN0cmF0
aW9uIG9mIHRoZSBPRiBQSFkgcHJvdmlkZXIgdG8gdGhlIGVuZCBvZgpwcm9iZSwgYWZ0ZXIgc2F2
ZWRfcmVncyBhbGxvY2F0aW9uIGFuZCBydW50aW1lIFBNIGFyZSBzdWNjZXNzZnVsbHkgc2V0dXAu
ClRoaXMgcHJldmVudHMgY29uY3VycmVudCBjb25zdW1lcnMgZnJvbSBvYnRhaW5pbmcgcmVmZXJl
bmNlcyB0byBkcml2ZXIKc3RhdGUgdGhhdCBjb3VsZCBiZSBmcmVlZCBpZiB0aGUgcHJvYmUgZmFp
bGVkIGxhdGVyLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzIwMTU1
NzMyLjlEQTU4MUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3hpbGlueC9waHktenlucW1wLmMgYi9kcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5j
Cj4gLS0tIGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3hpbGlueC9waHktenlucW1wLmMKWyAuLi4gXQo+IEBAIC0xMDgyLDYgKzEwNzUsMTQgQEAg
c3RhdGljIGludCB4cHNndHJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
CQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiArCXByb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlk
ZXJfcmVnaXN0ZXIoJnBkZXYtPmRldiwgeHBzZ3RyX3hsYXRlKTsKPiArCWlmIChJU19FUlIocHJv
dmlkZXIpKSB7Cj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAicmVnaXN0ZXJpbmcgcHJvdmlkZXIg
ZmFpbGVkXG4iKTsKPiArCQlwbV9ydW50aW1lX3B1dChndHJfZGV2LT5kZXYpOwo+ICsJCXBtX3J1
bnRpbWVfZGlzYWJsZShndHJfZGV2LT5kZXYpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhp
cyBlcnJvciBwYXRoIGxlYXZlIHRoZSBkZXZpY2UgaW4gYW4gYWN0aXZlIHBvd2VyIHN0YXRlPwoK
VXNpbmcgcG1fcnVudGltZV9wdXQoKSBxdWV1ZXMgYW4gYXN5bmNocm9ub3VzIGlkbGUgbm90aWZp
Y2F0aW9uLiBDYWxsaW5nCnBtX3J1bnRpbWVfZGlzYWJsZSgpIGltbWVkaWF0ZWx5IGFmdGVyd2Fy
ZCBjYW5jZWxzIHBlbmRpbmcgYXN5bmMgc3VzcGVuZAp3b3JrLCBsZWF2aW5nIHRoZSBoYXJkd2Fy
ZSBhY3RpdmUuCgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXNlIHBtX3J1bnRpbWVfcHV0X3N5bmMo
KSBoZXJlIHRvIGVuc3VyZSB0aGUgZGV2aWNlCmlzIHN5bmNocm9ub3VzbHkgc3VzcGVuZGVkIGJl
Zm9yZSBkaXNhYmxpbmcgcnVudGltZSBQTT8KCj4gKwkJcmV0dXJuIFBUUl9FUlIocHJvdmlkZXIp
Owo+ICsJfQo+ICsKPiAgCXJldHVybiAwOwo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODA3MTYyNTEwLjM2ODE1NzItMS1y
YWRoZXkuc2h5YW0ucGFuZGV5QGFtZC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
