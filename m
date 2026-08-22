Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23490C5DF97
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4N45xqgDEbzDWyrk/h71GRq2/hMWmqtv/T90ME1lPk=; b=UNpwzjGk7gv9Ql
	+8U8qyBpZbrB7dnzaoG7oU4yPN6QWzLzkAjfVvRL+Nemp4mi1TihmhdFU0ZFLkoHmlqq/8FHzkWwC
	udCI6mzHtMO5a6usUdxk1aCBt5nUR2ZIcm3Kx0mQifZTICv4+eODb0VlE84oIn+f5xfGbQ3z191vf
	PNit8sL/fG/N25KOfGvWKu7QqBdwaeWRFslcQ8nh+kxkPygjhD62hnQv2zMWzXOaLP6ZUZWWDyWoK
	JIpuMq7vhFif6I85Vp7oHcJn95vXQrmIxlIg2iimEr/z0yiBpSkigBDz/cL+q7X9E1TaDukt4UFip
	lS4Mw8ALJFDhJRJfffrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxga5-0000000EMjw-3UR8;
	Sat, 22 Aug 2026 07:55:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxga4-0000000EMjq-0gcI
	for linux-phy@lists.infradead.org;
	Sat, 22 Aug 2026 07:55:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 723B1436CA;
	Sat, 22 Aug 2026 07:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D91B91F000E9;
	Sat, 22 Aug 2026 07:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787385355;
	bh=6N9au3zguC45nbY50QHDxwLeCSu+/FgjEfEQK+IV4Oc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T8QxpZEdYWax8TgfMDzJKMN85LEGBc2y3O4oFJjc/cn9TKktAvcwTP+wExSfRcJpZ
	 cgBwjuw/fKMA73g61ole0UORo9/g/f3JL2rAMqoXwX2z9vFurLk84f2wU42Ny2PRh6
	 Mm3283ZO3ZPHcENChUmVEkSXFRtJCzX3r4GK7LSebs/O8cIMVVN1+mDbJ1Q5/bV0g+
	 oKB9hBXHFOcxOCr2cWaA2539zt1mih8CH2siWljDO8O4bdekF6dzDO42pCzvVby3EY
	 +UGAz/zA1zrkmA0gbepsdBTG/5k6l32WWOBOsAkgUv89RtY3Ya8AsftQIrNxZEB6O5
	 xLjgvsupx54dQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/9] dt-bindings: phy: Document ST STM32MP25
 USB2-FEMTO PHY
To: "Marek Vasut" <marex@nabladev.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260822074816.548662-2-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
 <20260822074816.548662-2-marex@nabladev.com>
Date: Sat, 22 Aug 2026 07:55:54 +0000
Message-Id: <20260822075554.D91B91F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGByZWdgIHByb3Bl
cnR5IGlzIGRlZmluZWQgaW4gdGhlIHNjaGVtYSBhbmQgdXNlZCBpbiB0aGUgZXhhbXBsZSBidXQg
aXMgbWlzc2luZyBmcm9tIHRoZSBgcmVxdWlyZWRgIGxpc3QuCi0gW0xvd10gVGhlIGV4YW1wbGUg
bm9kZSBuYW1lICd1c2ItcGh5QDI0MDAnIHZpb2xhdGVzIHRoZSBnZW5lcmljIFBIWSBzY2hlbWEg
cGF0dGVybi4KLSBbTG93XSBUaGUgJyNjbG9jay1jZWxscycgcHJvcGVydHkgbGFja3MgZG9jdW1l
bnRhdGlvbiBmb3IgdGhlIGNsb2NrIGluZGljZXMuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0gg
djMgMS85XSBkdC1iaW5kaW5nczogcGh5OiBEb2N1bWVudCBTVCBTVE0zMk1QMjUgVVNCMi1GRU1U
TyBQSFkgLS0tCmNvbW1pdCBmZWU4NDk0MzI3MTNhYWQ0MTVlNzNlZDg3MmU2ZGU2MjIyMDZiZWU4
CkF1dGhvcjogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+CgpkdC1iaW5kaW5nczogcGh5
OiBEb2N1bWVudCBTVCBTVE0zMk1QMjUgVVNCMi1GRU1UTyBQSFkKClRoaXMgY29tbWl0IGRvY3Vt
ZW50cyB0aGUgVVNCMiBwaHkgZm9yIFNUTTMyTVAyNSBVU0IyIGNvbnRyb2xsZXJzLiBJdCBpbnRy
b2R1Y2VzCmJpbmRpbmdzIGZvciB0d28gc2xpZ2h0bHkgZGlmZmVyZW50IHBoeXMgcHJlc2VudCBp
biB0aGUgU1RNMzJNUDI1IFNvQyB1c2luZwpzZXBhcmF0ZSBjb21wYXRpYmxlIHN0cmluZ3MuCgo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0
bTMyLXVzYjJwaHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
c3Qsc3RtMzItdXNiMnBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwMDAwLi5jYzUwNDQ3OTBiZWVhCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sCj4gQEAg
LTAsMCArMSw2NyBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5
IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQoKWyAuLi4gXQoKPiArcHJvcGVy
dGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBzdCxzdG0zMm1w
MjUtdXNiMnBoeTEKPiArICAgICAgLSBzdCxzdG0zMm1wMjUtdXNiMnBoeTIKPiArCj4gKyAgIiNj
bG9jay1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKCltTZXZlcml0eTogTG93XQpUaGlzIHNl
dHMgI2Nsb2NrLWNlbGxzIHRvIDEsIG1lYW5pbmcgY29uc3VtZXJzIHdpbGwgbmVlZCB0byBwYXNz
IGFuIGluZGV4LApidXQgdGhlcmUgZG9lc24ndCBhcHBlYXIgdG8gYmUgYW55IGRvY3VtZW50YXRp
b24gb2YgdGhlIHZhbGlkIGluZGljZXMgKGUuZy4sIAowIGZvciBQTEwsIDEgZm9yIENNTikgaW4g
dGhlIGJpbmRpbmcgb3IgYSBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZS4KCkNvdWxkIHRoaXMgYmUg
dXBkYXRlZCB0byBkb2N1bWVudCB3aGF0IGluZGV4IGNvcnJlc3BvbmRzIHRvIHdoaWNoIGNsb2Nr
IHNvCmRldmljZSB0cmVlIGF1dGhvcnMgYXJlbid0IGZvcmNlZCB0byByZWx5IG9uIHVuZG9jdW1l
bnRlZCBtYWdpYyBudW1iZXJzPwoKPiArICAiI3BoeS1jZWxscyI6Cj4gKyAgICBjb25zdDogMAo+
ICsKPiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMQoKWyAuLi4gXQoKPiArcmVxdWlyZWQ6Cj4g
KyAgLSBjb21wYXRpYmxlCj4gKyAgLSAiI2Nsb2NrLWNlbGxzIgo+ICsgIC0gIiNwaHktY2VsbHMi
Cj4gKyAgLSBjbG9ja3MKPiArICAtIHJlc2V0cwo+ICsgIC0gdmRkMzMtc3VwcGx5CgpbU2V2ZXJp
dHk6IExvd10KVGhlIHJlZyBwcm9wZXJ0eSBpcyBkZWZpbmVkIGluIHRoZSBzY2hlbWEgYW5kIHVz
ZWQgaW4gdGhlIGV4YW1wbGUgYmVsb3csCmJ1dCBpdCBpcyBtaXNzaW5nIGZyb20gdGhpcyBsaXN0
LgoKSWYgaXQgaXMgb21pdHRlZCBoZXJlLCBkZXZpY2UgdHJlZSBub2RlcyB3aXRob3V0IGEgcmVn
aXN0ZXIgb2Zmc2V0IGNhbgpzaWxlbnRseSBwYXNzIHNjaGVtYSB2YWxpZGF0aW9uLCBldmVuIHRo
b3VnaCB0aGUgZHJpdmVyIHdpbGwgZmFpbCB0byBwcm9iZS4KClNob3VsZCB0aGUgcmVnIHByb3Bl
cnR5IGJlIGluY2x1ZGVkIGluIHRoaXMgcmVxdWlyZWQgbGlzdD8KCj4gKwo+ICthZGRpdGlvbmFs
UHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3N0LHN0bTMybXAyNS1yY2MuaD4KPiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9yZXNldC9zdCxzdG0zMm1wMjUtcmNjLmg+Cj4gKwo+ICsgICAgdXNiLXBo
eUAyNDAwIHsKCltTZXZlcml0eTogTG93XQpHZW5lcmljIHBoeSBzY2hlbWEgcGF0dGVybnMgaW4g
ZHRzY2hlbWEgcmVzdHJpY3Qgbm9kZSBuYW1lcyBmb3IgcGh5CnByb3ZpZGVycyB0byBtYXRjaCB0
aGUgcmVndWxhciBleHByZXNzaW9uIF5waHkoQC4qKT8kLgoKV2lsbCB0aGlzIG5vZGUgbmFtZSB0
cmlnZ2VyIHdhcm5pbmdzIHdoZW4gdmFsaWRhdGluZyB0aGUgZXhhbXBsZSBkdXJpbmcgYSAKZHRf
YmluZGluZ19jaGVjaz8KCj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMjUtdXNi
MnBoeTEiOwo+ICsgICAgICAgIHJlZyA9IDwweDI0MDAgMHgyND47Cj4gKyAgICAgICAgI3BoeS1j
ZWxscyA9IDwwPjsKPiArICAgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgY2xv
Y2tzID0gPCZyY2MgQ0tfS0VSX1VTQjJQSFkxPjsKPiArICAgICAgICByZXNldHMgPSA8JnJjYyBV
U0IyUEhZMV9SPjsKPiArICAgICAgICB2ZGQzMy1zdXBwbHkgPSA8JnZkZDMzdXNiPjsKPiArICAg
IH07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwODIyMDc0ODE2LjU0ODY2Mi0xLW1hcmV4QG5hYmxhZGV2LmNvbT9wYXJ0PTEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
