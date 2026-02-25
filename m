Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B598FD3758
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NGBaXRDvLfeDN3XiSRR0oQP7OIr6u9xMVTFg5P+zA4=; b=CDnwj5tISNaAEm
	LU9xoIiZSI2K+fpi44anN+Mf2Di+prbg0Lk21wWXjNhCNxYeEnKjlmTU3dxwvkXlqfpHv3/yCt16g
	eqF6su2lXsQ2Bi2JOo2rj3+yTT65/ypxwWAXlkH7D/XiOtPr0d+rqsrL76UOiA2Li85FX/WRmDj9N
	jhUOEhU54O22pQgIz7nH/sSMklONbNR0tqI74KhzeOTIZKCnccd7Vaqjzqr99MtHSQ12K3b9LrGED
	/odSabVugiD7GupYfnw17DtpyJzwhOTBZ/N5L8YZELaBYMw6A2k0Qfb+jlsx/l3nmflLcDcrna75C
	gDgxoMiqg7HmWQuzojJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvERx-0000000422u-0hVC;
	Wed, 25 Feb 2026 12:57:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvERu-0000000422N-3eVH;
	Wed, 25 Feb 2026 12:57:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772024214; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZNKGY3r6ToOIex/fDgwa1coiqUw5WWa6sJezR4UUbMvkusuwIcXwNH8M0nf3ZT+kHxOFkIYKp1ERgvUJIMa7d2F/P+MNMcid8C43vYW+CQYnvP5QNaOJf3OoWvxsBQdq9+yJGG34WE9hYSIBba8r4y6eCHvEZa424zzuagcEqlk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772024214; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=0ajGVOhZgJOdHcOgWpjrAR3tDuhSfoXYdy0PzsAjZP0=; 
	b=fIqc4e1FDvi63gN4ZwdRJDdp3jasdNBD7AG4GNLIH6wDMS9/OxTfGeWdrsT5wcfacvbY0dDrqFQ5aUf2A+fFYsgVpa2ALaqIzW8TZIICz9MPLiETcwZ2X6+/iOBtG0rgEmBiBGmeb6XTcKOCZARmzCuaK1b8SSPH8a7VstAYUlE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772024214;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=0ajGVOhZgJOdHcOgWpjrAR3tDuhSfoXYdy0PzsAjZP0=;
	b=ipYumGPfVekix1b30H5OrkHdJ75Du0EPbskX0BqwHuNtUsOPeSPeVt9b4ypgICk6
	XnnowUv+Y8bxWYzdOLaOlMu6ZbBiiFU3ktHsOPDjubZNr+HDf1QTLC3/NveceeRuEok
	2L+C606lheDu7Ip93rblXJDGT9j+c8gYCJsycLEg=
Received: by mx.zohomail.com with SMTPS id 1772024213678970.8709094887984;
	Wed, 25 Feb 2026 04:56:53 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 Peter Wang =?UTF-8?B?KOeOi+S/oeWPiyk=?= <peter.wang@mediatek.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v7 22/23] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
Date: Wed, 25 Feb 2026 13:56:46 +0100
Message-ID: <6563087.lOV4Wx5bFT@workhorse>
In-Reply-To: <e452951498ae82433337ca428bd49c7358194dd8.camel@mediatek.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-22-b5f2907c6da7@collabora.com>
 <e452951498ae82433337ca428bd49c7358194dd8.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_045706_976922_E0513A3D 
X-CRM114-Status: GOOD (  15.92  )
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

T24gV2VkbmVzZGF5LCAyNSBGZWJydWFyeSAyMDI2IDExOjM3OjI3IENlbnRyYWwgRXVyb3BlYW4g
U3RhbmRhcmQgVGltZSBQZXRlciBXYW5nICjnjovkv6Hlj4spIHdyb3RlOgo+IE9uIE1vbiwgMjAy
Ni0wMi0xNiBhdCAxNDozNyArMDEwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gVGhl
IE1lZGlhVGVrIFVGUyBkcml2ZXIgY29udGFpbnMgc3VwcG9ydCBmb3IgYW4gdW5kb2N1bWVudGVk
LAo+ID4gbm9uLXZlbmRvci1wcmVmaXhlZCB1MzIgcHJvcGVydHkgbmFtZWQgImNsay1zY2FsZS11
cC12Y29yZS1taW4iLgo+ID4gCj4gPiBTaW5jZSBpdCBpcyBub3QgcGFydCBvZiBhbnkgYmluZGlu
ZywgYW5kIHdvdWxkIG5vdCBwYXNzIGEgYmluZGluZ3MKPiA+IHJldmlldyBpbiBpdHMgY3VycmVu
dCBmb3JtLCByZW1vdmUgaXQuCj4gPiAKPiA+IFRvIHJldHVybiB0aGlzIGZ1bmN0aW9uYWxpdHks
IGl0IG5lZWRzIHRvIGJlIHJlc3VibWl0dGVkIGluIGEgc2VyaWVzCj4gPiB0aGF0IGFsc28gaW50
cm9kdWNlcyBpdCB0byB0aGUgYmluZGluZywgYW5kIGp1c3RpZmllcyB3aGF0IGl0IGlzIHVzZWQK
PiA+IGZvci4gQ29tcGF0aWJpbGl0eSB3aXRoIGRvd25zdHJlYW0gZGV2aWNlIHRyZWVzIGlzIG5v
dCBhIHZhbGlkCj4gPiBqdXN0aWZpY2F0aW9uIGZvciBpdHMgZXhpc3RlbmNlLgo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xs
YWJvcmEuY29tPgo+IAo+IENhbiBNVDgxOTYgd29yayBvbiBHZWFyIDUgd2l0aG91dCByYWlzaW5n
IFZjb3JlPwoKSSBkbyBub3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIGRvY3VtZW50YXRpb24gdG8gYW5z
d2VyIHRoaXMgcXVlc3Rpb24uCkhvd2V2ZXIsIHlvdSBsaWtlbHkgZG8uCgo+IEknbSBhZnJhaWQg
aXQgbWlnaHQgY2F1c2UgcHJvYmxlbXMuCj4gTWF5YmUgd2UgY2FuIGFkZCB0aGUgY29ycmVjdCBi
aW5kaW5nIGZvciBNVDgxOTY/CgpUaGUgY29ycmVjdCBiaW5kaW5nIGlzIHRvIGRvIHRoaXMgd2l0
aCBPUFBzIGluc3RlYWQsIHdoaWNoIGlzIGEKZnV0dXJlIHRhc2sgdGhhdCBjYW4gYmUgdGFja2xl
ZCAoYnkgc29tZW9uZSBlbHNlKSBvbmNlIHRoZSBicm9hZApjbGVhbnVwcyBpbiB0aGlzIHNlcmll
cyBoYXZlIGxhbmRlZC4KCkFkZGluZyBhICJjbGstc2NhbGUtdXAtdmNvcmUtbWluIiBwcm9wZXJ0
eSB0byB0aGUgTWVkaWFUZWsgVUZTCmJpbmRpbmcgd291bGQgbm90IHBhc3MgRFQgYmluZGluZ3Mg
cmV2aWV3LgoKPiAKPiBUaGFua3MKPiBQZXRlcgo+IAoKCgoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
