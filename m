Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15336C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 12:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZefMfEjRhMpfJh+jPJymnJgiHUzq9ioeL0wlgqdfmk=; b=L80eiEQoAo10PS
	0drNdJeTfD0mqF/W3e34KGS7r/aOPyCSs2bjMRq6feq1NN/xfn0cV79eXJmDGRRISUeTUtz2pfDK5
	Z8Qn9NVUuh2rLXTbX4f653jvJ6LwpBWKL/Thg5gdyzDpEg3DMPswS58p/k7lAbB4VV5NzuYnR/twX
	Q2IKbqP1w8hSJByIfHMALdXENYKvqp61XvFy+d2wtfEs8NecYa+OHDmR3TH0r2OGrknyBqwullNbG
	UaT5KWiHn8M1/+QtrGbsK3JsNcDCV92+T6CHSBNORJPbINp5SACm5wFwEklsq8DpYZJVCoj/2nykR
	YMManZH3jeJHu/LjVrEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu80T-0000000GBZP-3CIn;
	Wed, 12 Aug 2026 12:24:29 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu80Q-0000000GBXz-445D
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 12:24:28 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-69fdfd98eb8so106223a12.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 05:24:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786537464; cv=none;
        d=google.com; s=arc-20260327;
        b=Y69PewC0+2fQ6DVqBom88pd7Rmt7gyqNvMHDG3NfIcNT4fk/glhdA3Ft/gmjkhdL4T
         AKkO2lNO6tWku5m9iBKZ2iIbVv4NicZRyLuxsHGcOk+C7mGAwqT3MQn4yPaGzYYkYQ4o
         3d6fsHT9fDoM7Lx0yfNNLLlZWuu4iFpwQHZjWyMR/Kyg/bMQN0/RbSQOWD7oc6ARHFmP
         FtwP6lqh3n/2Cw8ElaTeTO7a9Y1q/JK5liybmKdcWQIgdjp3NU0vYcjUc/HWSGRlNcKS
         c1Z5lFDDrvKqVqbo4TBoJYO/7Jiv6IIbtYcztMEvXeG8KPEYPDPml86H7rTaMqj8YbVF
         J2Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        fh=6cioElpoKy70S817wkKom5ovUmBnvUrkF5bfDINwu6A=;
        b=c6/3qLO72uDFhaVRz7Z/uZmArzpWWDThKXveEZjpXikiEk5eseJFrpMYAPcKUBc3Xx
         zAbMGnW9cFw8yDHV+U6/Z01COn0R1cUBx3vBrY2gb+14IrGNl0/t2tBdUlpJ0QatqIwc
         dh/D+40XMBsdzcd+NPWuPiL9ZvYT9XqV9grXD7LR/IaGNdZ61+fi8/Jc3p+Mf7O7O1vX
         3mi1zXBSsLjp2KsMteUfmTazHoVimNhTIr4ej92Wog475d+hFjB01NxR5G1SCmEI6wHa
         5fZYbTfHYgkGyj6c/fLEGChWFu8padfrXHBZqIn0MaIBryNpm8ith0zEOb6DIn5L7+bI
         jdVA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786537464; x=1787142264; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        b=PtvKqZnb9o8XoDZNysagzjOYIWXibMhv0p1q6ZCe54aXLkyLEWfl3MJRKR/rWajWud
         V3zKxfeR3g4w+JLAE0PC4X6J9hpM71ORWS5S9TGUcdV28WS/MYD+Rwj2yGjkcXf76Ave
         LSZyvp5ywjyUSqaqTCIw43dCHkTq0vZ3o1hFg3HUa5PRkSBNMZ8q9wTviYI2W8y+6h1l
         YxzhzcPqQL7j2rQts9mEEpJlAOXRO8l/U87Gmy4spSmWeCJGAO6qigNOM3z+Dm4jpXq6
         nJ4veKYGYrsZqnrKmFXFIlJ0q8iwEmESDSwqYcYWaWd5UdBT0ldKarcluJ//MQQJwwiu
         O6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786537464; x=1787142264;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        b=ihoiKT6Wa7g2K+idP/F6roqTRN+LhrIY1viSzWL1H4Wlb7WaBdePDr9hpSKezekvfZ
         hNKbIbu6CPm2r2y45qxnKdkcyw+QMhz/JxgfvjnGF8SaQ7bJO7gsQ5UctZ24aWZYPylp
         LdeCEpzfHmu2wNpNkWYhCtDGZagHlC1o2BBsBaBoTM3YqdDD+BjdwpceR0/SZT39mxaW
         Lm/gb3DJG4L3EvecEdLAKofnMTLn/vXLSjpn/ZCmaHXvMG1ngm1emyBUVc6oBIwoT/FH
         G+k6VK9Np04aM5MfkspDCeVByYiLXbZT/IYYg/m+sOR831cTl0XaOfor+b0m3I0oRGBE
         k3EA==
X-Forwarded-Encrypted: i=1; AHgh+Ro3DkIzDIGAoDPa72Kxh13IuaO/vSADptQL+n0MEeuE4VbVe9XBJmgoRlzQTicE6VDhmZpKIQGx/Nw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8kN+646/LQvZA8vRFfF2VNnI+Pk/PK38IcPUaJY6W86RZZ7Jk
	f1axbaHn3jsFfPMLj0fCWYPB1/tbL6UXdOp25Tn0mJlGMluJ7zsX/GJr+L5waKaEW5ShXKw4xDW
	gCLwg7+9RGLrvJ76ZZ50ZvWFg2PszUSQ=
X-Gm-Gg: AR+sD11UCwbQFlgazH2fAE6KS4N7PNRSqmv+SMrHOVcLgSuYCSXLypOofG1CuTZtuw5
	uyS6xCUKERO8LwE8GuTXkfvzz/+XI5CjQTQ7l7aP+l/kHVswumIrZCAksxFfebII+YnYlCqmzyw
	tCkgo1cA64JB25wYzCHnu/0bbFTEodr+vytOXd6LuTVPnyidsLbfSI1ExvpVxb4OWIh4oSPJOmE
	ZqwdFxEShDnpmSES84ll1a7TENxEBcHaWDbGloBpWg2XWNw4xxr0iZYw+Od/6qd5uL7P2c+Zf4R
	LmGXB0K/oR3tSkYOdaPWkRHYTLk6T0SJmkw3RwzqZsaGmg==
X-Received: by 2002:a05:6402:5515:b0:6a3:72bc:7bca with SMTP id
 4fb4d7f45d1cf-6a375f517b5mr853527a12.3.1786537463007; Wed, 12 Aug 2026
 05:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com> <20260812-refreshing-rampant-gecko-b38ef9@quoll>
In-Reply-To: <20260812-refreshing-rampant-gecko-b38ef9@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Wed, 12 Aug 2026 20:24:11 +0800
X-Gm-Features: AUfX_mz6P0tpS0X_aTP21idLy0_k0ZDj4Fov-0axes74Vj1me73dhQSiZbhCnY0
Message-ID: <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_052427_039362_0B6F6663 
X-CRM114-Status: GOOD (  28.10  )
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

VGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBJIHJlYWQgYWJvdmUsIGJ1dCBzdGlsbCBkbyBub3Qg
Z2V0IHdoeSBUWVBFX0RQSFkvQ1BIWSBpcyBub3QgZW5vdWdoLgo+IElzbid0IERQSFkgaW1wbHlp
bmcgaXQgaXMgRFNJPwoKSSBzZWUgeW91ciBwb2ludCwgYW5kIEkgZGlkIG5vdCBleHBsYWluIHRo
aXMgY2xlYXJseSBlbm91Z2ggaW4gdGhlIHByZXZpb3VzCnZlcnNpb24uCgpELVBIWSBvbmx5IGRl
c2NyaWJlcyB0aGUgZWxlY3RyaWNhbCBsYXllciwgYW5kIGJvdGggTUlQSSBEU0kgYW5kIE1JUEkg
Q1NJLTIKY2FuIHJ1biBvbiB0b3Agb2YgaXQuIEEgQ1NJLTIgcmVjZWl2ZXIncyBQSFkgaXMgYSBE
LVBIWSBqdXN0IGFzIG11Y2ggYXMgYQpEU0kgdHJhbnNtaXR0ZXIncyBpcywgc28gUEhZX1RZUEVf
RFBIWSBhbG9uZSBkb2VzIG5vdCB0ZWxsIHVzIHdoaWNoIG9uZSB0aGUKY29uc3VtZXIgaXMgYXNr
aW5nIGZvci4KClRoYXQgaXMgdGhlIHByb2JsZW0gaGVyZS4gVGhlIFJLMzU4OCBEQy1QSFkgZXhw
b3NlcyBib3RoIGEgdHJhbnNtaXR0ZXIgYW5kCmEgcmVjZWl2ZXIgZnJvbSBhIHNpbmdsZSBQSFkg
YmxvY2ssIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IHR3byBpbmRlcGVuZGVudApjb25zdW1lcnMgYXQg
dGhlIHNhbWUgdGltZS4gVGhpcyBpcyBub3QgYSB0aGVvcmV0aWNhbCBjb25jZXJuOiBvbiB0aGlz
CmJvYXJkIGEgRFNJIHBhbmVsIGlzIHNjYW5uaW5nIG91dCB3aGlsZSB0aGUgc2FtZSBQSFkgcmVj
ZWl2ZXMgQ1NJLTIgZnJhbWVzCmZyb20gYSBjYW1lcmEuIFdpdGggb25seSB0aGUgZWxlY3RyaWNh
bCBsYXllciB0byBpZGVudGlmeSB0aGUgUEhZLCBib3RoCmNvbnN1bWVycyB3b3VsZCBlbmQgdXAg
d2l0aCB0aGUgc2FtZSBwaGFuZGxlIGNlbGw6Cgpkc2lAZmRlMjAwMDAgewpwaHlzID0gPCZtaXBp
ZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0aGUgVFggKi8KfTsKCmNzaTJAZmRkMTAw
MDAgewpwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0aGUgUlgg
Ki8KfTsKClRoZXJlIGlzIHRoZW4gbm90aGluZyBpbiAub2ZfeGxhdGUoKSB0byBkaXN0aW5ndWlz
aCB0aGUgdHdvIHJlcXVlc3RzLgoKSSB3aWxsIG1ha2UgdGhpcyBjbGVhcmVyIGluIHRoZSB2NCBj
b21taXQgbWVzc2FnZSBhbmQgaW5jbHVkZSB0aGUgZXhhbXBsZQphYm92ZSBzbyB0aGF0IHRoZSBy
ZWFzb25pbmcgaXMgZWFzaWVyIHRvIGZvbGxvdy4KCkZvciBjb250ZXh0LCB2MiBkZXNjcmliZWQg
dGhlIGRpcmVjdGlvbiB3aXRoIGEgUm9ja2NoaXAtcHJpdmF0ZQpSS19EQ1BIWV9ESVJfKiBlbnVt
LiBNaWNoYWVsIFJpZXNjaCBzdWdnZXN0ZWQgdXNpbmcgZ2VuZXJpYyBjb25zdGFudHMKaW5zdGVh
ZCBbMV0sIGFuZCBWaW5vZCBhZ3JlZWQgWzJdLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvODJkYTM2MjItOWMzYS00NTRjLTg3YmMtZmI0ZWM3YWRiNjhkQGNvbGxhYm9yYS5jb20KWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvYW5TdXhmZWl0U3FtU0hOckB2YW1hbgoKPiBZb3Vy
IHRhZyBnb2VzIHRoZSBsYXN0LgoKU3VyZSwgSSB3aWxsIGZpeCB0aGlzIGluIHY0LiBUaGUgU2ln
bmVkLW9mZi1ieSB0YWcgd2lsbCBjb21lIGxhc3QsIGFuZCBJCndpbGwgY2hlY2sgdGhlIHdob2xl
IHNlcmllcyBhZ2Fpbi4KCj4gVHdvIHNpbXBsZSBkZWZpbmVzIG5lZWRlZCBDbGF1ZGUuCgpZZXMs
IEkgYWdyZWUgdGhhdCB0aGVzZSB0d28gZGVmaW5lcyB0aGVtc2VsdmVzIGFyZSBzaW1wbGUgYW5k
IGRvIG5vdCByZWFsbHkKbmVlZCBBSSBhc3Npc3RhbmNlLgoKSSBhZGRlZCB0aGUgQXNzaXN0ZWQt
YnkgdGFnIGJlY2F1c2UgSSB1c2VkIEFJIGR1cmluZyB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlCnNl
cmllcyBhcyBhIHdob2xlLCBpbmNsdWRpbmcgY3Jvc3MtY2hlY2tpbmcgdGhlIGNvZGUsIHdyaXRp
bmcgYWRkaXRpb25hbAp0ZXN0IGNhc2VzLCBhbmQgbG9va2luZyB1cCB0aGUgcmVsZXZhbnQgc2Vj
dGlvbnMgb2YgdGhlIFRSTS4gKEkgY2hlY2tlZCB0aGUKY29ycmVzcG9uZGluZyBzZWN0aW9ucyBp
biB0aGUgVFJNIG15c2VsZiwgcmV2aWV3ZWQgdGhlIHRlc3QgY2FzZXMsIGFuZApyZS1yYW4gdGhl
bSBvbiB0aGUgaGFyZHdhcmUgYmVmb3JlIHNlbmRpbmcgdGhlIHNlcmllcy4pCgpJIGFsc28gY2hl
Y2tlZCB0aGUgY3VycmVudCBtYWlubGluZSBndWlkYW5jZSBpbgpEb2N1bWVudGF0aW9uL3Byb2Nl
c3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCBhbmQKRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGlu
Zy1hc3Npc3RhbnRzLnJzdC4gU2luY2UgSSB3YXMgbm90IHN1cmUgaG93IG11Y2gKQUkgaW52b2x2
ZW1lbnQgc2hvdWxkIHdhcnJhbnQgdGFnZ2luZyBpbmRpdmlkdWFsIHBhdGNoZXMsIEkgY2hvc2Ug
dG8gbWFyawp0aGUgd2hvbGUgc2VyaWVzIGNvbnNpc3RlbnRseS4KClRoYXQgc2FpZCwgSSBhbSBo
YXBweSB0byBkcm9wIHRoZSB0YWcgZnJvbSB0aGlzIHBhdGNoIGluIHY0IGlmIHlvdSBwcmVmZXIg
LQpJIHdyb3RlIHRoZXNlIHR3byBsaW5lcyBteXNlbGYuCgpUaGFua3MsCkphc29uCgoKS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiDmlrwgMjAyNuW5tDjmnIgxMuaXpemAseS4
iSDkuIvljYg2OjUx5a+r6YGT77yaCj4KPiBPbiBNb24sIEF1ZyAxMCwgMjAyNiBhdCAwODoxMDow
OVBNICswODAwLCBKYXNvbiBZYW5nIHdyb3RlOgo+ID4gTUlQSSBELVBIWSBhbmQgQy1QSFkgYmxv
Y2tzIGFyZSBpbmNyZWFzaW5nbHkgZGlyZWN0aW9uLWFnbm9zdGljOiB0aGUKPiA+IHNhbWUgUEhZ
IElQIGNhbiBkcml2ZSBhIE1JUEkgRFNJIGRpc3BsYXkgb3IgcmVjZWl2ZSBmcm9tIGEgTUlQSSBD
U0ktMgo+ID4gY2FtZXJhLCBhbmQgY29tYm8gYmxvY2tzIGxpa2UgdGhlIFNhbXN1bmcgSVAgb24g
UkszNTg4IGV4cG9zZSBib3RoCj4gPiBkaXJlY3Rpb25zIHRvIGluZGVwZW5kZW50IGNvbnN1bWVy
cyBhdCB0aGUgc2FtZSB0aW1lLiBBIGJpbmRpbmcgdGhhdAo+ID4gbmVlZHMgdG8gdGVsbCB0aGUg
dHdvIGNvbnN1bWVycyBhcGFydCBoYXMgbm90aGluZyBnZW5lcmljIHRvIHJlYWNoCj4gPiBmb3I6
IG1vc3QgY29uc3RhbnRzIGluIHRoaXMgaGVhZGVyIG5hbWUgYSBwcm90b2NvbCAoUEhZX1RZUEVf
VVNCMywKPiA+IFBIWV9UWVBFX0RQLCAuLi4pLCB3aGlsZSB0aGUgTUlQSSBlbnRyaWVzIG5hbWUg
b25seSB0aGUgZWxlY3RyaWNhbAo+ID4gbGF5ZXIuCj4gPgo+ID4gQWRkIFBIWV9UWVBFX0RTSSBh
bmQgUEhZX1RZUEVfQ1NJIHRvIHNlbGVjdCBhIFBIWSBieSB0aGUgTUlQSQo+ID4gcHJvdG9jb2wg
aXQgc3BlYWtzLCB3aGljaCBhbHNvIGltcGxpZXMgdGhlIGRpcmVjdGlvbi4gVGhleSBkbyBub3QK
PiA+IHJlcGxhY2UgUEhZX1RZUEVfRFBIWS9QSFlfVFlQRV9DUEhZLCB3aGljaCByZW1haW4gdGhl
IHJpZ2h0IGNob2ljZQo+ID4gd2hlcmUgdGhlIGNlbGwgc2VsZWN0cyB0aGUgZWxlY3RyaWNhbCBs
YXllci4gRmlyc3QgdXNlciBpcyB0aGUKPiA+IFJvY2tjaGlwIFJLMzU4OCBNSVBJIERDLVBIWSBi
aW5kaW5nLgo+Cj4gSSByZWFkIGFib3ZlLCBidXQgc3RpbGwgZG8gbm90IGdldCB3aHkgVFlQRV9E
UEhZL0NQSFkgaXMgbm90IGVub3VnaC4KPiBJc24ndCBEUEhZIGltcGx5aW5nIGl0IGlzIERTST8K
Pgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNv
bGxhYm9yYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdt
YWlsLmNvbT4KPgo+IFlvdXIgdGFnIGdvZXMgdGhlIGxhc3QuCj4KPiA+IEFzc2lzdGVkLWJ5OiBD
bGF1ZGU6Y2xhdWRlLWZhYmxlLTUKPgo+IFR3byBzaW1wbGUgZGVmaW5lcyBuZWVkZWQgQ2xhdWRl
LiBHcmVhdCwgdGhhdCBwcm9iYWJseSBtYWtlcyBBSQo+IGNvbmdsb21lcmF0ZXMgdmVyeSBoYXBw
eSB0aGF0IHdlIGRvIG5vdCB0eXBlIGV2ZW4gdHdvIGxpbmVzIGFueW1vcmUgYW5kCj4gbmVlZCB0
aGVpciByZXNvdXJjZS1odW5ncnkgZGF0YSBjZW50ZXJzIHRvIGRvIHRoYXQgZm9yIHVzLgo+Cj4g
QmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
