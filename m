Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA6DC48260
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 02:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wbWfKrMYz/Uwx7gkYIj/RHz2sdIuhe+OCeOqucBhWs=; b=JCN0XC2Xws0h1F
	Isn5qlkUQXPN7Qfc0Sa8KFudVOvjXkuuQMEX2xHW/4CRHIbx29e63PHDg8qrxr1rpL7+4d+RZr7+G
	Yj/Okk2xwgbrx7LZ0sr3OHrXWjSIe+AVOtO4YVnlLf1SUUIBnHzN6jjI2i8acAqvtUAGtnk2m5utf
	Ydcl+CasLWn8icjWOGNqA9v3fiLDyQE4StNqnJpYnaR38MmC4oSK/TdxVy7jfIrHNWdSe55lWZHnD
	Q9Hx7SZp3utTwv6TW+1MaOCGWJRGzWdUsPCWUAFr2gd9yeYS+rAsk8GNuYcaNV67UpR058c80u/gs
	0UTOiQg0blK60uhYILYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXB9J-00000005nN3-2DJ5;
	Tue, 06 Feb 2024 02:25:25 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXB9G-00000005nMJ-105n;
	Tue, 06 Feb 2024 02:25:23 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3bd4e6a7cb0so236965b6e.3;
        Mon, 05 Feb 2024 18:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707186319; x=1707791119; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ri1YQ2hEkTssAKG3opIAud0Ytbj1JVk5Pa/2THbXMCI=;
        b=YDYWPhdT6RqxI+KRQ2IdQlwPyeuQ0mm9rCHFITRM/G1FAQIYB9IpIQ4ptT7W2/f5Mq
         h6wULLJKwdXAW3TTnZCqKESV9uInGmUdpzcPrtWkIa5DUXZNIW17NKQAWo/Uz8jrOQ8L
         riQryEAXeEeDJUPynZ3gle5hfcrYrrXuVO0D8OauToLosFdW6jGJiayEMj+ZpBH7/Zc4
         afq9uDD/s/wUPnAdrIf2fMh9P7Wi5IiMQzc18c7ypdxgHS1zi3LW0/wAkS4du3yvEnBs
         zOD5WqoPi3InbqVo1Eieuyi7CBvdET0nnNI0fclieSjvX4z6sPfE1OEK48mbD1d2XHB3
         Ac7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707186319; x=1707791119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ri1YQ2hEkTssAKG3opIAud0Ytbj1JVk5Pa/2THbXMCI=;
        b=stgi+aQydOGNDDHpvjiBH+KW6HXz8MsDy5R/QmZxo4YEYuVh7BtLJ4fDaRad740Py2
         labeIPaGcGCIdqUzWhkO7GxHy6GYiROjU20ZHkPkir2cqP46hNuBPYZ9o5R4gVOLteaW
         N2feng9u9WgbUoxwTNEHJ8Y3CppTTqKsXV1BNw1mtnkWVLX0V7q9P87XV2DbQo2VYlDM
         HmMXUr/lqfreao+vKJJnuqvdsHt77ZsLYTFX6zCJUICaZsQf5zWUEaD+NuHbedH1S0pw
         +pAMleg4sQ5B2bdBOU/bI1PYwTqV10imx3t0D1qj2CBw++OaZK0oy7FjGarXEGH7vl3K
         Zyxw==
X-Gm-Message-State: AOJu0YzME000FMAA4HnXdoKm2EK9s43cGz9pC7TldK1BXX6/ChhsSY4R
	TbazbV0rWsFRwOGX5sOgMAtVbSzP9ggrK5BEkiRL+2uFuV2GLhqcL+psEmpsEBhRoGEMtrl7zOw
	FUyAz+ZPiDOjFbEghYXW/hGwDRFk=
X-Google-Smtp-Source: AGHT+IEVsuie2ylzQj0kySZ8nRKieVfkGo33FysFNzbB3nzkZJlRBk3LZIRL0PZ4oMIKZNDj5ZH6MnaaktdvbHDH3JA=
X-Received: by 2002:a05:6808:11c8:b0:3be:c4df:6ccf with SMTP id
 p8-20020a05680811c800b003bec4df6ccfmr1892265oiv.5.1707186319364; Mon, 05 Feb
 2024 18:25:19 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-6-aford173@gmail.com>
 <1880028.tdWV9SEqCh@steina-w>
In-Reply-To: <1880028.tdWV9SEqCh@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 5 Feb 2024 20:25:08 -0600
Message-ID: <CAHCN7xJZ5m1kZwx_9whx7Bv3B4N8mhB1feZUO4PpcosBXe5R2g@mail.gmail.com>
Subject: Re: [PATCH V8 05/12] arm64: dts: imx8mp: add HDMI power-domains
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_182522_305572_B1B26FBD 
X-CRM114-Status: GOOD (  23.70  )
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

T24gTW9uLCBGZWIgNSwgMjAyNCBhdCAxOjI24oCvQU0gQWxleGFuZGVyIFN0ZWluCjxhbGV4YW5k
ZXIuc3RlaW5AZXcudHEtZ3JvdXAuY29tPiB3cm90ZToKPgo+IEhpIEFkYW0sCj4KPiB0aGFua3Mg
Zm9yIHdvcmtpbmcgb24gdGhpcy4KPgo+IEFtIFNhbXN0YWcsIDMuIEZlYnJ1YXIgMjAyNCwgMTc6
NTI6NDUgQ0VUIHNjaHJpZWIgQWRhbSBGb3JkOgo+ID4gRnJvbTogTHVjYXMgU3RhY2ggPGwuc3Rh
Y2hAcGVuZ3V0cm9uaXguZGU+Cj4gPgo+ID4gVGhpcyBhZGRzIHRoZSBQR0MgYW5kIEhETUkgYmxr
LWN0cmwgbm9kZXMgcHJvdmlkaW5nIHBvd2VyIGNvbnRyb2wgZm9yCj4gPiBIRE1JIHN1YnN5c3Rl
bSBwZXJpcGhlcmFscy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTcz
QGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPgo+ID4gLS0tCj4gPiBWMjogIEFkZCBtaXNzaW5nIHBvd2VyLWRvbWFpbnMgaGRj
cCBhbmQgaHJ2Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXAuZHRzaSB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDM4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OG1wLmR0c2kgaW5kZXgKPiA+IDc2YzczZGFmNTQ2Yi4uNWM1NDA3M2RlNjE1IDEwMDY0
NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gPiBAQCAt
ODM2LDYgKzgzNiwyMyBAQCBwZ2NfbWVkaWFtaXg6IHBvd2VyLWRvbWFpbkAxMCB7Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsK
PiBJTVg4TVBfQ0xLX01FRElBX0FQQl9ST09UPjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfTsKPiA+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBnY19oZG1pbWl4OiBwb3dlci0KPiBkb21haW5zQDE0IHsKPgoKQWxleGFuZGVyLAoK
VGhhbmtzIGZvciB0aGUgZmVlZGJhY2suCgo+IEFzIHBlciBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcG93ZXIvZnNsLGlteC1ncGN2Mi55YW1sIHRoZSBub2RlCj4gc2hvdWxkIGJl
IGNhbGxlZCBwb3dlci1kb21haW5ALgo+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi0KPiBjZWxscyA9IDwwPjsKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPQo+IDxJTVg4TVBf
UE9XRVJfRE9NQUlOX0hETUlNSVg+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xrCj4gSU1YOE1QX0NMS19IRE1JX1JPT1Q+LAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwmY2xrCj4gSU1YOE1QX0NMS19IRE1JX0FQQj47Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0KPiA8JmNsayBJTVg4TVBf
Q0xLX0hETUlfQVhJPiwKPiA+ICsKPiAgIDwmY2xrIElNWDhNUF9DTEtfSERNSV9BUEI+Owo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNs
b2NrLQo+IHBhcmVudHMgPSA8JmNsayBJTVg4TVBfU1lTX1BMTDJfNTAwTT4sCj4gPiArCj4gICAg
ICAgICAgPCZjbGsgSU1YOE1QX1NZU19QTEwxXzEzM00+Owo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLQo+IHJhdGVzID0gPDUw
MDAwMDAwMD4sIDwxMzMwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwZ2NfaGRtaV9waHk6IHBvd2VyLQo+IGRvbWFpbnNAMTUgewo+Cj4gQXMgcGVyIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9mc2wsaW14LWdwY3YyLnlhbWwgdGhlIG5v
ZGUKPiBzaG91bGQgYmUgY2FsbGVkIHBvd2VyLWRvbWFpbkAuCgpXaG9vcHMuICBJIHRvdGFsbHkg
bWlzc2VkIHRoZXNlIHdoZW4gSSBhcHBsaWVkIHRoZW0uICBJJ2xsIGhhdmUgdGhlbQpmaXhlZCBv
biB0aGUgbmV4dCBzcGluLgo+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi0KPiBjZWxscyA9IDwwPjsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPQo+IDxJTVg4TVBfUE9XRVJf
RE9NQUlOX0hETUlfUEhZPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPiA+ICsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdj
X21pcGlfcGh5MjogcG93ZXItCj4gZG9tYWluQDE2IHsKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWluLQo+IGNlbGxzID0gPDA+Owo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9Cj4g
PElNWDhNUF9QT1dFUl9ET01BSU5fTUlQSV9QSFkyPjsKPiA+IEBAIC0xMzYxLDYgKzEzNzgsMjcg
QEAgZXFvczogZXRoZXJuZXRAMzBiZjAwMDAgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50Zl9tb2RlID0gPCZncHIgMHg0PjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiA+ICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBoZG1pX2Jsa19jdHJsOiBibGstY3RybEAz
MmZjMDAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImZzbCxpbXg4bXAtaGRtaS1ibGstCj4gY3RybCIsICJzeXNjb24iOwo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MzJmYzAwMDAgMHgyM2M+Owo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19IRE1JX0FQQj4s
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsawo+IElNWDhN
UF9DTEtfSERNSV9ST09UPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwmY2xrCj4gSU1YOE1QX0NMS19IRE1JX1JFRl8yNjZNPiwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUF9DTEtfSERNSV8yNE0+LAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsKPiBJTVg4TVBfQ0xL
X0hETUlfRkRDQ19UU1Q+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2st
bmFtZXMgPSAiYXBiIiwgImF4aSIsCj4gInJlZl8yNjZtIiwgInJlZl8yNG0iLCAiZmRjYyI7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfaGRt
aW1peD4sCj4gPCZwZ2NfaGRtaW1peD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPCZwZ2NfaGRtaW1peD4sCj4gPCZwZ2NfaGRtaW1peD4sCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZwZ2NfaGRtaW1p
eD4sCj4gPCZwZ2NfaGRtaW1peD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPCZwZ2NfaGRtaW1peD4sCj4gPCZwZ2NfaGRtaV9waHk+LAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmcGdjX2hkbWltaXg+
LAo+IDwmcGdjX2hkbWltaXg+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG93
ZXItZG9tYWluLW5hbWVzID0gImJ1cyIsCj4gImlycXN0ZWVyIiwgImxjZGlmIiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJwYWkiLCAicHZp
IiwKPiAidHJuZyIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiaGRtaS10eCIsCj4gImhkbWktdHgtcGh5IiwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJoZGNwIiwKPiAiaHJ2IjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgICAgICAgICAgfTsKPiA+Cj4K
PiBBY2NvcmRpbmcgdG8gUk0gdGhpcyBibG9jayBpcyBwYXJ0IG9mIEFJUFM0LCBzbyBpdCBzaG91
bGQgYmUgYmVsb3cKPiBoc2lvX2Jsa19jdHJsLgoKVGhpcyBpcyBob3cgaXQgd2FzIHdoZW4gSSBn
b3QgaXQsIGJ1dCBJIHNob3VsZCBoYXZlIGNhdWdodCBpdC4gIFRoYW5rcwpmb3IgdGhhdC4gIEl0
IGxvb2tzIGxpa2UgdGhlIHN1YnNlcXVlbnQgSERNSSwgSVJRX3N0ZWVydGluZywgTENESUYgYW5k
ClBIWSBvbmVzIGFyZSBhbHNvIG91dCBvZiBwbGFjZS4KCmFkYW0KPgo+IEJlc3QgcmVnYXJkcywK
PiBBbGV4YW5kZXIKPgo+ID4gICAgICAgICAgICAgICBhaXBzNTogYnVzQDMwYzAwMDAwIHsKPgo+
Cj4gLS0KPiBUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4
MjIyOSBTZWVmZWxkLCBHZXJtYW55Cj4gQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgK
PiBHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0
ZWZhbiBTY2huZWlkZXIKPiBodHRwOi8vd3d3LnRxLWdyb3VwLmNvbS8KPgo+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
