Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E7ECCD4F48
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 07:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLu7jqcpoKQrbZ50l/62mJoWHVMByWyglZa10infWuQ=; b=1eNoKKSsgpwxld
	f0zzN9aLlVG1htJNYV+0Qap/7lPLVt4EDGgtycc3imI0rUpahMMHZziQ/KbKVvBHaYczs0cAiRKpA
	oDwRHz/hdvdvnPkJxPayNeJbtnC0DT4qWs3rb+W8mW7YWHQ57M2Gxdp0OInImZ9LFCj9E8cDczfSz
	Dl1Eg2D5HADC0x5Qwx/HsxWh0rlA7L/Jpm6CmBUUdHbO4qUeQspGJKJNQk9P1Et5O6xWbs7spLozT
	0J0RM6ObR5Yjb3P4an0quMySs0EEb/fl94Nh9hHSEm+1iIuvU6+ENH9qs28/wSQ+SpOjmmH+fbzip
	WxdTrBJw9C3q6jJMKATg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsMZ-0000000EaEO-1OZt;
	Mon, 18 May 2026 07:26:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsMX-0000000EaE1-3Lwf
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 07:26:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1854D60055;
	Mon, 18 May 2026 07:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85B57C2BCB7;
	Mon, 18 May 2026 07:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779089164;
	bh=yniDhowcZ3VwQNW4uAnqiLT+zqn/mzaMEA1Bz19GslE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=UWwK/qHGQZ8W35ZIpDxsPJUxWXcJpQqExSY/GV2PGdIThgwyvDrp03yJzF/NVpr0p
	 zAQK7JXejQbPQtvlPE6P9dI4IFsWjPNLxpb0HQJHi50C7bO7IdtcAgY+g3mjohegDD
	 BhKcUioaJvFifNMnWyJ4kQXRfaVwzG9xg5MrGD/8PjAnvZI9qIm5L8shunOUVXXgyO
	 AmvyTdnRRDoVriCCsPWHEdM3F08zZjgQ+UEzUWPTQSeC7AkV2b5TXqMFlz9Jvbz6ni
	 2rYAeKAwzQc4lXB7R0xzI87MHMltac4v0de7hirMPlY3ctwGvH072u7HGPxuWskArH
	 m//2bxB7nrtqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for
 clock  resources
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260518062938.48114-4-zenghongling@kylinos.cn>
References: <20260518062938.48114-4-zenghongling@kylinos.cn>
Date: Mon, 18 May 2026 07:26:03 +0000
Message-Id: <20260518072604.85B57C2BCB7@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHBhdGNoIGNv
cnJlY3RseSBmaXhlcyAtRVBST0JFX0RFRkVSIHByb3BhZ2F0aW9uIGZvciBgc3lzY2xrYCBhbmQg
YHJlZmNsa2AgYnV0IHJldGFpbnMgYGRldl9lcnIoKWAgZm9yIGxvZ2dpbmcuIFRoaXMgaW50cm9k
dWNlcyBkbWVzZyBzcGFtIGJlY2F1c2UgdGhlIHByb2JlIHdpbGwgbm93IGJlIHJlcGVhdGVkbHkg
ZGVmZXJyZWQgYW5kIHJldHJpZWQsIHByaW50aW5nIHRoZSBlcnJvciBvbiBldmVyeSBhdHRlbXB0
LgotLQoKY29tbWl0IDNmNjk4NTRkZDk1MmU0ZTVhZWU3M2IyNGU2ZDI3YzEwYTMxYTM5ZGMKQXV0
aG9yOiBIb25nbGluZyBaZW5nIDx6ZW5naG9uZ2xpbmdAa3lsaW5vcy5jbj4KCnBoeTogdGktcGlw
ZTM6IEZpeCBFUFJPQkVfREVGRVIgaGFuZGxpbmcgZm9yIGNsb2NrIHJlc291cmNlcwoKVGhpcyBj
b21taXQgZml4ZXMgcHJvYmUgZGVmZXJyYWwgaGFuZGxpbmcgYnkgcHJvcGFnYXRpbmcgdGhlIGFj
dHVhbCBlcnJvcgpjb2RlcyBmb3Igc3lzY2xrIGFuZCByZWZjbGsgaW5zdGVhZCBvZiByZXR1cm5p
bmcgLUVJTlZBTCBvciBpZ25vcmluZyBlcnJvcnMKY29tcGxldGVseS4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBp
cGUzLmMKPiBpbmRleCAyZDM2ZmU0YzQyMThjLi45ZWMyMjhjMmE5NDBjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5
LXRpLXBpcGUzLmMKPiBAQCAtNjA4LDE0ICs2MDgsMjAgQEAgc3RhdGljIGludCB0aV9waXBlM19n
ZXRfY2xrKHN0cnVjdCB0aV9waXBlMyAqcGh5KQo+ICAJc3RydWN0IGNsayAqY2xrOwo+ICAJc3Ry
dWN0IGRldmljZSAqZGV2ID0gcGh5LT5kZXY7Cj4gIAo+IC0JcGh5LT5yZWZjbGsgPSBkZXZtX2Ns
a19nZXQoZGV2LCAicmVmY2xrIik7Cj4gKwkvKgo+ICsJICogcmVmY2xrIGlzIG9wdGlvbmFsIGZv
ciBTQVRBIFBIWSB0byBzdXBwb3J0IG9sZGVyIERUQnMsIGJ1dAo+ICsJICogcmVxdWlyZWQgZm9y
IG90aGVyIG1vZGVzLiBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCkgZm9yIFNBVEEKPiArCSAq
IHdoaWNoIHJldHVybnMgTlVMTCBmb3IgLUVOT0VOVCwgYWxsb3dpbmcgdXMgdG8gcHJvcGFnYXRl
IGFsbAo+ICsJICogb3RoZXIgZXJyb3JzIGluY2x1ZGluZyAtRVBST0JFX0RFRkVSLgo+ICsJICov
Cj4gKwlpZiAocGh5LT5tb2RlID09IFBJUEUzX01PREVfU0FUQSkKPiArCQlwaHktPnJlZmNsayA9
IGRldm1fY2xrX2dldF9vcHRpb25hbChkZXYsICJyZWZjbGsiKTsKPiArCWVsc2UKPiArCQlwaHkt
PnJlZmNsayA9IGRldm1fY2xrX2dldChkZXYsICJyZWZjbGsiKTsKPiArCj4gIAlpZiAoSVNfRVJS
KHBoeS0+cmVmY2xrKSkgewo+ICAJCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGdldCByZWZjbGtc
biIpOwoKTm93IHRoYXQgdGhlIGNvZGUgY29ycmVjdGx5IHByb3BhZ2F0ZXMgLUVQUk9CRV9ERUZF
Uiwgd2lsbCB0aGlzIGRldl9lcnIoKQpjYWxsIGNhdXNlIGRtZXNnIHNwYW0gb24gc3lzdGVtcyB3
aGVyZSB0aGUgY2xvY2sgcHJvdmlkZXIgaXMgZGVmZXJyZWQgYW5kCnJldHJpZWQgbXVsdGlwbGUg
dGltZXM/CgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gcmVwbGFjZSBkZXZfZXJyKCkgd2l0aCBkZXZf
ZXJyX3Byb2JlKCkgaGVyZSB0byBjbGVhbmx5CnN1cHByZXNzIHRoZSBlcnJvciBtZXNzYWdlIG9u
IGRlZmVycmFscyBhbmQgcmVjb3JkIHRoZSBkZWZlcnJhbCByZWFzb24/Cgo+IC0JCS8qIG9sZGVy
IERUQnMgaGF2ZSBtaXNzaW5nIHJlZmNsayBpbiBTQVRBIFBIWQo+IC0JCSAqIHNvIGRvbid0IGJh
aWwgb3V0IGluIGNhc2Ugb2YgU0FUQSBQSFkuCj4gLQkJICovCj4gLQkJaWYgKHBoeS0+bW9kZSAh
PSBQSVBFM19NT0RFX1NBVEEpCj4gLQkJCXJldHVybiBQVFJfRVJSKHBoeS0+cmVmY2xrKTsKPiAr
CQlyZXR1cm4gUFRSX0VSUihwaHktPnJlZmNsayk7Cj4gIAl9CgpbIC4uLiBdCgo+IEBAIC02MzIs
NyArNjM4LDcgQEAgc3RhdGljIGludCB0aV9waXBlM19nZXRfY2xrKHN0cnVjdCB0aV9waXBlMyAq
cGh5KQo+ICAJCXBoeS0+c3lzX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJzeXNjbGsiKTsKPiAg
CQlpZiAoSVNfRVJSKHBoeS0+c3lzX2NsaykpIHsKPiAgCQkJZGV2X2VycihkZXYsICJ1bmFibGUg
dG8gZ2V0IHN5c2Nsa1xuIik7CgpEb2VzIHRoaXMgc3lzY2xrIGVycm9yIGhhbmRsaW5nIGFsc28g
aGF2ZSB0aGUgc2FtZSBsb2dnaW5nIGlzc3VlIHdoZW4KcmV0dXJuaW5nIC1FUFJPQkVfREVGRVI/
Cgo+IC0JCQlyZXR1cm4gLUVJTlZBTDsKPiArCQkJcmV0dXJuIFBUUl9FUlIocGh5LT5zeXNfY2xr
KTsKPiAgCQl9Cj4gIAl9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNTE4MDYyOTM4LjQ4MTE0LTEtemVuZ2hvbmdsaW5nQGt5bGlu
b3MuY24/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
