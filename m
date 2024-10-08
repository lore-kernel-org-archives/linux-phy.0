Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D23FCEFC20
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEV3/npVEgofzpH5EUFqS8UEMYVizMBn8oiQwGsA8bA=; b=Ny1JhQkYcCHAzD
	bRiQ053ihn3AbqktGZrSuqRQEhnc0l5kGq2pY3NJW9vJmFd9IJzC0ylUpPFgVVKsVAzKh1EcUEWjk
	GjvGQNFa86IkR69TwyMF6kW9n17kIW2ZO2opz82wFBrk1dFj2mGDWsQ6hzddK0bWwAEo6Y/iRtS4O
	1lZYdHZsiMRMqMQBhmv+wl6U+inVHmwZGcwPEMZkPpKqwZJtS+JdbTOYD7QhWhGgsf4WAU+N+Ds9Z
	7vPTH+yuAbGmuo9rzFCgFGDjL/iGfEv7JF+kRItwBMiSuvZgwlrWhAMZMoulwEuy4EI/h8my4FZ+f
	qrRQTFTMWbZihHrqiLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBpp-00000006JOr-3dde;
	Tue, 08 Oct 2024 15:09:13 +0000
Received: from mail-yw1-f181.google.com ([209.85.128.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBgt-00000006He2-02Gb;
	Tue, 08 Oct 2024 15:00:01 +0000
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6e2e4244413so29601617b3.3;
        Tue, 08 Oct 2024 07:59:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399598; x=1729004398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e7/JtpY+bt/evZG6gbvtnJhFDNvtidvn9InpMlG3Frw=;
        b=QCD0r4aHykdgposjdVPYBikeQ5ZOXAEUXfw6sI6rcRKRWVuB4lweaObutWBDktJqko
         vOa6PK/Inxk7EgRAb/QWNJFNYDJiWvthk8mJ7u9IxUmIf9jeBea/rI/UHAQA6v6EG+V6
         o5uV7cNyCRUyayMm5p8y5r/M3s7K/VCs2Za/ZEV/sf3bOb2gJmeJsM89kNxuYGt6aZhO
         tVAcVrt4fA4ozdyohlYQaq48UHE2zANcY6DTqu3XeiINpUkKXWd0WK4hM24KYnHNDC37
         YYQB7r4bbwYYFQKuwK8Psnu785IpWY33NyXsI9wybBwB0ZdomT6O24PjX3mu/AECu3om
         utNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdUc55/ztWCmydPs8bfGNfPvBi4gI8kgMtb8YF60BMqlQlwo0vne8b5/attU4shylszBJd+CzSgH8HRSl6uMW/@lists.infradead.org, AJvYcCXbIEqYpUuPeKifQ1hYDwz8DXbMAUhU6Evhgtj7cCHL5BQBigKVFcyl/q5JNbPrMkmNy7zdg31czqmw@lists.infradead.org
X-Gm-Message-State: AOJu0YyFwViuHAc6jbjEfadRW14j+G1rUsBV1kOqAdFt3ls5XXpitYY7
	O7bIzbkKDq9wYPQh/oPfCs6ukXeESasyMHJdSl1Is+7lbcC+AUFAXLcOsVhW
X-Google-Smtp-Source: AGHT+IGmICuBIK4R9Y3JmBS3OD0MCwaE9J2uMp3ccp2kMJwG6kyvP5gOpF8vgW3XQLkm2z7gusIPGA==
X-Received: by 2002:a05:690c:4c11:b0:6e2:313a:a022 with SMTP id 00721157ae682-6e2c72d7511mr131436747b3.33.1728399597749;
        Tue, 08 Oct 2024 07:59:57 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d9387db8sm14617127b3.59.2024.10.08.07.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:59:55 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6e2e4244413so29600747b3.3;
        Tue, 08 Oct 2024 07:59:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUgCAj1819brLwxD2nfB00ehS1R645ViPhQMt7EMjEw89quY7+L6klAhrw2fdUZpzYzTexf2FZAyW1x@lists.infradead.org, AJvYcCWdYPBezlP5OtzmAxaourpIzpCRT3krmAk0+CW4gyBkKEaidUVEjFoZ/jGVv1iLV5io9dHKZ2sdZzZHs27i6knA@lists.infradead.org
X-Received: by 2002:a05:690c:101:b0:6e3:122b:8d86 with SMTP id
 00721157ae682-6e3122b8dd5mr20338607b3.44.1728399595196; Tue, 08 Oct 2024
 07:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-14-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-14-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:59:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVBDQ4WrJEwfRPcAv3SEVB+d+pVdgnkq2y39aO-5tgGew@mail.gmail.com>
Message-ID: <CAMuHMdVBDQ4WrJEwfRPcAv3SEVB+d+pVdgnkq2y39aO-5tgGew@mail.gmail.com>
Subject: Re: [PATCH 13/16] arm64: dts: renesas: Add #reset-cells to system
 controller node
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	ulf.hansson@linaro.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_075959_118417_E59D01A1 
X-CRM114-Status: GOOD (  13.84  )
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

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVh
QHR1eG9uLmRldj4gd3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVh
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gU3lzdGVtIGNvbnRyb2xsZXIgb24gUlovRzNTIGNhbiBh
Y3QgYXMgYSByZXNldCBjb250cm9sbGVyLiBBZGQgI3Jlc2V0LWNlbGxzCj4gZm9yIGl0Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVz
YXMuY29tPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0Bn
bGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdl
ZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlv
bmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9u
cyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVu
IEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNv
bWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGlu
dXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
