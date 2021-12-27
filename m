Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE62C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 12:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxcvuYxHr9fyuRsnqx0yZQ0VM7YhoeuzIlb875EjqlE=; b=y7YQVCOOUyIP4U
	V2c9kT8PuelGXBKj211PhZ7fTZ7qjvJYS5dNNR2XcUXi17CxQpwj2qIMLHiWttY6mAKmIc+TYopvw
	g7FepLwbtQ+LBmHcE0kpJEwIJD/NG4zT5nJKpjDIPdLMJYhfBonQ6RPbSSbwLozoFUfoOGaP3rcfI
	miEi8isNTgP7/zEo9U+FD/F/iEno5t4NNFFJ6EG9YQpii19gN+OdDWctvlVX9PNy6vBnIxhk9TXt/
	SdcjoGxZlqr1AzVyf9T9RKV2VCisGuA0dpZ0VTV5tHhtAL1gqvs+xKVhPS805q3tUJXwmzKQ/LEIX
	Xdy+bWvbwZH2qHSxylFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1pY7-00GklU-W7; Mon, 27 Dec 2021 12:56:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1pY5-00Gkki-7l
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 12:56:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F131E60FB4;
 Mon, 27 Dec 2021 12:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EDBEC36AEA;
 Mon, 27 Dec 2021 12:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640609779;
 bh=ekdFupf/jgewDS8afMpk7JiHSMbh+FRpxWOqrntkqzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IUFafuiqY8KJOllAxWqD3WDp/iuM/SLpgveABB7e4Zmweq3uvWZzZQpudE378LdMe
 AtlU3+GaxAv8lEVCEXwDdFlwMR2+B7VwdM7X3bDYhq5AjmG+Ns03U0qQmnvUdOmrI/
 AbvhcFwO5YhXu3n51juZbH83GQSxzsGUnBkSbu/Gc1QSZixTPvRhbt4FiP5a5pdgL4
 O5qFSkFLDBESwqnBk6G/JnH9ftLGWJM1xlmKRc/+WPXxjO2NKjueuz64c4bOvysqM0
 U4AqQgwBA2HA5uojS/E3upoWvY7atFIqoBkC/cG8Gj3mx/qLrySFxySmRWV26IlSBR
 0Zxpslh0het5g==
Received: by pali.im (Postfix)
 id AF782AC1; Mon, 27 Dec 2021 13:56:16 +0100 (CET)
Date: Mon, 27 Dec 2021 13:56:16 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211227125616.ivwqfdtcshtgatpr@pali>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
 <20211223132102.lgne4vsdjeqqudwc@pali> <YcmWFtjBke3LDY79@matsya>
 <20211227135010.594ad684@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211227135010.594ad684@thinkpad>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_045621_381015_85E69C9E 
X-CRM114-Status: GOOD (  26.02  )
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

T24gTW9uZGF5IDI3IERlY2VtYmVyIDIwMjEgMTM6NTA6MTAgTWFyZWsgQmVow7puIHdyb3RlOgo+
IE9uIE1vbiwgMjcgRGVjIDIwMjEgMTY6MDE6NTAgKzA1MzAKPiBWaW5vZCBLb3VsIDx2a291bEBr
ZXJuZWwub3JnPiB3cm90ZToKPiAKPiA+IE9uIDIzLTEyLTIxLCAxNDoyMSwgUGFsaSBSb2jDoXIg
d3JvdGU6Cj4gPiA+IE9uIFRodXJzZGF5IDIzIERlY2VtYmVyIDIwMjEgMTg6MTA6NTIgVmlub2Qg
S291bCB3cm90ZTogIAo+ID4gPiA+IE9uIDA4LTEyLTIxLCAwMzo0MCwgTWFyZWsgQmVow7puIHdy
b3RlOiAgCj4gPiA+ID4gPiBGcm9tOiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPiAgCj4g
PiA+ID4gICAKPiA+ID4gPiA+ICsvKiBDT01QSFkgcmVnaXN0ZXJzICovCj4gPiA+ID4gPiArI2Rl
ZmluZSBDT01QSFlfUE9XRVJfUExMX0NUUkwJCTB4MDEKPiA+ID4gPiA+ICsjZGVmaW5lIFBVX0lW
UkVGX0JJVAkJCUJJVCgxNSkKPiA+ID4gPiA+ICsjZGVmaW5lIFBVX1BMTF9CSVQJCQlCSVQoMTQp
Cj4gPiA+ID4gPiArI2RlZmluZSBQVV9SWF9CSVQJCQlCSVQoMTMpCj4gPiA+ID4gPiArI2RlZmlu
ZSBQVV9UWF9CSVQJCQlCSVQoMTIpCj4gPiA+ID4gPiArI2RlZmluZSBQVV9UWF9JTlRQX0JJVAkJ
CUJJVCgxMSkKPiA+ID4gPiA+ICsjZGVmaW5lIFBVX0RGRV9CSVQJCQlCSVQoMTApCj4gPiA+ID4g
PiArI2RlZmluZSBSRVNFVF9EVExfUlhfQklUCQlCSVQoOSkKPiA+ID4gPiA+ICsjZGVmaW5lIFBM
TF9MT0NLX0JJVAkJCUJJVCg4KQo+ID4gPiA+ID4gKyNkZWZpbmUgUkVGX0ZSRUZfU0VMX01BU0sJ
CUdFTk1BU0soNCwgMCkKPiA+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9TRVJERVNfMjVN
SFoJKDB4MSA8PCAwKQo+ID4gPiA+ID4gKyNkZWZpbmUgUkVGX0ZSRUZfU0VMX1NFUkRFU180ME1I
WgkoMHgzIDw8IDApCj4gPiA+ID4gPiArI2RlZmluZSBSRUZfRlJFRl9TRUxfU0VSREVTXzUwTUha
CSgweDQgPDwgMCkKPiA+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9QQ0lFX1VTQjNfMjVN
SFoJKDB4MiA8PCAwKQo+ID4gPiA+ID4gKyNkZWZpbmUgUkVGX0ZSRUZfU0VMX1BDSUVfVVNCM180
ME1IWgkoMHgzIDw8IDApCj4gPiA+ID4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9NQVNLCQlHRU5N
QVNLKDcsIDUpCj4gPiA+ID4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9TQVRBCQkoMHgwIDw8IDUp
Cj4gPiA+ID4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9QQ0lFCQkoMHgzIDw8IDUpCj4gPiA+ID4g
PiArI2RlZmluZSBDT01QSFlfTU9ERV9TRVJERVMJCSgweDQgPDwgNSkKPiA+ID4gPiA+ICsjZGVm
aW5lIENPTVBIWV9NT0RFX1VTQjMJCSgweDUgPDwgNSkgIAo+ID4gPiA+IAo+ID4gPiA+IEFueSBy
ZWFzb24gd2h5IHRoZXNlIGFyZSBub3QgdXNpbmcgR0VOTUFTSy4gSSBndWVzcyBkb2N1bWVudGF0
aW9uIHdvdWxkCj4gPiA+ID4gZGVmaW5lIHRoZXNlIGFzIEJJVCB4LXkgcmlnaHQ/ICAKPiA+ID4g
Cj4gPiA+IEhlbGxvIFZpbm9kISBJJ20gbm90IHN1cmUgdG8gd2hpY2ggbWFjcm8gcmVmZXJzIHlv
dXIgcXVlc3Rpb24gYXMgYWxsCj4gPiA+ICpfTUFTSyBkZWZpbmVzIGFyZSBub3cgdXNpbmcgR0VO
TUFTSygpIG1hY3Jvcy4KPiA+ID4gCj4gPiA+IERlZmluaXRpb25zIHdoaWNoIGRvIG5vdCBoYXZl
IG1hc2sgX01BU0sgYXJlIG5vdCBtYXNrcywgYnV0IHJhdGhlcgo+ID4gPiBwYXJ0aWN1bGFyIHZh
bHVlcyBmb3IgY29ycmVzcG9uZGluZyBfTUFTSyBjb25zdGFudC4KPiA+ID4gCj4gPiA+IFNvLCBm
b3IgZXhhbXBsZTogUkVGX0ZSRUZfU0VMX01BU0sgaXMgNSBiaXQgbWFzayBmb3IgZnJlZl9zZWwg
YW5kCj4gPiA+IGZyZWZfc2VsIGNhbiBjb250YWluIGV4YWN0bHkgb25lIG9mIHRoZSBmb2xsb3dp
bmcgdmFsdWVzOgo+ID4gPiBSRUZfRlJFRl9TRUxfU0VSREVTXzI1TUhaLCBSRUZfRlJFRl9TRUxf
U0VSREVTXzQwTUhaLAo+ID4gPiBSRUZfRlJFRl9TRUxfU0VSREVTXzUwTUhaLCBSRUZfRlJFRl9T
RUxfUENJRV9VU0IzXzI1TUhaLAo+ID4gPiBSRUZfRlJFRl9TRUxfUENJRV9VU0IzXzQwTUhaLiBT
byB5b3Ugd2FudCB0byBzZXQgc2VyZGVzIHJlZiBmcmVxIHRvCj4gPiA+IDUwIE1IeiB5b3UgbmVl
ZCB0byBjbGVhciBiaXRzIFs0OjBdIChtYWNybyBSRUZfRlJFRl9TRUxfTUFTSykgYW5kIHRoZW4K
PiA+ID4gc2V0IHRvIHZhbHVlIDB4NCAobWFjcm8gUkVGX0ZSRUZfU0VMX1NFUkRFU181ME1IWikg
dG8gYml0cyBbNDowXS4KPiA+ID4gCj4gPiA+IEl0IGlzIGNsZWFyIG5vdz8gT3IgZGlkIHlvdSBt
ZWFuIHNvbWV0aGluZyBkaWZmZXJlbnQ/ICAKPiA+IAo+ID4gVGhhbmtzIGZvciBleHBsYW5hdGlv
bi4KPiA+IAo+ID4gTG9va2luZyBhdCB0aGlzLCBpIHRoaW5rIHRoaXMgc2hvdWxkIGJlIGRlZmlu
ZWQgYXMgY29uc3RhbnRzIGFzIGRlZmluZWQKPiA+IGluIHRoZSBzcGVjOgo+ID4gI2RlZmluZSBS
RUZfRlJFRl9TRUxfU0VSREVTXzI1TUhaIHgKPiA+ICNkZWZpbmUgUkVGX0ZSRUZfU0VMX1NFUkRF
U180ME1IWiB5Cj4gPiAuLi4gc28gb24KPiA+IAo+ID4gYW5kIHRoZW4gdXNlIEZJRUxEX1BSRVAo
TUFTSywgY29uc3RhbnQpIGllLAo+ID4gRklFTERfUFJFUChSRUZfRlJFRl9TRUxfTUFTSywgUkVG
X0ZSRUZfU0VMX1NFUkRFU18yNU1IWikKPiA+IAo+ID4gVGhhdCBzb3VuZHMgbW9yZSByZWFkYWJs
ZSBhbmQgbGVzcyBlcnJvciBwcm9uZSB0byBtZSA6KQo+ID4gCj4gPiBUaGFua3MKPiAKPiBDb29s
IEkgZGlkbid0IGtub3cgYWJvdXQgdGhpcyBtYWNybywgSSBhbHdheXMgd2FudGVkIHNvbWV0aGlu
ZyBsaWtlCj4gdGhpcy4gV2lsbCByZXNlbmQgd2l0aCB0aGlzIHVwZGF0ZWQuCj4gCj4gVGh4Lgo+
IAo+IE1hcmVrCgpQZXJmZWN0ISBBbnl3YXksIEkgdGhpbmsgdGhhdCB0aGVyZSBpcyBhIHR5cG8g
aW4gbmFtZS4gSXQgaXMgUkVGZXJlbmNlCkZSRVF1ZW5jeSBTRUxlY3QsIG5vdCBmcmVGdWVuY3ku
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
