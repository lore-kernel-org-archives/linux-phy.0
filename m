Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9A0BECD6D7
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 18:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBehznuGTA+7LW8CuQZu+jK18zwL/ZmOZZXX62XoUkQ=; b=yis170JuVPOvpP
	Y6xfzSuSFyEynz6fdsBuprCNawb0iHZ/DrpeRmT2AMRUGLijymeQ5/ygQMce0GLSWGJh6sBeTpGYI
	/PUsgi3TtlWyIM98hxWwvc8IldSjdZhOh0w/uzUoxahsngAIsogFcnTyLRZoVrfkvj7ztK7NnuR8b
	utrdjwasFtmKucc95qN3G7Thz3tgvfjp4ZZUBg7NzqtUprQjIoihOClES/Ce3ov+AQgLNDkH5ucBo
	PAeO7Bgz5sRwy5bdY8pjB5hqrhkIBuMozf7lDCcxJ3XJ4WgdCldSX9ftoxp035OffjJt4aHUkEG++
	pcW9nG03lSBFtr9ExViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqFFe-00000000wuX-3PS8;
	Wed, 11 Feb 2026 18:47:50 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqFFc-00000000wu9-1v99
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 18:47:49 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-354a2a7d90fso1334005a91.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 10:47:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770835667; cv=none;
        d=google.com; s=arc-20240605;
        b=ltTBLooh8gLjQ9aUaZm7UAn/oDoB6sxTOlcU73nj2k05pntsoOiAt+ko31Ry99hEL/
         AJahwIolRO4ug6D3E0OMbxZNevBnTPuYYtw9mWuMtCIB2cxGu9G3NQslMTM4m0MjH17V
         oawMOD4PxPlU1jSBfGTb5RAjLN/pXelMl/gKYwcpEsA18KOk9a145qBIS94B1Hl/3NeM
         YfvqI+UuXMe7fvqQQWs6W7AyQ5q6hi7cIMuAEYg/ooWmVwD0/nqbbRKtcp+HSp+iHEDi
         vYK8vWBu2NRHdKx3+3ERUhGvok4w3MRLZS50d0AyCaedQXYmOPr2zDXDDKuoEQA/9mRG
         sDlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ym67wAQqOP2jKVXi5deYP2qZjSL7glyL/hFPi/TDOfY=;
        fh=jLsWBjEJwHPW+h/zu6UxgNVsSsjVDwKzNLHkiQgek2Q=;
        b=CpWx9e7LYkvrXOpcxyn2DHrjNyeuTAsX7UngaGziFMj4UaTSm9AW5P+f2C/O0TQ7YN
         aCmgwCf8qz/WS4VagHtfIXRT/SXw8IdKwDLz3VqLhmUfV/JajAxwK+NF+ddN2wl6MgoT
         C3oU068hZw7RHl1feezdbkNAiG8xqTYFDtMCfml6+05XFdZR9rKEcLQ5tcW7OdoOK+0Z
         aJb20RwwNYc07ZpGNqQRD7cC4dBkY/mQPmH473xXS6HxDqMiXNtgK6TPYAetpl0VeTei
         7zVIx9rpyFGVBp/znAa+T/cPEs1kJMbWNt34eGhw8wwEWOq5P5tD/iGcoQ40haDcchlK
         bOtg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770835667; x=1771440467; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ym67wAQqOP2jKVXi5deYP2qZjSL7glyL/hFPi/TDOfY=;
        b=FmXwOFVK05h2c7ga/gA4W6hr4943T+SlTY+j+s2CNXQDQdgBZN79Rk2XMA1VxK2DW9
         xPW87q8O8TlMkqMW0FnuR3QDtvaBF0WUnHjb4/zXrDWenCPoqhZiprCT8beNdjTszTUk
         W4iGH6DmCGX1Q/BsxfkwKchOwIBY1knHUgr+VSghFXpY620O9b6JpjFGpU0EsNM57dRZ
         V9r/wYt8/5JpgCIu6OghEc/7+uOYmrZekKkASdONPkcyoYmHMl8Z1Lcr7CQkcKTYiyu/
         mPudmbIiBkSXUozzqSXzaez6rDEOYh5Mm++S9ZaVnzK/KlmaVtuG283hW2teG/aALv3L
         PFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770835667; x=1771440467;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ym67wAQqOP2jKVXi5deYP2qZjSL7glyL/hFPi/TDOfY=;
        b=OYKsL/egbnFBcqcy/UuxJdeb1cvEqWYfbCsDV/nbYp07ofCo5fZ3c9FLN+LHx4XCUR
         KdVq9xfASkR7nRXgoQvb6zbYx13l1b/s1fJbMmv3H6uv3mkIZmCYwgzXBI2TIvpTDLoo
         ESD4Id5yNl9/tdjCtYRtkOnnnUdgRGYZzsLfPiKPuKK4uzA/+7oacZW5gYrvML9DHS6f
         TVJYJs9jrBoWzuM7KRlE+lIgFtdX5e+cHt+gb3amUoqAmXdeGEBWTDYTF0wM3JMtOCBC
         +FsQGnAFEv41HhzqlXcWh81QR7I7M7B/auGXRQFue8r7rF8vzgGUEqkdkpfFZJMYlsIQ
         8Xgg==
X-Forwarded-Encrypted: i=1; AJvYcCXXodUngp42/I5m7SRi0ube7S8IzkdXNd9rVTbSfgT4skZ6iAu2MKFnKYGouYk/0vmYYax/gzrWjGs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv2hflCoq+W+fBAD7rYRWh8cf2MkGJbrUrXmg+ASY/eLS0RfqW
	ASgskjVz/ehXT9STVoa3pqI9NTGBo1l++AYJeiUmqIWDsY+o3AbQh3Kbr3L7Sdu9HzYBJsRh4UC
	g8THAbIqlcRf/FH3e2WQCCEzMRR1NzW0=
X-Gm-Gg: AZuq6aI3vFw4qrDwh78F2E/LRZmUqxPNZ8VP02DSVHgz5QRrfGAh/Di/Et5Qy9XB9AF
	+L1ruP6L6wTYlTzuUkah9KrZcQi5fxDnfn1tfLrVtq5uJH40KH7Deizw6UzJV+Ph56btO9ah4NX
	aAx+zafwlFTM0jxLB3KNZMY/SdSG51cuwqen10pE/E2DFDdFXKemnn+0HcGKdgn4NY3mMjDWzZr
	90t0kZhxaRjhRbVY2m8I4ABE5qoamr8vfgQ0LFf6CTISzzV9Yrmr2vXTJa3yr6xWL2Y4CZbMYEJ
	NtvX
X-Received: by 2002:a17:90b:2d84:b0:34c:9cf7:60a0 with SMTP id
 98e67ed59e1d1-3568f2cc5c4mr360860a91.5.1770835666860; Wed, 11 Feb 2026
 10:47:46 -0800 (PST)
MIME-Version: 1.0
References: <20260211-wiz-v1-1-fdd018d02f33@gmail.com> <20260210203018.dr6dwj55aob3phsd@skbuf>
In-Reply-To: <20260210203018.dr6dwj55aob3phsd@skbuf>
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 12 Feb 2026 02:47:35 +0800
X-Gm-Features: AZwV_Qgk4SBIkoZp5nSodOftfD1iova6hzoh3N2Icz1tn3iMkHffyOJziKtPZ94
Message-ID: <CAN4SLj2isLi3Hd4Zp7QV+PtYQPLzafo9DiD1Vza6+zLqq90u6Q@mail.gmail.com>
Subject: Re: [PATCH] phy: ti: j721e-wiz: Fix device_node leak in wiz_get_lane_phy_types()
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Jyri Sarha <jsarha@ti.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_104748_523835_2B0211AD 
X-CRM114-Status: GOOD (  25.23  )
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

T24gV2VkLCBGZWIgMTEsIDIwMjYgYXQgNDozMOKAr0FNIFZsYWRpbWlyIE9sdGVhbiA8b2x0ZWFu
dkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgRmVsaXgsCj4KPiBPbiBXZWQsIEZlYiAxMSwgMjAy
NiBhdCAwMjoxNDoxMUFNICswODAwLCBGZWxpeCBHdSB3cm90ZToKPiA+IFRoZSAnc2VyZGVzJyBk
ZXZpY2Vfbm9kZSBpcyBvYnRhaW5lZCB1c2luZyBvZl9nZXRfY2hpbGRfYnlfbmFtZSgpLAo+ID4g
d2hpY2ggaW5jcmVtZW50cyB0aGUgcmVmZXJlbmNlIGNvdW50LiBIb3dldmVyLCBpdCBpcyBuZXZl
ciBwdXQsCj4gPiBsZWFkaW5nIHRvIGEgbWVtb3J5IGxlYWsuCj4gPgo+ID4gVXNlIHRoZSBfX2Zy
ZWUoZGV2aWNlX25vZGUpIGF0dHJpYnV0ZSB0byBhdXRvbWF0aWNhbGx5IGRlY3JlbWVudAo+ID4g
dGhlIHJlZmVyZW5jZSBjb3VudCB3aGVuIHRoZSAnc2VyZGVzJyB2YXJpYWJsZSBnb2VzIG91dCBv
ZiBzY29wZS4KPiA+Cj4gPiBGaXhlczogN2FlMTRjZjU4MWYyICgicGh5OiB0aTogajcyMWUtd2l6
OiBJbXBsZW1lbnQgRGlzcGxheVBvcnQgbW9kZSB0byB0aGUgd2l6IGRyaXZlciIpCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGZWxpeCBHdSA8dXN0Yy5ndUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgfCA1ICsrLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdp
ei5jCj4gPiBpbmRleCAxMmExOWJmMjg3NWMuLjkwNDU0MWU5MTM4ZSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYwo+ID4gKysrIGIvZHJpdmVycy9waHkvdGkv
cGh5LWo3MjFlLXdpei5jCj4gPiBAQCAtMTQwNyw5ICsxNDA3LDggQEAgTU9EVUxFX0RFVklDRV9U
QUJMRShvZiwgd2l6X2lkX3RhYmxlKTsKPiA+Cj4gPiAgc3RhdGljIGludCB3aXpfZ2V0X2xhbmVf
cGh5X3R5cGVzKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHdpeiAqd2l6KQo+ID4gIHsKPiA+
IC0gICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqc2VyZGVzOwo+ID4gLQo+ID4gLSAgICAgc2VyZGVz
ID0gb2ZfZ2V0X2NoaWxkX2J5X25hbWUoZGV2LT5vZl9ub2RlLCAic2VyZGVzIik7Cj4gPiArICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKnNlcmRlcyBfX2ZyZWUoZGV2aWNlX25vZGUpID0KPiA+ICsg
ICAgICAgICAgICAgb2ZfZ2V0X2NoaWxkX2J5X25hbWUoZGV2LT5vZl9ub2RlLCAic2VyZGVzIik7
Cj4gPiAgICAgICBpZiAoIXNlcmRlcykgewo+ID4gICAgICAgICAgICAgICBkZXZfZXJyKGRldiwg
IiVzOiBHZXR0aW5nIFwic2VyZGVzXCItbm9kZSBmYWlsZWRcbiIsIF9fZnVuY19fKTsKPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPgo+ID4gLS0tCj4gPiBiYXNlLWNvbW1pdDog
MTkzNTc5ZmUwMTM4OWJjMjFhZmYwMDUxZDEzZjI0ZThlYTk1YjQ3ZAo+ID4gY2hhbmdlLWlkOiAy
MDI2MDIwNC13aXotOWE2NzYwNGEwMzRmCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4gLS0KPiA+
IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWlsLmNvbT4KPiA+Cj4gPgo+Cj4gWW91IGFyZSBmaXhpbmcg
YSBidWcgZnJvbSAyMDIwICh2NS44KSB3aXRoIGZ1bmN0aW9uYWxpdHkgaW50cm9kdWNlZCBpbiAy
MDIzLAo+IGNyZWF0aW5nIGF2b2lkYWJsZSBoZWFkYWNoZSBmb3IgYmFja3BvcnRlcnMgKHRoZSBv
bGRlc3Qgc3VwcG9ydGVkIExUUyBpcwo+IDUuMTAsIHdoZXJlIHRoZSBjbGVhbnVwIEFQSSBkb2Vz
IG5vdCBleGlzdCkuIENvdWxkIHdlIHJlaW1wbGVtZW50IHRoaXMKPiB0aGUgIm5vcm1hbCIgb2Zf
bm9kZV9wdXQoKSB3YXk/Cj4KPiBJIHJlYWxpemUgdGhpcyBpcyBub3QgbmV0ZGV2LCBidXQgdGhp
cyBwaWVjZSBvZiBhZHZpY2UgZnJvbQo+IERvY3VtZW50YXRpb24vcHJvY2Vzcy9tYWludGFpbmVy
LW5ldGRldi5yc3QgcmVnYXJkaW5nIHVzZSBpbiBkcml2ZXJzCj4gc2VlbXMgY29tbW9uIHNlbnNl
IGFuZCByZWxldmFudCBoZXJlOgo+Cj4gICBMb3cgbGV2ZWwgY2xlYW51cCBjb25zdHJ1Y3RzIChz
dWNoIGFzIGBgX19mcmVlKClgYCkgY2FuIGJlIHVzZWQgd2hlbiBidWlsZGluZwo+ICAgQVBJcyBh
bmQgaGVscGVycywgZXNwZWNpYWxseSBzY29wZWQgaXRlcmF0b3JzLiBIb3dldmVyLCBkaXJlY3Qg
dXNlIG9mCj4gICBgYF9fZnJlZSgpYGAgd2l0aGluIG5ldHdvcmtpbmcgY29yZSBhbmQgZHJpdmVy
cyBpcyBkaXNjb3VyYWdlZC4KPiAgIFNpbWlsYXIgZ3VpZGFuY2UgYXBwbGllcyB0byBkZWNsYXJp
bmcgdmFyaWFibGVzIG1pZC1mdW5jdGlvbi4KSGkgVmxhZGltaXIsCkkgd2lsbCBmaXggaXQgaW4g
VjIuClRoYW5rcywKRmVsaXgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
