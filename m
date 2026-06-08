Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDAA6CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKN8wwVfxiVcZhDMiyRdqBgHwgB6dbGY6Mi2KWG7+wY=; b=R83VL0lI5CEcpC
	3ZY4ppK6Vh25iYIeee/xvGFq7j8h/EMhxSAtvfxjxJS4unjRDPeRJsN3Nov6AaG6Ujqt1iq93sVt/
	RLZp/xFCGFuQyo2/gbhYZBgNLAmi6bEoiLmHYjKGDCUSCZ4plbLmE4Yxhr+2Mec9UG8TArgI26RR7
	wP1yffwiCZ8tScu1AZAn6k+sODlKbMSsO86v+cRGF9PkGwoFC5xQoCdF2+jWXaXJSkPkFDgbr7n9B
	kvHlvJez1zBBfTFtLn7o4XmoNlNpRxq/X/CmXbhuub8Vgc8J6YI4OkLQ7aka85LpjA+GIjA1FF/qr
	3swWNBuIaLo6ocO2aDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiXI-00000004UsV-2BYf;
	Mon, 08 Jun 2026 22:33:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiXG-00000004UsP-361P
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:33:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2555942B02;
	Mon,  8 Jun 2026 22:33:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C631F00893;
	Mon,  8 Jun 2026 22:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780958012;
	bh=CBnYEmX3cL5npu2upqCwanE/jFjwxDZHsXtO0GgsyfY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=USkvQmUCX8fVZYCzngOzWhHuE0jwscf3e8oYJ25eI6Tknw8M3G5hBdcCj1HYAyR9u
	 jmOfPykOBSNL6qLCU4qNWUn5Uiu6prrixrKqJm5xSmn85xWYmtw3LrEq+OZXYDBABJ
	 AUMwKpX6bew4gh6YVaVIMhQAjHQYxRKTzhECtntXOTYKdVVRYB5KofBepxnUPeR3cN
	 wn+NF+UO86x1e8Bqs/Lb+rqLOdIBx6Rgjm1Y8gOGaJxC7bL7fC/xBSrYIJSHgZuPF/
	 ns9qGiAa5YromKjlLdD1QF4fFWaWJ802PfR+XkqgR1MygWJcOgeM9b/aWVaeqXj7jC
	 GdpyzHxpVWTgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 phy-next 15/16] phy: lynx-10g: new driver
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260608221710.1572971-16-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-16-vladimir.oltean@nxp.com>
Date: Mon, 08 Jun 2026 22:33:31 +0000
Message-Id: <20260608223331.B4C631F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgaW5j
b3JyZWN0bHkgdXNlcyAwIGFzIGEgc2VudGluZWwgdmFsdWUgaW4gYGxhbmUtPmRlZmF1bHRfcGNj
clttb2RlXWAsIHRyZWF0aW5nIGEgdmFsaWQgYmFja2VkLXVwIFBDQ1IgY29uZmlndXJhdGlvbiBv
ZiAwIGFzIHVuaW5pdGlhbGl6ZWQgZGF0YSBhbmQgdW5pbnRlbnRpb25hbGx5IGZhbGxpbmcgYmFj
ayB0byBhIGhhcmRjb2RlZCBQQ1MgbXV4aW5nIGNvbmZpZ3VyYXRpb24uCi0tCgpjb21taXQgMGZj
YWI1N2UyZDE5MzYxZTQ3MjBiNDBkNjY5MGUxMmM1YTViZmQwYgpBdXRob3I6IFZsYWRpbWlyIE9s
dGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CgpwaHk6IGx5bngtMTBnOiBuZXcgZHJpdmVy
CgpJbnRyb2R1Y2UgYSBkcml2ZXIgZm9yIHRoZSBuZXR3b3JraW5nIGxhbmVzIG9mIHRoZSAxMEcg
THlueCBTZXJEZXMKYmxvY2ssIHByZXNlbnQgb24gdGhlIG1ham9yaXR5IG9mIExheWVyc2NhcGUg
YW5kIFFvcklRIChGcmVlc2NhbGUvTlhQKQpTb0NzLiBJdCBwcm92aWRlcyB0aGUgZ2VuZXJpYyBQ
SFkgZnJhbWV3b3JrIHRvIGFsbG93IG5ldHdvcmsgTUFDcyB0bwpyZWNvbmZpZ3VyZSB0aGUgU2Vy
RGVzIGZvciBkaWZmZXJlbnQgbGluayBtb2RlcyBiYXNlZCBvbiBjb25uZWN0ZWQgbW9kdWxlcy4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMTBnLmMg
Yi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi43ZGQ1ZDk0YjUxY2YyCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMTBnLmMKPiBA
QCAtMCwwICsxLDEyNzggQEAKWyAuLi4gXQo+ICtzdGF0aWMgdm9pZCBseW54XzEwZ19iYWNrdXBf
cGNjcl92YWwoc3RydWN0IGx5bnhfbGFuZSAqbGFuZSkKPiArewo+ICsJdTMyIHZhbDsKPiArCWlu
dCBlcnI7Cj4gKwo+ICsJaWYgKGxhbmUtPm1vZGUgPT0gTEFORV9NT0RFX1VOS05PV04pCj4gKwkJ
cmV0dXJuOwo+ICsKPiArCWVyciA9IGx5bnhfcGNjcl9yZWFkKGxhbmUsIGxhbmUtPm1vZGUsICZ2
YWwpOwo+ICsJaWYgKGVycikgewo+ICsJCWRldl93YXJuKCZsYW5lLT5waHktPmRldiwKPiArCQkJ
ICJUaGUgZHJpdmVyIGRvZXNuJ3Qga25vdyBob3cgdG8gYWNjZXNzIHRoZSBQQ0NSIGZvciBsYW5l
IG1vZGUgJXNcbiIsCj4gKwkJCSBseW54X2xhbmVfbW9kZV9zdHIobGFuZS0+bW9kZSkpOwo+ICsJ
CWxhbmUtPm1vZGUgPSBMQU5FX01PREVfVU5LTk9XTjsKPiArCQlyZXR1cm47Cj4gKwl9Cj4gKwo+
ICsJbGFuZS0+ZGVmYXVsdF9wY2NyW2xhbmUtPm1vZGVdID0gdmFsOwo+ICsKPiArCXN3aXRjaCAo
bGFuZS0+bW9kZSkgewo+ICsJY2FzZSBMQU5FX01PREVfMTAwMEJBU0VYX1NHTUlJOgo+ICsJY2Fz
ZSBMQU5FX01PREVfMjUwMEJBU0VYOgo+ICsJCWxhbmUtPmRlZmF1bHRfcGNjcltMQU5FX01PREVf
MTAwMEJBU0VYX1NHTUlJXSA9IHZhbCAmIH5QQ0NSOF9TR01JSWFfS1g7Cj4gKwkJbGFuZS0+ZGVm
YXVsdF9wY2NyW0xBTkVfTU9ERV8yNTAwQkFTRVhdID0gdmFsICYgflBDQ1I4X1NHTUlJYV9LWDsK
PiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gK30KCltTZXZlcml0
eTogSGlnaF0KU2luY2UgdGhlIFBDQ1I4X1NHTUlJYV9LWCBiaXQgaXMgZXhwbGljaXRseSBjbGVh
cmVkIGhlcmUsIGNvdWxkIHRoaXMgcmVzdWx0IGluCmEgYmFja2VkLXVwIHZhbHVlIG9mIGV4YWN0
bHkgMCBpZiBubyBvdGhlciBjb25maWd1cmF0aW9uIGJpdHMgd2VyZSBvcmlnaW5hbGx5CnNldD8K
ClsgLi4uIF0KPiArc3RhdGljIGludCBseW54XzEwZ19sYW5lX2VuYWJsZV9wY3Z0KHN0cnVjdCBs
eW54X2xhbmUgKmxhbmUsCj4gKwkJCQkgICAgIGVudW0gbHlueF9sYW5lX21vZGUgbW9kZSkKPiAr
ewo+ICsJc3RydWN0IGx5bnhfcHJpdiAqcHJpdiA9IGxhbmUtPnByaXY7Cj4gKwl1MzIgdmFsOwo+
ICsJaW50IGVycjsKPiArCj4gKwlzcGluX2xvY2soJnByaXYtPnBjY19sb2NrKTsKPiArCj4gKwlz
d2l0Y2ggKG1vZGUpIHsKPiArCWNhc2UgTEFORV9NT0RFXzEwMDBCQVNFWF9TR01JSToKPiArCWNh
c2UgTEFORV9NT0RFXzI1MDBCQVNFWDoKPiArCQllcnIgPSBseW54X3BjdnRfcm13KGxhbmUsIG1v
ZGUsIENSKDEpLCBTR01JSWFDUjFfU0dQQ1NfRU4sCj4gKwkJCQkgICAgU0dNSUlhQ1IxX1NHUENT
X0VOKTsKPiArCQlpZiAoZXJyKQo+ICsJCQlnb3RvIG91dDsKPiArCj4gKwkJbHlueF9wY3Z0X3Jt
dyhsYW5lLCBtb2RlLCBDUigwKSwgU0dNSUlhQ1IwX1JTVF9TR01fT0ZGLAo+ICsJCQkgICAgICBT
R01JSWFDUjBfUlNUX1NHTSB8IFNHTUlJYUNSMF9QRF9TR00pOwo+ICsJCWJyZWFrOwo+ICsJY2Fz
ZSBMQU5FX01PREVfUVNHTUlJOgo+ICsJCWVyciA9IGx5bnhfcGN2dF9ybXcobGFuZSwgbW9kZSwg
Q1IoMCksIFFTR01JSWFDUjBfUlNUX1FTR01fT0ZGLAo+ICsJCQkJICAgIFFTR01JSWFDUjBfUlNU
X1FTR00gfCBRU0dNSUlhQ1IwX1BEX1FTR00pOwo+ICsJCWlmIChlcnIpCj4gKwkJCWdvdG8gb3V0
Owo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQllcnIgPSAwOwo+ICsJfQo+ICsKPiArCWlm
IChsYW5lLT5kZWZhdWx0X3BjY3JbbW9kZV0pIHsKPiArCQllcnIgPSBseW54X3BjY3Jfd3JpdGUo
bGFuZSwgbW9kZSwgbGFuZS0+ZGVmYXVsdF9wY2NyW21vZGVdKTsKPiArCQlnb3RvIG91dDsKPiAr
CX0KCltTZXZlcml0eTogSGlnaF0KSWYgdGhlIHZhbGlkIGJhY2tlZC11cCBQQ0NSIGNvbmZpZ3Vy
YXRpb24gaXMgMCwgd2lsbCB0aGlzIGNvbmRpdGlvbiBldmFsdWF0ZQp0byBmYWxzZSBhbmQgc2tp
cCB0aGUgcmVzdG9yYXRpb24/CgpJdCBzZWVtcyBhIGNvbmZpZ3VyYXRpb24gdmFsdWUgb2YgMCBp
cyBhIHZhbGlkIHN0YXRlIGZvciB0aGUgUENDUiByZWdpc3RlciwKYnV0IHRoaXMgY2hlY2sgcmVs
aWVzIG9uIDAgYXMgYSBzZW50aW5lbCB2YWx1ZSBmb3IgdW5pbml0aWFsaXplZCBkYXRhLiBDb3Vs
ZAp0aGlzIGluYWR2ZXJ0ZW50bHkgY2F1c2UgdGhlIGRyaXZlciB0byBhcHBseSB0aGUgaGFyZGNv
ZGVkIGRlZmF1bHQgdmFsdWVzCmJlbG93LCBicmVha2luZyB0aGUgaW5pdGlhbCBtdXhpbmcgY29u
ZmlndXJlZCBieSB0aGUgUkNXPwoKPiArCj4gKwl2YWwgPSAwOwo+ICsKPiArCXN3aXRjaCAobW9k
ZSkgewo+ICsJY2FzZSBMQU5FX01PREVfMTAwMEJBU0VYX1NHTUlJOgo+ICsJY2FzZSBMQU5FX01P
REVfMjUwMEJBU0VYOgo+ICsJCXZhbCB8PSBQQ0NSOF9TR01JSWFfQ0ZHOwo+ICsJCWJyZWFrOwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDYwODIyMTcxMC4xNTcyOTcxLTEtdmxhZGltaXIub2x0ZWFuQG54cC5jb20/cGFydD0xNQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
