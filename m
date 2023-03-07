Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCFDCC678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 13:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5jNoF2OaujAicOIwSiTkMC7qhuNAx4GmUOiQxMZHCk=; b=b9NO3eOzUEuPlM
	PVk7TtxjcUUJ+mSj00beTCs6d3Yy1sUgdXOpSZPf+nAUu1EHaosJjo+vRsoLZ0RQdslIXwHoI8lUE
	bWNgImodBiONzcpTjkDcRzfwO19VioiWdpGtkah02UI7r0x1kF0MJb4Gj5lC6yxXdNwzlRNUgEqdc
	dAq9i4EVegUZ0098MOysB+O643emRakCciZUqNzuKTGkNraJkQ0Og1rR71yNRFkpSDhs2XxujZcR4
	s2jnDmxIBlcicIJgkJAej6LcsD+RpMzagM8YYZGuZ0/aa9e8LqKXg4SOvuFh6T037LFnURw8w7Bdn
	t7gyMYvnAcJmwjybaJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZXdg-000Um1-Qd; Tue, 07 Mar 2023 13:46:00 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZXUQ-000RAY-Rj
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 13:36:30 +0000
Received: by mail-qt1-f176.google.com with SMTP id l18so14282040qtp.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 05:36:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678196185;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=urULbQUOPfOIWbeWwu/UVMWyxPeVZ3I2kroq681pdYA=;
        b=Hn+HPInNCaulMEvbimqgiv8yOxg/oqW7qlEOLU2tPE6wESkBIj6RBJzvUcpDxlFKxy
         qyFG+F/E1Zfm3dFLgAu2hm12Z/U0Jllhw6eK235iujCIYYSeYUYkHUe4PtXQzw8lCmpC
         /O5ndFZoBE+X5lxDV7r2qz0mJS6ijrbnQY2wqy2XR5qQb+uHmsFVeei0RzmgUKIMMQDZ
         KOURz/PrBfPaz1+r32EaZyGWJpRvMX66Va5ulWExyAlA7BX87qVeNF5jY1ulF2x3LP76
         m8FgQZggkIrxqXfz+oIm0mR6TZ35/DnSAwy/ojmk84RK5H3VO2/3gI6/bEoGFti/zlBW
         AV4A==
X-Gm-Message-State: AO0yUKVHB20Oz+c+l49YLBQ+hcLED5wa+UHF1hMpxEe8CSM8mafYnTiL
	SnytBRiA/5L7rhxFSJSYgQ5nHJUNdVBBcg==
X-Google-Smtp-Source: AK7set+DmDqkEmk+qsDsiwwx8twhNM9oVx7XOVQmdt5FF2z9c/lgXR8sPdnbP5jmtn//wJgcYk2CJA==
X-Received: by 2002:a05:622a:13ca:b0:3c0:3be7:8c91 with SMTP id p10-20020a05622a13ca00b003c03be78c91mr2235723qtk.37.1678196184853;
        Tue, 07 Mar 2023 05:36:24 -0800 (PST)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id l19-20020ac84593000000b003c03ae61af9sm1073649qtn.3.2023.03.07.05.36.24
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 05:36:24 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id c80so4400343ybf.5
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 05:36:23 -0800 (PST)
X-Received: by 2002:a05:6902:208:b0:acd:7374:f154 with SMTP id
 j8-20020a056902020800b00acd7374f154mr8646856ybs.7.1678196183774; Tue, 07 Mar
 2023 05:36:23 -0800 (PST)
MIME-Version: 1.0
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de> <20230307115900.2293120-18-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230307115900.2293120-18-u.kleine-koenig@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Mar 2023 14:36:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV5SjiMNyKqbF+WR_D+g44TpriA2YN6ZEWLA_Yker0erg@mail.gmail.com>
Message-ID: <CAMuHMdV5SjiMNyKqbF+WR_D+g44TpriA2YN6ZEWLA_Yker0erg@mail.gmail.com>
Subject: Re: [PATCH 17/31] phy: renesas: phy-rcar-gen3-usb3: Convert to
 platform remove callback returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, kernel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_053626_921839_B723B6F7 
X-CRM114-Status: GOOD (  17.93  )
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

T24gVHVlLCBNYXIgNywgMjAyMyBhdCAxOjEx4oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gVGhlIC5yZW1vdmUoKSBjYWxsYmFj
ayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBpbnQgd2hpY2ggbWFrZXMKPiBtYW55
IGRyaXZlciBhdXRob3JzIHdyb25nbHkgYXNzdW1lIGl0J3MgcG9zc2libGUgdG8gZG8gZXJyb3Ig
aGFuZGxpbmcgYnkKPiByZXR1cm5pbmcgYW4gZXJyb3IgY29kZS4gSG93ZXZlciB0aGUgdmFsdWUg
cmV0dXJuZWQgaXMgKG1vc3RseSkgaWdub3JlZAo+IGFuZCB0aGlzIHR5cGljYWxseSByZXN1bHRz
IGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYQo+IHF1ZXN0IHRv
IG1ha2UgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1cm4gdm9pZC4gSW4gdGhlIGZpcnN0IHN0ZXAg
b2YgdGhpcwo+IHF1ZXN0IGFsbCBkcml2ZXJzIGFyZSBjb252ZXJ0ZWQgdG8gLnJlbW92ZV9uZXco
KSB3aGljaCBhbHJlYWR5IHJldHVybnMKPiB2b2lkLgo+Cj4gVHJpdmlhbGx5IGNvbnZlcnQgdGhp
cyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQo+IGNhbGxi
YWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KClJldmlld2Vk
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0
amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5
dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRA
bGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwg
cGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBq
b3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0
LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
