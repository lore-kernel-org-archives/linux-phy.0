Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CDF2C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 15:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzznOGO0seNSymRHVABAz73/JWWkMZX4x/au3u1jSs0=; b=kyV6ugKczXVZDW
	NYLAKjDp3JOXrIKzqcDMEpvooh+RLDLzskRWD24fzXs9K3+XB2zlRfa+t/Yl5ObDG5ucoG4xAQKms
	gG/UFFauhKq4PhgRJ1+Ub//FFNlNX0FwkwTfL2MWrJuPT7v4MDT9emVylpYN3/F6uTIsl3Cl4WLhj
	xbktdNjnJIo43owo1kTsktRz9JPFQGyXDxD+x9fMkhMXuqfohVK/aURf1Uxch/3i1LZLtVbNnEVVR
	xVpIHDgRfo5rrEOLA4VwQOAQfShGZ7e8XYN9+v9TuoCsKrbNkfjE1eW6XW9muQ7Wr9CNS3YMCGbdf
	Wn2lr+ApXEdUICdcs5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAWn-0000000GR1L-0VLU;
	Wed, 12 Aug 2026 15:06:01 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAWl-0000000GR1F-2nbV
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 15:05:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C41860A92;
	Wed, 12 Aug 2026 15:05:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128791F000E9;
	Wed, 12 Aug 2026 15:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786547158;
	bh=Q4eaJ4j3ced9vchu5jBJg9BjbKF7STbIADqdyIE7nMs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MG0OA/9FuKE9FXzHemZLfl5IzsqfCs4lcs01MMblSfsbdUWWkUf+oB7z/Uv1MvKZF
	 BmH4ogPXVuHlJLO/jQCWAtaNkY2lcI4hYHRG6KULCjfw+EVC1YJwyzri2p7Uy6amyN
	 fZKSDqP2KYiT55hMRo38Yy3U/wpWlCkRdY/RpjEsXYIzKBO1p1PXLeiIEtpSkSJzed
	 KWE7ewj+Zpd4Xgt4ZvkGi2a+pkl+3ZT6ntv7O9VCtSUxb6bitKNYiL97osTbCyjH3C
	 HTo9TYBV1izx9cJiq9o5WubB3Qu4HA9nccrVLw2rqS/nGmAmBgL4t7b9lJO+bRfq/w
	 hJOmsEwUzuP3Q==
Date: Wed, 12 Aug 2026 17:05:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v6 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
Message-ID: <pu3724you4tqsnuewo2uwqsubtwpf5t7kdd4of33awodjunfb4@cfzd3cmvlpjb>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-6-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520175728.720877-6-adilov@disroot.org>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTA6NTc6MjdQTSArMDUwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIHVzYjIgcGh5IG9mIFJUTDk2MDdDIHNlcmllcyBi
YXNlZCBTb0NzLgo+IEFkZCB0aGUgbWFjcm9zIGFuZCBwaHkgY29uZmlnIHN0cnVjdCBmb3IgcnRs
OTYwNy4KPiAKPiBSVEw5NjA3QyByZXF1aXJlcyB0byBjbGVhciBhICJmb3JjZSBob3N0IGRpc2Nv
bm5lY3QiIGJpdCBpbiB0aGUKPiBzcGVjaWZpYyByZWdpc3RlciAod2hpY2ggaXMgYXQgYW4gb2Zm
c2V0IGZyb20gcmVnX3dyYXBfdnN0YXR1cykKPiBiZWZvcmUgcHJvY2VlZGluZyB3aXRoIHBoeSBw
YXJhbWV0ZXIgd3JpdGVzLiBTaW5jZSBpdCBiZWxvbmdzIGludG8KPiB0aGUgdnN0YXR1cyByZWdp
c3RlciByZWdpb24sIGl0IHJlcXVpcmVzIHRoZSB1c2Ugb2YgYWRkZWQgcmVhZCBhbmQKPiB3cml0
ZSBoZWxwZXIgZnVuY3Rpb25zLgo+IAo+IEFkZCB0aGUgYm9vbCB2YXJpYWJsZSB0byB0aGUgZHJp
dmVyIGRhdGEgc3RydWN0IGFuZCBoaWRlIHRoaXMgd2hvbGUKPiBwcm9jZWR1cmUgdW5kZXIgdGhl
IGlmIHN0YXRlbWVudCB0aGF0IGNoZWNrcyB0aGlzIG5ldyB2YXJpYWJsZS4KPiAKPiBBZGQgdGhl
IGFwcHJvcHJpYXRlIGJpZyBlbmRpYW4gcmVhZCBhbmQgd3JpdGUgZnVuY3Rpb25zIGZvciBydGw5
NjA3Cj4gYW5kIGFzc2lnbiB0aGVtIHRvIGl0cyBwaHkgY29uZmlnIHN0cnVjdC4KPiAKPiBDby1k
ZXZlbG9wZWQtYnk6IE1pY2hhZWwgWmF2ZXJ0a2luIDxtaXNoYS56YXZlcnRraW5AbWFpbC5ydT4K
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFphdmVydGtpbiA8bWlzaGEuemF2ZXJ0a2luQG1haWwu
cnU+Cj4gU2lnbmVkLW9mZi1ieTogUnVzdGFtIEFkaWxvdiA8YWRpbG92QGRpc3Jvb3Qub3JnPgo+
IC0tLQo+ICBkcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jIHwgNTggKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgYi9k
cml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gaW5kZXggMTZjNWZjMzE5MWRlLi42
OWYwZjUyNzliNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVz
YjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiBAQCAtMjYs
NiArMjYsMTIgQEAKPiAgI2RlZmluZSBQSFlfVkNUUkxfU0hJRlQgOAo+ICAjZGVmaW5lIFBIWV9S
RUdfREFUQV9NQVNLIDB4ZmYKPiAgCj4gKyNkZWZpbmUgUEhZXzk2MDdfVlNUU19CVVNZIEJJVCgx
NykKPiArI2RlZmluZSBQSFlfOTYwN19ORVdfUkVHX1JFUSBCSVQoMTMpCj4gKwo+ICsjZGVmaW5l
IFBIWV85NjA3X0ZPUkNFX0RJU0NPTk5FQ1RfUkVHIDB4MTAKPiArI2RlZmluZSBQSFlfOTYwN19G
T1JDRV9ESVNDT05ORUNUX0JJVCBCSVQoNSkKPiArCj4gICNkZWZpbmUgR0VUX0xPV19OSUJCTEUo
YWRkcikgKChhZGRyKSAmIDB4MGYpCj4gICNkZWZpbmUgR0VUX0hJR0hfTklCQkxFKGFkZHIpICgo
KGFkZHIpICYgMHhmMCkgPj4gNCkKPiAgCj4gQEAgLTEwOSw2ICsxMTUsNyBAQCBzdHJ1Y3QgcGh5
X2NmZyB7Cj4gIAo+ICAJdTMyICgqcmVhZCkodm9pZCBfX2lvbWVtICpyZWcpOwo+ICAJdm9pZCAo
KndyaXRlKSh1MzIgdmFsLCB2b2lkIF9faW9tZW0gKnJlZyk7Cj4gKwlib29sIGZvcmNlX2hvc3Rf
ZGlzY29ubmVjdDsKPiAgfTsKPiAgCj4gIHN0cnVjdCBwaHlfcGFyYW1ldGVyIHsKPiBAQCAtMTQ2
LDYgKzE1MywxNiBAQCBzdGF0aWMgdm9pZCBydGtfdXNiMnBoeV93cml0ZSh1MzIgdmFsLCB2b2lk
IF9faW9tZW0gKnJlZykKPiAgCXdyaXRlbCh2YWwsIHJlZyk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB1
MzIgcnRrX3VzYjJwaHlfcmVhZF9iZSh2b2lkIF9faW9tZW0gKnJlZykKPiArewo+ICsJcmV0dXJu
IGlvcmVhZDMyYmUocmVnKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgcnRrX3VzYjJwaHlfd3Jp
dGVfYmUodTMyIHZhbCwgdm9pZCBfX2lvbWVtICpyZWcpCj4gK3sKPiArCWlvd3JpdGUzMmJlKHZh
bCwgcmVnKTsKPiArfQo+ICsKPiAgLyogbWFwcGluZyAweEUwIHRvIDAgLi4uIDB4RTcgdG8gNywg
MHhGMCB0byA4ICwsLCAweEY3IHRvIDE1ICovCj4gIHN0YXRpYyBpbmxpbmUgaW50IHBhZ2VfYWRk
cl90b19hcnJheV9pbmRleCh1OCBhZGRyKQo+ICB7Cj4gQEAgLTYwMCw2ICs2MTcsMTkgQEAgc3Rh
dGljIGludCBkb19ydGtfcGh5X2luaXQoc3RydWN0IHJ0a19waHkgKnJ0a19waHksIGludCBpbmRl
eCkKPiAgCQlnb3RvIGRvX3RvZ2dsZTsKPiAgCX0KPiAgCj4gKwlpZiAocGh5X2NmZy0+Zm9yY2Vf
aG9zdF9kaXNjb25uZWN0KSB7Cj4gKwkJLyogZGlzYWJsZSBmb3JjZS1ob3N0LWRpc2Nvbm5lY3Qg
Ki8KPiArCQl2b2lkIF9faW9tZW0gKnZzdGF0dXMgPSBwaHlfcmVnLT5yZWdfd3JhcF92c3RhdHVz
Owo+ICsJCXUzMiB0ZW1wOwo+ICsKPiArCQl0ZW1wID0gcGh5X3JlZy0+cmVhZCh2c3RhdHVzICsg
UEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwo+ICsKPiArCQl0ZW1wICY9IH5QSFlfOTYw
N19GT1JDRV9ESVNDT05ORUNUX0JJVDsKPiArCQlwaHlfcmVnLT53cml0ZSh0ZW1wLCB2c3RhdHVz
ICsgUEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwo+ICsKPiArCQl1c2xlZXBfcmFuZ2Uo
MTAwMDAsIDExMDAwKTsKCklmIHlvdSByZWFsbHkgd2FudCB0byBtYWtlIHN1cmUgdGhlIGRlbGF5
IGdldHMgY29tcGxldGVkIHdpdGhpbiB0aGlzIGlmKCkKY29uZGl0aW9uLCB0aGVuIGFkZCBhIHJl
YWQuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
