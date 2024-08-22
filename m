Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FD1C52D6F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 02:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ng0wWqJSaUG/4OYlTxNZOzGNLMv2XfSUPgwo4v2uQ4s=; b=Cg8c4fRZy4nrsE
	1/jQyVc5AEcIRP/ytzgfdIj4Dof3ejLsIoqv8gZlBgIAPgpRl/f0lF67DNxXNrul/2s9RRH9L+GUf
	py8y8vRdmk+nY0pxtiNCr6A9f2bGoAfLaZ1AVc5p2VHL7jsTVDf6xW19uWZiZ2AxmqsAvkA3XKANL
	V0o6zNt/TV7jWXaQkHycMzgKQXshJiDLJDnbazBOr7GNySJmdkoEspKmbXT3wapuBhku3pKSTn5tl
	z3kzvxrDlbUrdFXhkPVOJINqGeWB0xMlKA3Nuy1eOxpNp2wDhUsIwrv5meaV/bzDXmfqrWv3/iAz+
	PIUwNHPnvv+FU4aZZA/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgx7c-0000000B1dk-0qKu;
	Thu, 22 Aug 2024 02:00:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgx6t-0000000B1Yo-1VhN;
	Thu, 22 Aug 2024 01:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VFO2kWCGjNOD3FeA4OtRgD3pdjDivL5vvXpR1ohJQTE=; b=ZdtAvKPVyihIyNG+13O6o6w11c
	hNepfykfRIZQCuYwigwopfW/CT1mqmfP+QODyaH0d19owRuGInEmKs5KKmoFCLwHuSjjCypjMeYJv
	mvS/5/80zntgb5ooDypOdwAGkGS/wT+4a/HcHtzkVRILkob3UfVUS/SPyRXxPl14QtDuWE4qWVw4g
	IbbqO+9SH7qA7S0k0VpjCf0cmzwToT2qVClPMVyPy7d+nC8yvIhO4c4pRHgJSXJgwq4v9N4gBSjtL
	Lf+yQH9hR65yEx9FeD91Pktdk8+etMb1Tcz0xaMD30+a5jWD2AiACiMhMi2I2S0TyeaMLMGTwjNTP
	cyexal3g==;
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgx6f-00000009lPB-40YC;
	Thu, 22 Aug 2024 01:59:25 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2d37e5b7b02so198772a91.1;
        Wed, 21 Aug 2024 18:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724291957; x=1724896757; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFO2kWCGjNOD3FeA4OtRgD3pdjDivL5vvXpR1ohJQTE=;
        b=TarktPTN9ngahwy46MwJQJGCkiL1q1a7N1eL0hPayVA0P+12phlr83b8+f7xB1OZxn
         CrBMSUa9AcSc5+Qn9AF9nBiXG2VxHjhKYe9rX4lvkxYfkR7S98cgKU8CMWVSXNP7kfjZ
         DYV3O9Dxq2HqK9iWaPY4kywT21HuiWAVQGFI/xp0ALdpUh8yI/tDC19rYvAtl3Ggv3my
         jZ8x1j8AR7C7y//volHNoxC6K2iBgGy8Ctviv0FE7nrl0CV0Ub/KYHVF4gBxCiXXp5Wm
         lG+snG5wExCQ7W5rDub1iBDAXWvcW1xRiIVMZZUr7jJ5FSofb4tjQsEXkzQtMl4JF4lF
         Z0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724291957; x=1724896757;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VFO2kWCGjNOD3FeA4OtRgD3pdjDivL5vvXpR1ohJQTE=;
        b=UGFJY0a/vGUmZzEf5Y/zbVbWWLqnQOQlYtimt7fJoUR9D5Lt3LXMf/DP8GmY+7SXTD
         1hA0bViFLECKYOlBaBVBHtxQ6PWtz+3Bkvr5AJDgs5Uo/KHAcH++tdtokXJt/WsMAc/a
         MZ4nDpzqiXJ8SfoGY+q2aGoE1fnTE5toBtPstzlQReA8HT1MhvSMwHAwTxoVXNR5gChz
         fkV8WkkNrI4haKU+EGqUt4gSRJViRQCaBLLwViO9JJDl9d+syTuz92Mz9p1C1oOsUeTj
         iFnrJPPJKLUMXoQfL+So1gQB+Sob9xAfjAn6D3b1R+/9X2ua6lF5MXPUJXK66MNGV7zJ
         8AYw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5J9wovUvNxb8UuOs7FHBRi0GYr/nz5hAYm2h7BcwyBPEt5XR2G2tMYiCupzS/soEsGzGfwabiAxHjAdXzwd7@lists.infradead.org, AJvYcCVKDpKItKNAgyvqaVUrUZXJo3qeA9PdsDRtWN1V1Lds6anXMN/p4d253C1y81CtB9w1VXuOaGmB5fxn@lists.infradead.org
X-Gm-Message-State: AOJu0YxwpksrJs1F4GvCq6YiAcstjaymgAztla0OC5YLiYpQDkiLQWpr
	2IOpBn0JOUp61EWhBYnbeZFlfcz1cyMvcEJ/hj7PH+ABC1YvQtCvcunOv5PWC8GYs6uAXEC1hYE
	bhfEqJcdVABwJXdO53WBQt0dkJkA=
X-Google-Smtp-Source: AGHT+IHo1XypQ2DhBU9dvxFb47f1VVfuO5TlGuhS61QXHHxtYiys4WJVmwOODJ9pBcwZtDtC4hQnUAZDYgMqTdynFSo=
X-Received: by 2002:a17:90a:4d83:b0:2c9:58dd:e01d with SMTP id
 98e67ed59e1d1-2d5e9a09e2bmr4589896a91.14.1724291957272; Wed, 21 Aug 2024
 18:59:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com> <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de> <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
 <ZsVluV50NvuGGHFX@atmark-techno.com> <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
In-Reply-To: <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 21 Aug 2024 20:59:05 -0500
Message-ID: <CAHCN7xKgpqfRf_2p1z5NyKiOYubbcDA7YE5ML8G56pVmcV+1xA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240822_025922_730737_EE487C37 
X-CRM114-Status: GOOD (  56.62  )
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

T24gV2VkLCBBdWcgMjEsIDIwMjQgYXQgNzo0NeKAr0FNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXVnIDIwLCAyMDI0IGF0IDEwOjU44oCvUE0gRG9t
aW5pcXVlIE1BUlRJTkVUCj4gPGRvbWluaXF1ZS5tYXJ0aW5ldEBhdG1hcmstdGVjaG5vLmNvbT4g
d3JvdGU6Cj4gPgo+ID4gQWRhbSBGb3JkIHdyb3RlIG9uIFR1ZSwgQXVnIDIwLCAyMDI0IGF0IDA5
OjQ5OjAzUE0gLTA1MDA6Cj4gPiA+ID4gPiBIb3dldmVyLCB0aGlzIGNoZWNrIGlzIGEgYml0IG92
ZXJjYXV0aW91cyBpbiB0aGF0IGl0IG9ubHkgYWxsb3dzIGV4YWN0Cj4gPiA+ID4gPiByYXRlIG1h
dGNoZXMuIElJUkMgSERNSSBhbGxvd3MgYSByYXRlIG1pc21hdGNoIG9mICstIDAuNSUsIHNvIHRo
aXMKPiA+ID4gPiA+IGNoZWNrIGNvdWxkIGJlIHJlbGF4ZWQgcXVpdGUgYSBiaXQgdG8gYWxsb3cg
Zm9yIHRoYXQuCj4gPiA+ID4KPiA+ID4gPiBJIGNoZWNrZWQgd2l0aCBhIDEwODBwIGRpc3BsYXkg
dGhhdCByZXBvcnRzIDIzIHBvc3NpYmxlIG1vZGVzIHZpYSBFRElELgo+ID4gPiA+IE91dCBvZiB0
aGVzZSAxNSBhcmUgYWNjZXB0ZWQgYnkgdGhlIGRyaXZlciB3aXRoIHRoZSBzdHJpY3QgY2hlY2su
Cj4gPiA+ID4KPiA+ID4gPiBUd28gbW9yZSB3b3VsZCBiZSBhY2NlcHRlZCB3aXRoIGEgcmVsYXhl
ZCBjaGVjayB0aGF0IGFsbG93cyBhIDAuNSUgbWFyZ2luLgo+ID4gPiA+Cj4gPiA+ID4gRm9yIHRo
ZSByZW1haW5pbmcgc2l4IG1vZGVzLCB0aGUgcGl4ZWwgY2xvY2sgd291bGQgZGV2aWF0ZSB1cCB0
byB+NSUKPiA+ID4gPiBmcm9tIHdoYXQgdGhlIGRpc3BsYXkgZXhwZWN0cy4gU3RpbGwsIGlmIEkg
cmVtb3ZlIHRoZSBjaGVjayBhbHRvZ2V0aGVyLAo+ID4gPiA+IGFsbCAyMyBtb2RlcyBzZWVtIHRv
IHdvcmsganVzdCBmaW5lLgo+ID4KPiA+IEkgY2FuIGNvbmZpcm0gdGhlIGRpc3BsYXlzIEkgdGVz
dGVkIGFsc28gc2VlbSBwcmV0dHkgdG9sZXJhbnQgaW4KPiA+IHByYWN0aWNlICh1cCB0byB+My00
JSBhdCBsZWFzdCksIGJ1dCBJIGFncmVlIHdpdGggTHVjYXMgdGhhdCB0aGlzIGlzbid0Cj4gPiBz
b21ldGhpbmcgd2UgY2FuIHJlbHkgb24gZm9yIGEgZ2VuZXJhbCBwdXJwb3NlIGRyaXZlciBhcyBo
YXZpbmcgZXhhbXBsZXMKPiA+IG9mIHRoaW5ncyBiZWluZyB0b2xlcmFudCBkb2Vzbid0IG1lYW4g
YWxsIGhhcmR3YXJlIHdpbGwgYmUgYXMgZmxleGlibGUuLgo+ID4KPiA+ID4gPiBJJ2QgcmVhbGx5
IGxpa2UgdG8gYmUgYWJsZSB0byBhZGQgbW9yZSBQSFkgUExMIHNldHBvaW50cyBmb3IgZGlzcGxh
eXMKPiA+ID4gPiB0aGF0IHVzZSBub24tQ0VBLTg2MSBtb2Rlcy4gVW5mb3J0dW5hdGVseSBJIGRp
ZG4ndCBtYW5hZ2UgdG8gZmlndXJlIG91dAo+ID4gPiA+IHRoZSBmcmFjdGlvbmFsLW4gUExMIHBh
cmFtZXRlciBjYWxjdWxhdGlvbiBzbyBmYXIuCj4gPiA+ID4KPiA+ID4gPiBUaGUgaS5NWDhNUCBS
ZWZlcmVuY2UgTWFudWFsIHByb3ZpZGVzIGZvcm11bGFzIHRvIGNhbGN1bGF0ZSB0aGUKPiA+ID4g
PiBwYXJhbWV0ZXJzIGJhc2VkIG9uIHRoZSByZWdpc3RlciB2YWx1ZXMgYW5kIEkgdHJpZWQgdG8g
bWFrZSBzZW5zZSBvZiBpdAo+ID4gPiA+IHVzaW5nIHRoZSBleGlzdGluZyByZWdpc3RlciB2YWx1
ZXMgaW4gdGhlIGRyaXZlci4gQnV0IHNvbWVob3cgaXQgZG9lc24ndAo+ID4gPiA+IGFkZCB1cCBm
b3IgbWUuCj4gPiA+ID4KPiA+ID4gPiBMdWNhcywgZGlkIHlvdSBhbHJlYWR5IHdvcmsgd2l0aCB0
aGUgUExMIHBhcmFtZXRlcnM/IEJ5IGFueSBjaGFuY2UsIGRvCj4gPiA+ID4geW91IG5vdyBob3cg
dGhlIG1hdGggYmVoaW5kIHRoZW0gd29ya3M/Cj4gPiA+Cj4gPiA+IEkgc3BlbnQgYSBsaXR0bGUg
dGltZSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBpdCBhIGJpdC4gIEkgY3JlYXRlZCBhIFBNUwo+ID4g
PiBjYWxjdWxhdG9yIHNpbWlsYXIgdG8gdGhlIG9uZSB1c2VkIG9uIHRoZSBEU0kgY29udHJvbGxl
ciwKPiA+Cj4gPiBHcmVhdCEgSSdsbCBhZG1pdCB0aGlzIGFsc28gZmxpZXMgb3ZlciBteSBoZWFk
IGFuZCBJIGRvbid0IGhhdmUgdGhlCj4gPiB0aW1lIHRvIHN0dWR5IHRoaXMsIHNvIHRoaXMgaXMg
bXVjaCBhcHByZWNpYXRlZC4KPiA+Cj4gPiA+IGV4Y2VwdCB0aGF0Cj4gPiA+IHRoZSBNIHNlZW1z
IHRvIGJlIGZpeGVkIGF0IGEgdmFsdWUgb2YgNjIgcGVyIHRoZSBkYXRhIHNoZWV0LCBzbyBpdCdz
Cj4gPiA+IG1vcmUgb2YgYSBQUyBjYWxjdWxhdG9yLgo+ID4KPiA+IEhtbS4uLiBQSFlfUkVHMiBp
biB0aGUgZGF0YXNoZWV0IG9ubHkgbGlzdHMgJzAwMTFfMTExMGIgLSA2MicgYXMKPiA+IGV4YW1w
bGUoPykgdmFsdWVzLCBidXQgaXQgZG9lc24ndCBzYXkgb3RoZXIgdmFsdWVzIGFyZSByZXNlcnZl
ZCBlaXRoZXIsCj4gPiBJJ20gbm90IHN1cmUgd2hhdCB0byBtYWtlIG9mIGl0Lgo+ID4gSW4gdGhl
IGN1cnJlbnQgZHJpdmVyIFBIWV9SRUdfMDIgKGRyaXZlciBtYWNybykgaXMgYXNzaWduZWQgdGhl
IGZpcnN0Cj4gPiBmaWVsZCBvZiAucGxsX2Rpdl9yZWdzLCB3aGljaCBnb2VzIGFueXdoZXJlIGZy
b20gMHg0YiB0byAweDdiIC0tIHByZXR0eQo+ID4gZmFyIGZyb20gNjIoMHgzZSkuLi4KPgo+IE9L
LiAgSSB3aWxsIGV4cGVyaW1lbnQgd2l0aCBpbmNyZWFzaW5nIHRoZSByYW5nZSBvZiBNIGZyb20g
YmVpbmcgZml4ZWQKPiBhdCAzZSB0byBhIHJhbmdlIG9mIDNiIHRvIDdiIHRvIHNlZSBpZiBteSBQ
TVMgaW50ZWdlciBjYWxjdWxhdG9yIGNhbgo+IGdldCBtb3JlIGFjY3VyYXRlLgo+Cj4gPgo+ID4g
U2luY2Ugb3RoZXIgZnJlcXVlbmNpZXMgaGF2ZSBiZWVuIGFkanVzdGluZyB0aGlzIG1haW4gZGl2
aXNlciByYXRpbyB3ZQo+ID4gYWN0dWFsbHkgdHJpZWQgY29weWluZyBuZWlnaGJvcmluZyB2YWx1
ZXMgYW5kIGFkanVzdGluZyBvbmx5IHRoYXQgcmVnIDIKPiA+IChzbyB0aGUgTSBpZiBJIGdldCB0
aGlzIHJpZ2h0PyksIGJ1dCB0aGUgZW5kIHJlc3VsdCBlbmRlZCB1cCBub3QKPiA+IHN5bmNocm9u
aXppbmcgcHJvcGVybHkgZXZlcnkgdGltZS4uLiBXZSBkaWRuJ3QgaGF2ZSB0aW1lIHRvIGNoZWNr
IHdpdGggYQo+ID4gc2NvcGUgaWYgdGhlIGdlbmVyYXRlZCBzaWduYWwgd2FzIHVnbHkgb3IgaWYg
aXQganVzdCBkaWRuJ3QgbG9jawo+ID4gcHJvcGVybHksIGJ1dCB0aGUgZGlzcGxheSB3b3JrZWQg
d2hlbiB3ZSBqdXN0IHJlLXVzZWQgdGhlIG5laWdoYm9yaW5nCj4gPiB2YWx1ZXMgd2l0aG91dCBj
aGFuZ2luZyBhbnl0aGluZyBkZXNwaXRlIGJlaW5nIH4zLTQlIG9mZiwgc28gd2UgdG9vayB0aGUK
PiA+IGVhc3kgd2F5IG91dCBoZXJlIGFuZCBkaWRuJ3QgZGlnIG11Y2ggZnVydGhlci4KPiA+Cj4g
PiA+IEFueXdheSwgV2hlbiBJIHJ1biBteSBQLVMgY2FsY3VsYXRvciB0byBnZW5lcmF0ZSB0aGUg
J2Jlc3QgcmF0ZScgSSBnZXQKPiA+ID4gYSB2YWx1ZSB0aGF0J3MgdXN1YWxseSAwLjIlIHZhcmlh
bmNlIGZyb20gbm9taW5hbCwgYnV0IEkgb25seSB2ZXJpZmllZAo+ID4gPiBhIGhhbmRmdWwgb2Yg
dmFsdWVzOgo+ID4gPgo+ID4gPiBTZXZlcmFsIHdoaWNoIHdlcmUgKzAuMiUKPiA+ID4gMjk3NjAw
MDAwIHZzIDI5NzAwMDAwMCAoNGtAMzApCj4gPiA+IDE0ODgwMDAwMCB2cyAxNDg1MDAwMDAgKDEw
ODBwNjApCj4gPiA+IDc0NDAwIHZzIDc0MjAwCj4gPiA+Cj4gPiA+IE9uZSB2YWx1ZSB3YXMgLTAu
MTYlCj4gPiA+IDI0ODAwMDAwIHZzIDI1MjAwMDAwCj4gPiA+Cj4gPiA+IElmIHRoZSBNIHZhbHVl
IHdhcyBhIGJpdCBtb3JlIGZsZXhpYmxlLCB3ZSBtaWdodCBiZSBhYmxlIHRvIHJlZHVjZQo+ID4g
PiB0aGF0IHZhcmlhbmNlIG1vcmUuCj4gPgo+ID4gWWVzLCBJIHRoaW5rIHRoZSBNIHZhbHVlIGNv
dWxkIGJlIG1vcmUgZmxleGlibGUsIGJ1dCB0aGF0J2QgcmVxdWlyZQo+ID4gY2hlY2tpbmcgaWYg
aXQgYWN0dWFsbHkgd29ya3MsIHdoZXJlYXMgaGF2aW5nIHNsaWdodGx5IG9mZiBmcmVxdWVuY2ll
cwo+ID4gd2lsbCBtb3N0IGxpa2VseSBiZSBPSyBzbyBJIGRvbid0IHRoaW5rIGl0J3Mgd29ydGgg
dGhlIGVmZm9ydCAtLSBoYXBweQo+ID4gdG8gc3RpY2sgdG8gd2hhdCB0aGUgZGF0YXNoZWV0IGRl
c2NyaWJlcy4KPiA+Cj4gPiA+IElmIC8gd2hlbiBJIGdldCBzb21lIHRpbWUsIEkgbWlnaHQgcGxh
eSB3aXRoIHRyeWluZyB0byBkaXNhYmxlIHRoZQo+ID4gPiBmcmFjdGlvbmFsIG1vZGUgYW5kIGp1
c3QgdXNlIHRoZSBQTVMgY2FsY3VsYXRvciBmb3Igc2ltcGxpY2l0eSBkZXNwaXRlCj4gPiA+IHRo
ZSBpbmFjY3VyYWN5LiAgTWF5YmUgd2UgY291bGQgZmFsbCBiYWNrIHRvIHVzaW5nIHRoZSBQTVMg
Y2FsY3VsYXRvcgo+ID4gPiBpZiB0aGUgZGVzaXJlZCBmcmVxdWVuY3kgaXNuJ3QgaW4gdGhlIGxv
b2stdXAtdGFibGUuCj4gPgo+ID4gVGhhdCdkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQsIEkgZG9u
J3QgaGF2ZSBhbnkgc3Ryb25nIG9waW5pb24gb24KPiA+IHdoZXRoZXIgdGhhdCBzaG91bGQgY29t
cGxldGVseSByZXBsYWNlIHRoZSB0YWJsZSwgb3Igb25seSBiZSB1c2VkIGlmCj4gPiB0aGVyZSBp
cyBubyBleGFjdCBtYXRjaCBpbiB0aGUgdGFibGUgYXMgdGhlc2UgYXJlIHZhbHVlcyB3ZSBrbm93
IHdpbGwKPiA+IHdvcms7IGJ1dCB3ZSBjYW4gZGVmaW5pdGVseSB0ZXN0IGFueSBwYXRjaCB5b3Ug
Y2FuIHRocm93IGF0IHVzIGhlcmUuCj4KPiBJIGNhbid0IHByb21pc2UgaXQnbGwgYmUgcXVpY2su
ICBJIGFtIG5vdCBmdWxseSBjZXJ0YWluIEkgdW5kZXJzdGFuZAo+IGhvdyB0aGUgd2hvbGUgdGhp
bmcgd29ya3MsIGJ1dCBhcyBhIHJ1bGUsIEkgZG9uJ3QgZ2VuZXJhbGx5IGxpa2UgbG9vawo+IHVw
IHRhYmxlcyBpZiB0aGV5IGNhbiBiZSBjYWxjdWxhdGVkIGR5bmFtaWNhbGx5LgoKSSB1cGRhdGVk
IG15IFBNUyBjYWxjdWxhdG9yLCBhbmQgSSByYW5kb21seSBzZWxlY3RlZCA1IHJlc29sdXRpb25z
IGFuZAp0aGV5IGFsbCByZXR1cm5lZCBhbiBleGFjdCBjbG9jayBtYXRjaCwgc28gSSdsbCBhdHRl
bXB0IHRvIHVzZSB0aGUgUE1TCmludGVnZXIgY2xvY2sgaW5zdGVhZCBvZiB0aGUgZnJhY3Rpb25h
bCBvbmUuCgpJdCdsbCBiZSBhIGxpdHRsZSB3aGlsZSBsb25nZXIgYmVmb3JlIEkgY2FuIGRvIGFu
eXRoaW5nIHdpdGggaXQuCgphZGFtCj4KPiBhZGFtCj4gPgo+ID4KPiA+IENoZWVycywKPiA+IC0t
Cj4gPiBEb21pbmlxdWUKPiA+Cj4gPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
