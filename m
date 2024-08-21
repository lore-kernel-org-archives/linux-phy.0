Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DF1EC52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 08:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K1oDkLr4oXs6PKJ0cBRr3Helzp/3EfZ8eKVj49FVf18=; b=Qita+//84I0j3+asZk+6CyRBPA
	BW/WmxSdbyBlRwMY3a2wvGnDiySDZjAmgQPluYswzZIMZhUhMwFEbkmhA/GbnNhJtHqnIKCTPouHC
	ZF5TsQWSHPaSeiBp4TLxXzO2H7T8H9OEIjm4LjzzaiIKEZ+1c0JV0dk9Eqy+3ruBPKYdK1TDPac59
	Ct+23zr+AKavUubuRWUvSq9GVm4n8VoxF4ebolU67AGn+JEeACh5D7MApsEPyc6Ua9f7zgoPXGmxL
	JvXt+fXPxpL9NF2PrXNelJKFob8cwaTV01nok+RmG2l/M4GhgeFxHpDeEor/O6fXZIW4/7mm1nrJ/
	bIIf5w8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgh74-00000008A0V-4AKW;
	Wed, 21 Aug 2024 08:54:42 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgh5h-000000089fA-21yz;
	Wed, 21 Aug 2024 08:53:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724230395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=me2bazh1+XWM3oC6fY5BIO7VytdUgoc5JECJvjoPUzo=;
	b=ULWCheHThawcPG+AyC/53aQI+sHKckvEBHPdwDjlQDS3N7u4edYLeuV2XTFididXOS2f8O
	mCeDJS5Q3Buf3Yj/s0AxkoIMPZEagEqboFqCVnd6QijhF8JVGToQs07waDJ7yacEmiFWSz
	9jptrljyfbl5a7AbH8neI8Rk962fOEuXhT+VJNStlqb6lpBWe/AuamKmzRJUueMzlddf9C
	0XOatZ2wb48e5ML3NmdNRn7vLu1bETbQjK4N8WWj+2OlfEISqswUNLrqqPd53ev4GhNtEY
	sQaXMAnVPpJo/B0VHpbM98QqERp4ildDkw4inNxaQ55nNypq+MyYQVHZr6q2Lw==
Date: Wed, 21 Aug 2024 10:53:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] phy: phy-rockchip-inno-usb2: Perform trivial code
 cleanups
In-Reply-To: <5307900.6fTUFtlzNn@diego>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <14167d6b025e18d2a06ee429feea6551ef6f9c44.1724225528.git.dsimic@manjaro.org>
 <5307900.6fTUFtlzNn@diego>
Message-ID: <83a33b5ad6dd13668b6d8733f5546725@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_015317_987009_644E67C6 
X-CRM114-Status: GOOD (  11.54  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA4LTIxIDEwOjM5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgMjEuIEF1Z3VzdCAyMDI0LCAwOTozNzo1MyBDRVNUIHNjaHJpZWIgRHJh
Z2FuIFNpbWljOgo+PiBQZXJmb3JtIGEgZmV3IHRyaXZpYWwgY29kZSBjbGVhbnVwcywgZS5nLiB0
byBvYmV5IHRoZSByZXZlcnNlIAo+PiBDaHJpc3RtYXMgdHJlZQo+PiBydWxlLCB0byBhdm9pZCB1
c2Ugb2YgInsgLi4uIH0iIGNvZGUgYmxvY2tzIHdoZXJlIHRoZXkgYXJlbid0IHJlYWxseSAKPj4g
bmVlZGVkLAo+PiBvciB0byBhdm9pZCBsaW5lIHdyYXBwaW5nIGJ5IHVzaW5nIHRoZSAxMDAtY29s
dW1uIHdpZHRoIGJldHRlci4KPj4gCj4+IE5vIGludGVuZGVkIGZ1bmN0aW9uYWwgY2hhbmdlcyBh
cmUgaW50cm9kdWNlZCBieSB0aGVzZSBjb2RlIGNsZWFudXBzLgo+PiAKPj4gU2lnbmVkLW9mZi1i
eTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gCj4+IEBAIC00NDUsNyArNDQ1
LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF91c2IycGh5X2V4dGNvbl9yZWdpc3RlcihzdHJ1Y3Qg
Cj4+IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHkpCj4+ICAJfQo+PiAKPj4gIAlycGh5LT5lZGV2ID0g
ZWRldjsKPj4gLQo+PiAgCXJldHVybiAwOwo+PiAgfQo+IAo+IGRlcGVuZGluZyBvbiBob3cgbml0
cGlja3kgd2Ugd2FudCB0byBiZSwgSSdtIG5vdCB2ZXJ5IGZvbmQgb2YgdGhpcyAKPiBjaGFuZ2Uu
Cj4gQXNzaWduaW5nIHRoZSBleHRjb24tZGV2IGFuZCByZXR1cm5pbmcgIjAiIGFyZSB0d28gZGlm
ZmVyZW50IGFjdGlvbnMsIAo+IGFuZAo+IEkgdGhpbmsgbW9zdCBkcml2ZXJzIGRvIGFjdHVhbGx5
IHVzZSBhIGJsYW5rIGxpbmUgYmV0d2VlbiB0aG9zZS4KPiAKPiBCdXQgdGhhdCByZWFsbHkgaXMg
anVzdCBhIHN0eWxlIHByZWZlcmVuY2UgZm9yIG1lLCBzbyBhbnl3YXkKPiAKPiBSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KClRoYW5rcyBmb3IgeW91ciByZXZp
ZXc7IEkgaGFkIHNpbWlsYXIgdGhvdWdodHMsIGJlbGlldmUgaXQgb3Igbm90LiA6KSAgCklmCnRo
ZXJlIHdpbGwgYmUgdjMsIEknbGwgYnJpbmcgdGhlIGVtcHR5IHNlcGFyYXRvciBsaW5lIGJhY2su
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
