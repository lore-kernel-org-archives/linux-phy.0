Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0386CFD376
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 10:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMLoMprtYVtsPlnql3Z4bGpEy5CnyBw7A6RhkSOOGUs=; b=ppcIBfXhwpyb2j
	O+VTJf3uulDox95j96DskzmCzSP4/9ol7XoznkYXI9/rmeeE4u7mlRswd9LHyE6kmB8EXLCZAKR3B
	2GU2Br+vdDcnYzjyNZPLAUVANaDs8bNSZulvgw6+2jcTm9xkPq1lK5oDauqYpKfQE+Fj8Av82m8jP
	U/rNEjUPadna7K0MFzLGfpx8i/VWhw4jD22EuiCFut9UwUNOELU++B4EEIvNw3UGpsQysJYzjXFkQ
	adxgVzuxVXm8aIzlgqDn0fMOb/f/Rj3FuYG/zKrOKzMjU1XEvttFlZLN31BWh6ThwBBSCpv8YvT3h
	7chEU76jlqmG+cf3r+XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw0e-00000000Jeg-3GRA;
	Fri, 28 Nov 2025 10:47:28 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw0b-00000000JeH-30ba
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 10:47:27 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5660C1A1DF7;
	Fri, 28 Nov 2025 10:47:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1CEDD60706;
	Fri, 28 Nov 2025 10:47:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 22555102F2B42;
	Fri, 28 Nov 2025 11:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764326840; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=QA+O9E/+I7l1Y72IuTGVRJzfPf9fHh+D5XTk2DIfFDc=;
	b=1mRLhoqVZFvqNGnQ4a0o1QQ3P5eDIGHSy0vaLvoOBaUpWkTcDdlSQZseeid+m/Ht4EQO87
	vjFf779BQjETm4MrhO3/en9XdklVFLxD70x/VuQHzveBdAxveP8un/eb0urBxkuDmIsrYE
	bGhigu8dreddzvkxiS5VMeI/Y1mJnGuYpIxiHP+qUVx5vTxFEst41q0jqyz1JuVUvTLeQL
	btuVBsMtSn1d1MNd7EOEaQyFM8SoZlIXOUxQZjYByxJGJSIq5tRl3RZlP1UVXyqKlv5/Q5
	kcXUbd/AJlT75ZLFhv1MUXIw2QQjLvmqhSDAIuh9iejJAjjxAT8qu1cy8tx1Yw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Vladimir
 Kondratiev
 <vladimir.kondratiev@mobileye.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, =?utf-8?Q?Beno=C3=AEt?= Monin
 <benoit.monin@bootlin.com>, Maxime
 Chevallier <maxime.chevallier@bootlin.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
In-Reply-To: <aSlxGFPP-oURLpPq@alpha.franken.de>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
 <87y0nq4hd2.fsf@BLaptop.bootlin.com> <aSlxGFPP-oURLpPq@alpha.franken.de>
Date: Fri, 28 Nov 2025 11:47:16 +0100
Message-ID: <87v7iu4eob.fsf@BLaptop.bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024725_892586_E0AB0D12 
X-CRM114-Status: GOOD (  12.96  )
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

VGhvbWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRAYWxwaGEuZnJhbmtlbi5kZT4gd3JpdGVzOgoK
PiBPbiBGcmksIE5vdiAyOCwgMjAyNSBhdCAxMDo0OToxM0FNICswMTAwLCBHcmVnb3J5IENMRU1F
TlQgd3JvdGU6Cj4+IEhlbGxvIFRob21hcywKPj4gCj4+ID4gQWRkIGJvdGggTUFDQi9HRU0gaW5z
dGFuY2VzIGZvdW5kIGluIHRoZSBNb2JpbGV5ZSBFeWVRNSBTb0MuCj4+ID4KPj4gPiBBY2tlZC1i
eTogVGhvbWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRAYWxwaGEuZnJhbmtlbi5kZT4KPj4gCj4+
IENhbiB5b3UgY29uZmlybSB0aGF0IHlvdSB3aWxsIGluY2x1ZGUgdGhpcyBwYXRjaCBhbmQgdGhl
IGZvbGxvd2luZyBvbmUKPj4gaW4geW91ciBtaXBzLW5leHQgYnJhbmNoPwo+Cj4gSSBoYXZlbid0
IHBsYW5uZWQgZG9pbmcgdGhpcy4KPgo+PiBBcyB5b3UgZ2F2ZSB5b3VyIEFja2VkLWJ5IG9uIGl0
LCBJIGJlbGlldmUgdGhpcyB3aWxsIGJlIHRoZSBjYXNlLCBidXQgSQo+PiB3YW50IHRvIGJlIHN1
cmUgdGhleSBhcmVuJ3QgZm9yZ290dGVuLgo+Cj4gdGhlICBBY2tlZC1ieSBpcyBtZWFudCBmb3Ig
aW5jbHVkaW5nIHRoZSBwYXRjaGVzIGludG8gdGhlIHRyZWUsIHdoZXJlIHRoZQo+IHJlc3Qgb2Yg
dGhpcyBzZXJpZXMgaXMgZ29pbmcgaW4uCgpIb3dldmVyLCBhY2NvcmRpbmcgdG8gdGhlIGNvdmVy
IGxldHRlciwgdGhlcmUgYXJlIG5vIGJ1aWxkIGRlcGVuZGVuY2llcwpiZXR3ZWVuIHRoZXNlIHBh
dGNoZXMgYW5kIHRoZSBkcml2ZXItcmVsYXRlZCBwYXRjaC4gRnVydGhlcm1vcmUsIHNpbmNlCml0
IGludHJvZHVjZXMgYSBuZXcgY29tcGF0aWJsZSBzdHJpbmcsIGV2ZW4gaWYgdGhlIGRyaXZlciBw
YXJ0IGlzIG5vdAp5ZXQgbWVyZ2VkLCB3ZSB3b27igJl0IGV4cGVyaWVuY2UgYW55IHJlZ3Jlc3Np
b24uIFRoZXJlZm9yZSwgSSBiZWxpZXZlIGl0CmlzIHNhZmUgdG8gbWVyZ2UgdGhlc2UgdHdvIHBh
dGNoZXMgdW5sZXNzIHlvdSBoYXZlIGFueSBjb25jZXJucyBhYm91dAp0aGVtLgoKR3JlZ29yeQoK
Pgo+IFRob21hcy4KPgo+IC0tIAo+IENyYXAgY2FuIHdvcmsuIEdpdmVuIGVub3VnaCB0aHJ1c3Qg
cGlncyB3aWxsIGZseSwgYnV0IGl0J3Mgbm90IG5lY2Vzc2FyaWx5IGEKPiBnb29kIGlkZWEuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWyBSRkMxOTI1LCAy
LjMgXQoKLS0gCkdyw6lnb3J5IENMRU1FTlQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtl
cm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
