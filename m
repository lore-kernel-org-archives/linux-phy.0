Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B447E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99rVk3KtQVPWy4g7JfOsatBhQmSQqy94rlS7vM3EeyY=; b=cFU4VpUm+/uOfr
	eeljFvvzivmKQzAmeEbpkJVH7sfDwyiOoPyEu6gzgNYvkTn35ZTB2am36g0sb3NJ5oSRzECejH81y
	esR+H6bCKDl7ecBZRQPxC7tp3IwDpxvMmGNEPrF8JsouuG965uzT2e4zg/QBdIQbBw0AWWTMLrLJ6
	KgVmLtkQ2+/EbnVng+HqXuA4uiWOz1KzWnEmFx/EpPy7Esn5Fw2sZC6Ihl3clQlZ3FgRZSxdBXY5T
	A3Zf9tz0/9Lh0al0VOa7aFkvWUKHd5TjqaM4ZHnrxyOJP7gQgPsyit8Gqk8grMQs9ypzdbt/quo5M
	8ILVKYX5x3+CKvbFMWjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1jt-0000000BstQ-0GWU;
	Tue, 10 Dec 2024 15:01:29 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1jq-0000000BssR-0Sh1
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:01:27 +0000
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b6c593e8faso199230885a.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:01:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733842884; x=1734447684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=su4ECPmlI/KJGGcBixaQRsa9uITkLBdQfjVXoqcpzmA=;
        b=ETFTZzBUpLHuSNPJJk7U6Hu2QGmKwgD8GD0pDMT0YdrrMm9BkvTgxuU1GupHUbGdP+
         V0YkJZkG6Q1J1RJ0MrGmxmrdvjP4T/1mwKulLabJLl+v8KAmtnSkqodGg3QO4Db3YrM+
         lURl9/CclFyywhIKvduA0bgevngYYkpFl8I8x2Z2mafxAlssElnzZhsRDgNVAXDEa0qO
         y+ltwjoDX0P0xtbK8PB6tcM7qp9O9KNUoCar2KBzGplLpDqVu2cATFOXcMa+gF4zOrvV
         LarFyXDRRMuHwVG0g/fp49DG/1MimzcpOlXjSF2o4V4rtO4UljDXbRtn/FnuSswfhzLF
         WWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9gGArXwaZXI4brJhil8sZ3I301kamlLPnUH66Np/aZ+UCZRRoX06QMCuqw9PGUaW29oRvqltN/D8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMNVVomczbD1UAg2gCTvExw8oOxXUUd+MjUyixLitFxXQ02wm2
	xu9ABOj1FBOPT7NjJqd0BhVhZNVjJ/a60o4yY6kxGCDfl53nnuaZP7DPnz20
X-Gm-Gg: ASbGncv73e9E2k9NepEEHOcnTyD2u7mAbNeOvR6JUCu1+oHgJT9uzHLGWP/MVHOOn3J
	qgO3GsHrh3w8ZidzNm24QdZX06WQW/RmnyVwVlThw+6oFs32wRqQusYpZPirLQd65jJCLsgsp1w
	l3snRTsVD4q8JHBpsYLYINp92ooQgEMEGlYLHj/T3/ujrwlhJljsbNv4DuQf62I389Ka8B13dAo
	k4wKA4S6TliNB0gjs9rJBj//8wYso+Vgz7/U8RBNEK8TDQTqQD0N83gQJvOX7D6TSPGbMgyVcVg
	xWO0emn029BTwM8rWWBU
X-Google-Smtp-Source: AGHT+IFHw4DFZvPh8beCmVZRmoKx2J09tjGye4pz3CD4SqbMfFc5cHf2o1yPgx8/HYyo298I38Xhbw==
X-Received: by 2002:a05:6122:8c19:b0:518:8e53:818b with SMTP id 71dfb90a1353d-5188e538cb8mr2547803e0c.0.1733842871719;
        Tue, 10 Dec 2024 07:01:11 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-515eaf3441fsm951327e0c.35.2024.12.10.07.01.11
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:01:11 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5189105c5f5so370545e0c.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:01:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXVxMugIp5QTpoE4ok1Afk0vnrOofO5xpTpgfjhVwQLpUXAsGCS7HswTAJBRxDVa/wxB6GAxjEJghQ=@lists.infradead.org
X-Received: by 2002:a05:6102:2909:b0:4af:4945:9a1c with SMTP id
 ada2fe7eead31-4afcaac87abmr16665622137.19.1733842859094; Tue, 10 Dec 2024
 07:00:59 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-6-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:00:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVmceCBgp4XAJTKQcpiGHEgnuT9jEfrqQLBCtAZxZvB6A@mail.gmail.com>
Message-ID: <CAMuHMdVmceCBgp4XAJTKQcpiGHEgnuT9jEfrqQLBCtAZxZvB6A@mail.gmail.com>
Subject: Re: [PATCH v2 05/15] soc: renesas: rz-sysc: Move RZ/G3S SoC detection
 to the SYSC driver
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_070126_146527_8995DD98 
X-CRM114-Status: GOOD (  16.08  )
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

T24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5l
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IE5vdyB0aGF0IHdlIGhhdmUgU29DIGRldGVjdGlvbiBp
biB0aGUgUlogU1lTQyBkcml2ZXIsIG1vdmUgdGhlIFJaL0czUwo+IFNvQyBkZXRlY3Rpb24gdG8g
aXQuIFRoZSBTWVNDIHByb3ZpZGVzIFNvQyBJRCBpbiBpdHMgb3duIHJlZ2lzdGVycy4KPgo+IFNp
Z25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2Fz
LmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjI6Cj4gLSB0aGlzIHdhcyBoYW5kbGVkIHRob3Vn
aCBwYXRjaCAwNS8xNiBpbiB2MQo+IC0gcHJvdmlkZSBTb0Mgc3BlY2lmaWMgaW5pdCBkYXRhIHRo
cm91Z2ggdGhlIFNvQyBzcGVjaWZpYyBkcml2ZXIKClJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJo
b2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAg
ICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVy
ZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCklu
IHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlz
ZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qg
c2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
