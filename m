Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13146C4450F
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuGuKGAtS6mwMlfjOyCeUyvHpCp0z/Q/CoMv/J+GAPo=; b=dXy8j/0WJbwkx7
	sDzSMCks/UAAF6iPOxyp0iFimnu9J5S68L7ssWTyZ1ML1KQILgSplCE1wgZbDh1Ibdk3BgBqS786b
	5uED1y+PrKmAqrYGD5k9ORMnbZVL4MVy4QLn+TEgRdz40J2w265BgNxqBFAV4JIX9M9BUKneul1JG
	oSFOuONigIBOgu2AWtLP73LmntbTznDwHkLXV/ACgArN38QE8xzgDJJQivLZnj6AqeTliDGAV+ey4
	EsMsWlxkNoQR9JRvd24vIjhxk8bx0D7cG8J/JXqNyYYBkaBErp0lo57Lr3f0Z6p49M0l+cp7cQpgW
	RKbBjCNn/VOJj+SKRKEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54K-0000000Flxu-2vcv;
	Wed, 15 Jul 2026 19:14:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54H-0000000FlwI-31lO
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:14:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 14F7D61878;
	Wed, 15 Jul 2026 19:14:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 515E01F00A3E;
	Wed, 15 Jul 2026 19:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784142891;
	bh=v7BF6GZmb91UEuWJ/xI+kq2WxZfvSb+FYhihjLxNaak=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B4OeMkIbry92IjkircW3Mp8m9DA8mHFZFrG7KyvYmnOCyqYwQzayx/1l+0Ym5j3cH
	 JaTDpQXbVkHZS/rfAd5f9eoYqHe+6WNJxIP48Swuvmt1gMiU8NUSTItgM3b6cs9iI1
	 4Uiu4uN4sQgOGhSEaU+UoKbChNX00zPWQTX6PVryBnanFDpCYQF9zUrMt9kY75HCC/
	 3LnK1Fp3bRzUHUf/7KJg3Puiwpxu1GeYmBWShCZldXnUcTKBFFnVU3Ki8cT26syxPZ
	 TsJvuT9Xr4BjAqaV0O05+czhs3zIvVenkvDyLdanLzSE6E0RyNrYslq7gUM3Tuwjjx
	 YvjW6wgk1v32w==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 04/10] dt-bindings: net: pcs: add
 rockchip,rk3568-xpcs binding
To: "Coia Prant" <coiaprant@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260714191341.690906-5-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-5-coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 19:14:50 +0000
Message-Id: <20260715191451.515E01F00A3E@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRldmljZSB0cmVl
IGV4YW1wbGUgdXNlcyBhIDY0LWJpdCBgcmVnYCBmb3JtYXQgdGhhdCBmYWlscyBgZHRfYmluZGlu
Z19jaGVja2AgdmFsaWRhdGlvbiBkdWUgdG8gYSBtaXNtYXRjaCB3aXRoIHRoZSBkZWZhdWx0IGAj
YWRkcmVzcy1jZWxsc2AuCi0gW0xvd10gVGhlIGRldmljZSB0cmVlIGV4YW1wbGUgZmFpbHMgdG8g
aW5jbHVkZSB0aGUgaGVhZGVyIGZvciBgUEhZX1RZUEVfU0dNSUlgLCBjYXVzaW5nIGEgY29tcGls
YXRpb24gZXJyb3IgZHVyaW5nIGBkdF9iaW5kaW5nX2NoZWNrYC4KLS0KCi0tLSBQYXRjaCBbNF06
IFtSRkMgUEFUQ0ggMDQvMTBdIGR0LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJr
MzU2OC14cGNzIGJpbmRpbmcgLS0tCmNvbW1pdCAyZDhkNGNkM2NlZDVhYjIwMWQ2NjEwYTliNmI4
NzBjZWI2Y2VhZWQ1CkF1dGhvcjogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KCmR0
LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14cGNzIGJpbmRpbmcKClRo
aXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUg
U3lub3BzeXMgRGVzaWduV2FyZQpYUENTIGludGVncmF0ZWQgb24gdGhlIFJvY2tjaGlwIFJLMzU2
OCBTb0MsIHN1cHBvcnRpbmcgMTAwMEJBU0UtWCwgU0dNSUksCmFuZCBRU0dNSUkgbW9kZXMgd2l0
aCBmb3VyIE1JSSBwb3J0cy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvcGNzL3JvY2tjaGlwLWR3eHBjcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjE0ZmFkZjY3Yzc5M2EKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9w
Y3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwKClsgLi4uIF0KCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzU2OC1jcnUuaD4KPiArICAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazM1NjgtcG93ZXIuaD4KPiArCj4gKyAgICBwY3NA
ZmRhMDAwMDAgewo+ICsgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC14cGNzIjsK
PiArICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICNzaXplLWNlbGxzID0gPDA+
Owo+ICsgICAgICByZWcgPSA8MHgwIDB4ZmRhMDAwMDAgMHgwIDB4MjAwMDAwPjsKCltTZXZlcml0
eTogTG93XQpEb2VzIHRoaXMgNjQtYml0IHJlZ2lzdGVyIGZvcm1hdCBmYWlsIGR0X2JpbmRpbmdf
Y2hlY2sgdmFsaWRhdGlvbj8KClRoZSBleGFtcGxlIGlzIGV4dHJhY3RlZCBpbnRvIGEgZHVtbXkg
cm9vdCBub2RlIHdpdGggZGVmYXVsdAojYWRkcmVzcy1jZWxscyA9IDwxPiBhbmQgI3NpemUtY2Vs
bHMgPSA8MT4uIFRoaXMgbWVhbnMgdGhlIDQgY2VsbHMgaGVyZSB3aWxsCmJlIHBhcnNlZCBhcyB0
d28gaXRlbXMsIHdoaWNoIHZpb2xhdGVzIHRoZSBtYXhJdGVtczogMSBjb25zdHJhaW50IGRlZmlu
ZWQKaW4gdGhlIHNjaGVtYSBmb3IgdGhlIHJlZyBwcm9wZXJ0eS4KCj4gKyAgICAgIGNsb2NrcyA9
IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gKyAgICAgIGNsb2NrLW5h
bWVzID0gImNzciIsICJlZWUiOwo+ICsgICAgICBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9T
R01JST47CgpbU2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIGZhaWwgdG8gY29tcGlsZSBkdXJpbmcg
ZHRfYmluZGluZ19jaGVjaz8KClRoZSBleGFtcGxlIHVzZXMgdGhlIFBIWV9UWVBFX1NHTUlJIG1h
Y3JvLCBidXQgdGhlIHJlcXVpcmVkCjxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+IGhlYWRlciBpc24n
dCBpbmNsdWRlZCBpbiB0aGUgZXhhbXBsZS4KCj4gKyAgICAgIHBoeS1uYW1lcyA9ICJzZXJkZXMi
Owo+ICsgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1NjhfUERfUElQRT47Cj4gKwo+
ICsgICAgICBwY3MtbWlpQDAgewo+ICsgICAgICAgIHJlZyA9IDwwPjsKPiArICAgICAgfTsKPiAr
ICAgIH07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNzE0MTkxMzQxLjY5MDkwNi0xLWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD00
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
