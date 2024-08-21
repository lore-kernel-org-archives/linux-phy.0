Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC154C52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 12:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYpyp9H9hmrGcdJMO4bejrTtphDsUfe6czqbw6UkMJE=; b=adVH/zNuBEd4cx
	y+XsZ/UOedjRpoyBpAfz6kgtsiMPnHdk48iDFcSOaiygWlltsgbKAHLxFtyEDE9uYzUDmIt/toi+U
	om58dWS7eTugMCPk8mA3wcdmYiBNXPqlWsA0mCIadBY7VQnM/XpB4vy76F5s/oM9VWrcS4kzOsWvI
	XqgHNhX52HnndXZBHjkk30kZAAG7ZwyaSU0rqz4Ue9gQGzPzmg4hP55H4Xa5SHh8jrL3SaeLHVP97
	xaMsCbb0NrUqe+k5CK2FlepK+JlPmaR3t5Di/3ZZj5lsuJcMq3dk8qXCMkfmW5eUp+/KVBtr3bJa1
	mLoy38Uw1y6fMzLQk9aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgkjt-00000008yUu-21Rz;
	Wed, 21 Aug 2024 12:47:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgkjB-00000008yIx-0fgy;
	Wed, 21 Aug 2024 12:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GrQlo1ZtzHZaU3Kc2gC/GsCtOWVGIzkRZAXPXF1JDAc=; b=EOjno5AV3nLZKtLFZyNcO/WGZq
	8T4fnHM/oNayYKfYe8f2sqFwuVQKv0HDphXfAW7CF+t3G7DaaKH4t6hAnE3ZWjWt50mcQSnrYIH1t
	ISscyVJc+GXikCrenS6WoGp3QFKxglOvi3WNWpMQbg5PF/gFThw6MU+FEKtdtDfqmHjjxKH5F2c0e
	6Ox1Nyms0q3pnpk7J8IAPR/A067uxjwEHbDkpXdlNZBk/GMSZAFpiMEBBYi2btHCHVFl6gqacBIQy
	QEnKSBr7yE6eZdZdJcP16X1KihXHK9kL3Lmtxv++HBA27zl0BTTYVyGJQBkZz5ir7dHU212BDJRdw
	D0Ufnwfg==;
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgkj7-00000009WQu-3rmR;
	Wed, 21 Aug 2024 12:46:15 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70d23caf8ddso5376281b3a.0;
        Wed, 21 Aug 2024 05:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724244371; x=1724849171; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GrQlo1ZtzHZaU3Kc2gC/GsCtOWVGIzkRZAXPXF1JDAc=;
        b=KkNQGZ1Y5MSGbWgHLItGqkqtEnXlybYlYolrFnqgzuRsbnG7eJyz2GMs3wawsMkHOW
         XshDd5f7MNGoxJwoJ+GHD08sosRQ1HRS2oGNsV+3meViuGCWpzgEOFUcqD6c48udH21l
         ZKmn2ycIcMnXiCz6GCnAJAkKCoQo9XIHieL28u4K4zgIzf35gz1jBOEr7blYW7X8Azmo
         l6k68TXkPbeWJYNN2NdQho9IpyTEEzKAoplDMaP9IzrHN1OAUbT6DIdAEWIWSq85gBu6
         w0CaRl9bzMH6hXzmlpHqSltrDA34jGfNGbkYkizuI6h7ncaaTm/Cke5dSVAfCkP5QcTv
         4Saw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724244371; x=1724849171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GrQlo1ZtzHZaU3Kc2gC/GsCtOWVGIzkRZAXPXF1JDAc=;
        b=kENQRnGiJgIbx1sKqYZGTCy/43ssV2ZRA5exNazwaQX1bP62ehJ9ZoIcekHeHPvI5e
         s1yH1+0t38ahQsSGoE7AUagMBt7+ughNkeefhVj8mPWm1lu6sLu6aCHy9D9x7SSvikin
         4YNTAliHU7cR3jmlnA5F0dy1L5mb/yb0doLVf2pKim6P2D4oRV0oP60a50HUzW9EnBSX
         9tOASjRr0FkD8lb9fxno5UidChhQUEO3ZGKNMUGqbnp6sAjzyRfmxNzIi8/mqjraHVgu
         /+y2K1v+y1m1hWTZGkMrzSh+0bpFR7/OHKyjOsqsq1MZVzxxQd4ra6gRGnA9CStJ/axe
         5dTA==
X-Forwarded-Encrypted: i=1; AJvYcCVGkSU3lhTgNAzmwiUsfK7fGbFz282KppPXGvpEGncxjif+StOomA1qeU5GIGPIjqvHIYT/qTwemgie@lists.infradead.org, AJvYcCWsVpE93n5xKnuxw3WRdneKOdvbk9Y0P3CdF2C/7W4Q2kVczSTfr17dw1gUmwu3cJW7DAALJmUp9IKSB+G2TxR7@lists.infradead.org
X-Gm-Message-State: AOJu0YzFK3TUiUJLjsHDtnLcSNEsEeTL6KO+kr3nVaWaapcBwTUSwnyD
	01N5PsOddwbiOvtsrnd9iRnjZ0X3dP/8/75HotOnbFycOyoVI9Xe5GWlbTiKGsTfx+0ILvIrqzM
	UNJUtzD+5x6Zd2ZdE2UqqJqvEk2k=
X-Google-Smtp-Source: AGHT+IHKfU539ztIPvH6FNOLr/tKtolhQJBELB1tBOi+TgcP0/C3jIsojq1Lyrzv/S9i+Tdl/qwVHeal4WeR8hByttU=
X-Received: by 2002:a05:6a21:9214:b0:1c6:fa4b:3648 with SMTP id
 adf61e73a8af0-1cad7f962b8mr3248581637.22.1724244370398; Wed, 21 Aug 2024
 05:46:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com> <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de> <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
 <ZsVluV50NvuGGHFX@atmark-techno.com>
In-Reply-To: <ZsVluV50NvuGGHFX@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 21 Aug 2024 07:45:58 -0500
Message-ID: <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240821_134614_139214_ABAFB9DC 
X-CRM114-Status: GOOD (  52.43  )
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

T24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgMTA6NTjigK9QTSBEb21pbmlxdWUgTUFSVElORVQKPGRv
bWluaXF1ZS5tYXJ0aW5ldEBhdG1hcmstdGVjaG5vLmNvbT4gd3JvdGU6Cj4KPiBBZGFtIEZvcmQg
d3JvdGUgb24gVHVlLCBBdWcgMjAsIDIwMjQgYXQgMDk6NDk6MDNQTSAtMDUwMDoKPiA+ID4gPiBI
b3dldmVyLCB0aGlzIGNoZWNrIGlzIGEgYml0IG92ZXJjYXV0aW91cyBpbiB0aGF0IGl0IG9ubHkg
YWxsb3dzIGV4YWN0Cj4gPiA+ID4gcmF0ZSBtYXRjaGVzLiBJSVJDIEhETUkgYWxsb3dzIGEgcmF0
ZSBtaXNtYXRjaCBvZiArLSAwLjUlLCBzbyB0aGlzCj4gPiA+ID4gY2hlY2sgY291bGQgYmUgcmVs
YXhlZCBxdWl0ZSBhIGJpdCB0byBhbGxvdyBmb3IgdGhhdC4KPiA+ID4KPiA+ID4gSSBjaGVja2Vk
IHdpdGggYSAxMDgwcCBkaXNwbGF5IHRoYXQgcmVwb3J0cyAyMyBwb3NzaWJsZSBtb2RlcyB2aWEg
RURJRC4KPiA+ID4gT3V0IG9mIHRoZXNlIDE1IGFyZSBhY2NlcHRlZCBieSB0aGUgZHJpdmVyIHdp
dGggdGhlIHN0cmljdCBjaGVjay4KPiA+ID4KPiA+ID4gVHdvIG1vcmUgd291bGQgYmUgYWNjZXB0
ZWQgd2l0aCBhIHJlbGF4ZWQgY2hlY2sgdGhhdCBhbGxvd3MgYSAwLjUlIG1hcmdpbi4KPiA+ID4K
PiA+ID4gRm9yIHRoZSByZW1haW5pbmcgc2l4IG1vZGVzLCB0aGUgcGl4ZWwgY2xvY2sgd291bGQg
ZGV2aWF0ZSB1cCB0byB+NSUKPiA+ID4gZnJvbSB3aGF0IHRoZSBkaXNwbGF5IGV4cGVjdHMuIFN0
aWxsLCBpZiBJIHJlbW92ZSB0aGUgY2hlY2sgYWx0b2dldGhlciwKPiA+ID4gYWxsIDIzIG1vZGVz
IHNlZW0gdG8gd29yayBqdXN0IGZpbmUuCj4KPiBJIGNhbiBjb25maXJtIHRoZSBkaXNwbGF5cyBJ
IHRlc3RlZCBhbHNvIHNlZW0gcHJldHR5IHRvbGVyYW50IGluCj4gcHJhY3RpY2UgKHVwIHRvIH4z
LTQlIGF0IGxlYXN0KSwgYnV0IEkgYWdyZWUgd2l0aCBMdWNhcyB0aGF0IHRoaXMgaXNuJ3QKPiBz
b21ldGhpbmcgd2UgY2FuIHJlbHkgb24gZm9yIGEgZ2VuZXJhbCBwdXJwb3NlIGRyaXZlciBhcyBo
YXZpbmcgZXhhbXBsZXMKPiBvZiB0aGluZ3MgYmVpbmcgdG9sZXJhbnQgZG9lc24ndCBtZWFuIGFs
bCBoYXJkd2FyZSB3aWxsIGJlIGFzIGZsZXhpYmxlLi4KPgo+ID4gPiBJJ2QgcmVhbGx5IGxpa2Ug
dG8gYmUgYWJsZSB0byBhZGQgbW9yZSBQSFkgUExMIHNldHBvaW50cyBmb3IgZGlzcGxheXMKPiA+
ID4gdGhhdCB1c2Ugbm9uLUNFQS04NjEgbW9kZXMuIFVuZm9ydHVuYXRlbHkgSSBkaWRuJ3QgbWFu
YWdlIHRvIGZpZ3VyZSBvdXQKPiA+ID4gdGhlIGZyYWN0aW9uYWwtbiBQTEwgcGFyYW1ldGVyIGNh
bGN1bGF0aW9uIHNvIGZhci4KPiA+ID4KPiA+ID4gVGhlIGkuTVg4TVAgUmVmZXJlbmNlIE1hbnVh
bCBwcm92aWRlcyBmb3JtdWxhcyB0byBjYWxjdWxhdGUgdGhlCj4gPiA+IHBhcmFtZXRlcnMgYmFz
ZWQgb24gdGhlIHJlZ2lzdGVyIHZhbHVlcyBhbmQgSSB0cmllZCB0byBtYWtlIHNlbnNlIG9mIGl0
Cj4gPiA+IHVzaW5nIHRoZSBleGlzdGluZyByZWdpc3RlciB2YWx1ZXMgaW4gdGhlIGRyaXZlci4g
QnV0IHNvbWVob3cgaXQgZG9lc24ndAo+ID4gPiBhZGQgdXAgZm9yIG1lLgo+ID4gPgo+ID4gPiBM
dWNhcywgZGlkIHlvdSBhbHJlYWR5IHdvcmsgd2l0aCB0aGUgUExMIHBhcmFtZXRlcnM/IEJ5IGFu
eSBjaGFuY2UsIGRvCj4gPiA+IHlvdSBub3cgaG93IHRoZSBtYXRoIGJlaGluZCB0aGVtIHdvcmtz
Pwo+ID4KPiA+IEkgc3BlbnQgYSBsaXR0bGUgdGltZSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBpdCBh
IGJpdC4gIEkgY3JlYXRlZCBhIFBNUwo+ID4gY2FsY3VsYXRvciBzaW1pbGFyIHRvIHRoZSBvbmUg
dXNlZCBvbiB0aGUgRFNJIGNvbnRyb2xsZXIsCj4KPiBHcmVhdCEgSSdsbCBhZG1pdCB0aGlzIGFs
c28gZmxpZXMgb3ZlciBteSBoZWFkIGFuZCBJIGRvbid0IGhhdmUgdGhlCj4gdGltZSB0byBzdHVk
eSB0aGlzLCBzbyB0aGlzIGlzIG11Y2ggYXBwcmVjaWF0ZWQuCj4KPiA+IGV4Y2VwdCB0aGF0Cj4g
PiB0aGUgTSBzZWVtcyB0byBiZSBmaXhlZCBhdCBhIHZhbHVlIG9mIDYyIHBlciB0aGUgZGF0YSBz
aGVldCwgc28gaXQncwo+ID4gbW9yZSBvZiBhIFBTIGNhbGN1bGF0b3IuCj4KPiBIbW0uLi4gUEhZ
X1JFRzIgaW4gdGhlIGRhdGFzaGVldCBvbmx5IGxpc3RzICcwMDExXzExMTBiIC0gNjInIGFzCj4g
ZXhhbXBsZSg/KSB2YWx1ZXMsIGJ1dCBpdCBkb2Vzbid0IHNheSBvdGhlciB2YWx1ZXMgYXJlIHJl
c2VydmVkIGVpdGhlciwKPiBJJ20gbm90IHN1cmUgd2hhdCB0byBtYWtlIG9mIGl0Lgo+IEluIHRo
ZSBjdXJyZW50IGRyaXZlciBQSFlfUkVHXzAyIChkcml2ZXIgbWFjcm8pIGlzIGFzc2lnbmVkIHRo
ZSBmaXJzdAo+IGZpZWxkIG9mIC5wbGxfZGl2X3JlZ3MsIHdoaWNoIGdvZXMgYW55d2hlcmUgZnJv
bSAweDRiIHRvIDB4N2IgLS0gcHJldHR5Cj4gZmFyIGZyb20gNjIoMHgzZSkuLi4KCk9LLiAgSSB3
aWxsIGV4cGVyaW1lbnQgd2l0aCBpbmNyZWFzaW5nIHRoZSByYW5nZSBvZiBNIGZyb20gYmVpbmcg
Zml4ZWQKYXQgM2UgdG8gYSByYW5nZSBvZiAzYiB0byA3YiB0byBzZWUgaWYgbXkgUE1TIGludGVn
ZXIgY2FsY3VsYXRvciBjYW4KZ2V0IG1vcmUgYWNjdXJhdGUuCgo+Cj4gU2luY2Ugb3RoZXIgZnJl
cXVlbmNpZXMgaGF2ZSBiZWVuIGFkanVzdGluZyB0aGlzIG1haW4gZGl2aXNlciByYXRpbyB3ZQo+
IGFjdHVhbGx5IHRyaWVkIGNvcHlpbmcgbmVpZ2hib3JpbmcgdmFsdWVzIGFuZCBhZGp1c3Rpbmcg
b25seSB0aGF0IHJlZyAyCj4gKHNvIHRoZSBNIGlmIEkgZ2V0IHRoaXMgcmlnaHQ/KSwgYnV0IHRo
ZSBlbmQgcmVzdWx0IGVuZGVkIHVwIG5vdAo+IHN5bmNocm9uaXppbmcgcHJvcGVybHkgZXZlcnkg
dGltZS4uLiBXZSBkaWRuJ3QgaGF2ZSB0aW1lIHRvIGNoZWNrIHdpdGggYQo+IHNjb3BlIGlmIHRo
ZSBnZW5lcmF0ZWQgc2lnbmFsIHdhcyB1Z2x5IG9yIGlmIGl0IGp1c3QgZGlkbid0IGxvY2sKPiBw
cm9wZXJseSwgYnV0IHRoZSBkaXNwbGF5IHdvcmtlZCB3aGVuIHdlIGp1c3QgcmUtdXNlZCB0aGUg
bmVpZ2hib3JpbmcKPiB2YWx1ZXMgd2l0aG91dCBjaGFuZ2luZyBhbnl0aGluZyBkZXNwaXRlIGJl
aW5nIH4zLTQlIG9mZiwgc28gd2UgdG9vayB0aGUKPiBlYXN5IHdheSBvdXQgaGVyZSBhbmQgZGlk
bid0IGRpZyBtdWNoIGZ1cnRoZXIuCj4KPiA+IEFueXdheSwgV2hlbiBJIHJ1biBteSBQLVMgY2Fs
Y3VsYXRvciB0byBnZW5lcmF0ZSB0aGUgJ2Jlc3QgcmF0ZScgSSBnZXQKPiA+IGEgdmFsdWUgdGhh
dCdzIHVzdWFsbHkgMC4yJSB2YXJpYW5jZSBmcm9tIG5vbWluYWwsIGJ1dCBJIG9ubHkgdmVyaWZp
ZWQKPiA+IGEgaGFuZGZ1bCBvZiB2YWx1ZXM6Cj4gPgo+ID4gU2V2ZXJhbCB3aGljaCB3ZXJlICsw
LjIlCj4gPiAyOTc2MDAwMDAgdnMgMjk3MDAwMDAwICg0a0AzMCkKPiA+IDE0ODgwMDAwMCB2cyAx
NDg1MDAwMDAgKDEwODBwNjApCj4gPiA3NDQwMCB2cyA3NDIwMAo+ID4KPiA+IE9uZSB2YWx1ZSB3
YXMgLTAuMTYlCj4gPiAyNDgwMDAwMCB2cyAyNTIwMDAwMAo+ID4KPiA+IElmIHRoZSBNIHZhbHVl
IHdhcyBhIGJpdCBtb3JlIGZsZXhpYmxlLCB3ZSBtaWdodCBiZSBhYmxlIHRvIHJlZHVjZQo+ID4g
dGhhdCB2YXJpYW5jZSBtb3JlLgo+Cj4gWWVzLCBJIHRoaW5rIHRoZSBNIHZhbHVlIGNvdWxkIGJl
IG1vcmUgZmxleGlibGUsIGJ1dCB0aGF0J2QgcmVxdWlyZQo+IGNoZWNraW5nIGlmIGl0IGFjdHVh
bGx5IHdvcmtzLCB3aGVyZWFzIGhhdmluZyBzbGlnaHRseSBvZmYgZnJlcXVlbmNpZXMKPiB3aWxs
IG1vc3QgbGlrZWx5IGJlIE9LIHNvIEkgZG9uJ3QgdGhpbmsgaXQncyB3b3J0aCB0aGUgZWZmb3J0
IC0tIGhhcHB5Cj4gdG8gc3RpY2sgdG8gd2hhdCB0aGUgZGF0YXNoZWV0IGRlc2NyaWJlcy4KPgo+
ID4gSWYgLyB3aGVuIEkgZ2V0IHNvbWUgdGltZSwgSSBtaWdodCBwbGF5IHdpdGggdHJ5aW5nIHRv
IGRpc2FibGUgdGhlCj4gPiBmcmFjdGlvbmFsIG1vZGUgYW5kIGp1c3QgdXNlIHRoZSBQTVMgY2Fs
Y3VsYXRvciBmb3Igc2ltcGxpY2l0eSBkZXNwaXRlCj4gPiB0aGUgaW5hY2N1cmFjeS4gIE1heWJl
IHdlIGNvdWxkIGZhbGwgYmFjayB0byB1c2luZyB0aGUgUE1TIGNhbGN1bGF0b3IKPiA+IGlmIHRo
ZSBkZXNpcmVkIGZyZXF1ZW5jeSBpc24ndCBpbiB0aGUgbG9vay11cC10YWJsZS4KPgo+IFRoYXQn
ZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLCBJIGRvbid0IGhhdmUgYW55IHN0cm9uZyBvcGluaW9u
IG9uCj4gd2hldGhlciB0aGF0IHNob3VsZCBjb21wbGV0ZWx5IHJlcGxhY2UgdGhlIHRhYmxlLCBv
ciBvbmx5IGJlIHVzZWQgaWYKPiB0aGVyZSBpcyBubyBleGFjdCBtYXRjaCBpbiB0aGUgdGFibGUg
YXMgdGhlc2UgYXJlIHZhbHVlcyB3ZSBrbm93IHdpbGwKPiB3b3JrOyBidXQgd2UgY2FuIGRlZmlu
aXRlbHkgdGVzdCBhbnkgcGF0Y2ggeW91IGNhbiB0aHJvdyBhdCB1cyBoZXJlLgoKSSBjYW4ndCBw
cm9taXNlIGl0J2xsIGJlIHF1aWNrLiAgSSBhbSBub3QgZnVsbHkgY2VydGFpbiBJIHVuZGVyc3Rh
bmQKaG93IHRoZSB3aG9sZSB0aGluZyB3b3JrcywgYnV0IGFzIGEgcnVsZSwgSSBkb24ndCBnZW5l
cmFsbHkgbGlrZSBsb29rCnVwIHRhYmxlcyBpZiB0aGV5IGNhbiBiZSBjYWxjdWxhdGVkIGR5bmFt
aWNhbGx5LgoKYWRhbQo+Cj4KPiBDaGVlcnMsCj4gLS0KPiBEb21pbmlxdWUKPgo+CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
