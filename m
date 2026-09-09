Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1555C79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 07:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUNdsJgh31VO/UtWkuy6L7KmMdW+UGf5iK1+5jwI2yA=; b=xGSuj3bbUpCClA
	vVMrowhn49l9UMr/3MP74JQqVs6ZS1qKe3M52tUZBxEJP2ual6oKJED3+6TZYIl8YOc1rMI6FXtYn
	1XkDfEX+O7itB1A26b5RDLbdZ60rZTannnBhL12nYLmTcP7cwoGYw7QrAlwAsnWcT5cbO5QMzKuRn
	3duO3D4blxV8hSQjCzvge8rn/mR9OFxabmv6hv1Z8zqCzyEuuCqRJVLCg4edu+Rf5es8guDNLujGH
	jku63dRkGCMwKuyQaBUS4AL+rTXxbb/kxg5Pjs58Cir9/2OJWJRClkbWi+3HXgPZKP8W9vcKM3H19
	fDL/QwHV89uHBQoSp2Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4D6y-0000000B246-24aK;
	Wed, 09 Sep 2026 07:52:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4D6x-0000000B23j-19lx
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 07:52:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0DF4E4144A;
	Wed,  9 Sep 2026 07:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 326541F00A3A;
	Wed,  9 Sep 2026 07:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788940370;
	bh=+Hb9WaGL7B5ZivVRUVKYDvDVF9rNJrVmibTk1MpLEQQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F9q1C/XhlB6s1BUNp8oo0hLcuTtnVUvswKl1NxrdwPw6BXWZ8CH+6Nf2ky45TWWY1
	 b6mZlTCSXQjzNxYSUuqltoMPWQaMyq5y1/k4Q1wOrpTr/wGmkz5t4A/EFHVD18fEHH
	 4c7/U4xYdeKmbVZTldlO750aNM2gLuEW1lYABE+UkmAH4ibc6qHAMDnJNweJ1C+ib4
	 zSgBpFcW9VxXq3Nwua7seG/yMqTtxoLnR0OGIrXqmbBqnWSVf0WGEanVOzA1q0l+VF
	 Bu7rQFKOKrZIWpxV9oar0ZN5y94uqlLA1lts1VmU8iKdFaWFBf39o3iTzifp2EIKb9
	 XDelccIFjogLA==
Date: Wed, 9 Sep 2026 09:52:42 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH v6 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for
 clock  resources
Message-ID: <m7mr6dgayt7kpibs632cb2bpvwxrj66vmscusqgpn47apcvrpq@di3nclql65bd>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
 <20260619030214.1779043-4-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260619030214.1779043-4-zenghongling@kylinos.cn>
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

T24gRnJpLCBKdW4gMTksIDIwMjYgYXQgMTE6MDI6MTNBTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiB0aV9waXBlM19nZXRfY2xrKCkgaGFzIHR3byBpc3N1ZXMgd2l0aCAtRVBST0JFX0RF
RkVSIGVycm9yIGhhbmRsaW5nOgo+IAo+IDEuIFdoZW4gZGV2bV9jbGtfZ2V0KCkgZm9yIHN5c2Ns
ayBmYWlscywgdGhlIGZ1bmN0aW9uIHJldHVybnMgLUVJTlZBTAo+ICAgIGluc3RlYWQgb2YgcHJv
cGFnYXRpbmcgdGhlIGFjdHVhbCBlcnJvciBjb2RlLiBUaGlzIG1hc2tzIC1FUFJPQkVfREVGRVIK
PiAgICB0byAtRUlOVkFMLCBicmVha2luZyB0aGUgcHJvYmUgZGVmZXJyYWwgbWVjaGFuaXNtIGFu
ZCBjYXVzaW5nIHBlcm1hbmVudAo+ICAgIGRyaXZlciBpbml0aWFsaXphdGlvbiBmYWlsdXJlIG9u
IHN5c3RlbXMgd2l0aCBub24tZGV0ZXJtaW5pc3RpYyBwcm9iZQo+ICAgIG9yZGVyaW5nLgo+IAo+
IDIuIEZvciBTQVRBIFBIWSByZWZjbGssIHRoZSBmdW5jdGlvbiBpZ25vcmVzIGFsbCBlcnJvcnMg
dG8gc3VwcG9ydCBvbGRlcgo+ICAgIERUQnMgbWlzc2luZyB0aGUgcmVmY2xrIHByb3BlcnR5LiBI
b3dldmVyLCB0aGlzIGluY29ycmVjdGx5IGlnbm9yZXMKPiAgICAtRVBST0JFX0RFRkVSIGFzIHdl
bGwsIGNhdXNpbmcgdGhlIGRyaXZlciB0byBwcm9jZWVkIHdpdGhvdXQgd2FpdGluZwo+ICAgIGZv
ciB0aGUgY2xvY2sgcHJvdmlkZXIgdG8gYmVjb21lIGF2YWlsYWJsZS4KPiAKPiBGaXggYm90aCBp
c3N1ZXM6Cj4gLSBSZXR1cm4gUFRSX0VSUihwaHktPnN5c19jbGspIGluc3RlYWQgb2YgLUVJTlZB
TCB0byBwcm9wYWdhdGUgYWxsCj4gICBlcnJvciBjb2RlcyBpbmNsdWRpbmcgLUVQUk9CRV9ERUZF
Ugo+IC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGZvciBTQVRBIHJlZmNsayB0byBoYW5k
bGUgb3B0aW9uYWwKPiAgIGNsb2NrcyB3aGlsZSBwcm9wYWdhdGluZyAtRVBST0JFX0RFRkVSIGFu
ZCBvdGhlciBlcnJvcnMKPiAKPiBGaXhlczogYTcwMTQzYmJlZjZiICgiZHJpdmVyczogcGh5OiB1
c2IzL3BpcGUzOiBBZGFwdCBwaXBlMyBkcml2ZXIgdG8gR2VuZXJpYyBQSFkgRnJhbWV3b3JrIikK
PiBGaXhlczogN2YzMzkxMmQyOTc4ICgicGh5OiB0aS1waXBlMzogRml4IFNBVEEgYWNyb3NzIHN1
c3BlbmQvcmVzdW1lIikKPiBTaWduZWQtb2ZmLWJ5OiBIb25nbGluZyBaZW5nIDx6ZW5naG9uZ2xp
bmdAa3lsaW5vcy5jbj4KPiAKPiAtLS0KPiBDaGFuZ2UgaW4gdjQ6Cj4gIC1NZXJnZSByZWZjbGsg
bGVhayBmaXggYW5kIEVQUk9CRV9ERUZFUiBmaXggaW50byBhIHNpbmdsZSBwYXRjaAo+ICAtVXNl
IGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGZvciBTQVRBIHJlZmNsawo+ICAtRHJvcCBtYW51YWwg
LUVOT0VOVCBoYW5kbGluZwo+ICAtRW5zdXJlIGVycm9yIHBhdGhzIGFyZSBmdWxseSBzeW1tZXRy
aWMKPiAtLS0KPiBDaGFuZ2UgaW4gdjU6Cj4gIC1BZGQgRml4IGlnbm9yZWQgY2xvY2sgZW5hYmxl
IHJldHVybiB2YWx1ZSBpbiBpbml0IHBhdGNoCj4gLS0tCj4gQ2hhbmdlIGluIHY2Ogo+ICAtRml4
IGFsbCBjbG9jayBsZWFrIHBhdGhzIGNvbXByZWhlbnNpdmVseToKPiAgLVBDSWUgc3lzY29uIHVw
ZGF0ZSBmYWlsdXJlIHBhdGgKPiAgLVNBVEEgRFBMTCBsb2NrIGNoZWNrIHBhdGggKGFsc28gZml4
IGluY29ycmVjdCByZXR1cm4gbG9naWMpCj4gIC1TQVRBIGVycmF0YSBwYXRoIGluIHRpX3BpcGUz
X2V4aXQoKQo+IC0tLQo+ICBkcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyB8IDIwICsrKysr
KysrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMu
YyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4gaW5kZXggMmQzNmZlNGM0MjE4Li45
ZWMyMjhjMmE5NDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMK
PiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC02MDgsMTQgKzYwOCwy
MCBAQCBzdGF0aWMgaW50IHRpX3BpcGUzX2dldF9jbGsoc3RydWN0IHRpX3BpcGUzICpwaHkpCj4g
IAlzdHJ1Y3QgY2xrICpjbGs7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwaHktPmRldjsKPiAg
Cj4gLQlwaHktPnJlZmNsayA9IGRldm1fY2xrX2dldChkZXYsICJyZWZjbGsiKTsKPiArCS8qCj4g
KwkgKiByZWZjbGsgaXMgb3B0aW9uYWwgZm9yIFNBVEEgUEhZIHRvIHN1cHBvcnQgb2xkZXIgRFRC
cywgYnV0Cj4gKwkgKiByZXF1aXJlZCBmb3Igb3RoZXIgbW9kZXMuIFVzZSBkZXZtX2Nsa19nZXRf
b3B0aW9uYWwoKSBmb3IgU0FUQQo+ICsJICogd2hpY2ggcmV0dXJucyBOVUxMIGZvciAtRU5PRU5U
LCBhbGxvd2luZyB1cyB0byBwcm9wYWdhdGUgYWxsCj4gKwkgKiBvdGhlciBlcnJvcnMgaW5jbHVk
aW5nIC1FUFJPQkVfREVGRVIuCj4gKwkgKi8KPiArCWlmIChwaHktPm1vZGUgPT0gUElQRTNfTU9E
RV9TQVRBKQo+ICsJCXBoeS0+cmVmY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGRldiwgInJl
ZmNsayIpOwo+ICsJZWxzZQo+ICsJCXBoeS0+cmVmY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJl
ZmNsayIpOwo+ICsKPiAgCWlmIChJU19FUlIocGh5LT5yZWZjbGspKSB7Cj4gIAkJZGV2X2Vycihk
ZXYsICJ1bmFibGUgdG8gZ2V0IHJlZmNsa1xuIik7Cj4gLQkJLyogb2xkZXIgRFRCcyBoYXZlIG1p
c3NpbmcgcmVmY2xrIGluIFNBVEEgUEhZCj4gLQkJICogc28gZG9uJ3QgYmFpbCBvdXQgaW4gY2Fz
ZSBvZiBTQVRBIFBIWS4KPiAtCQkgKi8KPiAtCQlpZiAocGh5LT5tb2RlICE9IFBJUEUzX01PREVf
U0FUQSkKPiAtCQkJcmV0dXJuIFBUUl9FUlIocGh5LT5yZWZjbGspOwo+ICsJCXJldHVybiBQVFJf
RVJSKHBoeS0+cmVmY2xrKTsKCkFzIFNhc2hpa28gbm90ZWQsIHlvdSBuZWVkIHRvIHN3aXRjaCB0
byBkZXZfZXJyX3Byb2JlKCkgaGVyZSBhbmQgYmVsb3cgdG8gYXZvaWQKcHJpbnRpbmcgZXJyb3Ig
ZHVyaW5nIHByb2JlIGRlZmVycmFsLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
