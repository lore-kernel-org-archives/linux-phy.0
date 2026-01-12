Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F34C9EC97
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijyhbtzZY/T2iKtWLHST/YBnVmsZmBgCtEBPCO1xbnE=; b=JQDtTp0jwgyCII
	TAr7UPtjf3+DQ4tzYMM4Erd5amigcWbrLvmc7iwuFwWVwELixYXM+xl3jybV/EXWzKOBojZm4Zagn
	x8Yw7v5AMkUPbUXZv8QY1X4OMGgiyLrx/CVT8yBPCJ/VyTNIVxbVGR/GIL43uoHCVH5W2Qwix4WQ0
	tPlItLlZbQ7/dps6DdVzTH2kxB0m4Oqgsjat8mMowYlw2Kh97YPnZ3d2MXUpXCXoqALsuSdHYlYHm
	HnOuS4kFNYQHqH6m4r1cIhCR4gxTwZ+40dpK1nE4m5lrOd8PthQLLREwjMtsz9qnQ61uzvh65JtPO
	6+gh36JQDTyyFC3sHSVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfJRh-00000005bR5-2JDa;
	Mon, 12 Jan 2026 15:03:05 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfJRd-00000005bQE-3Pkd;
	Mon, 12 Jan 2026 15:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768230178;
	bh=L8or3v6iZqrpLG7v8P5SZLYbYdbPGHmvZtbWstQCXis=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oFuM3PXQ6KC4yt+dpdSV2jD9qpBTJQN12cbkZTyofIHJdFu9irgkEQSzuepDTp0Nz
	 0xiVCTtGtze+t+mMgNP/5st2JUv49OKCvT262OVD9VW9/0MI+slisJ3rLKCt5lHz9h
	 eN3PsNhsKw1Opd9tANFEcqIR9TYM/cOUz4ZY0tPlULcjDTGGEQLnY3ikCV/SSElYs3
	 d+NqlbjVFzZJo/IN7bGWmE7Okj5upYx9tEjamPNv60ZWu121Vi5Z1wxlgkKmCH+T2U
	 7vSwxZn6HnR55FYLoCZORcxBQmcsEU8Eu/nm1wjdFDZstYMPbFESsCgU83Um6MJ9OA
	 DGRQ62xDTZ+LQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9529717E138B;
	Mon, 12 Jan 2026 16:02:57 +0100 (CET)
Message-ID: <26c68bb1-1e63-4b47-babc-21ae27e3205e@collabora.com>
Date: Mon, 12 Jan 2026 16:02:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/24] scsi: ufs: mediatek: Rework probe function
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260108-mt8196-ufs-v5-0-49215157ec41@collabora.com>
 <20260108-mt8196-ufs-v5-11-49215157ec41@collabora.com>
 <81ed17eb-2170-4e97-b56d-488b5335ff5c@kernel.org>
 <dd2eba99adaddf7517f06acf7805d32e261fafa4.camel@mediatek.com>
 <87887adf-2c94-48c2-8f83-4e772ab50f60@kernel.org>
 <e9a6da3998195b9dbda5abd26bc6dd5d3aca07ff.camel@mediatek.com>
 <66ca211a-c909-4d0c-a22c-9cbd3489d372@kernel.org>
 <46cb450f92887ceba07614dc85ed495f6af7f602.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <46cb450f92887ceba07614dc85ed495f6af7f602.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_070302_039764_E027927C 
X-CRM114-Status: GOOD (  13.01  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMDkvMDEvMjYgMTA6MTYsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBGcmksIDIwMjYtMDEtMDkgYXQgMDk6NDMgKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3Jv
dGU6Cj4+IE9uIDA5LzAxLzIwMjYgMDk6MzgsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgd3JvdGU6
Cj4+PiBPbiBGcmksIDIwMjYtMDEtMDkgYXQgMDg6MjQgKzAxMDAsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4+Pj4gT24gMDkvMDEvMjAyNiAwNzoyMiwgUGV0ZXIgV2FuZyAo546L5L+h5Y+L
KSB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gSXMgaXQgc3VmZmljaWVudCBmb3IgdXMgdG8gc3Vw
cGxlbWVudCB0aGUgQUJJIGRvY3VtZW50Pwo+Pj4+PiBUaGlzIEFCSSBtaWdodCBhZmZlY3QgdGhl
IGFiaWxpdHkgdG8gcmVzZXQgYW5kIHJlY292ZXIgYWZ0ZXIKPj4+Pj4gYW4gVUZTIGVycm9yIGlu
IHVwc3RyZWFtIHdvcmxkLgo+Pj4+Cj4+Pj4KPj4+PiBJbiBub3JtYWwgY2FzZSB5ZXMsIGJ1dCBJ
IGNhbm5vdCBpbWFnaW5lIGFyZ3VtZW50cyBqdXN0aWZ5aW5nCj4+Pj4geW91cgo+Pj4+IHVzYWdl
Cj4+Pj4gb2YgVEkgcHJvcGVydGllcy4gQmFzaWNhbGx5IGl0IHdvdWxkIG5vdCBwYXNzIHJldmll
dy4KPj4+Pgo+Pj4+IEJlc3QgcmVnYXJkcywKPj4+PiBLcnp5c3p0b2YKPj4+Cj4+Pgo+Pj4gWWVz
LCB0aGlzIHBhcnQgaXMgaW5kZWVkIGJlY2F1c2UgTWVkaWFUZWvigJlzIHJlc2V0IGhhcmR3YXJl
Cj4+PiBpbXBsZW1lbnRhdGlvbiBpcyB0aGUgc2FtZSBhcyBUSeKAmXMuCgpObywgTWVkaWFUZWsn
cyByZXNldCBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbiBpcyBub3QgdGhlIHNhbWUgYXMgVGV4YXMg
SW5zdHJ1bWVudHMuCkl0IHdhcyAqdmVyeSBzaW1pbGFyKiB0byBUSSBpbiB0aGUgcGFzdCAoeWVh
cnMgYWdvLCBhcm91bmQgdGhlIE1UNjc5NSBIZWxpbwpnZW5lcmF0aW9uIHRpbWVzKS4KCk1lZGlh
VGVrJ3MgcmVzZXQgY29udHJvbGxlciAtIGJ5IGhhcmR3YXJlIC0gaXMgZGVmaW5pdGVseSBkaWZm
ZXJlbnQgZnJvbSB0aGUgb25lCmZvdW5kIGluIFRJIFNvQ3MuCgpSZWdhcmRzLApBbmdlbG8KCj4+
PiBUaGF04oCZcyB3aHkgd2UgdXNlZCDigJxjb21wYXRpYmxl4oCdCj4+PiBpbnN0ZWFkIG9mIGFj
dHVhbGx5IGltcGxlbWVudGluZyBNZWRpYVRla+KAmXMgb3duIHJlc2V0IGNvbnRyb2xsZXIuCj4+
Cj4+IFNvIHRoYXQncyBhbm90aGVyIHB1cmVseSBkb3duc3RyZWFtIGNvZGUuIEFkZGl0aW9uYWxs
eSB2ZXJ5IHBvb3IKPj4gcXVhbGl0eQo+PiBkb3duc3RyZWFtIGNvZGUuCj4+Cj4+PiBTbywgYXJl
IHlvdSBzdWdnZXN0aW5nIHRoYXQgd2UgdXBzdHJlYW0gYSBNZWRpYVRlayByZXNldAo+Pj4gY29u
dHJvbGxlciwKPj4+IGV2ZW4gdGhvdWdoIHRoZSBjb2RlIGlzIGFsbW9zdCBpZGVudGljYWwgdG8g
VEnigJlzPwo+Pgo+PiBJZiB5b3UgYXNrIGFib3V0IERULCB0aGlzIGlzIGFscmVhZHkgYW5zd2Vy
ZWQgaW4gd3JpdGluZyBiaW5kaW5ncwo+PiBkb2N1bWVudC4gWW91IGNhbm5vdCB1c2Ugc29tZW9u
ZSBlbHNlJ3MgY29tcGF0aWJsZS4gV2FzIGFsc28gcmUtCj4+IGl0ZXJhdGVkCj4+IG9uIG1haWxp
bmcgbGlzdCBiYXppbGxpb25zIG9mIHRpbWVzLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlz
enRvZgo+IAo+IE9rYXksIHdlIHdpbGwgY29ycmVjdCB0aGVzZSBpbmNvcnJlY3QgdXNhZ2VzLgo+
IAo+IFRoYW5rcwo+IFBldGVyCj4gCj4gCj4gCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
