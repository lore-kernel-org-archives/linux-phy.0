Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F76EC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 13:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FP6kHD8lN7BSxMZmnQr0UnWMIBW3+ypc73tl315nnAM=; b=N3I8S3LjaoRMzx
	CG5feNsK0AFxjtY4olP7nLz5xXyQrqTsaUqofPJul07NGMaEZlPGspvYDxpZvmH93aaxg0TOnX/gZ
	Gdz6XH8KiZYHg/rUSalWCQbUR9NAAbjAcAou1+wiz7S9lP0vN7sJ/dXyRxID9geqDOw/CTdHHspm9
	fI3hhqvnhdo3nYALl3VYu7XLdu3vnlJp7oWJw81crKqq0Rws8MRpEhpaGiY5dj2IGNkOEpdHfDRaO
	ZJ4dtb2vL6v63/HCXvdToWUDZPspWtpgmH2eGKRC2XJz6LZa0eitebC/J/dVvTzgUrOrSVVbdz6ZM
	Zj2X8ez4hlkxg18mIKvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzfD2-006yOl-H1; Tue, 21 Dec 2021 13:29:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzfD0-006yOF-0O
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 13:29:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7E4D861593;
 Tue, 21 Dec 2021 13:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF3E1C36AE8;
 Tue, 21 Dec 2021 13:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640093376;
 bh=KIT17I0KraImtz5cyp1yFZHxifEluvJ7HMfPQ7euJyc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s+HAcWhH8N+b5mDC9OjqN0ho9PTcbli5TOJvgCMwc/vdldQbMUrwuUA15wJt+iULL
 rQQ9C1YYquMY+MWvsQ0g9pywjboB7cHA1s2Tjt8/GMrbTznKq4emeTP9bVWHEUE9Nv
 5ndcgT/4eel/jzcCxfnq+ik8OyY1qDnPg9wqNi/VA7oamn7qWh2iXSk7U1TsYiXl1m
 Ai/Xay+8QiNk1CFYpyPyQAgq6VQy4+ZggwwGlX/Ojs0KIT7kXNnsHSgHCABit8ZszE
 55D5sUPBgFRSMXsk8mLCiD8+I40A+deZA6/kNQqdBuhHTPI21ZtYczigJvXDoVxjwH
 BvImdPNHDmodg==
Received: by pali.im (Postfix)
 id EF375778; Tue, 21 Dec 2021 14:29:33 +0100 (CET)
Date: Tue, 21 Dec 2021 14:29:33 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 0/6] Armada 3720 comphy native implementation
Message-ID: <20211221132933.6ybuhrbgrinyjwh3@pali>
References: <20211208024038.8797-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208024038.8797-1-kabel@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_052938_154053_D7FD88C5 
X-CRM114-Status: GOOD (  22.13  )
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

SGVsbG8gVmlub2QsCgpjb3VsZCB5b3UgbG9vayBhdCB0aGlzIHBhdGNoIHNlcmllcz8KCk9uIFdl
ZG5lc2RheSAwOCBEZWNlbWJlciAyMDIxIDAzOjQwOjMyIE1hcmVrIEJlaMO6biB3cm90ZToKPiBI
ZWxsbyBWaW5vZCwKPiAKPiB0aGlzIGlzIHYyIG9mIHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNv
bXBoeSB0byBuYXRpdmUga2VybmVsCj4gaW1wbGVtZW50YXRpb24uCj4gCj4gVGVzdGVkIG9uIFR1
cnJpcyBNT1ggYW5kIEVTUFJFU1NPYmluICh0ZXN0ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6
Cj4gZXRoZXJuZXQsIFBDSWUsIFVTQjMsIFNBVEEpLgo+IAo+IENoYW5nZXMgc2luY2UgdjEgKGFs
bCBjaGFuZ2VzIGluIHBhdGNoIDIvNik6Cj4gLSByZWZhY3RvcmVkIHRvIHVzZSBHRU5NQVNLKCkK
PiAtIGZpeGVkIHZhcmlvdXMgcmVnaXN0ZXIgbmFtZXMgdG8gY29uZm9ybSB0byBGdW5jdGlvbmFs
IFNwZWNpZmljYXRpb24KPiAtIHJlZmFjdG9yZWQgdmFyaW91cyByZWdpc3RlciBuYW1lcyB0byBo
YXZlIHVuaWZvcm0gbmFtaW5nCj4gLSByZWZhY3RvcmVkIHJlZ2lzdGVyIGFjY2VzcyBpbnRvIG9u
ZSBmdW5jdGlvbiwgd2hpY2ggZGVjaWRlcyB3aGV0aGVyCj4gICB0aGUgYWNjZXNzIHNob3VsZCBi
ZSBkaXJlY3Qgb3IgaW5kaXJlY3QsIHNvIGFzIHRvIG5vdCBoYXZlIGFsbCB0aGVzZQo+ICAgY2hl
Y2tzIGRvbmUgZXZlcnl3aGVyZSBpbiB0aGUgY29kZQo+IC0gbW92ZWQgYXJvdW5kIG9uZSByZWdp
c3RlciBkZWZpbml0aW9uIHRvIGhhdmUgdGhlIHJlZ2lzdGVycyBzb3J0ZWQKPiAgIGFjY29yZGlu
ZyB0byB0aGVpciBvZmZzZXQKPiAtIGFkZGVkIGNvbW1lbnRzIHRvIHNvbWUgcmVnaXN0ZXIgZGVm
aW5pdGlvbnMKPiAtIGFkZGVkIHN1cHBvcnQgZm9yIFBIWSByZXNldCgpIG1ldGhvZAo+IC0gd2hl
biBjaGFuZ2luZyBQSFkgbW9kZSwgdGhlIGRyaXZlciBub3cgcmVzZXRzIHRoZSBQSFkgYW5kIGl0
cwo+ICAgcmVnaXN0ZXJzIHRvIHB1dCB0aGUgUEhZIGluIGtub3duIHN0YXRlCj4gLSBmaXhlZCB0
aGUgcG93ZXJfb2ZmKCkgbWV0aG9kCj4gLSBhZGRlZCBzcGlubG9jayBndWFyZCB3aGVuIGFjY2Vz
c2luZyBQSFkgU2VsZWN0b3IgcmVnaXN0ZXIsIHNpbmNlIGl0Cj4gICBpcyBzaGFyZWQgYmV0d2Vl
biB0aGUgUEhZcyBhbmQgc28gdGhlIFBIWSBtdXRleCBpcyBpbnN1ZmZpY2llbnQKPiAtIHVwb24g
ZHJpdmVyIHByb2JlIGNoYW5nZWQgdGhlIGNhbGxzIHRvIHBvd2VyX29mZigpIHRvIHJlc2V0KCkK
PiAKPiAKPiBUaGUgb3JpZ2luYWwgY292ZXIgbGV0dGVyIHNhaWQ6Cj4gCj4gVGhlIFJQQyBjYWxs
aW5nIHRvIEFSTSBUcnVzdGVkIEZpcm13YXJlIGltcGxlbWVudGF0aW9uIG9mIEFybWFkYSAzNzIw
Cj4gY29tcGh5IGRyaXZlciBjYXVzZWQgcXVpdGUgYSBudW1iZXIgb2YgaXNzdWVzIChleHBsYWlu
ZWQgbW9yZSBpbiBwYXRjaCAyKS4KPiAKPiBUaGlzIHNlcmllcyBmaXhlcyB0aG9zZSBpc3N1ZXMg
YnkgcmVpbXBsZW1lbnRpbmcgdGhlIGRyaXZlciB0byBuYXRpdmUKPiBrZXJuZWwgaW1wbGVtZW50
YXRpb24uCj4gCj4gVGhlIGxhc3QgMyBjb21taXRzIHJldmVydCBjb21taXRzIGluIEFIQ0ksIFVT
QiwgYW5kIFBDSSBkcml2ZXJzLCB0aGF0IHdlcmUKPiBpbnRyb2R1Y2VkIHRoZXJlIGJlY2F1c2Ug
b2YgdGhvc2UgaXNzdWVzLgo+IAo+IFBhbGkgUm9ow6FyICg2KToKPiAgIHBoeTogbWFydmVsbDog
cGh5LW12ZWJ1LWEzNzAwLWNvbXBoeTogUmVtb3ZlIHBvcnQgZnJvbSBkcml2ZXIKPiAgICAgY29u
ZmlndXJhdGlvbgo+ICAgcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBBZGQg
bmF0aXZlIGtlcm5lbCBpbXBsZW1lbnRhdGlvbgo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogYXJt
YWRhLTM3eHg6IEFkZCB4dGFsIGNsb2NrIHRvIGNvbXBoeSBub2RlCj4gICBSZXZlcnQgImF0YTog
YWhjaTogbXZlYnU6IE1ha2UgU0FUQSBQSFkgb3B0aW9uYWwgZm9yIEFybWFkYSAzNzIwIgo+ICAg
UmV2ZXJ0ICJ1c2I6IGhvc3Q6IHhoY2k6IG12ZWJ1OiBtYWtlIFVTQiAzLjAgUEhZIG9wdGlvbmFs
IGZvciBBcm1hZGEKPiAgICAgMzcyMCIKPiAgIFJldmVydCAiUENJOiBhYXJkdmFyazogRml4IGlu
aXRpYWxpemF0aW9uIHdpdGggb2xkIE1hcnZlbGwncyBBcm0KPiAgICAgVHJ1c3RlZCBGaXJtd2Fy
ZSIKPiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4LmR0c2kgfCAg
ICAyICsKPiAgZHJpdmVycy9hdGEvYWhjaS5oICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAyIC0KPiAgZHJpdmVycy9hdGEvYWhjaV9tdmVidS5jICAgICAgICAgICAgICAgICAgICAgfCAg
ICAyICstCj4gIGRyaXZlcnMvYXRhL2xpYmFoY2lfcGxhdGZvcm0uYyAgICAgICAgICAgICAgIHwg
ICAgMiArLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jICAgICAgICB8
ICAgIDQgKy0KPiAgZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMg
fCAxMzYyICsrKysrKysrKysrKysrKystLQo+ICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktbXZlYnUu
YyAgICAgICAgICAgICAgICB8ICAgNDIgLQo+ICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktbXZlYnUu
aCAgICAgICAgICAgICAgICB8ICAgIDYgLQo+ICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktcGxhdC5j
ICAgICAgICAgICAgICAgICB8ICAgMjAgKy0KPiAgZHJpdmVycy91c2IvaG9zdC94aGNpLXBsYXQu
aCAgICAgICAgICAgICAgICAgfCAgICAxIC0KPiAgMTAgZmlsZXMgY2hhbmdlZCwgMTI0MCBpbnNl
cnRpb25zKCspLCAyMDMgZGVsZXRpb25zKC0pCj4gCj4gLS0gCj4gMi4zMi4wCj4gCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
