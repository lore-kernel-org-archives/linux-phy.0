Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06315CEFC21
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5mPETi6qMnweahDRlgWm9kSZQWDI0vCOCgaMGhksOI=; b=w57Y1XEWPVK6sk
	1KKsjFs+Yf9+cQDiOSya+qM4r4Xn3pKunDQJCJB49MlyX6NQ+D7iOqAFK3wUiu3nxZ+5iQYFjZ0Mg
	YhqIHrv/53SuOcDVdjAuARplJPeiwSYsoMIYDkf/wCCFBYrWB3m9PiVljhSP7gqQjs+F4zywFVv+m
	FOnLkL8k/a94RB859ZxKGov7VnJXV22eDKAU862j/lZ+M6VZFAnUB5F5dch2tmFnFosab3WrVrToH
	8S2oCldb1kM7QtBt2dykO1pGURVlyEtpgSAlsqNvXsoUCNfCz/rRLF+oM+Vejvbzq7npANpDOq0bB
	k3Bq8ZQxrvBnJ/HhpSfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBoZ-00000006JC3-2tEl;
	Tue, 08 Oct 2024 15:07:55 +0000
Received: from mail-yw1-f171.google.com ([209.85.128.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBgZ-00000006HUL-1snX;
	Tue, 08 Oct 2024 14:59:40 +0000
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6e30ee6788dso10004557b3.2;
        Tue, 08 Oct 2024 07:59:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399578; x=1729004378;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mf/tTPgyirdsDQap3WHfhe2ZsTNuvcfvkppSqZSZQ/o=;
        b=uCWxsZ/gT7XfCjXArBvnAWppYnkpYW9dvWsR4R8rn9OwoSBPgHt0Wwnc+hglP57+TP
         yorvtfjFHj8hwahgLNA+w3dxHddzfvEPtrvTcdvu1/4IoeG0MSXECRGPgnZA/J6OJ8Ty
         cPlyxD+OBYEXr0etq6jnR8JIAovNMRww+QQktKIgwhmcCasEMO9BR1ie3XVWfZx9oJn8
         dqqy+MAgQQPhMhG+UCPJrZRXk+RJYRfyt1HgwzKlVHHrFC0Uxvv8mmdAK2ERGB4S9iMR
         GqqcsP2SdkpC7RZj0lihYxNXakH5gzpVyu35/VgKg0QR2v4lnzOFQZO35xL4AtFAfpIY
         X0UA==
X-Forwarded-Encrypted: i=1; AJvYcCUW2YMD4fZozULUriOEvSNENIiQrgwJvFOgyigXsDlSdwJk+V93+8tOF7Ya4pXvvICv16xs0IRuggfKQjS4jm7G@lists.infradead.org, AJvYcCVpGv9dC3apPUp+WImOC36Q1wlKOB4jwh50kFaCqx9MoNbXTqNvqTKt3QVWqED7sJqda2Apd12abeFZ@lists.infradead.org
X-Gm-Message-State: AOJu0YzDLx8I0QiPWVs5etbbnwzCXn7IHLQBwiS4QKrnMeSwgCGBpkDE
	HwiLDXWS4vVHw5Uz2ZD2ihaoTVJkO8r1a7XeRR2tywRGNmZ0a27fdSbpsgLH
X-Google-Smtp-Source: AGHT+IH5hLKB0NoYHp/K81JWqLUQOXtE3ra0Sp/ztWf3/62wiBGzd5mvsxjxUoqjIs0UacKAuemPXw==
X-Received: by 2002:a05:6902:1207:b0:e28:f764:27f8 with SMTP id 3f1490d57ef6-e28f7642c2fmr735642276.35.1728399577682;
        Tue, 08 Oct 2024 07:59:37 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e28ead0b735sm334133276.57.2024.10.08.07.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:59:35 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6e22f10cc11so41138317b3.1;
        Tue, 08 Oct 2024 07:59:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFHCi4M4YTz6xO7Zt172zUl8M7pIo8Bh2ODuTzULrVCxX5eQ4Jr2qKg73FNRsFOsapvmP/lYE2TaBZ@lists.infradead.org, AJvYcCWadCTVg316lF9OERLnOgWzwTLZYMIE0FPBYALmAnM+I1okYR4bfjfGFmAOIE7IqIBaPfSJpjjj8qgsC3s/eJAY@lists.infradead.org
X-Received: by 2002:a05:690c:6782:b0:6dd:d28f:9e02 with SMTP id
 00721157ae682-6e2c7280d3cmr123565017b3.18.1728399572309; Tue, 08 Oct 2024
 07:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-13-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-13-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:59:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWvjhsbgPngts7ZgzSSviepkMpDtXKZtBd9ZX53yBv5aw@mail.gmail.com>
Message-ID: <CAMuHMdWvjhsbgPngts7ZgzSSviepkMpDtXKZtBd9ZX53yBv5aw@mail.gmail.com>
Subject: Re: [PATCH 12/16] phy: renesas: rcar-gen3-usb2: Add support for the
 RZ/G3S SoC
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
X-CRM114-CacheID: sfid-20241008_075939_510782_E5D262D5 
X-CRM114-Status: GOOD (  15.09  )
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
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBSZW5lc2FzIFJaL0cz
UyBTb0MuIFRoZSBzdXBwb3J0IGlzIHNpbWlsYXIgd2l0aCB0aGUKPiByZXN0IG9mIFJaL0cyIGRl
dmljZXMgd2l0aCB0aGUgZXhjZXB0IHRoYXQgdGhlIFJaL0czUyBuZWVkcyBidXMKPiBpbml0aWFs
aXphdGlvbiBkdWUgdG8gaGFyZHdhcmUgbGltaXRhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENs
YXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KClJldmlld2Vk
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0
amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5
dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRA
bGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwg
cGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBq
b3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0
LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
