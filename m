Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 895A9CEFC21
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lG4aeDkNNvYY+r+fQMmRp59bN2TKmQV2J1H7tRA6ZMY=; b=h23O0Htc/4nagi
	xMGSCjDmYt19CS3f8Z956OBQo/qpbo+ErM5AZhntMR6U2YdP/rkDFSykeDRcIX0HtlShY4/AIC+ZZ
	tzynAusEQP/RuWzEMzKthQlYZdRu8jBA4T8ysiOlglzRUBxA3pNSTbsbLegREUHo6nmw3MLJVWEV2
	z0kbkfGTyohvkp+lSLgw8AIQtdiefsDLN4HlSqg+ukn/ukjsAmG2DsXzBLWNghGbC7qE2AoqqOpUv
	WpIGXxuFqsjBC9kyLZDQMgSAtGyFua2hQvM5uFaQjVhp4mUmkuvvC7mBv4BumLemhYLrR4F8BIE73
	9qkbdTLfzJXYlDfvT22w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBrH-00000006JfC-0ytE;
	Tue, 08 Oct 2024 15:10:43 +0000
Received: from mail-yb1-f179.google.com ([209.85.219.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBhI-00000006Hq0-0hJ4;
	Tue, 08 Oct 2024 15:00:36 +0000
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e262e36df27so5585937276.0;
        Tue, 08 Oct 2024 08:00:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399622; x=1729004422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1OI1CwFU8hmoHKJ3/axx7rOH5GOO3B9FuoN2F0R19HA=;
        b=gxaHpgiKh1c0VkemWEUCB7X64+4ZYX+4rKL3orNpoFqAAQ6UOQsm4p3pxAd4OUnvPz
         UHIAOxdjjbfBAjrbcBHKKwucIw3POiSucnVGqIvBCrWdNjSO0+9gajnLI3R+wnfIk6wD
         F2im//qYa8lzQiVb8n6S63oTvE+90wU8nRIAdAPHXlz01K65snDWtq6Oem8V2lhmslPS
         mgKZ/lflQARVXKWgf/4wYPoxawHnTUeHcjERAHUeVAnzwz3LGpJjcsVQvi4tBCqkihxF
         BN0IWFaE4aMrkTTcH4muEE56hxcdMaaxfKXpdS8ZXQcHntAeZbt/5t8vepWE4C8hmX/1
         4PcA==
X-Forwarded-Encrypted: i=1; AJvYcCVMZCaoQdy1+URX2vHXf1ZZbERckhej9+TrSU1AuVDiv1VJ8Jeboi9YgCSKNdv+UEXUgcD8sQMkgtfb@lists.infradead.org, AJvYcCWNH6tiRCBFOwSHApAr1dG9BdwGMZHTZXLmSXbb2D9PvEgXWLU01dRVhlaIgH9jsltNeo0PsEqYDVBkMj1QPnlp@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3pvJy5u5RKPgj855ruJRyGt/YDFO/9VEWGhfjhUDOinTpptLu
	voKFsaVvZhclGpGffQyKXWN1eYfCq80BgRcrCd+ZHIItp4bGUN2JjiuYyo9c
X-Google-Smtp-Source: AGHT+IEJXIMZQDGyaVpiinsELOoZHjaOWTnBc+Ow0T/CnTs5ZvdssJ1pFzoSKS8Nl14sTc8WqiUm8g==
X-Received: by 2002:a05:6902:2e12:b0:e26:18f0:5f7b with SMTP id 3f1490d57ef6-e28ea5dfc65mr3102141276.0.1728399622321;
        Tue, 08 Oct 2024 08:00:22 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e28a5c50c05sm1363311276.29.2024.10.08.08.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 08:00:21 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6dbc5db8a31so42430967b3.1;
        Tue, 08 Oct 2024 08:00:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUoTXGibngq6Drw7QUTJ6lndhM+X/fo03U8igURy5vajEhwA4zRkcTvikuMTP2zvGN4tUr3OQy5p2pF995vQLUe@lists.infradead.org, AJvYcCVJq8MnWOIR0zLaj5uP1I6U+SqYsi0lISiQywnp7UkZ1HRFhSEmgDyzuLXpkwXhGUmh2of+a6dLZ9Um@lists.infradead.org
X-Received: by 2002:a05:690c:3406:b0:64b:b7e:3313 with SMTP id
 00721157ae682-6e31d76c62fmr3976347b3.13.1728399621233; Tue, 08 Oct 2024
 08:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-15-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-15-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 17:00:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV=3rFDFo9KA2KZxKJMw6sms_DOPiioRFqr5eH8_Av-Wg@mail.gmail.com>
Message-ID: <CAMuHMdV=3rFDFo9KA2KZxKJMw6sms_DOPiioRFqr5eH8_Av-Wg@mail.gmail.com>
Subject: Re: [PATCH 14/16] arm64: dts: renesas: r9a08g045: Add USB support
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
X-CRM114-CacheID: sfid-20241008_080024_469910_6DF030C5 
X-CRM114-Status: GOOD (  14.19  )
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
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQWRkIFVTQiBub2RlcyBmb3IgdGhlIFJlbmVzYXMgUlov
RzNTIFNvQy4gVGhpcyBjb25zaXN0cyBvZiBQSFkgcmVzZXQsCj4gaG9zdCBhbmQgZGV2aWNlIHN1
cHBvcnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEu
dWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVy
dCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAg
ICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9m
IExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBj
b252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tl
ci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3Jh
bW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
