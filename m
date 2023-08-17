Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB548C27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 06:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGLkHBZF5KLInGdXsFfUA/GW9VvkBPyu/HTaB787qw0=; b=yDEjk3ouY8PzoN
	orBVXnyFpalezAr2HeZUWlOG9X3LsP3Jm/fHnr8dMrGtefT1dRHoqfNGPNZcU6iyuUt8iDT6Zu2Dr
	FLXCnnpxy0/XhY01YqnyQ4NyryC9D/YrXst5h7Je3R20MQR9Sm/xDhM1Wx04DFXJiwEusDKws8P4v
	n7bAgl2o6IMPpzL5dQIuWmdb6QcQd7RgwNp1Yon4kjx34XYA4veuatTyDkuYbuDKMi6Z28c/0VR0N
	lfhUQNRyZJltUUqopNG932n98cnO5BwocF61K+xmGJuI99mm2lDYVSlqe4N6WRbymIGLeSBAuEXR1
	XsmzkU6rgnecJXx9zTLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWmE-005fao-1R;
	Thu, 17 Aug 2023 06:46:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWmB-005fZs-27
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 06:46:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 786CC61AE9;
	Thu, 17 Aug 2023 06:46:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D9A9C433C8;
	Thu, 17 Aug 2023 06:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692254791;
	bh=kGXjHIIItKcedfobgcUxtg3pCMarIyql5LXTBLsFlpM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l4aL0lJ7SR0dE9hoY4FkVsTWiCI6kza6xK1INUjId1UOv7aPcLmh4tc8QPN6FNdVw
	 vWyhIAYKlnqyLCcZ4XxveR/gvvrA2ULuHLC7Ux045lvSSr/jL0Kt/gVHOEkLioCpgB
	 hDhrEZFMJeajMn5FhYTqnSqpQxVsgWTwJdMkxmSGYF+1Jc4Dle2yWeYsRVrnQnzB20
	 LRspb2K7pNvqTWEonJN6Z+0Am5Ay3th/k0tWE5u4IcI0DEwO/yyaGyRoK5x4jRvvY2
	 eI7MWXvNFhJSyhFJMk+d0iKLxU8yZTN7Fmfb+wm/sKKoV7h7nf4vjoZF9mqpAmKzcK
	 Zlp2ZVcIreokg==
Date: Thu, 17 Aug 2023 12:16:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: realtek: Realtek PHYs should depend on ARCH_REALTEK
Message-ID: <ZN3CQ1Y3yC9p/01Y@matsya>
References: <202308161422.37GEMlZkA018197@rtits1.realtek.com.tw>
 <6c02765f89eb4455806b895a6e0cb763@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c02765f89eb4455806b895a6e0cb763@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_234635_763644_1DC573EB 
X-CRM114-Status: GOOD (  15.05  )
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

T24gMTctMDgtMjMsIDAyOjA2LCBTdGFubGV5IENoYW5nW+aYjOiCsuW+t10gd3JvdGU6Cj4gSGkg
R2VlcnQsCj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnIGIv
ZHJpdmVycy9waHkvcmVhbHRlay9LY29uZmlnIGluZGV4Cj4gPiA2NTBlMjBlZDY5YWY0MWQyLi43
NWFjN2U3YzMxYWVjNmYyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9LY29u
ZmlnCj4gPiArKysgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL0tjb25maWcKPiA+IEBAIC0yLDYgKzIs
OSBAQAo+ID4gICMKPiA+ICAjIFBoeSBkcml2ZXJzIGZvciBSZWFsdGVrIHBsYXRmb3Jtcwo+ID4g
ICMKPiA+ICsKPiA+ICtpZiBBUkNIX1JFQUxURUsgfHwgQ09NUElMRV9URVNUCj4gPiArCj4gPiAg
Y29uZmlnIFBIWV9SVEtfUlREX1VTQjJQSFkKPiA+ICAgICAgICAgdHJpc3RhdGUgIlJlYWx0ZWsg
UlREIFVTQjIgUEhZIFRyYW5zY2VpdmVyIERyaXZlciIKPiA+ICAgICAgICAgZGVwZW5kcyBvbiBV
U0JfU1VQUE9SVAo+ID4gQEAgLTI1LDMgKzI4LDUgQEAgY29uZmlnIFBIWV9SVEtfUlREX1VTQjNQ
SFkKPiA+ICAgICAgICAgICBUaGUgREhDIChkaWdpdGFsIGhvbWUgY2VudGVyKSBSVEQgc2VyaWVz
IFNvQ3MgdXNlZCB0aGUgU3lub3BzeXMKPiA+ICAgICAgICAgICBEV0MzIFVTQiBJUC4gVGhpcyBk
cml2ZXIgd2lsbCBkbyB0aGUgUEhZIGluaXRpYWxpemF0aW9uCj4gPiAgICAgICAgICAgb2YgdGhl
IHBhcmFtZXRlcnMuCj4gPiArCj4gPiArZW5kaWYgIyBBUkNIX1JFQUxURUsgfHwgQ09NUElMRV9U
RVNUCj4gCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLgo+IFdoeSBub3QgdXNlICJkZXBlbmRzIG9u
Ij8KPiBkZXBlbmRzIG9uIEFSQ0hfTUVESUFURUsgfHwgQ09NUElMRV9URVNUCgpJIHRoaW5rIHRo
aXMgcGF0Y2ggaXMgYmV0dGVyLCB0aGlzIHdheSBhbGwgZnV0dXJlIHJ0ZWsgZHJpdmVycyB3aWxs
IGJlCmZpeGVkIGFzIHdlbGwsIG5vIG5lZWQgdG8gYWRkIGZvciBlYWNoIGRyaXZlcgoKLS0gCn5W
aW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
