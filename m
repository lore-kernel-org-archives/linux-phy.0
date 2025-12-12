Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A388AD44176
	for <linux-phy@archiver.kernel.org>; Fri, 12 Dec 2025 10:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UV7PbZHdHaWIXaSvJDnOPu7zY2qgUXRfLWMYVvnYp5E=; b=3eEpBokSOmDjxM
	85CEdWiL9pn8aerYNJCD0e1JaFsJZyFd6qH0brqZXgjmagTGAkhsoD+Oeuq2eGPaENr/zYZEcJm16
	lmi0nXMTvvTLbjXuM9Eqj3n8qG+I49Pvl2mnZjhnWqjkrgq9oRG3SOWJXpqG/52UHSq6yaUOvs+L1
	fVa2+DVYBYndnhUCvkHdDv4drmqbL/4anzPgmJgHdkm8oQYjBQv9Ql5IkP7AXaR38J8j/BFkxkGJA
	M/mbePmeSCmYapkMAfuOFK/V3SmjIX7As34P9bfVqoJsWL2yfp5Z12BV1daiAE2CsehuuHF/MdrLT
	rKCfhDX4CnhZXh5JrvRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU0rC-00000000S2T-3Qs8;
	Fri, 12 Dec 2025 10:58:42 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU0r9-00000000S24-3int
	for linux-phy@lists.infradead.org;
	Fri, 12 Dec 2025 10:58:41 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so533446f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Dec 2025 02:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765537117; x=1766141917; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqR+IQTeub3ZkC8GS6Wk65+OamU6y/VpkmKlXNe7HxQ=;
        b=ccGNiqStyUOBmnyDAfahux6hvMKGYEubWdgJgnGXwH63hqnaifMD6O2f3viRH0uNeO
         ahlCOFBsMTRzvf03Ha1XSfKE0ya49/KGfT9s0eIuqQW1quYMy03uLuJo8fwPehLXPij8
         m14sZNj5/lyMX2pyDtPz3g2o5eYhrApfY9CmknTM6yxf0sgd8GRX8ylRbTrauBYNZXUw
         SoPkgi+5VqWX+MBR7prKdc9Eo39wgcY4ZhJc40/gpHfwVc9n5Uiz4FLM3MZWVRJZBdhL
         OyTT47wNJaRyPZuY0kJEiD8YEFtqpPoyk+5YPtoAJqelSMzdMt+37SGJ+6/TtKZvjAYA
         ZB/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765537117; x=1766141917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HqR+IQTeub3ZkC8GS6Wk65+OamU6y/VpkmKlXNe7HxQ=;
        b=RCqN0cMtuEG8NftT1GLEZNc/j3hOlxpegDvMvIxqcurKcoKPXTh7pAC6OWpI44sVn5
         2ul9vMzIKtLj+qhfpgm75bQWx4dn9hjIeRAFXMACO52Pqxqd/4xnzYGTQ5kaivDLOp0z
         ROoN4dKgatE+DTkltmi5HA5llTLhhTVdJZ5lsa2daQe2DEqoQqDyNLuBnbHos8fUVNmH
         GI24iK4bCBsUKeTvbH2yIHvd/FvJuDSPvmCu8n6VwUEcMH48g7sWT7aZB/3goLRTVIzY
         Xnxd+/nNBFe4/Dw8LHJtKiA7PdJtmDinwoluN3p/SnAB08KPt/nHGQV9qONZz93phiQK
         O/lA==
X-Forwarded-Encrypted: i=1; AJvYcCXvP1jj/4Vv8gIN8bKCPj9fTvhSK+usOwLZ+a6CbaJfw3ItUIX19ddKsmJDjoLa99hUk4G5/Cq0kNs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlKNv+PWAZs2v4/z/u5KTsSBtDkEyUHji3vgCb5qTSr2NkGk0C
	5NZY1kyR/UvCaW81puUoOTTJr/E15x3/O3aSg+rdhbV35Qrs/ppTzbd0x9IlZlRK4Wn2hRKhDg5
	e5VHNHV6pLbkS+gh5mhh4jP3sPg7B2OE=
X-Gm-Gg: AY/fxX6Ni8JsVbq9Yf92nfltnfky4VZnOLB2NrPyrCruq7DOY2b535KSj5GJnQQkiMv
	NIM0sx6JOJAy1+Ls83+h7FgIgvCRLE1Nmy4SC8LIWhWdN8WbWE7rdiZZ6tOfOuE2drHjBPkdn0V
	Y/yEohRZTqn1BIqEdmAI0DH+IDY0ClZwEDrMbdYFJJfFBu1CyLh1JaYtQ4quGcCYL1vIMInNKHd
	Vr9DFMUD5GuV5wZqGyJlmnPzerBz3MHoz6UvUNQAijqPuiYUIWZhfmSNfZlFxj3RkQau5iY2HHI
	WnPv+5Y04nATiV1pxgpq249vJ3w=
X-Google-Smtp-Source: AGHT+IE+ahrc04Q/jrdoppQwasQ4J1Y0Y9w6+KHjcQu1lJlaMpy7m90wwcJKrOJXxvNDcByIW5d1baSzOlJ31jhyAq4=
X-Received: by 2002:a05:6000:186d:b0:3eb:c276:a347 with SMTP id
 ffacd0b85a97d-42fb42bb935mr1529919f8f.0.1765537117044; Fri, 12 Dec 2025
 02:58:37 -0800 (PST)
MIME-Version: 1.0
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de> <20251210-persuaded-rewire-8ac93b0cc039@spud>
In-Reply-To: <20251210-persuaded-rewire-8ac93b0cc039@spud>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 12 Dec 2025 10:58:11 +0000
X-Gm-Features: AQt7F2qVBwHpP3VeypyTa021PRhJeO9lvQ2ybqJTDVdXUznY1gpLQoN1_DLtzFc
Message-ID: <CA+V-a8sUPin=r=x6TVvyazqxwfDwW+RsnOfHaTJf1N-VpAPE7g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
To: Conor Dooley <conor@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_025839_970970_2CF0D1C7 
X-CRM114-Status: GOOD (  14.91  )
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

SGkgQ29ub3IsCgpPbiBXZWQsIERlYyAxMCwgMjAyNSBhdCA2OjIx4oCvUE0gQ29ub3IgRG9vbGV5
IDxjb25vckBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFdlZCwgRGVjIDEwLCAyMDI1IGF0IDA4
OjUyOjU4QU0gKzAxMDAsIE1hcmMgS2xlaW5lLUJ1ZGRlIHdyb3RlOgo+ID4gT24gMDkuMTIuMjAy
NSAxNjoyMToxOSwgUHJhYmhha2FyIHdyb3RlOgo+ID4gPiBGcm9tOiBMYWQgUHJhYmhha2FyIDxw
cmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+Cj4gPiA+Cj4gPiA+IERvY3Vt
ZW50IHRoZSBUSSBUQ0FOMTA0NiBhdXRvbW90aXZlIENBTiB0cmFuc2NlaXZlci4gVGhlIFRDQU4x
MDQ2IGlzIGEKPiA+ID4gZHVhbCBoaWdoLXNwZWVkIENBTiB0cmFuc2NlaXZlciB3aXRoIHNsZWVw
LW1vZGUgc3VwcG9ydCBhbmQgbm8gRU4gcGluLAo+ID4gPiBtaXJyb3JpbmcgdGhlIGJlaGF2aW91
ciBvZiB0aGUgTlhQIFRKQTEwNDgsIHdoaWNoIGFsc28gcHJvdmlkZXMgZHVhbAo+ID4gPiBjaGFu
bmVscyBhbmQgU1RCMS8yIHNsZWVwLWNvbnRyb2wgbGluZXMuCj4gPiA+Cj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2Fz
LmNvbT4KPiA+ID4gLS0tCj4gPiA+IFRDQU4gMTA0NiwgaHR0cHM6Ly93d3cudGkuY29tL2xpdC9k
cy9zeW1saW5rL3RjYW4xMDQ2di1xMS5wZGY/dHM9MTc2NTI5NzE1OTMwNyZyZWZfdXJsPWh0dHBz
JTI1M0ElMjUyRiUyNTJGd3d3LnRpLmNvbSUyNTJGcHJvZHVjdCUyNTJGVENBTjEwNDZWLVExCj4g
PiA+IE5YUCBUSkExMDQ4LCBodHRwczovL3d3dy5ueHAuY29tL2RvY3MvZW4vZGF0YS1zaGVldC9U
SkExMDQ4LnBkZgo+ID4KPiA+IFRoZSBwb2xhcml0eSBvZiB0aGUgc3RhbmRieSBsaW5lIG9mIHRo
ZSBjaGlwcyBpcyBkaWZmZXJlbnQuCj4gPgo+ID4gWW91IG11c3Qgc2V0IHRoZSBjb3JyZWN0IGFj
dGl2ZSBoaWdoL2xvdyBwcm9wZXJ0eSBmb3IgdGhlIEdQSU8sIGFzIHRoZQo+ID4gZHJpdmVyIHVz
ZXMgbG9naWNhbCBsZXZlbHMuCj4gPgo+ID4gUmV2aWV3ZWQtYnk6IE1hcmMgS2xlaW5lLUJ1ZGRl
IDxta2xAcGVuZ3V0cm9uaXguZGU+Cj4KPiBXaGF0IHlvdSdyZSBzYXlpbmcgc2VlbXMgdG8gY29u
dHJhZGljdCB0aGUgdGFnIHlvdSd2ZSBnaXZlbiwgaXMgYQo+IGZhbGxiYWNrIHJlYWxseSBzdWl0
YWJsZSBpZiB0aGUgc3RhbmRieSBwb2xhcml0eSBpcyBub3QgdGhlIHNhbWU/Cj4KT24gdGhlIFJa
L1YySCBJIGhhdmUsCgogICAgY2FuX3BoeTogY2FuLXBoeSB7CiAgICAgICAgY29tcGF0aWJsZSA9
ICJ0aSx0Y2FuMTA0NiIsICJueHAsdGphMTA0OCI7CiAgICAgICAgbWF4LWJpdHJhdGUgPSA8ODAw
MDAwMD47CiAgICAgICAgI3BoeS1jZWxscyA9IDwxPjsKICAgICAgICBzdGF0dXMgPSAib2theSI7
CiAgICAgICAgc3RhbmRieS1ncGlvcyA9IDwmcGluY3RybCBSWlYySF9HUElPKDcsIDApIEdQSU9f
QUNUSVZFX0hJR0g+LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZwaW5jdHJs
IFJaVjJIX0dQSU8oNywgMikgR1BJT19BQ1RJVkVfSElHSD47CiAgICB9OwoKV2hlbiB0aGUgQ0FO
IGludGVyZmFjZSBpcyBicm91Z2h0IHVwIDAgaXMgd3JpdHRlbiB0byBHUElPIHdoaWNoIGJyaW5n
cwp0aGUgQ0FOIHRyYW5zY2VpdmVyIHRvIE5vcm1hbCBtb2RlICBhbmQgd2hlbiB0aGUgQ0FOIGNo
aXAgaXMgYnJvdWdodApkb3duIGAxYCBpcyB3cml0dGVuIHRvIEdQSU8gYW5kIGl0IHB1dHMgdGhl
IENBTiB0cmFuc2NlaXZlciB0byBTdGFuZGJ5Cm1vZGUuIFdoaWNoIG1hdGNoZXMgdG8gdGhlIGJl
aGF2aW91ciBvZiBUQ0FOMTA0NiBDQU4gdHJhbnNjZWl2ZXIuIEFtIEkKbWlzc2luZyBzb21ldGhp
bmc/CgpDaGVlcnMsClByYWJoYWthcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
