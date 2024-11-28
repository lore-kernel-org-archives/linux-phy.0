Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAD0D69114
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 15:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLFpVfbf7hb+TVY01R2Z6mdZDhK/UzsB3+uRwukh+ns=; b=EjOcnKh6N05nfy
	UdJwemVkNnz2FEYlyZ3NlNvi4e70Hu7TYooDEoImlM7O+kvnA6jgRAffIfoRj/aDeYJNu8iO7aKhX
	CuBTKfRG+o6cAmrqfDxsv/TsXxmRrVHhcwCUKSDyTS70th9ZS3r4VheCGmboAo4z5SBCjdo23kizh
	TKFb1qE5C3obIZAr59Q94vgyWCsthti9VhOGf9Nq5tyUfmfdGYFzhAEEn2X53FeTm7g7rewQOYJxs
	9qoFQ2BsxYuwNLHV/AAA5znG4NLNUDdE95MtRFV4CHOkOKUUlwMFZHL6+o5xRIK0BFMhW5xbZLX9Z
	p/i1w2QyYtuTEofYB8Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgNC-0000000FsWu-1MZR;
	Thu, 28 Nov 2024 15:24:06 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgGd-0000000FrFT-1qao
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 15:17:20 +0000
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cfe5da1251so1080290a12.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:17:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732807036; x=1733411836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpOqJtapJKr2nmzp6tbpwS+L3Zut8QyciQBvDh30p6c=;
        b=ZsZmvMsuVYSjMzj4qsh9U3io0XtRo9mhfVzibUAr2ZHzDe0elt2SVav3ow27MlluBM
         QKIFcj+XlrRPLGaOFnd3fyUvXbkfpbQj/8NrA31smguHoJ/Do6M1fVjfHf/2tRG/CC8z
         WjYHe77gSJK0qfheuEqXWF7vAn8S0BuEIgWNECD5jNQadfP04PFrhTFdI8aX1sveoyJF
         ghvGf1RusICQDOakZgQ3595PcJesltYXDGBgjSEuGCjzZUAbTyE28tEogBMQcOOJuc/8
         uGbkJUAuQgKq6tZo2Tfq2YQXEuvrWRsBk2+xlt32nkfD/6s6iGV81NhIa2Jb3d9IMzn9
         1Zlg==
X-Forwarded-Encrypted: i=1; AJvYcCUbWVJRSnJoXYLEOG5JcD34n71WQSiR4wFBnfuvTu99kTWVNxcvFSNsLotki7kpyywQOxdXlJTZ8hI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgXUm2mtfaJ6Ja6+4dOUKNv8fsDf9ReQrX3ksgg5gCw0FyBu0d
	kzd6h6O2yTQfkf/AzxBhWlc1HkHjk6SSBdIOdI9YQyOjsmOwHWAkxcUAeD90jbQ=
X-Gm-Gg: ASbGncudSoeRkgaxxrLkHpGAphz+EOr3XRdY17/vcHk0ttxyl3ZNTMAnRXjs0NoDUZE
	ARTdi2r06U62xEtYiBY+FKuREF+2FBSKJhFRp8jjqx/6iWuFVy6BHvD7KMaGYxyBqykm89l8HDZ
	+R0H/wJ3iL5x8I4+90hbDIuHWdJ0EGaMyBAZYps5L4H6uahNoEuGb9LWsJaCpVl9Hk2fVvCHlzd
	dG1aFdOc4TqF5fqyfFqD2EpFFswSrq7pvaE4A9aizslCqqnz87ZMZPu3BwpoBm46iv26n3Ztg4h
	a8NE/R1A+o3k
X-Google-Smtp-Source: AGHT+IHMqbgvEWfgInlmYxdl5SVjwHQoDYIZSfRKuxJRJjXYdAc42cu/3DKd4Q2KCigASprxS4nD5g==
X-Received: by 2002:a05:6402:13c8:b0:5d0:849c:71c3 with SMTP id 4fb4d7f45d1cf-5d0849c729fmr6183757a12.0.1732807036069;
        Thu, 28 Nov 2024 07:17:16 -0800 (PST)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com. [209.85.218.43])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097d9e735sm808263a12.6.2024.11.28.07.17.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 07:17:15 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa5325af6a0so122525166b.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:17:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV4IYXiRVsuX1ar7sItwLVdB0Mw3lUqLCjSkuKZZoazw8sz25Niozl6z4R5yoE2TqrpECz8Gvt6Dgw=@lists.infradead.org
X-Received: by 2002:a17:906:329b:b0:aa5:241a:dc75 with SMTP id
 a640c23a62f3a-aa58103b03amr618001666b.41.1732807035249; Thu, 28 Nov 2024
 07:17:15 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-13-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-13-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Nov 2024 16:17:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWadox27_HYhijdOCdd==4P=-C0moFFAFUmCKupcSBjGA@mail.gmail.com>
Message-ID: <CAMuHMdWadox27_HYhijdOCdd==4P=-C0moFFAFUmCKupcSBjGA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: renesas: Add #renesas,sysc-signal-cells
 to system controller node
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_071719_474571_B5C0B058 
X-CRM114-Status: GOOD (  18.18  )
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

SGkgQ2xhdWRpdSwKClRoYW5rcyBmb3IgeW91ciBwYXRjaCEKCk9uIFR1ZSwgTm92IDI2LCAyMDI0
IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToK
PiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+
Cj4KPiBUaGUgc3lzdGVtIGNvbnRyb2xsZXIgb24gUlovRzNTIGNhbiBwcm92aWRlIGNvbnRyb2wg
YWNjZXNzIHRvIGl0cyBzaWduYWxzLgoKQWN0dWFsbHkgYWxsIFNvQ3MgZnJvbSB0aGUgIlJaL0cy
TCIgZmFtaWx5Li4uCgo+IFRvIGVuYWJsZSB0aGlzLCBhZGQgdGhlICNyZW5lc2FzLHN5c2Mtc2ln
bmFsLWNlbGxzIERUIHByb3BlcnR5LiBDb25zdW1lcnMKPiBjYW4gdXNlIHRoZSByZW5lc2FzLHN5
c2Mtc2lnbmFsIERUIHByb3BlcnR5IHRvIHJlZmVyZW5jZSB0aGUgc3BlY2lmaWMgU1lTQwo+IHNp
Z25hbCB0aGF0IG5lZWRzIHRvIGJlIGNvbnRyb2xsZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4gLS0tCj4KPiBD
aGFuZ2VzIGluIHYyOgo+IC0gbm9uZTsgdGhpcyBwYXRjaCBpcyBuZXcKPgo+Cj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcmVuZXNhcy9yOWEwN2cwNDMuZHRzaSB8IDMgKystCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVuZXNhcy9yOWEwN2cwNDQuZHRzaSB8IDMgKystCj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcmVuZXNhcy9yOWEwN2cwNTQuZHRzaSB8IDMgKystCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOWEwOGcwNDUuZHRzaSB8IDMgKystCgpHcntvZXRqZSxlZXRpbmd9cywKCiAg
ICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhl
cmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJ
biBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15
c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0
IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
