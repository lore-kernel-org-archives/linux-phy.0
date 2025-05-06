Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16DADC3ABBF
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 12:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5tmjBpVhY9Yo5E3Cae26SOw/6glHIaZx+OHUtPALcU=; b=1WbhskB5Jrhk2z
	stbYyo6XhErVGJWJ3qf/q4xeon0i6TEHVzBi5onfWpZ2vmnXLUqe9oiXLDykJzbrg1cF4Tg+G0s2P
	4BD34RA+0DLxdgbFuN4nJfMh6zpsIMFuXkJ11zIf3SRdLpHE5z1BBmc4tu35H0adGMFi/T+e1UbPL
	OF0/ghupj6zpXQKSxLOrx6of/or/4CDA/Vu0f5/HBwAKd98q5Oaona9vLHIuSkBQYoF4Oxh6V9cgM
	KvUm2MJ8NbBZUefNNxHXbSxQbyJvOeUb1UtMOGj3iBUE3F+OyBRbfP9fGmuXlWsFpJ7UsLAl9Yiz1
	Oz58IiYmiCUvxhJq3eNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCHgc-0000000Bxbi-3Qgy;
	Tue, 06 May 2025 12:46:14 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFdx-0000000BaOU-03sp
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 10:35:22 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-39bf44be22fso3685663f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 06 May 2025 03:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746527719; x=1747132519; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/YJnLiNctgpAA7++nNEwu5/3fDIARsXBYAMfwxersuI=;
        b=aNTFBy5w8sq5235shW0HVyG08YbjG3G83GVmJaDfMCQR7G+fgQ04G9jSUoXPJueuh3
         NX2XLsL9DacEQATzCIFpbS1IPzT77YTNo8b6ZOzQynaGpeAo9KRoNwCxOKfADjsbJfQl
         zDdCJtsAfBpVh6k7zVef419JnD6ekDViwKk9LvNPlFLWEZbS1Kf8zCRWJgCUurMyTps5
         HA1UmGiF+cm9dv81K9v89pDUmcXnSygHxHA9XPoW3ZzdgiOJIRWEX2nMJ+HgB9a3PAHP
         HUByExW2nF3ENQRNc3K8VaBEH75OZD28XzxOY5QfGmwbmZ91AYUb8X9aheS4sexypUnW
         8zNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746527719; x=1747132519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YJnLiNctgpAA7++nNEwu5/3fDIARsXBYAMfwxersuI=;
        b=gifg18wjE3IQ+iYtNHQatPgMTERg2hKFitHHfltSw72BYAh44EsKEr9rj2cUC37Lm5
         gpCJ5O7kCapgR8uh7yl2KpMA+DyunRgINgADYtkjhddng8gEH90onyxZcwtaHIzY5Njb
         +Lz3q0TVgDCAV4UEte0/Q3SNLM+BemT+qOAlyoGdr2DtGRYitoSt34s5IG22NGzS63X0
         h9R6oXyjd6ejIIp9s5znSgHl/CO5LmCxuNM58dq4TnN4sZ2UmNmF8Q8qm9rH2Oifb9KV
         UHatEo8WlNgbnUPW/PPbGwGqYg8Q02oBDGomI7M+9uaZk5auudfdAdMunjM0Q25sFJbU
         8GYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZjawuHjYGUGNg5V4s7cyx086uUv0pPnvl4/pN3Turdc0EO2f5m5Dyx3/o49SS5fIhtSwu8da2TmQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUrxwMKXPPHUaSeqVXFRhL5p/XE815jFgeg5aXIgvCI5lk8Fe7
	JoKOXTH2ITKb6TkbN5BH/wtUXuHJPltOmZi2uOYgkwG1sHXOzvmAHGhitcjBcOdIOgnLFeGEz/A
	GraczXYIlrBl93vB4dqIUXaolf9U=
X-Gm-Gg: ASbGncur09UgXrMloWZlQlxoHFGLDLzKNLH9MMx5PCAAWlwxfn5YaIu7YBXLsg+dfWK
	RPqvk9fJ0JF8PGBefhiRS5iY0mOuHNUqRFMVlNCthR4Vd0wM2qWcQK8yu8GhqKoI7k8c88uz6HR
	1Q0HYE8HKXLi7h9RYkfL5ABr2N
X-Google-Smtp-Source: AGHT+IEmklDqe6niKrQs58T9dd1L2SMtDhN8WLe/huYzAosYUfCNektawABRIwiE9cfmy/oXGEKHewpo0DpzWgDwZeI=
X-Received: by 2002:a05:6000:290c:b0:3a0:806d:205 with SMTP id
 ffacd0b85a97d-3a0ac3eacdcmr1766835f8f.53.1746527718949; Tue, 06 May 2025
 03:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 6 May 2025 11:34:53 +0100
X-Gm-Features: ATxdqUEeUXSgsKeMnHaPtItMuXxnNdK2TfeDxpE9x5qqwGLHR3r-CErpP8uTdAg
Message-ID: <CA+V-a8vzxB5GWhFvvBdH96CF_xV0VxpJpDPHXMrb6v7d3aqmkA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add USB2.0 PHY support for RZ/V2H(P) SoC
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_033521_054884_0344691A 
X-CRM114-Status: GOOD (  15.04  )
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

SGkgQWxsLAoKT24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgMzo1OOKAr1BNIFByYWJoYWthciA8cHJh
Ymhha2FyLmNzZW5nZ0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogTGFkIFByYWJoYWthciA8
cHJhYmhha2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+Cj4gVGhpcyBwYXRjaCBz
ZXJpZXMgaW50cm9kdWNlcyBzdXBwb3J0IGZvciB0aGUgVVNCMi4wIFBIWSBvbiB0aGUKPiBSZW5l
c2FzIFJaL1YySChQKSBTb0MuIEl0IGluY2x1ZGVzIHVwZGF0ZXMgdG8gdGhlIGRldmljZSB0cmVl
Cj4gYmluZGluZ3MgYW5kIGRyaXZlciBpbXBsZW1lbnRhdGlvbi4KPgo+IEJlc3QgcmVnYXJkcywK
PiBQcmFiaGFrYXIKPgo+IExhZCBQcmFiaGFrYXIgKDQpOgo+ICAgZHQtYmluZGluZ3M6IHBoeTog
cmVuZXNhcyx1c2IyLXBoeTogQWRkIGNsb2NrIGNvbnN0cmFpbnQgZm9yIFJaL0cyTAo+ICAgICBm
YW1pbHkKPiAgIGR0LWJpbmRpbmdzOiBwaHk6IHJlbmVzYXMsdXNiMi1waHk6IERvY3VtZW50IFJa
L1YySChQKSBTb0MKPiAgIHBoeTogcmVuZXNhczogcGh5LXJjYXItZ2VuMy11c2IyOiBTb3J0IGNv
bXBhdGlibGUgZW50cmllcyBieSBTb0MgcGFydAo+ICAgICBudW1iZXIKPiAgIHBoeTogcmVuZXNh
czogcGh5LXJjYXItZ2VuMy11c2IyOiBBZGQgVVNCMi4wIFBIWSBzdXBwb3J0IGZvciBSWi9WMkgo
UCkKPgo+ICAuLi4vYmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbCAgICAgICAgfCAg
OCArKystCj4gIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgICAgICB8
IDM4ICsrKysrKysrKysrKysrKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQo+CkdlbnRsZSBwaW5nIGZvciByZXZpZXcuCgpDaGVlcnMsClBy
YWJoYWthcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
