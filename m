Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC8CCD11DD
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 12:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr8RgfRbioQ4WOaTKZDKnGbpxwcxVweIqgjyd8zlc2k=; b=0uJxP/unxVHEjm
	ewQaG+rnfy1viU6opO6RWX+xuTVm/GYS99SxLkd9QoqYH8oC/F/WSnrB93AayTUOmYuWFvbMlq8Af
	QVmjEy2Dqt1A3auAGnc+2YlGA68ySf0622DA5K6Vo0bcZzG0JutkcL4lEbTFPASMt57z4UYjHWrUp
	DymBdu3Fom4dgaAXu6ojNHtMRYYnIYMaaKHqkbxPfWeJXAVnfuiwknx3RickqhnXQDX1C2XDPvgZo
	pBLuYRG2++4JRmmFW8zFl1DOn6b2VOo5C0qScNzluMkecexWuWi+aDwqLlxznazvxZdtX2xU/kxoR
	byeMUSTx/OdFraR103wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Tx-00000004MqR-3CA2;
	Tue, 26 Mar 2024 12:00:46 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Tm-00000004MnU-3q4e;
	Tue, 26 Mar 2024 12:00:39 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a4a393b699fso288613366b.0;
        Tue, 26 Mar 2024 05:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711454432; x=1712059232; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+cRXbwSy+kj+jFr9nkKiGYcj2SC4D7bitszSSYK23c=;
        b=KXnzDzCPrLH9KY0qGNT1h49Ajry3d0ADfPdjs81AWK1shO+yAM5j4Z/nV23Av4PcLo
         AL9nlpqTiRgkZsVNORVQXhmdKQNVRgohIT1PJJC25c9FMc0AnO+jYmyWNroOchbaoswL
         AxnJy1PzY/QC4B7xgo5qadR7qNO5ZofjFYfx0OyGrORucdEtmls/s3mlXg4w0QAuqSrQ
         gBHnJjx1DJGuWVSYq0pNGOFRgaPUUstSFsi8yCYrBLgSKDTk5oSoCHGE8DoSsh9QHfll
         ohAajd/wLr0KlV3yHhHBR6hKri6sJUjz8Wt3uNWzAb6W8WmOJoLW2HNXn0Q2cya02Ocx
         Xd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711454432; x=1712059232;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+cRXbwSy+kj+jFr9nkKiGYcj2SC4D7bitszSSYK23c=;
        b=AJStrtyaWr4MdhKu/FJFHm0xk7vibhmd4ApPaoOqHTwN/StKP/nSEd9aqd+6Aqwir5
         ULM+gdZLpX61AifAsB6UKPnZ9CxWPw2cEh/DIGQ1z2ymjSnjQeEN5W9rwOfQu0y+XBk9
         xh+ks2v+cFWTraRXJu6LE8NaGPMVFmhPUIZrZEOReHiidqivqNpOsAOn94R1U7nZzNCM
         a4GkTfkP6g7dB1Z7G53d0u4en81M8v/v1veosPsr+Y3kpquLnsRr5zCzx9b09FiW5QAo
         Q1rVMx2pJ5KD40eidaig04TQ+f6qeAg+r7545oDR/OeoZOdfhI149YBioJ4GhZnTT/al
         HiyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg3njcSuj/sU5PzLv/6gmN09/b01M+4LFAdXIRqE/wL150TZvS9bEnNr737fp9aOPOHxfltvbEgmrIqMgrUwmyNmezYnVLDdLxlUfqDaRpbh1hcDDGugecfmp0o3Uh5988IqfkKHwUwiy4O1NUJqAgXtxL
X-Gm-Message-State: AOJu0YyfOaB9QIf8eFmN7TTJ2Joq7jwUQkoAU0erEa5dKzC2nO1ltX1Q
	da17GpY/yF6k7tTF8hAgrHz9/hl5/I6Hlv8X6bVN5WNZt2SEULPy
X-Google-Smtp-Source: AGHT+IGTVHhqv1Z3qZT1O+W/QmPwT2rWCjt3Smjij2n/6C0H4oN7ExLhExY+im0uK0tJh985OvfRtg==
X-Received: by 2002:a17:907:86a5:b0:a46:e672:9619 with SMTP id qa37-20020a17090786a500b00a46e6729619mr1376237ejc.24.1711454431323;
        Tue, 26 Mar 2024 05:00:31 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-49-82.cust.vodafonedsl.it. [188.217.49.82])
        by smtp.gmail.com with ESMTPSA id u13-20020a17090626cd00b00a45200fe2b5sm4128790ejc.224.2024.03.26.05.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 05:00:30 -0700 (PDT)
Date: Tue, 26 Mar 2024 13:00:27 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Adam Ford <aford173@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org, marex@denx.de,
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Message-ID: <ZgK42/ODNt7prTvD@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20240203165307.7806-1-aford173@gmail.com>
 <ZgHxSHDAt7ytqDC1@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
 <20240325220338.GE23988@pendragon.ideasonboard.com>
 <ZgJ9P3Wx2A2n9Gt+@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
 <CAHCN7xKWUQwfNmTB_bu4Kqm-b6PSPBHvyf8yfRbL53rB20-=DQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKWUQwfNmTB_bu4Kqm-b6PSPBHvyf8yfRbL53rB20-=DQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_050035_002167_69CFFDD8 
X-CRM114-Status: GOOD (  41.89  )
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

SGkgQWRhbSwKCk9uIFR1ZSwgTWFyIDI2LCAyMDI0IGF0IDA2OjQzOjI2QU0gLTA1MDAsIEFkYW0g
Rm9yZCB3cm90ZToKPiBPbiBUdWUsIE1hciAyNiwgMjAyNCBhdCAyOjQ24oCvQU0gVG9tbWFzbyBN
ZXJjaWFpIDx0b21tLm1lcmNpYWlAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSBMYXVyZW50
LAo+ID4KPiA+IE9uIFR1ZSwgTWFyIDI2LCAyMDI0IGF0IDEyOjAzOjM4QU0gKzAyMDAsIExhdXJl
bnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+IEhpIFRvbW1hc28sCj4gPiA+Cj4gPiA+IE9uIE1vbiwg
TWFyIDI1LCAyMDI0IGF0IDEwOjQ4OjU2UE0gKzAxMDAsIFRvbW1hc28gTWVyY2lhaSB3cm90ZToK
PiA+ID4gPiBIaSBBZGFtLCBMdWNhcywKPiA+ID4gPiBUaGFua3MgZm9yIHRoaXMgc2VyaWVzLgo+
ID4gPiA+Cj4gPiA+ID4gVGhpcyBzZXJpZXMgbWFrZSBIRE1JIHdvcmsgb24gZXZrLgo+ID4gPiA+
IEFsbCBpcyB3b3JraW5nIHByb3Blcmx5IG9uIG15IHNpZGUuCj4gPiA+ID4KPiA+ID4gPiBUZXN0
ZWQgb246IExpbnV4IGlteDhtcC1scGRkcjQtZXZrIDYuOS4wLXJjMS4KPiA+ID4gPiBIb3BlIHRo
aXMgaGVscC4KPiA+ID4gPgo+ID4gPiA+IFRlc3RlZC1ieTogVG9tbWFzbyBNZXJjaWFpIDx0b21t
Lm1lcmNpYWlAZ21haWwuY29tPgo+ID4gPgo+ID4gPiBUaGUgRFJNIHNpZGUgaGFzIGJlZW4gbWVy
Z2VkIGFscmVhZHkuIFRoZSBvbmx5IG1pc3NpbmcgcGF0Y2hlcyBhcmUgZm9yCj4gPiA+IHRoZSBQ
SFksIGFuZCB0aGUgbGF0ZXN0IHZlcnNpb24gY2FuIGJlIGZvdW5kIGluCj4gPiA+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI0MDIyNzIyMDQ0NC43NzU2Ni0xLWFmb3JkMTcz
QGdtYWlsLmNvbS8uCj4gPiA+IFlvdSBjYW4gdGVzdCB0aGF0IHNlcmllcyBhbmQgc2VuZCBhIFRl
c3RlZC1ieSB0YWcuIEknbSBjcm9zc2luZyBteQo+ID4gPiBmaW5nZXJzIGFuZCBob3BpbmcgaXQg
d2lsbCBiZSBtZXJnZWQgaW4gdjYuMTAuCj4gPiAoc2FtZSBoZXJlIDopICkKPiA+Cj4gPiBUaGFu
a3MgZm9yIHNoYXJpbmchIDopCj4gPgo+ID4gVG8gYmUgaG9uZXN0IEkgdGVzdCBhbGwgdGhpcyBz
ZXJpZXMgcmViYXNpbmcgbXkgYWx2aXVtIG5leHQgYnJhbmNoIG9uIHRvcCBvZiBtZWRpYV9zdGFn
ZS9tYXN0ZXIgKDYuOS4wLXJjMSkKPiA+IEFsbCBpcyB3b3JraW5nIHByb3Blcmx5IG9uIG15IHNp
ZGUuCj4gPiBJIGZvdW5kIHY4IGludG8gdGhlIGNvbW1pdCBtc2cgaGVyZTogaHR0cHM6Ly9wYXRj
aGVzLmxpbmFyby5vcmcvcHJvamVjdC9saW51eC1wbS9wYXRjaC8yMDI0MDIwMzE2NTMwNy43ODA2
LTktYWZvcmQxNzNAZ21haWwuY29tLwo+ID4gdGhlbiBJJ20gdGhpbmtpbmcgdGhpcyBpcyB0aGUg
bGF0ZXN0Lgo+ID4KPiA+IEknbSBnb2luZyB0byBzd2l0Y2ggdG8geW91ciBzdWdnZXN0aW9uIHRo
YXQgbG9va3MgbW9yZSByZWNlbnQgOikKPiAKPiBTb3JyeSBhYm91dCB0aGUgY29uZnVzaW9uLiAg
SSB3YXMgY29uZnVzZWQgYnkgdGhlIHZlcnNpb25pbmcgdG9vIHdoZW4KPiBJIHB1bGxlZCBmcm9t
IGRpZmZlcmVudCBwYXJ0cyBvZiBMdWNhcycgc3R1ZmYuICBTaW5jZSB2YXJ5aW5nCj4gY29tcG9u
ZW50cyB3ZXJlIGFwcGxpZWQgYXQgZGlmZmVyZW50IHRpbWVzLCBhbmQgdGhlIHJlbWFpbmluZyBw
YXJ0IHdhcwo+IGJhc2VkIG9uIHRoZSB3cm9uZyBzdGFydGluZyBwb2ludCBhbmQgbm90IGFwcGxp
ZWQsIEkgcmV2ZXJ0ZWQgYmFjayB0bwo+IHRoZSB2ZXJzaW9uaW5nIG9mIHRoZSBQSFkgd2hpY2gg
d2FzIHRoZSBvbmx5IHJlbWFpbmluZyBwYXJ0IG90aGVyIHRoYW4KPiBkZXZpY2UgdHJlZSBzdHVm
Zi4KCk5vIHByb2JsZW0sIHRoYW5rcyBmb3IgY2xhcmlmeSA6KQoKVGhhbmtzICYgUmVnYXJkcywK
VG9tbWFzbwoKPiAKPiBhZGFtCj4gPgo+ID4gVGhhbmtzIGFnYWluLAo+ID4gVG9tbWFzbwo+ID4K
PiA+ID4KPiA+ID4gPiBPbiBTYXQsIEZlYiAwMywgMjAyNCBhdCAxMDo1Mjo0MEFNIC0wNjAwLCBB
ZGFtIEZvcmQgd3JvdGU6Cj4gPiA+ID4gPiBUaGUgaS5NWDhNIFBsdXMgaGFzIGFuIEhETUkgY29u
dHJvbGxlciwgYnV0IGl0IGRlcGVuZHMgb24gdHdvCj4gPiA+ID4gPiBvdGhlciBzeXN0ZW1zLCB0
aGUgUGFyYWxsZWwgVmlkZW8gSW50ZXJmYWNlIChQVkkpIGFuZCB0aGUKPiA+ID4gPiA+IEhETUkg
UEhZIGZyb20gU2Ftc3VuZy4gVGhlIExDRElGIGNvbnRyb2xsZXIgZ2VuZXJhdGVzIHRoZSBkaXNw
bGF5Cj4gPiA+ID4gPiBhbmQgcm91dGVzIGl0IHRvIHRoZSBQVkkgd2hpY2ggY29udmVydHMgcGFz
c2VzIHRoZSBwYXJhbGxlbCB2aWRlbwo+ID4gPiA+ID4gdG8gdGhlIEhETUkgYnJpZGdlLiAgVGhl
IEhETUkgc3lzdGVtIGhhcyBhIGNvcnJlc3BvbmRpbmcgcG93ZXIKPiA+ID4gPiA+IGRvbWFpbiBj
b250cm9sbGVyIHdob3NlIGRyaXZlciB3YXMgcGFydGlhbGx5IHdyaXR0ZW4sIGJ1dCB0aGUKPiA+
ID4gPiA+IGRldmljZSB0cmVlIGZvciBpdCB3YXMgbmV2ZXIgYXBwbGllZCwgc28gc29tZSBjaGFu
Z2VzIHRvIHRoZQo+ID4gPiA+ID4gcG93ZXIgZG9tYWluIHNob3VsZCBiZSBoYXJtbGVzcyBiZWNh
dXNlIHRoZXkndmUgbm90IHJlYWxseSBiZWVuCj4gPiA+ID4gPiB1c2VkIHlldC4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBUaGlzIHNlcmllcyBpcyBhZGFwdGVkIGZyb20gbXVsdGlwbGUgc2VyaWVzIGZy
b20gTHVjYXMgU3RhY2ggd2l0aAo+ID4gPiA+ID4gZWRpdHMgYW5kIHN1Z2dlc3Rpb25zIGZyb20g
ZmVlZGJhY2sgZnJvbSB2YXJpb3VzIHNlcmllcywgYnV0IGl0Cj4gPiA+ID4gPiBzaW5jZSBpdCdz
IGRpZmZpY3VsdCB0byB1c2UgYW5kIHRlc3QgdGhlbSBpbmRlcGVuZGVudGx5LAo+ID4gPiA+ID4g
SSBtZXJnZWQgdGhlbSBpbnRvIG9uIHVuaWZpZWQgc2VyaWVzLiAgVGhlIHZlcnNpb24gaGlzdG9y
eSBpcyBhCj4gPiA+ID4gPiBiaXQgYW1iaWd1b3VzIHNpbmNlIGRpZmZlcmVudCBjb21wb25lbnRz
IHdlcmUgc3VibWl0dGVkIGF0IGRpZmZlcmVudAo+ID4gPiA+ID4gdGltZXMgYW5kIGhhZCBkaWZm
ZXJlbnQgYW1vdW50IG9mIHJldHJpZXMuICBJbiBhbiBlZmZvcnQgdG8gbWVyZ2UgdGhlbQo+ID4g
PiA+ID4gSSB1c2VkIHRoZSBoaWdoZXN0IHZlcnNpb24gYXR0ZW1wdC4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBBZGFtIEZvcmQgKDMpOgo+ID4gPiA+ID4gICBkdC1iaW5kaW5nczogc29jOiBpbXg6IGFk
ZCBtaXNzaW5nIGNsb2NrIGFuZCBwb3dlci1kb21haW5zIHRvCj4gPiA+ID4gPiAgICAgaW14OG1w
LWhkbWktYmxrLWN0cmwKPiA+ID4gPiA+ICAgcG1kb21haW46IGlteDhtcC1ibGstY3RybDogaW14
OG1wX2JsazogQWRkIGZkY2MgY2xvY2sgdG8gaGRtaW1peAo+ID4gPiA+ID4gICAgIGRvbWFpbgo+
ID4gPiA+ID4gICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgRFJNX0lNWDhNUF9EV19IRE1JX0JS
SURHRSBhcyBtb2R1bGUKPiA+ID4gPiA+Cj4gPiA+ID4gPiBMdWNhcyBTdGFjaCAoOSk6Cj4gPiA+
ID4gPiAgIGR0LWJpbmRpbmdzOiBwaHk6IGFkZCBiaW5kaW5nIGZvciB0aGUgaS5NWDhNUCBIRE1J
IFBIWQo+ID4gPiA+ID4gICBwaHk6IGZyZWVzY2FsZTogYWRkIFNhbXN1bmcgSERNSSBQSFkKPiA+
ID4gPiA+ICAgYXJtNjQ6IGR0czogaW14OG1wOiBhZGQgSERNSSBwb3dlci1kb21haW5zCj4gPiA+
ID4gPiAgIGFybTY0OiBkdHM6IGlteDhtcDogYWRkIEhETUkgaXJxc3RlZXIKPiA+ID4gPiA+ICAg
ZHQtYmluZGluZ3M6IGRpc3BsYXk6IGlteDogYWRkIGJpbmRpbmcgZm9yIGkuTVg4TVAgSERNSSBQ
VkkKPiA+ID4gPiA+ICAgZHJtL2JyaWRnZTogaW14OiBhZGQgZHJpdmVyIGZvciBIRE1JIFRYIFBh
cmFsbGVsIFZpZGVvIEludGVyZmFjZQo+ID4gPiA+ID4gICBkdC1iaW5kaW5nczogZGlzcGxheTog
aW14OiBhZGQgYmluZGluZyBmb3IgaS5NWDhNUCBIRE1JIFRYCj4gPiA+ID4gPiAgIGRybS9icmlk
Z2U6IGlteDogYWRkIGJyaWRnZSB3cmFwcGVyIGRyaXZlciBmb3IgaS5NWDhNUCBEV0MgSERNSQo+
ID4gPiA+ID4gICBhcm02NDogZHRzOiBpbXg4bXA6IGFkZCBIRE1JIGRpc3BsYXkgcGlwZWxpbmUK
PiA+ID4gPiA+Cj4gPiA+ID4gPiAgLi4uL2Rpc3BsYXkvYnJpZGdlL2ZzbCxpbXg4bXAtaGRtaS10
eC55YW1sICAgIHwgIDEwMiArKwo+ID4gPiA+ID4gIC4uLi9kaXNwbGF5L2lteC9mc2wsaW14OG1w
LWhkbWktcHZpLnlhbWwgICAgICB8ICAgODQgKysKPiA+ID4gPiA+ICAuLi4vYmluZGluZ3MvcGh5
L2ZzbCxpbXg4bXAtaGRtaS1waHkueWFtbCAgICAgfCAgIDYyICsKPiA+ID4gPiA+ICAuLi4vc29j
L2lteC9mc2wsaW14OG1wLWhkbWktYmxrLWN0cmwueWFtbCAgICAgfCAgIDIyICstCj4gPiA+ID4g
PiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgICAgIHwgIDE0NSAr
KysKPiA+ID4gPiA+ICBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAg
ICAgfCAgICAxICsKPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9LY29uZmln
ICAgICAgICAgICAgfCAgIDE4ICsKPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lt
eC9NYWtlZmlsZSAgICAgICAgICAgfCAgICAyICsKPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL2lteC9pbXg4bXAtaGRtaS1wdmkuYyAgfCAgMjA3ICsrKysKPiA+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9pbXg4bXAtaGRtaS10eC5jICAgfCAgMTU0ICsrKwo+ID4g
PiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAg
IDYgKwo+ID4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmlsZSAgICAgICAgICAg
ICAgICB8ICAgIDEgKwo+ID4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jICB8IDEwNzUgKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+ICBkcml2ZXJz
L3BtZG9tYWluL2lteC9pbXg4bXAtYmxrLWN0cmwuYyAgICAgICAgfCAgIDEwICstCj4gPiA+ID4g
PiAgMTQgZmlsZXMgY2hhbmdlZCwgMTg3NiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkK
PiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2ZzbCxpbXg4bXAtaGRtaS10eC55YW1sCj4gPiA+ID4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L2lteC9mc2wsaW14OG1wLWhkbWktcHZpLnlhbWwKPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9mc2wsaW14OG1wLWhk
bWktcGh5LnlhbWwKPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9pbXgvaW14OG1wLWhkbWktcHZpLmMKPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWktdHguYwo+ID4gPiA+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5n
LWhkbWkuYwo+ID4gPgo+ID4gPiAtLQo+ID4gPiBSZWdhcmRzLAo+ID4gPgo+ID4gPiBMYXVyZW50
IFBpbmNoYXJ0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
