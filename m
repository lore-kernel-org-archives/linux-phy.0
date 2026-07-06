Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E02C43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 09:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiV1sXpJ8wu9iPjvRycf1XzL/SV0k/SIO47rEqHEtlo=; b=hXeWXTGgbgCY8f
	iLFfanUpD77o/aWprQyPybcJNa+pE4s72sHhrQS1NV4v7hR4av2sWKV2JPp4j/k5whfAL2uHmunD4
	zTQLtUSVPK1jaylCa7/3m7zVyHBvZs+oV7DW64+ZHzC8I1PgMN+3uYbY0O5ZCrJQn6xhXPl67LcSM
	wQ5Fkn2q972aa/SavMH86Xca/GsJhbwmeZPcAWan8EEz3Srgb6JAvnBPPhSF9SvPsjJvbWe06mBcR
	PE4j1e50yO3DQiuhWaVWPIpIh5lBApY2K5KuZHjog25fnr7ylwrWetPjMOEGSG0M7kuuM8ZsNqBpS
	Ry5DKxcdf48Nfl5PpIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfzJ-0000000C6qS-1FDL;
	Mon, 06 Jul 2026 09:51:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfzH-0000000C6q9-1y6i
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 09:51:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B05C541339;
	Mon,  6 Jul 2026 09:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BC6A1F000E9;
	Mon,  6 Jul 2026 09:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783331498;
	bh=80SEud9SSc5nJCoaBVMLg2nI39mL2JAnoC0LmxzoV6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oVE5z6rjQExt9y1NQmCxeVey4T7MnRN8wrEpdbAmu6izBftqpErQNYE1ek89Map3I
	 HJxCN01xL2sPNP3M+EK+5NbP8rei1JiNQGMEYiI1DOtuBkvBx1fMcZLPjcQZo01YGQ
	 zjwStJkEFDE2kGElSD3zhJbv33E2bMxLLQqs/yI2bdXTcL2t+WYu1uMvO05n4N9CVm
	 eHhEsJzvS+k6jzmaJs1fXXnnUjg8aKeUNagBB8Ab4SFb9Rt36nUDhnfZ94JFFe4pfL
	 u1pqxpORstRJYK35d9dHw0WpccDHKHY/QEM4Uex8iIfsR6EYF1oBbb6zO0kD5inOYn
	 FMlwk/espjCtA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: allwinner: sun4i-usb: disable the PHY2 PMU clock
 after SIDDQ setup
To: raoxu <raoxu@uniontech.com>
Cc: olteanv@gmail.com, linux-sunxi@lists.linux.dev, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <1368E4E3485E881C+20260706093549.867442-1-raoxu@uniontech.com>
References: <1368E4E3485E881C+20260706093549.867442-1-raoxu@uniontech.com>
Date: Mon, 06 Jul 2026 09:51:37 +0000
Message-Id: <20260706095138.3BC6A1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBDb25jdXJyZW50IHVzYWdlIG9mIFBIWTIgcmVzdWx0cyBpbiBoYXJkd2FyZSBtYWxm
dW5jdGlvbiBiZWNhdXNlIGBwaHkyLT5yZXNldGAgaXMgcmVxdWVzdGVkIGFzIGFuIGV4Y2x1c2l2
ZSByZXNldCBjb250cm9sLgotIFtIaWdoXSBUaGUgY2xvY2sgYW5kIHJlc2V0IHRlYXJkb3duIG9y
ZGVyIGZvciBgcGh5MmAgaW4gYHN1bjRpX3VzYl9waHlfZXhpdCgpYCBpcyBpbnZlcnRlZCBhbmQg
YXN5bW1ldHJpYyB3aXRoIGl0cyBpbml0aWFsaXphdGlvbi4KLS0KCmNvbW1pdCA5YzMzZTAwZDMz
NzViNGE1Y2IwNmRiZGIxMWJjODc0Yzg5NjBmY2ZmCkF1dGhvcjogWHUgUmFvIDxyYW94dUB1bmlv
bnRlY2guY29tPgoKcGh5OiBhbGx3aW5uZXI6IHN1bjRpLXVzYjogZGlzYWJsZSB0aGUgUEhZMiBQ
TVUgY2xvY2sgYWZ0ZXIgU0lERFEgc2V0dXAKClRoaXMgY29tbWl0IGZpeGVzIGEgY2xvY2sgYWNj
b3VudGluZyBpbWJhbGFuY2UgYnkgZW5zdXJpbmcgdGhlIHNhbWUgUEhZMgpjbGsyIHRoYXQgd2Fz
IGVuYWJsZWQgZm9yIGF1eGlsaWFyeSBQTVUgYWNjZXNzIGlzIGNvcnJlY3RseSBkaXNhYmxlZCwK
cmF0aGVyIHRoYW4gZGlzYWJsaW5nIHRoZSBjdXJyZW50IFBIWSdzIGNsazIuCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jIGIvZHJpdmVycy9waHkv
YWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+IGluZGV4IGUyZmJmOGNjZjk5ZTEuLjgzOTg1NmMw
OWUzMDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2Iu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiBAQCAtMzE4
LDcgKzMxOCw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfdXNiX3BoeV9pbml0KHN0cnVjdCBwaHkgKl9w
aHkpCj4gIAkJCXdyaXRlbCh2YWwsIHBoeTItPnBtdSArIFJFR19IQ0lfUEhZX0NUTCk7Cj4gIAkJ
fQo+ICAKPiAtCQljbGtfZGlzYWJsZV91bnByZXBhcmUocGh5LT5jbGsyKTsKPiArCQljbGtfZGlz
YWJsZV91bnByZXBhcmUocGh5Mi0+Y2xrMik7Cj4gIAl9CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMg
aXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBzaW5jZSB0aGlzIHBhdGNoIGRlYWxzIHdpdGgg
UEhZMiByZXNvdXJjZQphY2NvdW50aW5nLCBkb2VzIHRoZSByZXNldCBjb250cm9sIGZvciBQSFky
IGFsc28gaGF2ZSBhIGNvbmN1cnJlbnQgdXNhZ2UKaXNzdWU/CgpJbiBzdW40aV91c2JfcGh5X3By
b2JlKCksIHRoZSByZXNldCBjb250cm9sIGlzIGZldGNoZWQgZXhjbHVzaXZlbHk6CgpzdW40aV91
c2JfcGh5X3Byb2JlKCkKICAgIC4uLgogICAgcGh5LT5yZXNldCA9IGRldm1fcmVzZXRfY29udHJv
bF9nZXQoZGV2LCBuYW1lKTsKCkJlY2F1c2UgaXQgaXMgYW4gZXhjbHVzaXZlIHJlc2V0IGNvbnRy
b2wsIGl0IGRvZXMgbm90IG1haW50YWluIGEgcmVmZXJlbmNlCmNvdW50IGZvciBhc3NlcnRpb25z
LiBXaGVuIG11bHRpcGxlIFBIWXMgKGxpa2UgUEhZMCBhbmQgUEhZMSkgaW5kZXBlbmRlbnRseQp1
c2UgUEhZMiwgd29uJ3Qgb25lIFBIWSBleGl0aW5nIHVuY29uZGl0aW9uYWxseSBhc3NlcnQgcGh5
Mi0+cmVzZXQgYW5kCmluc3RhbnRseSBicmVhayB0aGUgb3RoZXIgYWN0aXZlIFBIWXM/CgpzdW40
aV91c2JfcGh5X2V4aXQoKQogICAgLi4uCiAgICByZXNldF9jb250cm9sX2Fzc2VydChwaHkyLT5y
ZXNldCk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYWxzbyBhIHByZS1leGlzdGluZyBpc3N1
ZSwgYnV0IHRoZSBjbG9jayBhbmQgcmVzZXQgdGVhcmRvd24gb3JkZXIKZm9yIHBoeTIgYXBwZWFy
cyBpbnZlcnRlZCBpbiBzdW40aV91c2JfcGh5X2V4aXQoKSBjb21wYXJlZCB0byBob3cgaXQgaXMK
c2FmZWx5IGluaXRpYWxpemVkIGhlcmUgaW4gc3VuNGlfdXNiX3BoeV9pbml0KCkuCgpJbiBzdW40
aV91c2JfcGh5X2luaXQoKSwgcGh5Mi0+Y2xrIGlzIGVuYWJsZWQgYmVmb3JlIHBoeTItPnJlc2V0
IGlzCmRlYXNzZXJ0ZWQuIEhvd2V2ZXIsIGluIHN1bjRpX3VzYl9waHlfZXhpdCgpLCB0aGUgY2xv
Y2sgaXMgZGlzYWJsZWQgYmVmb3JlCnRoZSByZXNldCBpcyBhc3NlcnRlZDoKCnN1bjRpX3VzYl9w
aHlfZXhpdCgpCiAgICAuLi4KICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShwaHkyLT5jbGspOwog
ICAgcmVzZXRfY29udHJvbF9hc3NlcnQocGh5Mi0+cmVzZXQpOwoKQ291bGQgYXNzZXJ0aW5nIHRo
ZSByZXNldCBvbiBhbiB1bmNsb2NrZWQgaGFyZHdhcmUgYmxvY2sgbGVhdmUgdGhlIFBIWTIKYmxv
Y2sgaW4gYW4gdW5kZWZpbmVkIG9yIHN0dWNrIHN0YXRlPwoKPiAgCj4gIAlpZiAocGh5LT5wbXUg
JiYgZGF0YS0+Y2ZnLT5oY2lfcGh5X2N0bF9jbGVhcikgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8xMzY4RTRFMzQ4NUU4ODFDKzIwMjYw
NzA2MDkzNTQ5Ljg2NzQ0Mi0xLXJhb3h1QHVuaW9udGVjaC5jb20/cGFydD0xCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
