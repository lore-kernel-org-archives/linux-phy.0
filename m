Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B722ACD128A
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 06:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kn+GvNsAXpiy9XygKLBTUC9tRigB3wvrTQeafOTxuJU=; b=X7Glfhso1gcP5d
	fpQtTt2c3qmlGkQ8WfYyP1UoO2qTq/T2tlDwe+oEckBr8E4j8bbS9YL7e9ohogLrWjKQY5VP3Nddc
	ffP02xF3kWxazFYqUezSJPfcUahtwaqYy2JjFSu5jwDXLIr3KT0/0qswqGPqhVesVy9n9aw/MagPD
	jtkXcKRKZcM44gqqAVNI0yHNSI8Y2KPT8FDHwm+BlpEi0mzCk9t/bjNftsMJgM8HvngAMfwLf1O24
	KxJepp0hw1TIBCDcFMeGRT9uHprIWxazRIFyQFstR6XbygXSW4IpntegOWdzdZ/H4+dU+cPbDatS8
	oKDBLD1FR/zspfTrsKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruo47-0000000AdIa-1Zs5;
	Thu, 11 Apr 2024 06:37:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruo42-0000000AdF3-1ewJ;
	Thu, 11 Apr 2024 06:37:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A7B6B61F4D;
	Thu, 11 Apr 2024 06:37:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E4FC433C7;
	Thu, 11 Apr 2024 06:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712817457;
	bh=J4MtSGZ9A4PqQEESdLkR2qbhqClsDX2SFx9QZn6D+7I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=giMzWZzSLoxGEKdsth1yCG/ZAGUd5Y9z5/gB/8OF4eLMgcKr2104+egAAjZ+oVS/8
	 Te+r1gtIdNAV/+1cq6vyEjOO9UlA35NUSrrkuVgfZXhJOldeuv948toll/XgpFXuSX
	 VyKf1OBhjYTSqw3U4et+K7DZBX4X9LhXNj9itOGhYnwxOBmNjAXsf3Hffd8W0wirxO
	 qpGPAQ3wVHjOgYWxepx2BM8nsVzcO/4vm3N0jwwMD9xL54Grattg4+qs63VTKx7tMG
	 q4t23QVdz3+ZPCLm8+hFm9Qw/Ur/UeVwMsteZUQDd99qo47D+sBGGEq8LcZAzZO248
	 yUeJkmfcLPtWg==
Message-ID: <64f6262e-2bef-4603-bd9d-b87926ae88e4@kernel.org>
Date: Thu, 11 Apr 2024 08:37:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] drm/mediatek/dp: The register is written with the
 parsed DTS SSC value.
To: =?UTF-8?B?TElBTktVTiBZQU5HICjmnajov57lnaQp?= <Liankun.Yang@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 =?UTF-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240403040517.3279-1-liankun.yang@mediatek.com>
 <c0986506-ba8b-4c52-88f8-119c23b8778c@kernel.org>
 <86dd866a-8ead-4fd1-993a-672d4947ba84@kernel.org>
 <bc785b80e109fc04c5973ee4efad115e0c3907c4.camel@mediatek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <bc785b80e109fc04c5973ee4efad115e0c3907c4.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_233738_543949_E3697BD4 
X-CRM114-Status: GOOD (  15.87  )
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

T24gMTEvMDQvMjAyNCAwODozMCwgTElBTktVTiBZQU5HICjmnajov57lnaQpIHdyb3RlOgo+IE9u
IFdlZCwgMjAyNC0wNC0wMyBhdCAxNjo1NiArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4gIAkgCj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBv
ciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsCj4+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIg
b3IgdGhlIGNvbnRlbnQuCj4+ICBPbiAwMy8wNC8yMDI0IDA4OjQxLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+Pj4gT24gMDMvMDQvMjAyNCAwNjowNSwgTGlhbmt1biBZYW5nIHdyb3RlOgo+
Pj4+IFtEZXNjcmlwdGlvbl0KPj4+PiBTZXZlcmUgc2NyZWVuIGZsaWNrZXJpbmcgaGFzIGJlZW4g
b2JzZXJ2ZWQgb24gdGhlIGV4dGVybmFsIGRpc3BsYXkKPj4+PiB3aGVuIHRoZSBEUCBwcm9qZWN0
aW9uIGZ1bmN0aW9uIGlzIHVzZWQgd2l0aCB0aGUgbWFya2V0IGV4cGFuc2lvbgo+PiBkb2NrLgo+
Pj4+Cj4+Pgo+Pj4+ICtpZiAoIXN0cmNtcChtb2RlX25hbWUsIFJHX1hUUF9HTEJfVFhQTExfU1ND
X0RFTFRBX1JCUikpIHsKPj4+PiArcmVnbWFwX3VwZGF0ZV9iaXRzKGRwX3BoeS0+cmVncywgc3Nj
X3JlZ19vZmZzZXQsCj4+Pj4gKyAgIFhUUF9HTEJfVFhQTExfU1NDX0RFTFRBX1JCUl9ERUZBVUxU
LCByZWFkX3ZhbHVlKTsKPj4+PiArfSBlbHNlIGlmICghc3RyY21wKG1vZGVfbmFtZSwgUkdfWFRQ
X0dMQl9UWFBMTF9TU0NfREVMVEFfSEJSKSkgewo+Pj4+ICtyZWFkX3ZhbHVlID0gcmVhZF92YWx1
ZSA8PCAxNiB8IDB4MDAwMDsKPj4+PiArcmVnbWFwX3VwZGF0ZV9iaXRzKGRwX3BoeS0+cmVncywg
c3NjX3JlZ19vZmZzZXQsCj4+Pj4gKyAgIFhUUF9HTEJfVFhQTExfU1NDX0RFTFRBX0hCUl9ERUZB
VUxULCByZWFkX3ZhbHVlKTsKPj4+PiArfQo+Pj4+ICsKPj4+PiArcmV0dXJuIDA7Cj4+Pj4gK30K
Pj4+PiArCj4+Pj4gK3N0YXRpYyBzdHJ1Y3QgZGV2aWNlX25vZGUgKm10a19kcF9nZXRfc3NjX25v
ZGUoc3RydWN0IHBoeSAqcGh5LAo+PiBzdHJ1Y3QgbXRrX2RwX3BoeSAqZHBfcGh5KQo+Pj4+ICt7
Cj4+Pj4gK3N0cnVjdCBkZXZpY2Vfbm9kZSAqbW9kZV9ub2RlID0gTlVMTDsKPj4+PiArCj4+Pj4g
K21vZGVfbm9kZSA9IG9mX2ZpbmRfbm9kZV9ieV9uYW1lKGRwX3BoeS0+ZGV2LT5vZl9ub2RlLAo+
PiBTU0NfU0VUVElORyk7Cj4+Pgo+Pj4gPyE/IQo+Pj4gWW91IGhhdmUgdGhlIG5vZGUsIHdoeSBk
byB5b3UgdHJ5IHRvIGZpbmQgaXQ/Cj4+Pgo+Pgo+PiBXYWl0LCB0aGF0IHdhcyBicmFpbmZ1Y2sg
ZnJvbSBteSBzaWRlIG9yIC1FTk9DT0ZGRUUuIElnbm9yZS4KPj4KPj4gSSBzdGlsbCBoYXZlIGEg
cXVlc3Rpb24gdGhvdWdoLCB3aGVyZSBkaWQgeW91IGRvY3VtZW50IG5ldyBBQkk6Cj4+IGRlcGVu
ZGVuY3kgb24gdGhlIG5vZGUgbmFtZSBoZXJlPwo+Pgo+PiBBbHNvLCB3aHkgeW91IGFyZSBub3Qg
Z29pbmcgdGhyb3VnaCBkaXJlY3QgY2hpbGRyZW4gLQo+PiBvZl9nZXRfY2hpbGRfYnlfbmFtZSgp
Pwo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+Pgo+Pgo+IAo+IFNvcnJ5LCB0aGVy
ZSBpcyBmb3JtYXR0aW5nIGlzc3VlIGluIHRoZSBwcmV2aW91cyBlbWFpbC4KPiAKPiBUaGUgZHBf
cGh5IGRldmljZSBoYXMgYWxyZWFkeSBiZWVuIHJlZ2lzdGVyZWQgdGhyb3VnaCB0aGUKPiBtdGtf
ZHBfcmVnaXN0ZXJfcGh5IGZ1bmN0aW9uIGluIHRoZSBtdGtfZHAuYyBmaWxlLCAKPiBzbyBpdCBj
YW5ub3QgYmUgcmVkZWZpbmVkIGluIHRoZSBkdHMuIEF2b2lkIHVzaW5nIG9mX2dldF9jaGlsZF9i
eV9uYW1lCj4gZm9yIHRoaXMgcHVycG9zZS4KPiAKPiBUbyBmaW5kIHRoZSBub2RlIG5hbWUsIHV0
aWxpemUgb2ZfZmluZF9ub2RlX2J5X25hbWUgc2luY2UgaXQgaGFzCj4gYWxyZWFkeSBiZWVuIHJl
Z2lzdGVyZWQuCgpUaGlzIGRvZXMgbm90IGFuc3dlciBteSBxdWVzdGlvbiBhdCBhbGwuIFlvdSBz
cGVhayBhYm91dCBkcml2ZXIsIEkgc3BlYWsKYWJvdXQgQUJJIGFuZCBiaW5kaW5ncy4KCkJlc3Qg
cmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
