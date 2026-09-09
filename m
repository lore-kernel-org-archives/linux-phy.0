Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A20CC79FAA
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hjrUx1F9Y0bzAoq7TuONuhF30pIltSh+VzKDd1Nt8E=; b=zS/d71cs1g5DmZ
	ObGCsLKJ1ymNvsnLrU1X97uWcx/n8+9He9LNEuw7cF3JX+Sz1VzVNJCf4g43gLBUxHqnRhjs0aEtQ
	kB7RWVXSNc6xA2ux1Bx4tJHB8SleNMGFzd011p1qx4yT6NYjSmgGq4PU3/lCOU+SrRA198JOf/bLB
	fxvhFe/FfCU3KRypIYMc27Xffu6rb3DrP2oT3ADtUBvcxw5GWLM5X0q8LK7R67HWAEKAFoDnmpnjt
	A2CJ55iNGnFnPCI9ENT2ijjuSWsW6Dn2DnVZjLvyi9qywE1gVjVbMA1CJKYQhrcf9B2dXW9sdVyi0
	qBpUsxKEayBvhTCX61Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DCI-0000000B2zP-0nE0;
	Wed, 09 Sep 2026 07:58:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4DCH-0000000B2z2-2LBn
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 07:58:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B4903601FD;
	Wed,  9 Sep 2026 07:58:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE9FD1F00A3A;
	Wed,  9 Sep 2026 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788940700;
	bh=PWnFaNRftVsLHoAenU5vbpmSu4o5KTXu8Qk5OuN0Zn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OUB4piiAG/iMLs5wx4MVywuI930DqI8qv0bLNPt87l1bhHP7Od/2XyZnH3fkxKU98
	 brr0NjI4SEyY4KQFGfPi7bHEMDPh7N4HHajXBYsWqjCgFRWxFMFbbQy1uyuy1ShE89
	 34ax4j0ErRACN/6Z55Z4e/UiGrgx+OMNSrPc2wmkHrtGNrlWN5rqsxo1qDoflQt7UG
	 55vitECZpPaRbVFdp0PqsTwC5XbCb0ZXOhMDIZn/fS5gkHnQAYIox/e3IE6O7KqQgy
	 f0Of0c2HMulR7gdKkNuPGJsd1siezIPiIIpQRLXytl89xB/5GmWWuCapbUcUUC8Uj2
	 5JjqMwDfmjDsw==
Date: Wed, 9 Sep 2026 09:58:12 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com, stable@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: ti-pipe3: Fix clock leak in init error path
Message-ID: <lsywnpxioldkbvb6n7pi6uihlnofjdwrhvm7yt3qiarori4hua@c6wueslryla4>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
 <20260619030214.1779043-5-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260619030214.1779043-5-zenghongling@kylinos.cn>
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

T24gRnJpLCBKdW4gMTksIDIwMjYgYXQgMTE6MDI6MTRBTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiBXaGVuIHJlZ21hcF91cGRhdGVfYml0cygpIGZhaWxzIGluIHRpX3BpcGUzX2luaXQo
KSBmb3IgUENJZSBtb2RlLAo+IHRoZSBmdW5jdGlvbiByZXR1cm5zIHRoZSBlcnJvciB3aXRob3V0
IGNhbGxpbmcgdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3MoKS4KPiBUaGlzIGxlYXZlcyB0aGUgY2xv
Y2tzIHBlcm1hbmVudGx5IGVuYWJsZWQgc2luY2UgdGhlIFBIWSBmcmFtZXdvcmsgd29uJ3QKPiBp
bnZva2UgdGhlIC5leGl0IGNhbGxiYWNrIG9uIGluaXQgZmFpbHVyZS4KPiAKPiBGaXggdGhpcyBi
eSBhZGRpbmcgcHJvcGVyIGNsb2NrIGNsZWFudXAgaW4gdGhlIFBDSWUgZXJyb3IgcGF0aCwgY29u
c2lzdGVudAo+IHdpdGggaG93IHRoZSBEUExMIHByb2dyYW0gZXJyb3IgcGF0aCBoYW5kbGVzIGNs
ZWFudXAuCj4gCj4gRml4ZXM6IDIzNDczOGVhMzM5MCAoInBoeTogdGktcGlwZTM6IG1vdmUgY2xr
IGluaXRpYWxpemF0aW9uIHRvIGEgc2VwYXJhdGUgZnVuY3Rpb24iKQo+IFJlcG9ydGVkLWJ5OiBT
YXNoaWtvIEFJIDxzYXNoaWtvQGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNjA1MTgwMjM2NTcuNDE4NTJDMkJDQjBAc210cC5rZXJuZWwub3JnLwo+
IFNpZ25lZC1vZmYtYnk6IEhvbmdsaW5nIFplbmcgPHplbmdob25nbGluZ0BreWxpbm9zLmNuPgo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gCj4gLS0tCj4gQ2hhbmdlIGluIHY1Ogo+ICAg
LUFkZCBGaXggaWdub3JlZCBjbG9jayBlbmFibGUgcmV0dXJuIHZhbHVlIGluIGluaXQgcGF0Y2gK
PiAtLS0KPiBDaGFuZ2UgaW4gdjY6Cj4gIC1GaXggYWxsIGNsb2NrIGxlYWsgcGF0aHMgY29tcHJl
aGVuc2l2ZWx5Ogo+ICAtUENJZSBzeXNjb24gdXBkYXRlIGZhaWx1cmUgcGF0aAo+ICAtU0FUQSBE
UExMIGxvY2sgY2hlY2sgcGF0aAo+ICAtU0FUQSBlcnJhdGEgcGF0aCBpbiB0aV9waXBlM19leGl0
KCkKPiAtLS0KPiAgZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgfCAxMSArKysrKysrKy0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5
L3RpL3BoeS10aS1waXBlMy5jCj4gaW5kZXggOWVjMjI4YzJhOTQwLi44NjAwNThmMzE1OTQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJz
L3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC01MTgsNiArNTE4LDggQEAgc3RhdGljIGludCB0
aV9waXBlM19pbml0KHN0cnVjdCBwaHkgKngpCj4gIAkJdmFsID0gMHg5NiA8PCBPTUFQX0NUUkxf
UENJRV9QQ1NfREVMQVlfQ09VTlRfU0hJRlQ7Cj4gIAkJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRz
KHBoeS0+cGNzX3N5c2NvbiwgcGh5LT5wY2llX3Bjc19yZWcsCj4gIAkJCQkJIFBDSUVfUENTX01B
U0ssIHZhbCk7Cj4gKwkJaWYgKHJldCkKPiArCQkJdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3MocGh5
KTsKPiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiBAQCAtNTMxLDggKzUzMyw5IEBAIHN0YXRp
YyBpbnQgdGlfcGlwZTNfaW5pdChzdHJ1Y3QgcGh5ICp4KQo+ICAKPiAgCS8qIFNBVEEgaGFzIGlz
c3VlcyBpZiByZS1wcm9ncmFtbWVkIHdoZW4gbG9ja2VkICovCj4gIAl2YWwgPSB0aV9waXBlM19y
ZWFkbChwaHktPnBsbF9jdHJsX2Jhc2UsIFBMTF9TVEFUVVMpOwo+IC0JaWYgKCh2YWwgJiBQTExf
TE9DSykgJiYgcGh5LT5tb2RlID09IFBJUEUzX01PREVfU0FUQSkKPiAtCQlyZXR1cm4gcmV0Owo+
ICsJaWYgKCh2YWwgJiBQTExfTE9DSykgJiYgcGh5LT5tb2RlID09IFBJUEUzX01PREVfU0FUQSkg
ewo+ICsJCXJldHVybiAwOwoKV2h5IGFyZSB5b3UgcmV0dXJuaW5nIDAgaGVyZSBhbmQgYmVsb3c/
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
