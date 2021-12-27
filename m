Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2EA3C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 12:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkW5hhMRqEf2k34GC9/F6Wb4H39y1u3uTqKqD9+kvhs=; b=kSv0QLaESD++3B
	TIIeM3wXbfWdTleAQZqutm/FooI80GLry4VeuPNkiioDMH6MmbsxDjED9fo3Hs2O9iylytcawwTC9
	RmOxdnF5uu09ptN7Jp8A8YYiIOiKo3CZ/VclNKFF569HvVAOvNf7o94o7kGoWx/MZ6xVgL5tpfBBF
	mxsr8MOtmdtgHQoG+lbN2ujWBAWt0MnJ9czI9hDlcGxcUP4/lYePjl9YZrLu7RMKZFxlNEB7+wBgQ
	6gX6mq0n1EhxjCdKDMOYwoyhkdQ8BK+WrPowCVQL3IBCipIJlM1RFnkqhCRHVlyoNdr26TKlVtzQ0
	Zd4a0cmv194KggkEy29g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1pSW-00GiSz-Vj; Mon, 27 Dec 2021 12:50:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1pSU-00GiQS-4z
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 12:50:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 596A8B80E70;
 Mon, 27 Dec 2021 12:50:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969EBC36AEA;
 Mon, 27 Dec 2021 12:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640609431;
 bh=c3cMOvt/4KPWDsVOupqC43i8yGRkJ1t5LOE7R5dWcGc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IXSlvLS873WPM3YcPZn6DGm4hdBQjUgO3vwM7TbmCDXIntvEPZPRNnPUhTvuSd7LH
 Qq4hWT85L7Tw16NRlTPPpDbfM9+g5Vzsb25tOlgr7ZywE6saZJiNoh2Npi3OqnITC9
 mDoamoS8y82/IUjLik+lhlJ22kmB2p4BG6st0uyAc4IIht5k7wmkFmbHMdFo3VNKR0
 hC08/YQLPig0CPsVu9JQorMoy6adJ2n9oQjj5LFXoJbzFL1ahrzU+vREWwYNFK7j0I
 eQ01J9eGP9uNIY0a2eCQ5i9tkyhbrNmNw1z9NopsBkvEFqQGeOI/Ua/i0aLKZIHKep
 3hqaFZZ5IBvaw==
Date: Mon, 27 Dec 2021 13:50:10 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Gregory CLEMENT
 <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211227135010.594ad684@thinkpad>
In-Reply-To: <YcmWFtjBke3LDY79@matsya>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
 <20211223132102.lgne4vsdjeqqudwc@pali> <YcmWFtjBke3LDY79@matsya>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_045034_502764_D7F946E7 
X-CRM114-Status: GOOD (  22.07  )
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

T24gTW9uLCAyNyBEZWMgMjAyMSAxNjowMTo1MCArMDUzMApWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gT24gMjMtMTItMjEsIDE0OjIxLCBQYWxpIFJvaMOhciB3cm90ZToK
PiA+IE9uIFRodXJzZGF5IDIzIERlY2VtYmVyIDIwMjEgMTg6MTA6NTIgVmlub2QgS291bCB3cm90
ZTogIAo+ID4gPiBPbiAwOC0xMi0yMSwgMDM6NDAsIE1hcmVrIEJlaMO6biB3cm90ZTogIAo+ID4g
PiA+IEZyb206IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+ICAKPiA+ID4gICAKPiA+ID4g
PiArLyogQ09NUEhZIHJlZ2lzdGVycyAqLwo+ID4gPiA+ICsjZGVmaW5lIENPTVBIWV9QT1dFUl9Q
TExfQ1RSTAkJMHgwMQo+ID4gPiA+ICsjZGVmaW5lIFBVX0lWUkVGX0JJVAkJCUJJVCgxNSkKPiA+
ID4gPiArI2RlZmluZSBQVV9QTExfQklUCQkJQklUKDE0KQo+ID4gPiA+ICsjZGVmaW5lIFBVX1JY
X0JJVAkJCUJJVCgxMykKPiA+ID4gPiArI2RlZmluZSBQVV9UWF9CSVQJCQlCSVQoMTIpCj4gPiA+
ID4gKyNkZWZpbmUgUFVfVFhfSU5UUF9CSVQJCQlCSVQoMTEpCj4gPiA+ID4gKyNkZWZpbmUgUFVf
REZFX0JJVAkJCUJJVCgxMCkKPiA+ID4gPiArI2RlZmluZSBSRVNFVF9EVExfUlhfQklUCQlCSVQo
OSkKPiA+ID4gPiArI2RlZmluZSBQTExfTE9DS19CSVQJCQlCSVQoOCkKPiA+ID4gPiArI2RlZmlu
ZSBSRUZfRlJFRl9TRUxfTUFTSwkJR0VOTUFTSyg0LCAwKQo+ID4gPiA+ICsjZGVmaW5lIFJFRl9G
UkVGX1NFTF9TRVJERVNfMjVNSFoJKDB4MSA8PCAwKQo+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVG
X1NFTF9TRVJERVNfNDBNSFoJKDB4MyA8PCAwKQo+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NF
TF9TRVJERVNfNTBNSFoJKDB4NCA8PCAwKQo+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9Q
Q0lFX1VTQjNfMjVNSFoJKDB4MiA8PCAwKQo+ID4gPiA+ICsjZGVmaW5lIFJFRl9GUkVGX1NFTF9Q
Q0lFX1VTQjNfNDBNSFoJKDB4MyA8PCAwKQo+ID4gPiA+ICsjZGVmaW5lIENPTVBIWV9NT0RFX01B
U0sJCUdFTk1BU0soNywgNSkKPiA+ID4gPiArI2RlZmluZSBDT01QSFlfTU9ERV9TQVRBCQkoMHgw
IDw8IDUpCj4gPiA+ID4gKyNkZWZpbmUgQ09NUEhZX01PREVfUENJRQkJKDB4MyA8PCA1KQo+ID4g
PiA+ICsjZGVmaW5lIENPTVBIWV9NT0RFX1NFUkRFUwkJKDB4NCA8PCA1KQo+ID4gPiA+ICsjZGVm
aW5lIENPTVBIWV9NT0RFX1VTQjMJCSgweDUgPDwgNSkgIAo+ID4gPiAKPiA+ID4gQW55IHJlYXNv
biB3aHkgdGhlc2UgYXJlIG5vdCB1c2luZyBHRU5NQVNLLiBJIGd1ZXNzIGRvY3VtZW50YXRpb24g
d291bGQKPiA+ID4gZGVmaW5lIHRoZXNlIGFzIEJJVCB4LXkgcmlnaHQ/ICAKPiA+IAo+ID4gSGVs
bG8gVmlub2QhIEknbSBub3Qgc3VyZSB0byB3aGljaCBtYWNybyByZWZlcnMgeW91ciBxdWVzdGlv
biBhcyBhbGwKPiA+ICpfTUFTSyBkZWZpbmVzIGFyZSBub3cgdXNpbmcgR0VOTUFTSygpIG1hY3Jv
cy4KPiA+IAo+ID4gRGVmaW5pdGlvbnMgd2hpY2ggZG8gbm90IGhhdmUgbWFzayBfTUFTSyBhcmUg
bm90IG1hc2tzLCBidXQgcmF0aGVyCj4gPiBwYXJ0aWN1bGFyIHZhbHVlcyBmb3IgY29ycmVzcG9u
ZGluZyBfTUFTSyBjb25zdGFudC4KPiA+IAo+ID4gU28sIGZvciBleGFtcGxlOiBSRUZfRlJFRl9T
RUxfTUFTSyBpcyA1IGJpdCBtYXNrIGZvciBmcmVmX3NlbCBhbmQKPiA+IGZyZWZfc2VsIGNhbiBj
b250YWluIGV4YWN0bHkgb25lIG9mIHRoZSBmb2xsb3dpbmcgdmFsdWVzOgo+ID4gUkVGX0ZSRUZf
U0VMX1NFUkRFU18yNU1IWiwgUkVGX0ZSRUZfU0VMX1NFUkRFU180ME1IWiwKPiA+IFJFRl9GUkVG
X1NFTF9TRVJERVNfNTBNSFosIFJFRl9GUkVGX1NFTF9QQ0lFX1VTQjNfMjVNSFosCj4gPiBSRUZf
RlJFRl9TRUxfUENJRV9VU0IzXzQwTUhaLiBTbyB5b3Ugd2FudCB0byBzZXQgc2VyZGVzIHJlZiBm
cmVxIHRvCj4gPiA1MCBNSHogeW91IG5lZWQgdG8gY2xlYXIgYml0cyBbNDowXSAobWFjcm8gUkVG
X0ZSRUZfU0VMX01BU0spIGFuZCB0aGVuCj4gPiBzZXQgdG8gdmFsdWUgMHg0IChtYWNybyBSRUZf
RlJFRl9TRUxfU0VSREVTXzUwTUhaKSB0byBiaXRzIFs0OjBdLgo+ID4gCj4gPiBJdCBpcyBjbGVh
ciBub3c/IE9yIGRpZCB5b3UgbWVhbiBzb21ldGhpbmcgZGlmZmVyZW50PyAgCj4gCj4gVGhhbmtz
IGZvciBleHBsYW5hdGlvbi4KPiAKPiBMb29raW5nIGF0IHRoaXMsIGkgdGhpbmsgdGhpcyBzaG91
bGQgYmUgZGVmaW5lZCBhcyBjb25zdGFudHMgYXMgZGVmaW5lZAo+IGluIHRoZSBzcGVjOgo+ICNk
ZWZpbmUgUkVGX0ZSRUZfU0VMX1NFUkRFU18yNU1IWiB4Cj4gI2RlZmluZSBSRUZfRlJFRl9TRUxf
U0VSREVTXzQwTUhaIHkKPiAuLi4gc28gb24KPiAKPiBhbmQgdGhlbiB1c2UgRklFTERfUFJFUChN
QVNLLCBjb25zdGFudCkgaWUsCj4gRklFTERfUFJFUChSRUZfRlJFRl9TRUxfTUFTSywgUkVGX0ZS
RUZfU0VMX1NFUkRFU18yNU1IWikKPiAKPiBUaGF0IHNvdW5kcyBtb3JlIHJlYWRhYmxlIGFuZCBs
ZXNzIGVycm9yIHByb25lIHRvIG1lIDopCj4gCj4gVGhhbmtzCgpDb29sIEkgZGlkbid0IGtub3cg
YWJvdXQgdGhpcyBtYWNybywgSSBhbHdheXMgd2FudGVkIHNvbWV0aGluZyBsaWtlCnRoaXMuIFdp
bGwgcmVzZW5kIHdpdGggdGhpcyB1cGRhdGVkLgoKVGh4LgoKTWFyZWsKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
