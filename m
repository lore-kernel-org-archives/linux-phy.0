Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED6CACD11DD
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 11:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YblqSRVCCqoNR3OnxKQGseHPdcW7U8n0abmryxdlrYY=; b=O48TxPhNasIhmI
	lsuHKNWTc99LBKqLXHUCvYn9YJGh8p4iyOZOdoFDTDIyDnz5BQEXDqadZ5G4SNobODzSpNt5kWNmT
	aasLtTLWMPQvIqsumbpqRP8BLtdExU5PZ8A96CwAHFkoCF5trVIb4ZuKfsz0Ife/5S0aYhJZWNh6S
	kssJjw9A3qKXfVLNQ2hcLhd/JAU1vMQVnIyjqyTPVwGy9e2ShtAi/5sXLDtuhIcWDcZvz9jKV4Gvu
	jjDT0VMCnQCWTavLT/8SaSt1bDHr1Hp7a72F0RZNaM6m60Rg+kMoCVSVDb/Wvkik6mv5Jm2wr+Qy5
	l/Y7c4bJAT8KIEG6LFSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Dt-00000004J6q-3Lz9;
	Tue, 26 Mar 2024 11:44:09 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5DR-00000004Iug-1AxO;
	Tue, 26 Mar 2024 11:43:46 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5cfd95130c6so2946092a12.1;
        Tue, 26 Mar 2024 04:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711453418; x=1712058218; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7JJfNLPGXQjdD5E+CQgcIovMfTBNJAPrFsXk8DSz3Bc=;
        b=l7MzQhG446latLSXfyHxqx7tmMpqtIT7Ra7Gbiz1h+pQtWBMS0mA7hkCfxWSHzR5GN
         TaehfOz2zyeMVW6slEtlmEzHu6Ih0pa+F3OJMWrdZWqKrz6Pzo0rrgn9p+xkRwwoSA/6
         wThT49xw9GnjxwzBvbU3l/pvIcIyvH5/yf/eVoE0NH6cCesrQHzf90gD/Dq/DrOoXmfw
         hNtBQXJZIP+gvV94665/syM/lolJdP429GF65Vx8kHmb/BtmyJAt3t5r6pAgrebo4d/R
         A8gVOa7nZkhtje/Yek14JixnX21PDoi3YiW6QE2YRMn5CETZVPDIMTnOXgV68SCVnrAm
         RNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711453418; x=1712058218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7JJfNLPGXQjdD5E+CQgcIovMfTBNJAPrFsXk8DSz3Bc=;
        b=X2MkbiprGychRKX4beFKdi+fBq4eKmwFG3D89a6k4fJHJ7bqaUAoM5WAnGtg5bg827
         PHbOWMiBYKBZrBUMbMovYv8Z86lMkJNmDFf2y205mOcMu6kWjE+hKbyw3mrBCOeuxi29
         AdaW5xPWHDFNV3xTgr71A/+9GxnFQebUpKpnLHrCgDD3HJPvj8uwrTJzhBgqL2cNHPun
         SM/NGq7tLyhlHo9ezFlPxuJZlKlCTXxHoEr7/7z7m6Losc8sp3fEWT28g/OI7rfUh2ks
         sJzVTfmlYq5eiG7xSMk1YIXbEZLOTB3z9pLgOme9yhuSW+m+E4/JPwkAx5NTt84Uf1J7
         mB7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDxpxmSJOrUuqdAutK/C0EOB1vIPuuWkPRl3kN/LITtIHrug1soQV0VKd6ZtN6QSJSV4FE3BwVoqkwZjlAdSyo8imIMCPX41XqU3M6TzatZKqGlWRCybcy7wJT8H3SbxzCsyUGwpfwzcOGRCTPj+DdYHy3
X-Gm-Message-State: AOJu0Yx2sbazfqz7nJYG9U673oiKiN6KmrTYeI//uO/G8JKHhBNZYyna
	hlXa7elQQ76FS9ExZmjnrHj7yzfPvB0AhFr1UAayx7sBghvh6n+yDg3Uqed9Iencit3CBAmnPLh
	GuNh98z7wdOXfvgQyH/3cfBC3Q1M=
X-Google-Smtp-Source: AGHT+IFJr4BwXlddlBEjDngUlpX7zK9gcwzqV6NzPa916601f5z9OcCg5f1L0di5ibf8HMxg/xfxr8hQHHEfl93yHwc=
X-Received: by 2002:a17:90a:4a0c:b0:2a0:3dc1:2926 with SMTP id
 e12-20020a17090a4a0c00b002a03dc12926mr7088214pjh.17.1711453418128; Tue, 26
 Mar 2024 04:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <ZgHxSHDAt7ytqDC1@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
 <20240325220338.GE23988@pendragon.ideasonboard.com> <ZgJ9P3Wx2A2n9Gt+@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
In-Reply-To: <ZgJ9P3Wx2A2n9Gt+@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 26 Mar 2024 06:43:26 -0500
Message-ID: <CAHCN7xKWUQwfNmTB_bu4Kqm-b6PSPBHvyf8yfRbL53rB20-=DQ@mail.gmail.com>
Subject: Re: [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
To: Tommaso Merciai <tomm.merciai@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-arm-kernel@lists.infradead.org, 
	marex@denx.de, alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Lucas Stach <l.stach@pengutronix.de>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_044341_637479_2F1F74FE 
X-CRM114-Status: GOOD (  38.87  )
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

T24gVHVlLCBNYXIgMjYsIDIwMjQgYXQgMjo0NuKAr0FNIFRvbW1hc28gTWVyY2lhaSA8dG9tbS5t
ZXJjaWFpQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBMYXVyZW50LAo+Cj4gT24gVHVlLCBNYXIg
MjYsIDIwMjQgYXQgMTI6MDM6MzhBTSArMDIwMCwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiA+
IEhpIFRvbW1hc28sCj4gPgo+ID4gT24gTW9uLCBNYXIgMjUsIDIwMjQgYXQgMTA6NDg6NTZQTSAr
MDEwMCwgVG9tbWFzbyBNZXJjaWFpIHdyb3RlOgo+ID4gPiBIaSBBZGFtLCBMdWNhcywKPiA+ID4g
VGhhbmtzIGZvciB0aGlzIHNlcmllcy4KPiA+ID4KPiA+ID4gVGhpcyBzZXJpZXMgbWFrZSBIRE1J
IHdvcmsgb24gZXZrLgo+ID4gPiBBbGwgaXMgd29ya2luZyBwcm9wZXJseSBvbiBteSBzaWRlLgo+
ID4gPgo+ID4gPiBUZXN0ZWQgb246IExpbnV4IGlteDhtcC1scGRkcjQtZXZrIDYuOS4wLXJjMS4K
PiA+ID4gSG9wZSB0aGlzIGhlbHAuCj4gPiA+Cj4gPiA+IFRlc3RlZC1ieTogVG9tbWFzbyBNZXJj
aWFpIDx0b21tLm1lcmNpYWlAZ21haWwuY29tPgo+ID4KPiA+IFRoZSBEUk0gc2lkZSBoYXMgYmVl
biBtZXJnZWQgYWxyZWFkeS4gVGhlIG9ubHkgbWlzc2luZyBwYXRjaGVzIGFyZSBmb3IKPiA+IHRo
ZSBQSFksIGFuZCB0aGUgbGF0ZXN0IHZlcnNpb24gY2FuIGJlIGZvdW5kIGluCj4gPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNDAyMjcyMjA0NDQuNzc1NjYtMS1hZm9yZDE3
M0BnbWFpbC5jb20vLgo+ID4gWW91IGNhbiB0ZXN0IHRoYXQgc2VyaWVzIGFuZCBzZW5kIGEgVGVz
dGVkLWJ5IHRhZy4gSSdtIGNyb3NzaW5nIG15Cj4gPiBmaW5nZXJzIGFuZCBob3BpbmcgaXQgd2ls
bCBiZSBtZXJnZWQgaW4gdjYuMTAuCj4gKHNhbWUgaGVyZSA6KSApCj4KPiBUaGFua3MgZm9yIHNo
YXJpbmchIDopCj4KPiBUbyBiZSBob25lc3QgSSB0ZXN0IGFsbCB0aGlzIHNlcmllcyByZWJhc2lu
ZyBteSBhbHZpdW0gbmV4dCBicmFuY2ggb24gdG9wIG9mIG1lZGlhX3N0YWdlL21hc3RlciAoNi45
LjAtcmMxKQo+IEFsbCBpcyB3b3JraW5nIHByb3Blcmx5IG9uIG15IHNpZGUuCj4gSSBmb3VuZCB2
OCBpbnRvIHRoZSBjb21taXQgbXNnIGhlcmU6IGh0dHBzOi8vcGF0Y2hlcy5saW5hcm8ub3JnL3By
b2plY3QvbGludXgtcG0vcGF0Y2gvMjAyNDAyMDMxNjUzMDcuNzgwNi05LWFmb3JkMTczQGdtYWls
LmNvbS8KPiB0aGVuIEknbSB0aGlua2luZyB0aGlzIGlzIHRoZSBsYXRlc3QuCj4KPiBJJ20gZ29p
bmcgdG8gc3dpdGNoIHRvIHlvdXIgc3VnZ2VzdGlvbiB0aGF0IGxvb2tzIG1vcmUgcmVjZW50IDop
CgpTb3JyeSBhYm91dCB0aGUgY29uZnVzaW9uLiAgSSB3YXMgY29uZnVzZWQgYnkgdGhlIHZlcnNp
b25pbmcgdG9vIHdoZW4KSSBwdWxsZWQgZnJvbSBkaWZmZXJlbnQgcGFydHMgb2YgTHVjYXMnIHN0
dWZmLiAgU2luY2UgdmFyeWluZwpjb21wb25lbnRzIHdlcmUgYXBwbGllZCBhdCBkaWZmZXJlbnQg
dGltZXMsIGFuZCB0aGUgcmVtYWluaW5nIHBhcnQgd2FzCmJhc2VkIG9uIHRoZSB3cm9uZyBzdGFy
dGluZyBwb2ludCBhbmQgbm90IGFwcGxpZWQsIEkgcmV2ZXJ0ZWQgYmFjayB0bwp0aGUgdmVyc2lv
bmluZyBvZiB0aGUgUEhZIHdoaWNoIHdhcyB0aGUgb25seSByZW1haW5pbmcgcGFydCBvdGhlciB0
aGFuCmRldmljZSB0cmVlIHN0dWZmLgoKYWRhbQo+Cj4gVGhhbmtzIGFnYWluLAo+IFRvbW1hc28K
Pgo+ID4KPiA+ID4gT24gU2F0LCBGZWIgMDMsIDIwMjQgYXQgMTA6NTI6NDBBTSAtMDYwMCwgQWRh
bSBGb3JkIHdyb3RlOgo+ID4gPiA+IFRoZSBpLk1YOE0gUGx1cyBoYXMgYW4gSERNSSBjb250cm9s
bGVyLCBidXQgaXQgZGVwZW5kcyBvbiB0d28KPiA+ID4gPiBvdGhlciBzeXN0ZW1zLCB0aGUgUGFy
YWxsZWwgVmlkZW8gSW50ZXJmYWNlIChQVkkpIGFuZCB0aGUKPiA+ID4gPiBIRE1JIFBIWSBmcm9t
IFNhbXN1bmcuIFRoZSBMQ0RJRiBjb250cm9sbGVyIGdlbmVyYXRlcyB0aGUgZGlzcGxheQo+ID4g
PiA+IGFuZCByb3V0ZXMgaXQgdG8gdGhlIFBWSSB3aGljaCBjb252ZXJ0cyBwYXNzZXMgdGhlIHBh
cmFsbGVsIHZpZGVvCj4gPiA+ID4gdG8gdGhlIEhETUkgYnJpZGdlLiAgVGhlIEhETUkgc3lzdGVt
IGhhcyBhIGNvcnJlc3BvbmRpbmcgcG93ZXIKPiA+ID4gPiBkb21haW4gY29udHJvbGxlciB3aG9z
ZSBkcml2ZXIgd2FzIHBhcnRpYWxseSB3cml0dGVuLCBidXQgdGhlCj4gPiA+ID4gZGV2aWNlIHRy
ZWUgZm9yIGl0IHdhcyBuZXZlciBhcHBsaWVkLCBzbyBzb21lIGNoYW5nZXMgdG8gdGhlCj4gPiA+
ID4gcG93ZXIgZG9tYWluIHNob3VsZCBiZSBoYXJtbGVzcyBiZWNhdXNlIHRoZXkndmUgbm90IHJl
YWxseSBiZWVuCj4gPiA+ID4gdXNlZCB5ZXQuCj4gPiA+ID4KPiA+ID4gPiBUaGlzIHNlcmllcyBp
cyBhZGFwdGVkIGZyb20gbXVsdGlwbGUgc2VyaWVzIGZyb20gTHVjYXMgU3RhY2ggd2l0aAo+ID4g
PiA+IGVkaXRzIGFuZCBzdWdnZXN0aW9ucyBmcm9tIGZlZWRiYWNrIGZyb20gdmFyaW91cyBzZXJp
ZXMsIGJ1dCBpdAo+ID4gPiA+IHNpbmNlIGl0J3MgZGlmZmljdWx0IHRvIHVzZSBhbmQgdGVzdCB0
aGVtIGluZGVwZW5kZW50bHksCj4gPiA+ID4gSSBtZXJnZWQgdGhlbSBpbnRvIG9uIHVuaWZpZWQg
c2VyaWVzLiAgVGhlIHZlcnNpb24gaGlzdG9yeSBpcyBhCj4gPiA+ID4gYml0IGFtYmlndW91cyBz
aW5jZSBkaWZmZXJlbnQgY29tcG9uZW50cyB3ZXJlIHN1Ym1pdHRlZCBhdCBkaWZmZXJlbnQKPiA+
ID4gPiB0aW1lcyBhbmQgaGFkIGRpZmZlcmVudCBhbW91bnQgb2YgcmV0cmllcy4gIEluIGFuIGVm
Zm9ydCB0byBtZXJnZSB0aGVtCj4gPiA+ID4gSSB1c2VkIHRoZSBoaWdoZXN0IHZlcnNpb24gYXR0
ZW1wdC4KPiA+ID4gPgo+ID4gPiA+IEFkYW0gRm9yZCAoMyk6Cj4gPiA+ID4gICBkdC1iaW5kaW5n
czogc29jOiBpbXg6IGFkZCBtaXNzaW5nIGNsb2NrIGFuZCBwb3dlci1kb21haW5zIHRvCj4gPiA+
ID4gICAgIGlteDhtcC1oZG1pLWJsay1jdHJsCj4gPiA+ID4gICBwbWRvbWFpbjogaW14OG1wLWJs
ay1jdHJsOiBpbXg4bXBfYmxrOiBBZGQgZmRjYyBjbG9jayB0byBoZG1pbWl4Cj4gPiA+ID4gICAg
IGRvbWFpbgo+ID4gPiA+ICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIERSTV9JTVg4TVBfRFdf
SERNSV9CUklER0UgYXMgbW9kdWxlCj4gPiA+ID4KPiA+ID4gPiBMdWNhcyBTdGFjaCAoOSk6Cj4g
PiA+ID4gICBkdC1iaW5kaW5nczogcGh5OiBhZGQgYmluZGluZyBmb3IgdGhlIGkuTVg4TVAgSERN
SSBQSFkKPiA+ID4gPiAgIHBoeTogZnJlZXNjYWxlOiBhZGQgU2Ftc3VuZyBIRE1JIFBIWQo+ID4g
PiA+ICAgYXJtNjQ6IGR0czogaW14OG1wOiBhZGQgSERNSSBwb3dlci1kb21haW5zCj4gPiA+ID4g
ICBhcm02NDogZHRzOiBpbXg4bXA6IGFkZCBIRE1JIGlycXN0ZWVyCj4gPiA+ID4gICBkdC1iaW5k
aW5nczogZGlzcGxheTogaW14OiBhZGQgYmluZGluZyBmb3IgaS5NWDhNUCBIRE1JIFBWSQo+ID4g
PiA+ICAgZHJtL2JyaWRnZTogaW14OiBhZGQgZHJpdmVyIGZvciBIRE1JIFRYIFBhcmFsbGVsIFZp
ZGVvIEludGVyZmFjZQo+ID4gPiA+ICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IGlteDogYWRkIGJp
bmRpbmcgZm9yIGkuTVg4TVAgSERNSSBUWAo+ID4gPiA+ICAgZHJtL2JyaWRnZTogaW14OiBhZGQg
YnJpZGdlIHdyYXBwZXIgZHJpdmVyIGZvciBpLk1YOE1QIERXQyBIRE1JCj4gPiA+ID4gICBhcm02
NDogZHRzOiBpbXg4bXA6IGFkZCBIRE1JIGRpc3BsYXkgcGlwZWxpbmUKPiA+ID4gPgo+ID4gPiA+
ICAuLi4vZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4LnlhbWwgICAgfCAgMTAyICsr
Cj4gPiA+ID4gIC4uLi9kaXNwbGF5L2lteC9mc2wsaW14OG1wLWhkbWktcHZpLnlhbWwgICAgICB8
ICAgODQgKysKPiA+ID4gPiAgLi4uL2JpbmRpbmdzL3BoeS9mc2wsaW14OG1wLWhkbWktcGh5Lnlh
bWwgICAgIHwgICA2MiArCj4gPiA+ID4gIC4uLi9zb2MvaW14L2ZzbCxpbXg4bXAtaGRtaS1ibGst
Y3RybC55YW1sICAgICB8ICAgMjIgKy0KPiA+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1wLmR0c2kgICAgIHwgIDE0NSArKysKPiA+ID4gPiAgYXJjaC9hcm02NC9jb25m
aWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAgMSArCj4gPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvaW14L0tjb25maWcgICAgICAgICAgICB8ICAgMTggKwo+ID4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9NYWtlZmlsZSAgICAgICAgICAgfCAgICAyICsKPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWktcHZpLmMgIHwgIDIw
NyArKysrCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXR4
LmMgICB8ICAxNTQgKysrCj4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnICAg
ICAgICAgICAgICAgICB8ICAgIDYgKwo+ID4gPiA+ICBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgfCAgICAxICsKPiA+ID4gPiAgZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgIHwgMTA3NSArKysrKysrKysrKysrKysrKwo+ID4g
PiA+ICBkcml2ZXJzL3BtZG9tYWluL2lteC9pbXg4bXAtYmxrLWN0cmwuYyAgICAgICAgfCAgIDEw
ICstCj4gPiA+ID4gIDE0IGZpbGVzIGNoYW5nZWQsIDE4NzYgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4LnlhbWwKPiA+
ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L2lteC9mc2wsaW14OG1wLWhkbWktcHZpLnlhbWwKPiA+ID4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZnNsLGlteDht
cC1oZG1pLXBoeS55YW1sCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2lteC9pbXg4bXAtaGRtaS1wdmkuYwo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWktdHguYwo+ID4gPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1o
ZG1pLmMKPiA+Cj4gPiAtLQo+ID4gUmVnYXJkcywKPiA+Cj4gPiBMYXVyZW50IFBpbmNoYXJ0Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
