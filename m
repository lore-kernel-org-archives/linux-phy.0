Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C8DC5B572
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 13:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC1TKizjdrxiXwkVTab2QX6u1mfExi1lg5wZy/5tc48=; b=e4VsuTD2kxO9AA
	ymVFq77IaFiZiRjNkL5UlGWbCFkS0CN3pMthe6WJZd0suSGzeDEEpXV6w/GNEk6mtPcom+bthOoCl
	q3hU7iiHOQtz1bj+dvtxtPw0Vt9WxDTb+5HfPfADUfvsFgrKkJBnQIBTVWXHR62PKTkH4NG4N/49+
	LkAROdKZc0z6/ojtQzPoBBju/Ur8bBxqwCBlEPGtx9ObkDAHyiHD37gyhw6/0YDWv5W2bKW00R7d6
	1FU/RsNFVA4+YgelftxEsqrzO6DetCteER23cY2TkuJb0cnHxsJAh5Wftg5r23tLYIXHim6usmYMf
	g7iczNhulMvc/5QoyapQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVQu-00000000ji6-28HA;
	Thu, 13 Aug 2026 13:25:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVQt-00000000jhs-0zuR
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 13:25:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6F323600AD;
	Thu, 13 Aug 2026 13:25:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C74D1F000E9;
	Thu, 13 Aug 2026 13:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786627518;
	bh=wpTygh8GG8cF5Lks7dQEJrLp/2oKCcg4sDqmYOYRj9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oJWrGwrR+BH4AeTUWJm1oZW17uiBg9lrTcqJxdw54/SNaRmHaHKa1Y1VXSRW5Zvzb
	 sHWDJzBM0+EdWZpSLyKf5YSJsZx8oWzOVu5WSlBgPKYAEiw+cR9yjOhtSGqhBNTgsW
	 UewZeG5iJoeqBaVZZJ9M/3/WVdIpxdLyPc3HIQ967/lpCIZJZqp55ZYKmF29LsPwOp
	 nf0KtInriqBLnrXKKp7mb8jEBmQl9SzYrWAiiiVsisaT7ObG/pJnnpqUq9YR8Oqke3
	 sAAUO0AM8NzkDv71zcHn2lGi0MJbx3+a4wDdgsIHacMuIS0Yb6FAxe6hrUrV+Pw7Fz
	 A9445cwwwxfcw==
Date: Thu, 13 Aug 2026 15:25:09 +0200
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
Message-ID: <twfiqpyz3qxxrtjgnjondgtp6uyn7lnt3p24lzlkfad74ru3ng@4z2p5rvitb55>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-6-adilov@disroot.org>
 <pu3724you4tqsnuewo2uwqsubtwpf5t7kdd4of33awodjunfb4@cfzd3cmvlpjb>
 <0a4470dbaa381d068f25ebf8041b3f6f@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a4470dbaa381d068f25ebf8041b3f6f@disroot.org>
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

T24gVGh1LCBBdWcgMTMsIDIwMjYgYXQgMDc6NDM6MDBBTSArMDAwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiAKPiBPbiAyMDI2LTA4LTEyIDE1OjA1LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBPbiBXZWQsIE1heSAyMCwgMjAyNiBhdCAxMDo1NzoyN1BNICswNTAwLCBSdXN0YW0g
QWRpbG92IHdyb3RlOgo+ID4+IEFkZCBzdXBwb3J0IGZvciB0aGUgdXNiMiBwaHkgb2YgUlRMOTYw
N0Mgc2VyaWVzIGJhc2VkIFNvQ3MuCj4gPj4gQWRkIHRoZSBtYWNyb3MgYW5kIHBoeSBjb25maWcg
c3RydWN0IGZvciBydGw5NjA3Lgo+ID4+IAo+ID4+IFJUTDk2MDdDIHJlcXVpcmVzIHRvIGNsZWFy
IGEgImZvcmNlIGhvc3QgZGlzY29ubmVjdCIgYml0IGluIHRoZQo+ID4+IHNwZWNpZmljIHJlZ2lz
dGVyICh3aGljaCBpcyBhdCBhbiBvZmZzZXQgZnJvbSByZWdfd3JhcF92c3RhdHVzKQo+ID4+IGJl
Zm9yZSBwcm9jZWVkaW5nIHdpdGggcGh5IHBhcmFtZXRlciB3cml0ZXMuIFNpbmNlIGl0IGJlbG9u
Z3MgaW50bwo+ID4+IHRoZSB2c3RhdHVzIHJlZ2lzdGVyIHJlZ2lvbiwgaXQgcmVxdWlyZXMgdGhl
IHVzZSBvZiBhZGRlZCByZWFkIGFuZAo+ID4+IHdyaXRlIGhlbHBlciBmdW5jdGlvbnMuCj4gPj4g
Cj4gPj4gQWRkIHRoZSBib29sIHZhcmlhYmxlIHRvIHRoZSBkcml2ZXIgZGF0YSBzdHJ1Y3QgYW5k
IGhpZGUgdGhpcyB3aG9sZQo+ID4+IHByb2NlZHVyZSB1bmRlciB0aGUgaWYgc3RhdGVtZW50IHRo
YXQgY2hlY2tzIHRoaXMgbmV3IHZhcmlhYmxlLgo+ID4+IAo+ID4+IEFkZCB0aGUgYXBwcm9wcmlh
dGUgYmlnIGVuZGlhbiByZWFkIGFuZCB3cml0ZSBmdW5jdGlvbnMgZm9yIHJ0bDk2MDcKPiA+PiBh
bmQgYXNzaWduIHRoZW0gdG8gaXRzIHBoeSBjb25maWcgc3RydWN0Lgo+ID4+IAo+ID4+IENvLWRl
dmVsb3BlZC1ieTogTWljaGFlbCBaYXZlcnRraW4gPG1pc2hhLnphdmVydGtpbkBtYWlsLnJ1Pgo+
ID4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgWmF2ZXJ0a2luIDxtaXNoYS56YXZlcnRraW5AbWFp
bC5ydT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBSdXN0YW0gQWRpbG92IDxhZGlsb3ZAZGlzcm9vdC5v
cmc+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgfCA1
OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDU4
IGluc2VydGlvbnMoKykKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVhbHRl
ay9waHktcnRrLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiA+
PiBpbmRleCAxNmM1ZmMzMTkxZGUuLjY5ZjBmNTI3OWI1ZSAxMDA2NDQKPiA+PiAtLS0gYS9kcml2
ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gPj4gKysrIGIvZHJpdmVycy9waHkvcmVh
bHRlay9waHktcnRrLXVzYjIuYwo+ID4+IEBAIC0yNiw2ICsyNiwxMiBAQAo+ID4+ICAjZGVmaW5l
IFBIWV9WQ1RSTF9TSElGVCA4Cj4gPj4gICNkZWZpbmUgUEhZX1JFR19EQVRBX01BU0sgMHhmZgo+
ID4+ICAKPiA+PiArI2RlZmluZSBQSFlfOTYwN19WU1RTX0JVU1kgQklUKDE3KQo+ID4+ICsjZGVm
aW5lIFBIWV85NjA3X05FV19SRUdfUkVRIEJJVCgxMykKPiA+PiArCj4gPj4gKyNkZWZpbmUgUEhZ
Xzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcgMHgxMAo+ID4+ICsjZGVmaW5lIFBIWV85NjA3X0ZP
UkNFX0RJU0NPTk5FQ1RfQklUIEJJVCg1KQo+ID4+ICsKPiA+PiAgI2RlZmluZSBHRVRfTE9XX05J
QkJMRShhZGRyKSAoKGFkZHIpICYgMHgwZikKPiA+PiAgI2RlZmluZSBHRVRfSElHSF9OSUJCTEUo
YWRkcikgKCgoYWRkcikgJiAweGYwKSA+PiA0KQo+ID4+ICAKPiA+PiBAQCAtMTA5LDYgKzExNSw3
IEBAIHN0cnVjdCBwaHlfY2ZnIHsKPiA+PiAgCj4gPj4gIAl1MzIgKCpyZWFkKSh2b2lkIF9faW9t
ZW0gKnJlZyk7Cj4gPj4gIAl2b2lkICgqd3JpdGUpKHUzMiB2YWwsIHZvaWQgX19pb21lbSAqcmVn
KTsKPiA+PiArCWJvb2wgZm9yY2VfaG9zdF9kaXNjb25uZWN0Owo+ID4+ICB9Owo+ID4+ICAKPiA+
PiAgc3RydWN0IHBoeV9wYXJhbWV0ZXIgewo+ID4+IEBAIC0xNDYsNiArMTUzLDE2IEBAIHN0YXRp
YyB2b2lkIHJ0a191c2IycGh5X3dyaXRlKHUzMiB2YWwsIHZvaWQgX19pb21lbSAqcmVnKQo+ID4+
ICAJd3JpdGVsKHZhbCwgcmVnKTsKPiA+PiAgfQo+ID4+ICAKPiA+PiArc3RhdGljIHUzMiBydGtf
dXNiMnBoeV9yZWFkX2JlKHZvaWQgX19pb21lbSAqcmVnKQo+ID4+ICt7Cj4gPj4gKwlyZXR1cm4g
aW9yZWFkMzJiZShyZWcpOwo+ID4+ICt9Cj4gPj4gKwo+ID4+ICtzdGF0aWMgdm9pZCBydGtfdXNi
MnBoeV93cml0ZV9iZSh1MzIgdmFsLCB2b2lkIF9faW9tZW0gKnJlZykKPiA+PiArewo+ID4+ICsJ
aW93cml0ZTMyYmUodmFsLCByZWcpOwo+ID4+ICt9Cj4gPj4gKwo+ID4+ICAvKiBtYXBwaW5nIDB4
RTAgdG8gMCAuLi4gMHhFNyB0byA3LCAweEYwIHRvIDggLCwsIDB4RjcgdG8gMTUgKi8KPiA+PiAg
c3RhdGljIGlubGluZSBpbnQgcGFnZV9hZGRyX3RvX2FycmF5X2luZGV4KHU4IGFkZHIpCj4gPj4g
IHsKPiA+PiBAQCAtNjAwLDYgKzYxNywxOSBAQCBzdGF0aWMgaW50IGRvX3J0a19waHlfaW5pdChz
dHJ1Y3QgcnRrX3BoeSAqcnRrX3BoeSwgaW50IGluZGV4KQo+ID4+ICAJCWdvdG8gZG9fdG9nZ2xl
Owo+ID4+ICAJfQo+ID4+ICAKPiA+PiArCWlmIChwaHlfY2ZnLT5mb3JjZV9ob3N0X2Rpc2Nvbm5l
Y3QpIHsKPiA+PiArCQkvKiBkaXNhYmxlIGZvcmNlLWhvc3QtZGlzY29ubmVjdCAqLwo+ID4+ICsJ
CXZvaWQgX19pb21lbSAqdnN0YXR1cyA9IHBoeV9yZWctPnJlZ193cmFwX3ZzdGF0dXM7Cj4gPj4g
KwkJdTMyIHRlbXA7Cj4gPj4gKwo+ID4+ICsJCXRlbXAgPSBwaHlfcmVnLT5yZWFkKHZzdGF0dXMg
KyBQSFlfOTYwN19GT1JDRV9ESVNDT05ORUNUX1JFRyk7Cj4gPj4gKwo+ID4+ICsJCXRlbXAgJj0g
flBIWV85NjA3X0ZPUkNFX0RJU0NPTk5FQ1RfQklUOwo+ID4+ICsJCXBoeV9yZWctPndyaXRlKHRl
bXAsIHZzdGF0dXMgKyBQSFlfOTYwN19GT1JDRV9ESVNDT05ORUNUX1JFRyk7Cj4gPj4gKwo+ID4+
ICsJCXVzbGVlcF9yYW5nZSgxMDAwMCwgMTEwMDApOwo+ID4gCj4gPiBJZiB5b3UgcmVhbGx5IHdh
bnQgdG8gbWFrZSBzdXJlIHRoZSBkZWxheSBnZXRzIGNvbXBsZXRlZCB3aXRoaW4gdGhpcyBpZigp
Cj4gPiBjb25kaXRpb24sIHRoZW4gYWRkIGEgcmVhZC4KPiA+IAo+ID4gLSBNYW5pCj4gCj4gSGV5
LAo+IAo+IFRoYW5rcyBmb3IgcmV2aWV3cywgaSBoYXZlIGFscmVhZHkgc2VlbiB0aGUgb3RoZXIg
Y29tbWVudHMgYnV0IGkgaGF2ZSBhIHF1ZXN0aW9uCj4gYWJvdXQgdGhpcyBvbmUuIFdoYXQgZG8g
eW91IG1lYW4gYnkgYWRkaW5nIGEgcmVhZD8gQXMgZmFyIGFzIGkga25vdywgaXQgaXMganVzdAo+
IHRpbWUgdG8gImFsbG93IElQIHRvIHN0YXJ0dXAiIGFuZCBub3QgbGlrZSBhIHN0YXR1cyBiaXQg
aSBoYXZlIHRvIGNvbnRpbnVvdXNseQo+IHJlYWQgaWYgdGhhdCBpcyB3aGF0IHlvdSB3ZXJlIHJl
ZmVycmluZyB0by4KPiAKClNvIHlvdSBkbyBhIHdyaXRlIHRvIFBIWV85NjA3X0ZPUkNFX0RJU0NP
Tk5FQ1RfUkVHIHJlZ2lzdGVyIGFuZCBhbGxvdyB0aGUgSVAgdG8Kc3RhcnQgYW5kIHRoZW4gY29u
dGludWUgdGhlIG9wZXJhdGlvbi4gV2hhdCBpZiB0aGUgd3JpdGUgdG8KUEhZXzk2MDdfRk9SQ0Vf
RElTQ09OTkVDVF9SRUcgcmVnaXN0ZXIgZ2V0cyBzdG9yZWQgaW4gYSBoYXJkd2FyZSBXcml0ZSBC
dWZmZXI/ClRoZSB3cml0ZSBpbnN0cnVjdGlvbiB3aWxsIHN1Y2NlZWQsIGFuZCB0aGUgQ1BVIHdp
bGwgd2FpdCBmb3IgdGhlIGRlbGF5LiBCdXQgdGhlCndyaXRlIG1heSBuZXZlciByZWFjaCB0aGUg
aGFyZHdhcmUgYW5kIGlmIHRoZSBDUFUgc3RhcnRzIGV4ZWN1dGluZyBzdWNjZXNzaXZlCm9wZXJh
dGlvbnMgYmVmb3JlIGVub3VnaCBkZWxheSwgaXQgbWF5IGxlYWQgdG8gZXJyYXRpYyBiZWhhdmlv
dXIuCgpTbyB0aGF0J3Mgd2h5IGl0IGlzIHJlY29tbWVuZGVkIHRvIGZsdXNoIG91dCB0aGUgd3Jp
dGUgYmVmb3JlIGRlbGF5IChpZiB0aGUKZGVsYXkgaXMgY3JpdGljYWwpIGJ5IGRvaW5nIGEgcmVh
ZCBvZiB0aGF0IHJlZ2lzdGVyLiBUaGUgcmVhZCB3aWxsIGVuc3VyZSB0aGF0CnRoZSB3cml0ZSBo
YXMgcmVhY2hlZCB0aGUgaGFyZHdhcmUgYmVmb3JlIHRoZSBkZWxheToKCgl3cml0ZShQSFlfOTYw
N19GT1JDRV9ESVNDT05ORUNUX1JFRyk7CglyZWFkKFBIWV85NjA3X0ZPUkNFX0RJU0NPTk5FQ1Rf
UkVHKSAjIGZsdXNoIHRoZSB3cml0ZQoJZGVsYXkoKQoJIyBjb250aW51ZQoKVGhpcyByZWFkIGJh
Y2sgaXMgbm90IG5lZWRlZCBpbiBhbGwgdGhlIGNhc2VzLCBidXQgb25seSB3aGVyZSB0aGUgZGVs
YXkgaXMKY3JpdGljYWwuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
