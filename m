Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F100ACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOrf/3soRSAJF6mhD4Ht6cuMg9UX5yFsXz+oGUlKA2A=; b=dVpOEUd6WU6exZ
	DmLVofakJtwMVelRu+SOd351raFAO5Fkan+oGZdIjBcx5f9zgpXCmogB46rndP4i1wy1PRl/AHo7b
	ScHRfbIBaosUGelt6LtZdi8u6AcUByfEiehTS385x57s6ypxyDCRPM3L4m7qgCs3y1m3efW/Vcg7v
	tC6OD/nR5UZJRnAqKR6W8KXbAoJlQWs11F9IZ+DBsRRfvZ9SPnAPh2fLeoba0L3reI8DcfvmyjxKZ
	jvL1Qzt1L1tvei0r9FX8CjPYAsyoDL7oLgGDBYqhKlOY/pgtN8nBlNuHu/f4lap/czeAbbrOsOKY9
	LnkS9/CgWpZvP39Xsz5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFnJ-0000000AXG1-264j;
	Mon, 12 Oct 2026 13:10:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFnI-0000000AXFt-0X8j
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:10:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 440C2602CC;
	Mon, 12 Oct 2026 13:10:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3311F0089B;
	Mon, 12 Oct 2026 13:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791810619;
	bh=Hm8t+0jcsmAbnmkcfRmrxZO51C4KAD9iDIQ7CryQtLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TiGEoKXOvF5k/tIjKBdt5IEBQIreojNnhKNoj1TLKyczalBvlH8Gt5AtjOpJ8pXHI
	 DRVM4cCIfeT8QncL5+byaN4wJrKWRdkWOiZcytlxxWr4xRALLGwYM2PX0Zr/YTctkr
	 hE/elyu8PZ7CK2vCFfKtPbBL2te7+8hkFMcEqV8cGB0CRb/ObKG6S3tCni2gMwoWuS
	 COXupSlXhYWJEr9mpLX3Y53bIqOE6at1T+IVbX7VMYwzRpbQIuFzdWkw/2NNS8BUs8
	 LlvloKTuS1pvBEzHCE9mg41/fgz4f2xLr41r+83Ok92GkVhu60mrc9yOJIca7BnZIi
	 L6i7CZqKq0HBg==
Date: Mon, 12 Oct 2026 18:40:11 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Oleg Keri <okerixx@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Michael Scott <mike.scott@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in
 the typec callbacks
Message-ID: <aszb9Idx6UDHzyv6@debian>
References: <20260909151443.10276-1-okerixx@gmail.com>
 <20260909151443.10276-3-okerixx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909151443.10276-3-okerixx@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDU6MTQ6NDNQTSArMDIwMCwgT2xlZyBLZXJpIHdyb3Rl
Ogo+IHFtcF9jb21ib190eXBlY19zd2l0Y2hfc2V0KCkgYW5kIHFtcF9jb21ib190eXBlY19tdXhf
c2V0KCkgdGVhciB0aGUgY29tbW9uCj4gYmxvY2sgZG93biBhbmQgYnJpbmcgaXQgc3RyYWlnaHQg
YmFjayB1cCBvbiBhbiBvcmllbnRhdGlvbiBvciBhbHRtb2RlCj4gY2hhbmdlLCBidXQgdGhleSBk
aXNjYXJkIHRoZSByZXN1bHQgb2YgdGhlIGJyaW5ndXA6Cj4gCj4gCXFtcF9jb21ib19jb21fZXhp
dChxbXAsIHRydWUpOwo+IAo+IAlxbXBfY29tYm9fY29tX2luaXQocW1wLCB0cnVlKTsKPiAJaWYg
KHFtcC0+dXNiX2luaXRfY291bnQpCj4gCQlxbXBfY29tYm9fdXNiX3Bvd2VyX29uKHFtcC0+dXNi
X3BoeSk7Cj4gCj4gSWYgcW1wX2NvbWJvX2NvbV9pbml0KCkgZmFpbHMgLSBhIHJlZ3VsYXRvciwg
YSByZXNldCBvcgo+IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKCkgLSBpdCB1bndpbmRzIHdoYXQg
aXQgaGFkIGJyb3VnaHQgdXAgYW5kIHJldHVybnMKPiBhbiBlcnJvciwgbGVhdmluZyB0aGUgY2xv
Y2tzIGRpc2FibGVkLiAgQm90aCBjYWxsYmFja3MgdGhlbiBjYXJyeSBvbiBhbmQKPiBxbXBfY29t
Ym9fdXNiX3Bvd2VyX29uKCksIGFuZCBkcF9hdXhfaW5pdCgpIGFmdGVyIGl0LCB3cml0ZSBQSFkg
cmVnaXN0ZXJzCj4gd2l0aCBubyBjbG9jayBydW5uaW5nLgo+IAo+IFByb3BhZ2F0ZSB0aGUgZmFp
bHVyZSBpbnN0ZWFkLgo+IAo+IEZpeGVzOiAyODUxMTE3ZjhmNDIgKCJwaHk6IHFjb20tcW1wLWNv
bWJvOiBJbnRyb2R1Y2Ugb3JpZW50YXRpb24gc3dpdGNoaW5nIikKPiBTaWduZWQtb2ZmLWJ5OiBP
bGVnIEtlcmkgPG9rZXJpeHhAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtY29tYm8uYyB8IDE0ICsrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggN2Q3NDBlZDBjZTE2Li40NGI2ZjI5
OTI2ZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+
IEBAIC00OTI0LDYgKzQ5MjQsNyBAQCBzdGF0aWMgaW50IHFtcF9jb21ib190eXBlY19zd2l0Y2hf
c2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgewo+ICAJc3RydWN0IHFtcF9jb21i
byAqcW1wID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiAgCWNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gKwlpbnQgcmV0ID0gMDsKPiAgCj4gIAlpZiAo
b3JpZW50YXRpb24gPT0gcW1wLT5vcmllbnRhdGlvbiB8fCBvcmllbnRhdGlvbiA9PSBUWVBFQ19P
UklFTlRBVElPTl9OT05FKQo+ICAJCXJldHVybiAwOwo+IEBAIC00OTM4LDE1ICs0OTM5LDE5IEBA
IHN0YXRpYyBpbnQgcW1wX2NvbWJvX3R5cGVjX3N3aXRjaF9zZXQoc3RydWN0IHR5cGVjX3N3aXRj
aF9kZXYgKnN3LAo+ICAJCQlxbXBfY29tYm9fdXNiX3Bvd2VyX29mZihxbXAtPnVzYl9waHkpOwo+
ICAJCXFtcF9jb21ib19jb21fZXhpdChxbXAsIHRydWUpOwo+ICAKPiAtCQlxbXBfY29tYm9fY29t
X2luaXQocW1wLCB0cnVlKTsKPiArCQlyZXQgPSBxbXBfY29tYm9fY29tX2luaXQocW1wLCB0cnVl
KTsKPiArCQlpZiAocmV0KQo+ICsJCQlnb3RvIG91dDsKPiArCj4gIAkJaWYgKHFtcC0+dXNiX2lu
aXRfY291bnQpCj4gIAkJCXFtcF9jb21ib191c2JfcG93ZXJfb24ocW1wLT51c2JfcGh5KTsKPiAg
CQlpZiAocW1wLT5kcF9pbml0X2NvdW50KQo+ICAJCQljZmctPmRwX2F1eF9pbml0KHFtcCk7Cj4g
IAl9Cj4gK291dDoKPiAgCW11dGV4X3VubG9jaygmcW1wLT5waHlfbXV0ZXgpOwo+ICAKPiAtCXJl
dHVybiAwOwo+ICsJcmV0dXJuIHJldDsKClBsZWFzZSBkb24ndCB1c2UgdGhpcyBwYXR0ZXJuLiBT
dWNjZXNzIHNob3VsZCBhbHdheXMgZG8gJ3JldHVybiAwJyBkaXJlY3RseS4gRG8KJ3JldHVybiBy
ZXQnIG9ubHkgaW4gdGhlIGVycm9yIHBhdGguCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
