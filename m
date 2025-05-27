Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0E9C5AE59
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 04:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi1BzytfCgAUiUst9Njtl57RdI7sl7yE0kSA58eiUhE=; b=1nwcOkcvVSb2uq
	LkoBpn5CMk7kJE1DNQLFMwCsNLLU5opZt2ug06an/dyGcTZyxu+AZ05BV0NPuuV/Zevt+2X/gQpIf
	x35QebX4Y3XQFkQyLN22tmFit6YtYHNEC2gnoPAYn6bR+t2QpLDzYD+f66uEAnpPl+PQQ6F5PBeOk
	u5xqVe0LUzBUu+lbRoE4VM0k01j3M+4pBVBDVp1k7yKsJtmzLZtnyz/Ek78qyBvTKBlMbB2ZRiJ3h
	nx6p2HBpw69h9aXz8jazuLljmTFCAKggsjwqMlD4VcYn5CANpm08T+KOQIiuGgrt+f+h6aRXYF/gS
	sAuuKuVJt1d1PYeDtmfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8sl-0000000CAwA-3aTt;
	Wed, 28 May 2025 04:59:15 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8mf-0000000CA0L-3LOW
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 04:52:59 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250528045252epoutp01e96d55c2cf0fbeb594cfcc4e6824693d~Dl8mUsOJG3041030410epoutp01X
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:52:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250528045252epoutp01e96d55c2cf0fbeb594cfcc4e6824693d~Dl8mUsOJG3041030410epoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748407972;
	bh=U83q4TToxT2dLPTnjUMvyipfG7vxWpSM/Xy4BogwD50=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Yona9kOwXnnHmYNWwO7kGy5GnQa2Nb5V7JUJ+mzvkFsuUjjbQK/DfyajYOeKFMZgl
	 X7UuIwrkYQxV9rMcttsWxyJta4GDUhN2nCbc9iOMKaZrShHmSXSOVhCwtsNqkjAPFQ
	 QHsCOv09KwDqIIQ+yJiT2irIPst/0uo4fnFVLfBQ=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250528045251epcas5p37228d43c995988ca4594d59a3364d287~Dl8llKL4N1435114351epcas5p3_;
	Wed, 28 May 2025 04:52:51 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.175]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4b6cZ86rQsz6B9m5; Wed, 28 May
	2025 04:52:48 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250527104402epcas5p25412c8db4f4408c9306253aee970b99d~DXF67b4Ey0603206032epcas5p2H;
	Tue, 27 May 2025 10:44:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250527104402epsmtrp2eda0d810ba7f1e069366fbf77cc1cea0~DXF66JL8s3025330253epsmtrp2K;
	Tue, 27 May 2025 10:44:02 +0000 (GMT)
X-AuditID: b6c32a29-566fe7000000223e-49-683597722900
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	3F.24.08766.27795386; Tue, 27 May 2025 19:44:02 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250527104359epsmtip2b424b14cc99129bce93c32001ecb90f8~DXF398JWP3242432424epsmtip2T;
	Tue, 27 May 2025 10:43:58 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.or>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<manivannan.sadhasivam@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>, "'Pankaj Dubey'"
	<pankaj.dubey@samsung.com>
In-Reply-To: <20250521-cheerful-spiked-mackerel-ef7ade@kuoka>
Subject: RE: [PATCH 04/10] PCI: exynos: Add platform device private data
Date: Tue, 27 May 2025 16:13:58 +0530
Message-ID: <0e2301dbcef4$42969af0$c7c3d0d0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gIYYP2wAv7F/dIBkV9JfLIyj0bg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsWy7bCSvG7RdNMMg3U3OC0ezNvGZvF30jF2
	iyVNGRZr9p5jsph/5ByrxY1fbawWK77MZLc42vqf2eLlrHtsFufPb2C3aOj5zWqx6fE1VovL
	u+awWZydd5zNYsKqbywWZ78vYLJo+dPCYrH2yF12i7stnawWi7Z+Ybf4v2cHu8XOOyeYHcQ8
	fv+axOixc9Zddo8Fm0o9Nq3qZPO4c20Pm8eTK9OZPDYvqffo27KK0ePI1+ksHp83yQVwRXHZ
	pKTmZJalFunbJXBlLDmzg7FgkXTFvgPt7A2MW8S6GDk5JARMJD4smMHWxcjFISSwm1Hi3fwe
	VoiEpMTni+uYIGxhiZX/nrNDFD1jlNjfcY8ZJMEmoCPx5MofMFtEQFdi843lYEXMAs9YJPYu
	eMAK0fGGUeL+1vlADgcHp4CtxKbjsiANwgIeEsvmnmMDsVkEVCX6pu1jBLF5BSwlrn76ywJh
	C0qcnPkEzGYW0JbofdjKCGMvW/iaGeI6BYmfT5exQhzhJnFt1R12iBpxiaM/e5gnMArPQjJq
	FpJRs5CMmoWkZQEjyypGydSC4tz03GLDAsO81HK94sTc4tK8dL3k/NxNjOCUoKW5g3H7qg96
	hxiZOBgPMUpwMCuJ8G6bYJIhxJuSWFmVWpQfX1Sak1p8iFGag0VJnFf8RW+KkEB6Yklqdmpq
	QWoRTJaJg1OqgUngVt/d2udmhk2hmRr779hvmKOy/uLlW42+OpMU3vLbJM6+xl47pfOytslx
	843/K7J9L86vj1YXDimsOuX1N96h6ySf10GFBfZWa2vDV8RxLPRZ/ePFIRfJP5/T7VSmvWbV
	/aAfOG/u1IMlF8/X3L8065XHnD1y7sYOaxUKVz9JMd36zIGPYbNeQ6eWWN+08GfPMhc8u3p6
	Wdr8y1Xb9GOYLnJt3MA7oWI+Z7XNzfePCw9eFsswuDg1Xvmwp66NzHvxFNcOC6HwaRzv7G+b
	K8T51touPhzGHXCcW3CJVWnCmn1Gdw3a3xjfLwi23MI4cd6ilPmGR1TC+h8+F49cnnT6WYpT
	yHLe7H+/tsTrcimxFGckGmoxFxUnAgBmLNE7eAMAAA==
X-CMS-MailID: 20250527104402epcas5p25412c8db4f4408c9306253aee970b99d
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193239epcas5p4cb4112382560f38ad9708e000eb2335f
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193239epcas5p4cb4112382560f38ad9708e000eb2335f@epcas5p4.samsung.com>
	<20250518193152.63476-5-shradha.t@samsung.com>
	<20250521-cheerful-spiked-mackerel-ef7ade@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_215258_141850_6BC20352 
X-CRM114-Status: GOOD (  19.64  )
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

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgo+IFNlbnQ6IDIxIE1heSAyMDI1IDE1OjE1Cj4gVG86IFNocmFk
aGEgVG9kaSA8c2hyYWRoYS50QHNhbXN1bmcuY29tPgo+IENjOiBsaW51eC1wY2lAdmdlci5rZXJu
ZWwub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnOyBsaW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5vcjsKPiBsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc7IGxwaWVyYWxpc2lAa2VybmVsLm9yZzsK
PiBrd0BsaW51eC5jb207IHJvYmhAa2VybmVsLm9yZzsgYmhlbGdhYXNAZ29vZ2xlLmNvbTsgamlu
Z29vaGFuMUBnbWFpbC5jb207IGtyemsrZHRAa2VybmVsLm9yZzsgY29ub3IrZHRAa2VybmVsLm9y
ZzsKPiBhbGltLmFraHRhckBzYW1zdW5nLmNvbTsgdmtvdWxAa2VybmVsLm9yZzsga2lzaG9uQGtl
cm5lbC5vcmc7IGFybmRAYXJuZGIuZGU7IG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbTsKPiBqaDgw
LmNodW5nQHNhbXN1bmcuY29tOyBQYW5rYWogRHViZXkgPHBhbmthai5kdWJleUBzYW1zdW5nLmNv
bT4KPiBTdWJqZWN0OiBSZTogW1BBVENIIDA0LzEwXSBQQ0k6IGV4eW5vczogQWRkIHBsYXRmb3Jt
IGRldmljZSBwcml2YXRlIGRhdGEKPiAKPiBPbiBNb24sIE1heSAxOSwgMjAyNSBhdCAwMTowMTo0
NkFNIEdNVCwgU2hyYWRoYSBUb2RpIHdyb3RlOgo+ID4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdf
cGNpZV9vcHMgZHdfcGNpZV9vcHMgPSB7Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2ll
X29wcyBleHlub3NfZHdfcGNpZV9vcHMgPSB7Cj4gPiAgCS5yZWFkX2RiaSA9IGV4eW5vc19wY2ll
X3JlYWRfZGJpLAo+ID4gIAkud3JpdGVfZGJpID0gZXh5bm9zX3BjaWVfd3JpdGVfZGJpLAo+ID4g
IAkubGlua191cCA9IGV4eW5vc19wY2llX2xpbmtfdXAsCj4gPiBAQCAtMjc5LDYgKzI4Niw3IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX3BjaWVfcHJvYmUoc3RydWN0Cj4gPiBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpICB7Cj4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiAgCXN0
cnVjdCBleHlub3NfcGNpZSAqZXA7Cj4gPiArCWNvbnN0IHN0cnVjdCBzYW1zdW5nX3BjaWVfcGRh
dGEgKnBkYXRhOwo+ID4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlOwo+
ID4gIAlpbnQgcmV0Owo+ID4KPiA+IEBAIC0yODYsOCArMjk0LDExIEBAIHN0YXRpYyBpbnQgZXh5
bm9zX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJaWYgKCFl
cCkKPiA+ICAJCXJldHVybiAtRU5PTUVNOwo+ID4KPiA+ICsJcGRhdGEgPSBvZl9kZXZpY2VfZ2V0
X21hdGNoX2RhdGEoZGV2KTsKPiA+ICsKPiA+ICsJZXAtPnBkYXRhID0gcGRhdGE7Cj4gPiAgCWVw
LT5wY2kuZGV2ID0gZGV2Owo+ID4gLQllcC0+cGNpLm9wcyA9ICZkd19wY2llX29wczsKPiA+ICsJ
ZXAtPnBjaS5vcHMgPSBwZGF0YS0+ZHdjX29wczsKPiA+Cj4gPiAgCWVwLT5waHkgPSBkZXZtX29m
X3BoeV9nZXQoZGV2LCBucCwgTlVMTCk7Cj4gPiAgCWlmIChJU19FUlIoZXAtPnBoeSkpCj4gPiBA
QCAtMzYzLDkgKzM3NCw5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX3BjaWVfcmVzdW1lX25vaXJxKHN0
cnVjdCBkZXZpY2UgKmRldikKPiA+ICAJCXJldHVybiByZXQ7Cj4gPgo+ID4gIAkvKiBleHlub3Nf
cGNpZV9ob3N0X2luaXQgY29udHJvbHMgZXAtPnBoeSAqLwo+ID4gLQlleHlub3NfcGNpZV9ob3N0
X2luaXQocHApOwo+ID4gKwllcC0+cGRhdGEtPmhvc3Rfb3BzLT5pbml0KHBwKTsKPiA+ICAJZHdf
cGNpZV9zZXR1cF9yYyhwcCk7Cj4gPiAtCWV4eW5vc19wY2llX3N0YXJ0X2xpbmsocGNpKTsKPiA+
ICsJZXAtPnBkYXRhLT5kd2Nfb3BzLT5zdGFydF9saW5rKHBjaSk7Cj4gCj4gT25lIG1vcmUgbGF5
ZXIgb2YgaW5kaXJlY3Rpb24uCj4gCj4gUmVhZDoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvQ0FMX0pzcUpnYWVPY25VencrclVGMnlPNGhRWUNkWllzc2p4SHpyRHZ2SEdKaW1yQVNBQG1h
aWwuZ21haWwuY29tLwo+IAoKSSB3ZW50IHRocm91Z2ggdGhpcyB0aHJlYWQgYW5kIHRoZSBzb2x1
dGlvbiB0byBhdm9pZCByZWRpcmVjdGlvbiBzZWVtcyB0byBiZToKMS4gTWFrZSB0aGUgY29tbW9u
IHBhcnRzIGludG8gYSBsaWJyYXJ5IHRoYXQgZWFjaCBkcml2ZXIgY2FuIGNhbGwKMi4gV2hlbiB0
aGVyZSBpcyBiYXJlbHkgYW55dGhpbmcgaW4gY29tbW9uLCBtYWtlIGEgc2VwYXJhdGUgZHJpdmVy
CgpGcm9tIG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlc2UgMiBkcml2ZXJzLCB0aGVyZSBpcyBoYXJk
bHkgYW55dGhpbmcgdGhhdCBjYW4gZ28gaW50byBjb21tb24gbGlicmFyeQoxLiBob3N0X2luaXQs
IGRiaV9yZWFkLCBkYmlfd3JpdGUgdGhlc2Ugb3BzIGhhdmUgY29tcGxldGVseSBkaWZmZXJlbnQg
ZmxvdwoyLiBsaW5rX3VwLCBzdGFydF9saW5rIGhhdmUgc2ltaWxhciBmbG93IGJ1dCBkaWZmZXJl
bnQgcmVnaXN0ZXIgb2Zmc2V0cwozLiB3cml0ZV9kYmkyIGFuZCBzdG9wX2xpbmsgaXMgbm90IGlt
cGxlbWVudGVkIGZvciBleHlub3MgYnV0IG5lZWRlZCBmb3IgRlNECjQuIFJlc291cmNlcyBhcmUg
ZGlmZmVyZW50IC0gRlNEIGRvZXMgbm90IGhhdmUgcmVndWxhdG9yLCBFeHlub3M1NDMzIGRvZXMg
bm90IGhhdmUgc3lzY29uLCBGU0QgaGFzIG1zaSBJUlEgdnMgZXh5bm9zNTQzMyBoYXMgbGVnYWN5
CjUuIEV4eW5vcyBpcyBob3N0IG9ubHkgd2hlcmVhcyBGU0QgaXMgZHVhbCBtb2RlIGNvbnRyb2xs
ZXIuCgpJIGRvbuKAmXQgc2VlIGFueSBvdGhlciB3YXkgZXhjZXB0IHJlZGlyZWN0aW9uLCBvciB1
c2luZyBsb3RzIG9mIGlmKHZhcmlhbnQgPT0gRlNEKSB3aGljaCBpcyBhbHNvIGRpc2NvdXJhZ2Vk
Lg0KDQpBbmQgYWJvdXQgbWFraW5nIGl0IGEgZGlmZmVyZW50IGRyaXZlciBhbHRvZ2V0aGVyLCBJ
J20gY29tcGxldGVseSBva2F5IHRvIGRvIHNvLiBJbiBmYWN0IHdlIGhhZCBwcmV2aW91c2x5IHRy
aWVkIHRvIHBvc3QgaXQgYXMgYQ0KZGlmZmVyZW50IGRyaXZlciB3aGljaCB3YXMgcmVqZWN0ZWQu
DQoNCklmIHlvdSBzdGlsbCBmZWVsIHRoZXJlIGlzIGEgd2F5IHRvIHNlcGFyYXRlIG91dCB0aGUg
Y29tbW9uIHBhcnRzIGludG8gYSBsaWJyYXJ5LCBwbGVhc2UgZ3VpZGUgbWUuDQoNCj4gQmVzdCBy
ZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KDQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
