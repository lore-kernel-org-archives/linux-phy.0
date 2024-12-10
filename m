Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B9DFE77180
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLsmI++adItk1Ky9F2Z66J9fe31gIzKkjUGmiyGKWmA=; b=rEDih7Fd0JjBfI
	WZvQanOfSRSxyEua7tQ8k0HYFTJOdd2ZyZRFNHslfKRGUNguPBt2dAjhhjD4yx5B7wMwr1Utx29/T
	IGrp0y/3ITk4oVPbOZUp+MpNoSxp7Zfl0HD177s0fDCd3r66+Hz9pu3jMjdRYyRdIPdhq3sNHIoFc
	1Exotfl/Cost87CzUyqoPFlc61k5ZeUo8EHj/qcukRk6MMs9upLssM1ioVS5sq/FBhRFNfRvTRJy5
	mq421mRLx1tookx4RyOKAIRgharp1QGdViz1MLs7txLrXkks2jC9psibxfHRD9aT8w4I2sui2U2dI
	teFMnpmJF+lAOhtxJ5bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1S8-0000000Bp1a-02cj;
	Tue, 10 Dec 2024 14:43:08 +0000
Received: from mail-ua1-f42.google.com ([209.85.222.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1Qa-0000000BoRJ-138p
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 14:41:33 +0000
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-85c5a91374cso982510241.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:41:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733841689; x=1734446489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLAgH8um3jpFXawSgnIkqC6rHy/Yka70/RZHFuxa5HY=;
        b=caIvQglVPzZohCvKNcoGpncKmbXK6Wq3XguY6LvQ1We8/xiVHOAYkr0v+WTS5CEQ4c
         jTmhk9b51KuqtSRYv0ebowks5Kvwz7uL1oAh1XGj56qgW2hvHEcmifykWfA0EkHgnfXk
         VmU/EqjPE2ogMfWZdYkKkpNoVbeUZMhx/CgDc8d3PkU+WS1TIBVbBqFj2JDJrbSsqLUT
         ysZex09TLe8BqwvN9qinuUXVqbXP2f1dkdnVmShhrzsWPxiLKnSboXZNy6XBAafXXJE3
         eSG6E9qD1G/Z3XkrPwOhcPx6pLyY08qmWEmwAejB7RW7248A8KbeM4kNGCaiU9MDsiGt
         +QFw==
X-Forwarded-Encrypted: i=1; AJvYcCUqcOcz25cjOkKQH2qXkZ0lUxA1naSZH4PKKRqAvPWqOanMCjFO0RSqav99e96PlV/mPpU9lXOETRc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjChqoRBCyxenf9EsgcaimoxDrebqkAnOaGs5QP/hZQ4hUkzoJ
	stk9yvgRScC4+KHng/5v/4PGc6RSqD0ndCxGF5HzoQ8gHIXVeHvcAm/TYhEw
X-Gm-Gg: ASbGnctwL+1f5ySnBZ44Dn7tHv12i5GCP86atOv1t6JngKgsII5kru/45zjzPt/EMIB
	ffZwLmH08O8vFDZuOyUhoX6dsTdzOjK9zBlABoZ8oNfq9694lzNZFpJ7Lm43TRRO6QWQVoqdz8r
	a+6lbbmaU14hhOa/UIWPZZT4jaorURsJzjDQ5Fpm0RRLkQKSZi9prQ+nc6fUHSAs8s9sQp5vzjX
	aaFbfUOxVyi/e38G2tilWlxhuh78ow8KHNEhUpfj0kr4wjU1L27/z/NkkQ8ZW/y3v3BQVwlTtbn
	PZIOytOQs2qgzlDs
X-Google-Smtp-Source: AGHT+IEL2LLryChnTg+ZGrugVWwJ5rUgbHKyz+36jrZQwfGAKEsSW6HJApoFQ2ETLSkG4Pvd47sE2g==
X-Received: by 2002:a05:6122:46a5:b0:518:91b3:5e37 with SMTP id 71dfb90a1353d-51891b360bemr1910209e0c.5.1733841689231;
        Tue, 10 Dec 2024 06:41:29 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51889c60714sm179051e0c.4.2024.12.10.06.41.28
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 06:41:28 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-4b10e0654afso1149009137.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:41:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX33bsuWNcw+5KOazLReFIXQmDwBgfLODTKTDDqX2u3CTM6/DZbRumgH4MbaZPxtZbIQjxWhZdRepI=@lists.infradead.org
X-Received: by 2002:a05:6102:54a6:b0:4af:a216:c0e1 with SMTP id
 ada2fe7eead31-4afca73d06dmr17641388137.0.1733841688498; Tue, 10 Dec 2024
 06:41:28 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 15:41:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU-e-Dd+it+wgXdDpbUEuRkar2qeCPVvvp7ggg1HfPpRg@mail.gmail.com>
Message-ID: <CAMuHMdU-e-Dd+it+wgXdDpbUEuRkar2qeCPVvvp7ggg1HfPpRg@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] dt-bindings: phy: renesas,usb2-phy: Mark resets
 as required for RZ/G3S
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_064132_295576_3CACEB32 
X-CRM114-Status: GOOD (  13.59  )
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
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IFRoZSByZXNldCBsaW5lcyBhcmUgbWFuZGF0b3J5IGZv
ciB0aGUgUmVuZXNhcyBSWi9HM1MgcGxhdGZvcm0gYW5kIG11c3QgYmUKPiBleHBsaWNpdGx5IGRl
ZmluZWQgaW4gZGV2aWNlIHRyZWUuCj4KPiBGaXhlczogZjNjODQ5ODU1MTE0ICgiZHQtYmluZGlu
Z3M6IHBoeTogcmVuZXNhcyx1c2IyLXBoeTogRG9jdW1lbnQgUlovRzNTIHBoeSBiaW5kaW5ncyIp
Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJl
bmVzYXMuY29tPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNh
c0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAg
IEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBi
ZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0
aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3
aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9y
IHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0g
TGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
