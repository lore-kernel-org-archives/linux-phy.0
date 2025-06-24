Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F144C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 19:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VtIKVWBpo228Ek66+fFneiBusoWs+yANK15ebCR5gBw=; b=h4rmAcoAF2HwTE
	YcE1dgkHZpHSdoGgnB05QBf7cFviyhRwp6bLoALbBdk9JMIj4GQpj7ao4uUNDd+BQ//wjY/puuJEd
	TNH6buw7I7f+9behHZs6oco8tZ3ZgwTvONDiAl4oFVMF6AKWdAoczzWTumPVYVQsw6L2zQi0zeYXz
	6AFZH4DyZHW60zFfvT+4EThvrF7L7MEQACCoeaeTbZvWbkaGmdy03GRJIKFzdak2ch+q5+2FZasgw
	60fuOuuPSXSv6qp6qlqrtY7HsJihtMat8JR/aWti/13guuA4k3XauVRLawYYd3C6ct9dRokBPNf1L
	mVCVF4SB21ekWYytar1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU9j0-00000006fBf-11oO;
	Tue, 24 Jun 2025 19:54:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU5lc-000000069ju-47Sv;
	Tue, 24 Jun 2025 15:41:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E2C905C67CB;
	Tue, 24 Jun 2025 15:38:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D022AC4CEE3;
	Tue, 24 Jun 2025 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750779660;
	bh=V4cFT1hqRldsR5zu8HOg3Q2LTneYk9DIMbOYJXD5/V0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=SpBF33O5DmWK2ju99YB+4lma9jKXpW06Qy7WaO72fUGRR1bwapxUreARlC7ACWT6K
	 d7vv4X3sGIn9LGbgcTNo3m5HJIra8v37CKiK8VkCbUNooIqlcYyh8VByADcphLjB9W
	 hYlSLlPFnIJKGwnFPitY38ytqBnIwNYFchiWpKgQFsRDQMDIhi5yhHtaKUrJqUIfhI
	 M+utXRuCz03/g3TIw4+WeJGu3yf5PFgqTBHYBduyJ+DgVZQ5TroV2E01VPGEMlzJrk
	 LU61+IsoQyxe1V5snMuI1Aeg04lidkunp9VMazrO8DDzUHZSLfluTSyWQAZA4nsWG6
	 Cps8jR3ACfGjQ==
Date: Tue, 24 Jun 2025 10:40:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>,
	"mani@kernel.org" <mani@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"joel@jms.id.au" <joel@jms.id.au>,
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"linus.walleij@linaro.org" <linus.walleij@linaro.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
	"elbadrym@google.com" <elbadrym@google.com>,
	"romlem@google.com" <romlem@google.com>,
	"anhphan@google.com" <anhphan@google.com>,
	"wak@google.com" <wak@google.com>,
	"yuxiaozhang@google.com" <yuxiaozhang@google.com>,
	BMC-SW <BMC-SW@aspeedtech.com>
Subject: Re: [PATCH 7/7] pci: aspeed: Add ASPEED PCIe host controller driver
Message-ID: <20250624154058.GA1478094@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SEYPR06MB5134973F678EB5B163DD50809D79A@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_084101_065701_2D9F70F9 
X-CRM114-Status: GOOD (  18.24  )
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

T24gTW9uLCBKdW4gMjMsIDIwMjUgYXQgMDU6NDE6MTNBTSArMDAwMCwgSmFja3kgQ2hvdSB3cm90
ZToKCltBcHBhcmVudGx5IHlvdSB0cmltbWVkIG91dCBzb21lIG9mIHRoZSBsaW5lcyB0aGF0IHNo
b3cgd2hvIHNhaWQgd2hhdDsKdGhlcmUgc2hvdWxkIGJlIG1vcmUgbGluZXMgaGVyZSBsaWtlOgoK
ICA+IE9uIEZyaSwgSnVuIDEzLCAyMDI1IGF0IDAzOjAzOjU1UE0gKzAzMDAsIElscG8gSsOkcnZp
bmVuIHdyb3RlOgogID4gPiBPbiBGcmksIDEzIEp1biAyMDI1LCBKYWNreSBDaG91IHdyb3RlOgpd
Cgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaD4gI2luY2x1ZGUg
PGxpbnV4L2lycWRvbWFpbi5oPgoKPiA+ID4gKy8qIFRMUCBjb25maWd1cmF0aW9uIHR5cGUgMCBh
bmQgdHlwZSAxICovCj4gPiA+ICsjZGVmaW5lIENSR19SRUFEX0ZNVFRZUEUodHlwZSkJCSgweDA0
MDAwMDAwIHwgKHR5cGUgPDwgMjQpKQo+ID4gPiArI2RlZmluZSBDUkdfV1JJVEVfRk1UVFlQRSh0
eXBlKQkJKDB4NDQwMDAwMDAgfCAodHlwZSA8PCAyNCkpCj4gPiAKPiA+IFRoZXNlIGFyZSBzdHJh
aWdodCBmcm9tIFBDSWUgc3BlYywgcmlnaHQ/Cj4gPiAKPiA+IEkgdGhpbmsgdGhvc2Ugc2hvdWxk
IGNvbWUgZnJvbSBkZWZpbmVzIGluc2lkZQo+ID4gaW5jbHVkZS91YXBpL2xpbnV4L3BjaV9yZWdz
LmgsIHRoZXJlIG1pZ2h0IG5vdCBiZSBvbmUgYWxyZWFkeSwgc28KPiA+IHlvdSBtaWdodCBoYXZl
IHRvIGFkZCB0aGVtLgo+ID4gCj4gPiBJIGFsc28gdGhpbmsgeW91IHNob3VsZCBhY3R1YWxseSB1
c2UgdGhlIHR5cGUgYXMgYm9vbGVhbiwgYW5kCj4gPiByZXR1cm4gb25lIG9mIHRoZSB0d28gZGVm
aW5lcyBiYXNlZCBvbiBpdC4gQSBoZWxwZXIgdG8gZG8gdGhhdAo+ID4gbWlnaHQgYmUgZ2VuZXJp
YyBQQ0kgaGVhZGVyIG1hdGVyaWFsIGFzIHdlbGwuCj4gPiAKPiAKPiBBZ3JlZWQuICBUaGlzIGRl
ZmluaXRpb24gaXMgdXNlZCBvbiBUTFAgaGVhZGVyLiAgTWF5YmUgSSB3aWxsIHRyeSB0bwo+IGFk
ZCBzb21lIGRlZmluaXRpb25zIHRvIHBjaV9yZWdzLmggb3IgcGNpLmgKClRoaXMgdmFsdWVzIG1p
Z2h0IGNvbWUgZnJvbSB0aGUgUENJZSBzcGVjLCBidXQgdW5sZXNzIHRoZXkgYXJlIG5lZWRlZApv
dXRzaWRlIGRyaXZlcnMvcGNpLCBhbnkgI2RlZmluZXMgc2hvdWxkIHByb2JhYmx5IGdvIGluCmRy
aXZlcnMvcGNpL3BjaS5oLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
