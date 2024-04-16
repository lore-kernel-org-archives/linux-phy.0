Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06F0C04FF6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtjXSx3GUeLmXNJdTR9WNUtgBzzU4mxqeJ38CqgzlUs=; b=UnHdjFoLJzO/9h
	0ii/za4Ja2BxxyvtkGb8oEy0pTAizD4hRv3hpEivFwipWSQD+Q93/8l5uvhHZeivJJwaFuPZ8/yel
	WCU1/w6TrwkteGXlzzC+BHQYc1fYgpOWLJ7mFk5niOUJno+NPOi4BEba0yoLNSuPlKSur5rgWeoVC
	hzEI8yiWZIOEQ1vQjp0TlSE3DIzUr2biaSVVj5i3YESAJGvDefsEAAwN7nkLa3DjthhM4lJ/MVeCL
	4rQb3fxOj5nIj+pJhDX2Sobwgan3LGgLZiGK+Q/i9nUIwLvWsRKoU9DZwRUAgsn7cBhxdKGEWlAEe
	m5JCNWyzH++GftpvTkhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjsr-0000000CYsF-1UEP;
	Tue, 16 Apr 2024 14:34:05 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjsg-0000000CYpP-2Lr0
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 14:34:00 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5aa1b7a37b3so2685588eaf.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 07:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713278032; x=1713882832; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFOshnHZVt7eovShCJGYyqtlZeqxkfrMezoV0SJga2Y=;
        b=iQ21ysfM10sMaa5GgKQko2G9hlE0v4wddbXzh5xi48x2EsCQYSl7WUFTOs2QVQUEQc
         VFd/RnnblwKE7oMyWP9/XwRg+0moQDTZ70lLaox7h6u4VAi5+NH7thcNcO8ywdoqwM3C
         EMvK7LkE8GYfwwRq5ioZ15Nt7uNVrZzIdDaRVJO4rFs6RQ2p3fiwyGno7ivepTqpf0y9
         26U4lB/wILCD/8K8UA1WlOOESiM3apQGMhPwTYDnmF6jxD/h6IgnMuClWTPzE9A2aAlk
         366SKzKLbgtL/vXQm0frKoyCGgsFiuwp6GAOQtoTbrIRi0Ky2tPthi9HZO6kU1tskFP1
         5cpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713278032; x=1713882832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFOshnHZVt7eovShCJGYyqtlZeqxkfrMezoV0SJga2Y=;
        b=qSR/99+cVZvcFXGULskUcQbaIULfc0cfYM6vb3twgxB1OC5im7El2O66l8F0djnDdE
         oJJJxYCxsSyGOi8TJ4pQjUM2QwayifrLnHgms8hgPyvplQDEsCB33No+6znLN2jajKX2
         3T6dmUZ+G2otHmSemUxquyOqeWuOi3wL5i6NS4BJbQk3Rq4Uo/XVKvsSe0FEnenQbtlH
         dCapwGxr120AZWXuV82M3yc6JqPAb5GRTyKbGmYRlRdM/yZ7nZb3alkwC8X2/ktJ1bQ7
         UlBt7o9qbK/C1EyicpvFKyoB3nm0yVIlKCEl65GLAh7Lp1lX5Y2LFsRNJ0Sc1rMQpdhK
         TwCw==
X-Forwarded-Encrypted: i=1; AJvYcCVp/ra7+5ZG6H+KlXyMY0XwQ3vF+I2ibCMEyF/0qjHgtQuJTPszMt3whQsqxtZgJwa9bqWupkzz3G5LSfN5sGPwPB3kxlrE+ccvmAgZ2Q==
X-Gm-Message-State: AOJu0Yzm+y3wHlmtiXcTctzSDVqWh3SQJOgK97rqW0GU/oKyP91TEONk
	d9pKvWv7/zagjEMUv9+sPNt41D1j9NG9gxflfu7Uf94KBoJZ44cSOl9kJFfYVA01ibPAlgh5Jvz
	dJowl8HKkIk/snHBpOcK9xJdrsnS2D32iTtdABg==
X-Google-Smtp-Source: AGHT+IEhzO0EWt8vnjX98wzr993MD/IhGn+sVx3cYjsgq4VouGSkc835TnH2i1adzvBUpJ7lxv2taDV6TczYCuSnil4=
X-Received: by 2002:a05:6820:408a:b0:5ac:5c3b:a9b7 with SMTP id
 fi10-20020a056820408a00b005ac5c3ba9b7mr12436630oob.0.1713278032316; Tue, 16
 Apr 2024 07:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-6-peter.griffin@linaro.org> <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
 <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com> <fd7fe44ecbd99358bac583df3cc8192e250e758b.camel@linaro.org>
In-Reply-To: <fd7fe44ecbd99358bac583df3cc8192e250e758b.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 15:33:40 +0100
Message-ID: <CADrjBPpJ2AEYZhg1s1jd00UqH=R+sGUzpWyW-aQs95_Rbm0=CQ@mail.gmail.com>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_073354_606048_B599064E 
X-CRM114-Status: GOOD (  20.75  )
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

SGkgQW5kcsOpLAoKT24gVHVlLCAxNiBBcHIgMjAyNCBhdCAxMzoyMSwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBIaSBQZXRlLAo+Cj4gT24gVHVl
LCAyMDI0LTA0LTE2IGF0IDEyOjU2ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+ID4gSGkg
QW5kcsOpLAo+ID4KPiA+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPiA+Cj4gPiBPbiBGcmksIDUg
QXByIDIwMjQgYXQgMDg6MzgsIEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5v
cmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUaHUsIDIwMjQtMDQtMDQgYXQgMTM6MjUgKzAxMDAs
IFBldGVyIEdyaWZmaW4gd3JvdGU6Cj4gPiA+ID4gRW5hYmxlIHRoZSBjbXVfaHNpMiBjbG9jayBt
YW5hZ2VtZW50IHVuaXQuIEl0IGZlZWRzIHNvbWUgb2YKPiA+ID4gPiB0aGUgaGlnaCBzcGVlZCBp
bnRlcmZhY2VzIHN1Y2ggYXMgUENJZSBhbmQgVUZTLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgo+ID4gPiA+IC0t
LQo+ID4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaSB8
IDEyICsrKysrKysrKysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9z
L2dvb2dsZS9nczEwMS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dz
MTAxLmR0c2kKPiA+ID4gPiBpbmRleCBlZGRiNmIzMjZmZGUuLjM4YWM0ZmIxMzk3ZSAxMDA2NDQK
PiA+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRz
aQo+ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5k
dHNpCj4gPiA+ID4gQEAgLTEyNTMsNiArMTI1MywxOCBAQCBwaW5jdHJsX2hzaTE6IHBpbmN0cmxA
MTE4NDAwMDAgewo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgNDcxIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gPiA+ID4gICAgICAgICAgICAgICB9
Owo+ID4gPiA+Cj4gPiA+ID4gKyAgICAgICAgICAgICBjbXVfaHNpMjogY2xvY2stY29udHJvbGxl
ckAxNDQwMDAwMCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
Z29vZ2xlLGdzMTAxLWNtdS1oc2kyIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDB4MTQ0MDAwMDAgMHg0MDAwPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgI2Ns
b2NrLWNlbGxzID0gPDE+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8
JmV4dF8yNF81bT4sCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY211
X3RvcCBDTEtfRE9VVF9DTVVfSFNJMl9CVVM+LAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hTSTJfUENJRT4sCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY211X3RvcCBDTEtfRE9VVF9DTVVfSFNJMl9V
RlNfRU1CRD4sCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY211X3Rv
cCBDTEtfRE9VVF9DTVVfSFNJMl9NTUNfQ0FSRD47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gIm9zY2NsayIsICJidXMiLCAicGNpZSIsICJ1ZnNfZW1iZCIsICJt
bWNfY2FyZCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICB9Owo+ID4gPgo+ID4gPiBUaGlzIGRvZXNu
J3QgYnVpbGQgYmVjYXVzZSB5b3UgZGlkbid0IGFkZCB0aGUgY2xvY2sgaWRzIGluIHRoZSBiaW5k
aW5nIHBhdGNoLgo+ID4KPiA+IFRoZXNlIGNsb2NrIElEcyBhcmUgZm9yIGNtdV90b3AsIG5vdCBj
bXVfaHNpMi4KPgo+IFJpZ2h0LiBJIHJlcGxpZWQgdG8gdGhlIHdyb25nIHBhdGNoLiBTb3JyeSBm
b3IgdGhhdC4gSXQgaXMgcGF0Y2ggNyB0aGF0Cj4gdXNlcyBjbG9jayBpZHMgdGhhdCBhcmUgb25s
eSBhZGRlZCBpbiBwYXRjaCA4LiBUaGUgY2xvY2sgaWRzIGZyb20gcGF0Y2ggOAo+IGluIGluY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLmggc2hvdWxkIGJlIGFkZGVkIGluIHBh
dGNoIDEKPiBpbnN0ZWFkLgoKQWggSSBzZWUsIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24u
IEknbGwgZml4IHRoYXQgaW4gdjIuCgpUaGFua3MsCgpQZXRlCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
