Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31EFCC982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1LoRVJ15JCTd6uFxzm//dQWjUgFV/BptQ8RkRw5eek=; b=aAbUc2kUJUJXST
	QReqiGy4FN15FFZP5Hjmno6ETRKPmMQnZbbDW2jbRzdB4+DIc4Bhp7BPJqK9Z6PMyEapvB9MXns3U
	SQB09hNy+V0LpElTjRUzvkpLZ/7e/a7uxL43HQZv6akGNzF2Lt8Tg4aDmCyG3z5HRKM3N9pMZBV0M
	cS12jWEyvEYSrVd19/ZydKgl16Lgg/neREv766reqp1doDuv4tDuvA/I4zPTJa7pClYdYrrsR4UAQ
	l4kLxpek0jYuT0q5XCYf7owOX8fdojHxSmED4yVH7y3RZXYEvaCD681B8cT2WxUIAtsKmRtyAij05
	lTEFXsGv8GS0tTJYv7Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Vik-0000000E5Qs-2HQr;
	Fri, 18 Sep 2026 10:21:30 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Vid-0000000E5Ot-2P5i
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:21:29 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260918102113epoutp041022d6e7e02c2997cb8a8a064a02b031~WYxwJMjNZ1393613936epoutp04e
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:21:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260918102113epoutp041022d6e7e02c2997cb8a8a064a02b031~WYxwJMjNZ1393613936epoutp04e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1789726874;
	bh=mboPEqvEACJTAtKfdZ1iQemoHuICqAXG3If2FFLFlMA=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=q5/rYOyzAIRpwubUTigeHz6catvyr++oiaU0INH8BrZP7KLLV9GmF/P5lT+WyNEqy
	 UjLYF4YCdC/VH4C7Haw4t0HWT7x0kdeA4NnZG3++Eq4dMR/OGK38YtBcwoHISHcvKG
	 4qkctIkTlEfF4mqOP/2EOkD1nnjrUbES0DxJmT9w=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260918102113epcas5p2a37090873c7e08a5b15b0fecf005810b~WYxvgUOtV0355903559epcas5p2C;
	Fri, 18 Sep 2026 10:21:13 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.92]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4hmTDS15Ysz6B9m7; Fri, 18 Sep
	2026 10:21:12 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260918102111epcas5p202e3b90fcfd624683f76a2ee45f199d4~WYxt86RB51756317563epcas5p20;
	Fri, 18 Sep 2026 10:21:11 +0000 (GMT)
Received: from [107.122.5.126] (unknown [107.122.5.126]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260918102109epsmtip1577c944b77491d8b4992d17593276ce2~WYxrze7hA1639116391epsmtip1_;
	Fri, 18 Sep 2026 10:21:09 +0000 (GMT)
Message-ID: <32029c62-faad-42e3-b1bb-e66772ca8ac0@samsung.com>
Date: Fri, 18 Sep 2026 15:51:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
	vkoul@kernel.org, neil.armstrong@linaro.org, krzk@kernel.org,
	peter.griffin@linaro.org, alim.akhtar@samsung.com, pritam.sutar@samsung.com,
	kernel@lvkasz.us, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: jh0801.jung@samsung.com, dh10.jung@samsung.com, akash.m5@samsung.com,
	muhammed.ali@samsung.com, thiagu.r@samsung.com
Content-Language: en-US
From: Selvarasu Ganesan <selvarasu.g@samsung.com>
In-Reply-To: <950335110f9d9c22a026fa5174e492c4194299a5.camel@linaro.org>
X-CMS-MailID: 20260918102111epcas5p202e3b90fcfd624683f76a2ee45f199d4
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0
References: <CGME20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0@epcas5p4.samsung.com>
	<20260831070309.158069-1-selvarasu.g@samsung.com>
	<950335110f9d9c22a026fa5174e492c4194299a5.camel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_032125_276616_A1B5FE7F 
X-CRM114-Status: GOOD (  15.40  )
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

Ck9uIDkvMTgvMjAyNiAyOjA0IFBNLCBBbmRyw6kgRHJhc3ppayB3cm90ZToKPiBPbiBNb24sIDIw
MjYtMDgtMzEgYXQgMTI6MzMgKzA1MzAsIFNlbHZhcmFzdSBHYW5lc2FuIHdyb3RlOgo+PiBUaGUg
cHJvYmUgbG9vcCBjdXJyZW50bHkgaXRlcmF0ZXMgdXNpbmcgRVhZTk9TNV9EUkRQSFlTX05VTSAo
MiksCj4+IGNyZWF0aW5nIGJvdGggVVRNSSBhbmQgUElQRTMgUEhZIGluc3RhbmNlcyByZWdhcmRs
ZXNzIG9mIHRoZSBTb0MKPj4gY2FwYWJpbGl0eS4gU2V2ZXJhbCBTb0NzIChFeHlub3MyMjAwLCBF
eHlub3M3ODcwLCBFeHlub3M4NTAsIEV4eW5vczk5MCwKPj4gYW5kIEV4eW5vc0F1dG9WOTIwKSBw
cm92aWRlIHBoeV9jZmcgYXJyYXlzIGNvbnRhaW5pbmcgb25seSBhIHNpbmdsZQo+PiBlbGVtZW50
Lgo+Pgo+PiBPbiB0aGVzZSBTb0NzLCB3aGVuIHRoZSBsb29wIHJlYWNoZXMgaW5kZXggMSwgdGhl
IGRyaXZlciByZWFkcyBwYXN0IHRoZQo+PiBlbmQgb2YgdGhlIHJvZGF0YSBhcnJheSwgcG9wdWxh
dGluZyB0aGUgc2Vjb25kIFBIWSBpbnN0YW5jZSB3aXRoIGdhcmJhZ2UKPj4gZGF0YS4gU2luY2Ug
dGhlIGNvbmZpZ3VyYXRpb24gc3RydWN0dXJlIGNvbnRhaW5zIGNyaXRpY2FsIGZ1bmN0aW9uCj4+
IHBvaW50ZXJzIChwaHlfaXNvbCwgcGh5X2luaXQsIHNldF9yZWZjbGspLCBhbnkgc3Vic2VxdWVu
dCBhY2Nlc3MgdG8gdGhpcwo+PiBQSFkgaW5zdGFuY2UgdmlhIGV4eW5vczVfdXNiZHJkX3BoeV94
bGF0ZSBjb3VsZCByZXN1bHQgaW4gYSBrZXJuZWwgb29wcy4KPj4KPj4gRml4IHRoaXMgYnkgYWRk
aW5nICduX3BoeV9jZmcnIHRvIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0YSB0bwo+
PiBzdG9yZSB0aGUgYWN0dWFsIHNpemUgb2YgdGhlIHBoeV9jZmcgYXJyYXkgZm9yIGVhY2ggU29D
LiBVcGRhdGUgdGhlCj4+IHByb2JlIGxvb3AgYW5kIHRoZSB4bGF0ZSBmdW5jdGlvbiB0byBib3Vu
ZCB0aGVpciBhY2Nlc3MgYWdhaW5zdCB0aGlzCj4+IHZhbHVlIGluc3RlYWQgb2YgdGhlIGhhcmRj
b2RlZCBFWFlOT1M1X0RSRFBIWVNfTlVNLgo+Pgo+PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVk
ZS1zb25uZXQtNQo+IFNob3VsZG4ndCB0aGlzIGJlICdBc3Npc3RlZC1ieTogTExNJz8KWW91IGFy
ZSBjb3JyZWN0LiBJIHdpbGwgdXBkYXRlIHRoZSB0YWcgdG8gJ0Fzc2lzdGVkLWJ5OiBMTE0nIGFz
IHBlciB0aGUgCmtlcm5lbCBkb2N1bWVudGF0aW9uIGluIHRoZSBuZXh0IHZlcnNpb24uCgpUaGFu
ayB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0LgoKVGhhbmtzLApTZWx2YQo+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFNlbHZhcmFzdSBHYW5lc2FuIDxzZWx2YXJhc3UuZ0BzYW1zdW5nLmNvbT4KPj4gLS0t
Cj4+ICDCoGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCAxNyArKysr
KysrKysrKysrKystLQo+PiAgwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiBPdGhlciB0aGFuIHRoYXQ6Cj4KPiBSZXZpZXdlZC1ieTogQW5kcsOpIERy
YXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
