Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EFAEC5321D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 00:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Duygd4KRduMoMb1f6rTyv5tM4RU49PM+yW6dvaz0vk=; b=gX3FelOM5RouMf
	8OsSZg96OHF2SEP2rCwZAaSA2pww4YIoWAh1bkBFj7bf9vPNJS+BaQMRNTxS44mFSA1sjBVzEEDMW
	N9mKgt8jqh3pnkPu2dt4L9EEv02+TKgoQnW7OfiC4j5QT0PSuJhcIHbJ7AZ9J9SWLOuVV5b5KfLr+
	jQ1zm/uDFxS0hyg4bneu+lFzTgTgtxCykJiSpjH6l8EojJ2sC9rcqb6RVfb/V4HUhToE9CcPb+5jj
	xk6begBFqr4QgPCVasePcxMNmgS0SYs4059wFl1r3j+HJXgctduumOUY0kL+PzWuujLG96ca85R20
	/Z0EgyyCZoVTAoKIBpvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sik2s-00000009DsX-3tIx;
	Tue, 27 Aug 2024 00:26:50 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sik25-00000009DkP-3Cef;
	Tue, 27 Aug 2024 00:26:03 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2d3bae081efso3859214a91.1;
        Mon, 26 Aug 2024 17:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724718360; x=1725323160; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UMuK4QV7muDMO7BeRVXLHq2wn2REnj0hYpjl+5UTMFw=;
        b=SEqRtOSfN2JzUN1G3+XPodDNWqtJa/T9lte247JDx6sdsbKoHAtoKhz1oUJnwpiqij
         8ZPfu6dq6poCCOECIvBgYzl5CX0N5XgT4d2MUKABWilqsyYsP6KKWooC+31JV0SLCYAY
         UkKZJEgdwsGF33cHevjIQhiK+5/lXow102MFhg9Q48Yhad7GxJr53nCVtAeUbAOE6D/U
         zVkVRPYTk0zTsW00N0WrnkLvXhUGAl+/D+9CjgYH8Y16kp5DT6EBJ5XdN939Ltzi4ewX
         DIYcCRKu2YL8r+HpRsve7+Blv4avcHjaMDJMxWmM70FadyQh0bfqoZGtK5u7Tht7W/O8
         I2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724718360; x=1725323160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UMuK4QV7muDMO7BeRVXLHq2wn2REnj0hYpjl+5UTMFw=;
        b=SFpvc1vetRTE0yZ36ZLPhXgXJfNQDOMORjfogm9twwD9cEfb36gFzpXR0ffMdXWFU0
         4F8qFxgeZQlABlHrGFG17OstvF7xjeDAshU+sO6mGfxd9TBOj37SWSzPrya1q/oVNuGz
         kjF6rP9Rof291oQLPpwrhAkipnWnm8FPFQuzrS53W6w1nEiRwrnXOXp3TY5P9mt/sE9u
         WQa7Z4+L30eCce1ahC94K7yyt2g6nQ40ZHn+YOAlJotM08RfG2+aoEu512kTWnR7IRI/
         H52ierY3lXSK74abW6I3O5BtCHrud1PgG1irrCib7b3O1p/eKodlhuW3e0zRf/wwXsRd
         t13w==
X-Forwarded-Encrypted: i=1; AJvYcCUmNiEXL1lhUEK4/9TqDOPty28YYevt26vuLiHgJ6GZ/iQrFxnQuOJOZb1C+XdemWTlKM3+dDAdPRA+EhDix4Rd@lists.infradead.org, AJvYcCX9HiB+qOVd1cgpQ0c4rpUBW7Q04LMNyVBoGD2Epwq3jy3ZNuGnRnvS2Vzgqn14C1j0Ep4/I9L/biKJ@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7GA1cdR69iqxYeuQ5xw+pBkS/J6KymYX7DGzsw5ot5opgc9VV
	t/LUVGLf+UCfl96WWZqVMTu49lYnKvUdp+UlIkYkdGwxOb1qfz7odeWMzP8dl8UApHueSj2qR3Q
	PByu0t98Xtb5sJg7wHAiTb84o9wU=
X-Google-Smtp-Source: AGHT+IF9ukgQuMvAr/GjcVBuxn1oYZRmrYIyg5G2T1pM3qcAaFAE5umL+maJA4tmjtlrYSAjwgQ9CQ+7oxLU/YQYR/k=
X-Received: by 2002:a17:90b:3804:b0:2c8:53be:fa21 with SMTP id
 98e67ed59e1d1-2d646d382b4mr14410300a91.34.1724718360295; Mon, 26 Aug 2024
 17:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com> <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de> <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
 <ZsVluV50NvuGGHFX@atmark-techno.com> <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
 <CAHCN7xKgpqfRf_2p1z5NyKiOYubbcDA7YE5ML8G56pVmcV+1xA@mail.gmail.com>
In-Reply-To: <CAHCN7xKgpqfRf_2p1z5NyKiOYubbcDA7YE5ML8G56pVmcV+1xA@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 26 Aug 2024 19:25:48 -0500
Message-ID: <CAHCN7x+HgasGG_v-PdtmRszhJn5odHzfV6ddeeT10_1yCOS+DQ@mail.gmail.com>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP
 DWC HDMI)
To: Dominique MARTINET <dominique.martinet@atmark-techno.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_172601_834410_1F3E0124 
X-CRM114-Status: GOOD (  64.77  )
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

T24gV2VkLCBBdWcgMjEsIDIwMjQgYXQgODo1OeKAr1BNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDIxLCAyMDI0IGF0IDc6NDXigK9BTSBBZGFt
IEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlLCBBdWcgMjAs
IDIwMjQgYXQgMTA6NTjigK9QTSBEb21pbmlxdWUgTUFSVElORVQKPiA+IDxkb21pbmlxdWUubWFy
dGluZXRAYXRtYXJrLXRlY2huby5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBBZGFtIEZvcmQgd3Jv
dGUgb24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgMDk6NDk6MDNQTSAtMDUwMDoKPiA+ID4gPiA+ID4g
SG93ZXZlciwgdGhpcyBjaGVjayBpcyBhIGJpdCBvdmVyY2F1dGlvdXMgaW4gdGhhdCBpdCBvbmx5
IGFsbG93cyBleGFjdAo+ID4gPiA+ID4gPiByYXRlIG1hdGNoZXMuIElJUkMgSERNSSBhbGxvd3Mg
YSByYXRlIG1pc21hdGNoIG9mICstIDAuNSUsIHNvIHRoaXMKPiA+ID4gPiA+ID4gY2hlY2sgY291
bGQgYmUgcmVsYXhlZCBxdWl0ZSBhIGJpdCB0byBhbGxvdyBmb3IgdGhhdC4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiBJIGNoZWNrZWQgd2l0aCBhIDEwODBwIGRpc3BsYXkgdGhhdCByZXBvcnRzIDIzIHBv
c3NpYmxlIG1vZGVzIHZpYSBFRElELgo+ID4gPiA+ID4gT3V0IG9mIHRoZXNlIDE1IGFyZSBhY2Nl
cHRlZCBieSB0aGUgZHJpdmVyIHdpdGggdGhlIHN0cmljdCBjaGVjay4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBUd28gbW9yZSB3b3VsZCBiZSBhY2NlcHRlZCB3aXRoIGEgcmVsYXhlZCBjaGVjayB0aGF0
IGFsbG93cyBhIDAuNSUgbWFyZ2luLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEZvciB0aGUgcmVtYWlu
aW5nIHNpeCBtb2RlcywgdGhlIHBpeGVsIGNsb2NrIHdvdWxkIGRldmlhdGUgdXAgdG8gfjUlCj4g
PiA+ID4gPiBmcm9tIHdoYXQgdGhlIGRpc3BsYXkgZXhwZWN0cy4gU3RpbGwsIGlmIEkgcmVtb3Zl
IHRoZSBjaGVjayBhbHRvZ2V0aGVyLAo+ID4gPiA+ID4gYWxsIDIzIG1vZGVzIHNlZW0gdG8gd29y
ayBqdXN0IGZpbmUuCj4gPiA+Cj4gPiA+IEkgY2FuIGNvbmZpcm0gdGhlIGRpc3BsYXlzIEkgdGVz
dGVkIGFsc28gc2VlbSBwcmV0dHkgdG9sZXJhbnQgaW4KPiA+ID4gcHJhY3RpY2UgKHVwIHRvIH4z
LTQlIGF0IGxlYXN0KSwgYnV0IEkgYWdyZWUgd2l0aCBMdWNhcyB0aGF0IHRoaXMgaXNuJ3QKPiA+
ID4gc29tZXRoaW5nIHdlIGNhbiByZWx5IG9uIGZvciBhIGdlbmVyYWwgcHVycG9zZSBkcml2ZXIg
YXMgaGF2aW5nIGV4YW1wbGVzCj4gPiA+IG9mIHRoaW5ncyBiZWluZyB0b2xlcmFudCBkb2Vzbid0
IG1lYW4gYWxsIGhhcmR3YXJlIHdpbGwgYmUgYXMgZmxleGlibGUuLgo+ID4gPgo+ID4gPiA+ID4g
SSdkIHJlYWxseSBsaWtlIHRvIGJlIGFibGUgdG8gYWRkIG1vcmUgUEhZIFBMTCBzZXRwb2ludHMg
Zm9yIGRpc3BsYXlzCj4gPiA+ID4gPiB0aGF0IHVzZSBub24tQ0VBLTg2MSBtb2Rlcy4gVW5mb3J0
dW5hdGVseSBJIGRpZG4ndCBtYW5hZ2UgdG8gZmlndXJlIG91dAo+ID4gPiA+ID4gdGhlIGZyYWN0
aW9uYWwtbiBQTEwgcGFyYW1ldGVyIGNhbGN1bGF0aW9uIHNvIGZhci4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBUaGUgaS5NWDhNUCBSZWZlcmVuY2UgTWFudWFsIHByb3ZpZGVzIGZvcm11bGFzIHRvIGNh
bGN1bGF0ZSB0aGUKPiA+ID4gPiA+IHBhcmFtZXRlcnMgYmFzZWQgb24gdGhlIHJlZ2lzdGVyIHZh
bHVlcyBhbmQgSSB0cmllZCB0byBtYWtlIHNlbnNlIG9mIGl0Cj4gPiA+ID4gPiB1c2luZyB0aGUg
ZXhpc3RpbmcgcmVnaXN0ZXIgdmFsdWVzIGluIHRoZSBkcml2ZXIuIEJ1dCBzb21laG93IGl0IGRv
ZXNuJ3QKPiA+ID4gPiA+IGFkZCB1cCBmb3IgbWUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gTHVjYXMs
IGRpZCB5b3UgYWxyZWFkeSB3b3JrIHdpdGggdGhlIFBMTCBwYXJhbWV0ZXJzPyBCeSBhbnkgY2hh
bmNlLCBkbwo+ID4gPiA+ID4geW91IG5vdyBob3cgdGhlIG1hdGggYmVoaW5kIHRoZW0gd29ya3M/
Cj4gPiA+ID4KPiA+ID4gPiBJIHNwZW50IGEgbGl0dGxlIHRpbWUgdHJ5aW5nIHRvIHVuZGVyc3Rh
bmQgaXQgYSBiaXQuICBJIGNyZWF0ZWQgYSBQTVMKPiA+ID4gPiBjYWxjdWxhdG9yIHNpbWlsYXIg
dG8gdGhlIG9uZSB1c2VkIG9uIHRoZSBEU0kgY29udHJvbGxlciwKPiA+ID4KPiA+ID4gR3JlYXQh
IEknbGwgYWRtaXQgdGhpcyBhbHNvIGZsaWVzIG92ZXIgbXkgaGVhZCBhbmQgSSBkb24ndCBoYXZl
IHRoZQo+ID4gPiB0aW1lIHRvIHN0dWR5IHRoaXMsIHNvIHRoaXMgaXMgbXVjaCBhcHByZWNpYXRl
ZC4KPiA+ID4KPiA+ID4gPiBleGNlcHQgdGhhdAo+ID4gPiA+IHRoZSBNIHNlZW1zIHRvIGJlIGZp
eGVkIGF0IGEgdmFsdWUgb2YgNjIgcGVyIHRoZSBkYXRhIHNoZWV0LCBzbyBpdCdzCj4gPiA+ID4g
bW9yZSBvZiBhIFBTIGNhbGN1bGF0b3IuCj4gPiA+Cj4gPiA+IEhtbS4uLiBQSFlfUkVHMiBpbiB0
aGUgZGF0YXNoZWV0IG9ubHkgbGlzdHMgJzAwMTFfMTExMGIgLSA2MicgYXMKPiA+ID4gZXhhbXBs
ZSg/KSB2YWx1ZXMsIGJ1dCBpdCBkb2Vzbid0IHNheSBvdGhlciB2YWx1ZXMgYXJlIHJlc2VydmVk
IGVpdGhlciwKPiA+ID4gSSdtIG5vdCBzdXJlIHdoYXQgdG8gbWFrZSBvZiBpdC4KPiA+ID4gSW4g
dGhlIGN1cnJlbnQgZHJpdmVyIFBIWV9SRUdfMDIgKGRyaXZlciBtYWNybykgaXMgYXNzaWduZWQg
dGhlIGZpcnN0Cj4gPiA+IGZpZWxkIG9mIC5wbGxfZGl2X3JlZ3MsIHdoaWNoIGdvZXMgYW55d2hl
cmUgZnJvbSAweDRiIHRvIDB4N2IgLS0gcHJldHR5Cj4gPiA+IGZhciBmcm9tIDYyKDB4M2UpLi4u
Cj4gPgo+ID4gT0suICBJIHdpbGwgZXhwZXJpbWVudCB3aXRoIGluY3JlYXNpbmcgdGhlIHJhbmdl
IG9mIE0gZnJvbSBiZWluZyBmaXhlZAo+ID4gYXQgM2UgdG8gYSByYW5nZSBvZiAzYiB0byA3YiB0
byBzZWUgaWYgbXkgUE1TIGludGVnZXIgY2FsY3VsYXRvciBjYW4KPiA+IGdldCBtb3JlIGFjY3Vy
YXRlLgo+ID4KPiA+ID4KPiA+ID4gU2luY2Ugb3RoZXIgZnJlcXVlbmNpZXMgaGF2ZSBiZWVuIGFk
anVzdGluZyB0aGlzIG1haW4gZGl2aXNlciByYXRpbyB3ZQo+ID4gPiBhY3R1YWxseSB0cmllZCBj
b3B5aW5nIG5laWdoYm9yaW5nIHZhbHVlcyBhbmQgYWRqdXN0aW5nIG9ubHkgdGhhdCByZWcgMgo+
ID4gPiAoc28gdGhlIE0gaWYgSSBnZXQgdGhpcyByaWdodD8pLCBidXQgdGhlIGVuZCByZXN1bHQg
ZW5kZWQgdXAgbm90Cj4gPiA+IHN5bmNocm9uaXppbmcgcHJvcGVybHkgZXZlcnkgdGltZS4uLiBX
ZSBkaWRuJ3QgaGF2ZSB0aW1lIHRvIGNoZWNrIHdpdGggYQo+ID4gPiBzY29wZSBpZiB0aGUgZ2Vu
ZXJhdGVkIHNpZ25hbCB3YXMgdWdseSBvciBpZiBpdCBqdXN0IGRpZG4ndCBsb2NrCj4gPiA+IHBy
b3Blcmx5LCBidXQgdGhlIGRpc3BsYXkgd29ya2VkIHdoZW4gd2UganVzdCByZS11c2VkIHRoZSBu
ZWlnaGJvcmluZwo+ID4gPiB2YWx1ZXMgd2l0aG91dCBjaGFuZ2luZyBhbnl0aGluZyBkZXNwaXRl
IGJlaW5nIH4zLTQlIG9mZiwgc28gd2UgdG9vayB0aGUKPiA+ID4gZWFzeSB3YXkgb3V0IGhlcmUg
YW5kIGRpZG4ndCBkaWcgbXVjaCBmdXJ0aGVyLgo+ID4gPgo+ID4gPiA+IEFueXdheSwgV2hlbiBJ
IHJ1biBteSBQLVMgY2FsY3VsYXRvciB0byBnZW5lcmF0ZSB0aGUgJ2Jlc3QgcmF0ZScgSSBnZXQK
PiA+ID4gPiBhIHZhbHVlIHRoYXQncyB1c3VhbGx5IDAuMiUgdmFyaWFuY2UgZnJvbSBub21pbmFs
LCBidXQgSSBvbmx5IHZlcmlmaWVkCj4gPiA+ID4gYSBoYW5kZnVsIG9mIHZhbHVlczoKPiA+ID4g
Pgo+ID4gPiA+IFNldmVyYWwgd2hpY2ggd2VyZSArMC4yJQo+ID4gPiA+IDI5NzYwMDAwMCB2cyAy
OTcwMDAwMDAgKDRrQDMwKQo+ID4gPiA+IDE0ODgwMDAwMCB2cyAxNDg1MDAwMDAgKDEwODBwNjAp
Cj4gPiA+ID4gNzQ0MDAgdnMgNzQyMDAKPiA+ID4gPgo+ID4gPiA+IE9uZSB2YWx1ZSB3YXMgLTAu
MTYlCj4gPiA+ID4gMjQ4MDAwMDAgdnMgMjUyMDAwMDAKPiA+ID4gPgo+ID4gPiA+IElmIHRoZSBN
IHZhbHVlIHdhcyBhIGJpdCBtb3JlIGZsZXhpYmxlLCB3ZSBtaWdodCBiZSBhYmxlIHRvIHJlZHVj
ZQo+ID4gPiA+IHRoYXQgdmFyaWFuY2UgbW9yZS4KPiA+ID4KPiA+ID4gWWVzLCBJIHRoaW5rIHRo
ZSBNIHZhbHVlIGNvdWxkIGJlIG1vcmUgZmxleGlibGUsIGJ1dCB0aGF0J2QgcmVxdWlyZQo+ID4g
PiBjaGVja2luZyBpZiBpdCBhY3R1YWxseSB3b3Jrcywgd2hlcmVhcyBoYXZpbmcgc2xpZ2h0bHkg
b2ZmIGZyZXF1ZW5jaWVzCj4gPiA+IHdpbGwgbW9zdCBsaWtlbHkgYmUgT0sgc28gSSBkb24ndCB0
aGluayBpdCdzIHdvcnRoIHRoZSBlZmZvcnQgLS0gaGFwcHkKPiA+ID4gdG8gc3RpY2sgdG8gd2hh
dCB0aGUgZGF0YXNoZWV0IGRlc2NyaWJlcy4KPiA+ID4KPiA+ID4gPiBJZiAvIHdoZW4gSSBnZXQg
c29tZSB0aW1lLCBJIG1pZ2h0IHBsYXkgd2l0aCB0cnlpbmcgdG8gZGlzYWJsZSB0aGUKPiA+ID4g
PiBmcmFjdGlvbmFsIG1vZGUgYW5kIGp1c3QgdXNlIHRoZSBQTVMgY2FsY3VsYXRvciBmb3Igc2lt
cGxpY2l0eSBkZXNwaXRlCj4gPiA+ID4gdGhlIGluYWNjdXJhY3kuICBNYXliZSB3ZSBjb3VsZCBm
YWxsIGJhY2sgdG8gdXNpbmcgdGhlIFBNUyBjYWxjdWxhdG9yCj4gPiA+ID4gaWYgdGhlIGRlc2ly
ZWQgZnJlcXVlbmN5IGlzbid0IGluIHRoZSBsb29rLXVwLXRhYmxlLgo+ID4gPgo+ID4gPiBUaGF0
J2QgYmUgZ3JlYXRseSBhcHByZWNpYXRlZCwgSSBkb24ndCBoYXZlIGFueSBzdHJvbmcgb3Bpbmlv
biBvbgo+ID4gPiB3aGV0aGVyIHRoYXQgc2hvdWxkIGNvbXBsZXRlbHkgcmVwbGFjZSB0aGUgdGFi
bGUsIG9yIG9ubHkgYmUgdXNlZCBpZgo+ID4gPiB0aGVyZSBpcyBubyBleGFjdCBtYXRjaCBpbiB0
aGUgdGFibGUgYXMgdGhlc2UgYXJlIHZhbHVlcyB3ZSBrbm93IHdpbGwKPiA+ID4gd29yazsgYnV0
IHdlIGNhbiBkZWZpbml0ZWx5IHRlc3QgYW55IHBhdGNoIHlvdSBjYW4gdGhyb3cgYXQgdXMgaGVy
ZS4KPiA+Cj4gPiBJIGNhbid0IHByb21pc2UgaXQnbGwgYmUgcXVpY2suICBJIGFtIG5vdCBmdWxs
eSBjZXJ0YWluIEkgdW5kZXJzdGFuZAo+ID4gaG93IHRoZSB3aG9sZSB0aGluZyB3b3JrcywgYnV0
IGFzIGEgcnVsZSwgSSBkb24ndCBnZW5lcmFsbHkgbGlrZSBsb29rCj4gPiB1cCB0YWJsZXMgaWYg
dGhleSBjYW4gYmUgY2FsY3VsYXRlZCBkeW5hbWljYWxseS4KPgo+IEkgdXBkYXRlZCBteSBQTVMg
Y2FsY3VsYXRvciwgYW5kIEkgcmFuZG9tbHkgc2VsZWN0ZWQgNSByZXNvbHV0aW9ucyBhbmQKPiB0
aGV5IGFsbCByZXR1cm5lZCBhbiBleGFjdCBjbG9jayBtYXRjaCwgc28gSSdsbCBhdHRlbXB0IHRv
IHVzZSB0aGUgUE1TCj4gaW50ZWdlciBjbG9jayBpbnN0ZWFkIG9mIHRoZSBmcmFjdGlvbmFsIG9u
ZS4KPgo+IEl0J2xsIGJlIGEgbGl0dGxlIHdoaWxlIGxvbmdlciBiZWZvcmUgSSBjYW4gZG8gYW55
dGhpbmcgd2l0aCBpdC4KCkZyaWVkZXIsCgpVc2luZyBteSBQTVMgY2FsY3VsYXRvciBhbmQgUmV2
IDIgb2YgdGhlIFRlY2ggUmVmIE1hbnVhbCwgSSB0aGluayBJCmNhbiBnZW5lcmF0ZSB5b3UgYSB0
YWJsZSBlbnRyeSBmb3IgNTEuMk1Iei4gIEkgZG9uJ3QgaGF2ZSB0aGUgYWJpbGl0eQp0byB0ZXN0
IGl0LiAgSSBhbSBzdGlsbCB3b3JraW5nIG9uIGZpZ3VyaW5nIG91dCBhbiBhbGdvcml0aG0gdG8K
Y2FsY3VsYXRlIHRoZSBmcmFjdGlvbmFsIGRpdmlkZXIsIGJ1dCA1MS4yTUh6IHggNSBkb2VzIG5v
dCcgYXBwZWFyIHRvCm5lZWQgdGhlIGZyYWN0aW9uYWwgY2xvY2sgZGl2aWRlciwgc28gSSB0aGlu
ayBJIGNhbiBqdXN0IGdldCBhd2F5IHdpdGgKdGhlIHN0YW5kYXJkIFBNUyBjYWxjdWxhdGlvbnMu
CgpNeSBhbGdvcml0aG0gc2hvd2VkOgpIRE1JIFBIWSBCZXN0IFAgPSAxCkhETUkgUEhZIEJlc3Qg
TSA9IDY0CkhETUkgUEhZIEJlc3QgUyA9IDYKSERNSSBQSFkgQmVzdCBmcmVxID0gMjU2MDAwMDAw
CgpJJ2xsIHRyeSB0byBnZW5lcmF0ZSBhIHBhdGNoIHRvIGdldCB0aGVzZSB2YWx1ZXMgaW50byB0
aGUgdGFibGUgaWYKeW91J3JlIHdpbGxpbmcgdG8gdGVzdCBpdC4KCkFsbCwKCkkgc3RpbGwgdGhp
bmsgaXQncyBhIGdvb2QgaWRlYSB0byBmYWxsIGJhY2sgdG8gdGhlIFBNUyBjYWxjdWxhdG9yIGlm
CnRoZSBmcmFjdGlvbmFsIHN0dWZmIGlzbid0IGZvdW5kLiAgV2UgY291bGQgdGhlbiBkZXRlcm1p
bmUgd2hpY2ggY2xvY2sKZnJlcXVlbmN5IGlzIGNsb3NlciBiZXR3ZWVuIHRoZSBuZWFyZXN0IHRh
YmxlIGVudHJ5IG9yIHRoZSBQTVMKY2FsY3VsYXRvciB1bnRpbCBzb21lb25lIGNhbiBjb21lIHVw
IHdpdGggYW4gYWxnb3JpdGhtIGZvciBpdC4KCgphZGFtCgoKPgo+IGFkYW0KPiA+Cj4gPiBhZGFt
Cj4gPiA+Cj4gPiA+Cj4gPiA+IENoZWVycywKPiA+ID4gLS0KPiA+ID4gRG9taW5pcXVlCj4gPiA+
Cj4gPiA+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
