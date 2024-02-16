Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EFDC48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUA42rPxq7AkEWXQIyU9BxwFIdJf1U+ZnACT4TL5YAU=; b=xPYVsGdL+qgHBq
	8Y84zFfs55I8XVAtQFuRo0T7k7cOX8YX1tKRjc3UyWhCZeqnOuDykzRLEf91KmF/HAPNjHFUdPakX
	4/uRBbwboDvejZbx+7f6IqgFzb92thasA8XPdLeeYn0IXGeQslLmdpx/a4IDaZHRBKfGD7EaLm0Y0
	+nyNRj59N21FsqWZau8j8loJd9sTLeuQKbBQFVaFVS++LTeRsy7uB/6roSAaFYFLrrdCLh2KMmWRI
	PN9o7s18wmG0JRNKvM5Vs6X8l6heeEd+t97SjidJhWNP7XR7q/eAI8w4z9IE0+PeH99/aXd+vi0eg
	c7bNESCO+V/pf4/njLdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawRF-00000002APF-1eZ5;
	Fri, 16 Feb 2024 11:31:29 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawRA-00000002AN2-3AVq;
	Fri, 16 Feb 2024 11:31:26 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-29938dcb711so205621a91.0;
        Fri, 16 Feb 2024 03:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708083083; x=1708687883; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lyWfSKTdRSu/XPOYIRliEz8xFdTfpgDKmLuvOF0Pin8=;
        b=l+TFZjZpcUuhYcVToDFvFgBPGp5fP3gFo6rWYzairfOKfvnI/g9D24NLToM0zyh0t0
         aGThEyyPbRCH27cBvT+pZxi2MVT+17gDUXdmJtB9L0d1EP5NRnAOgskE67zKJjQJsSMG
         uoKRX/+U3qbI5Zq2zXUjz60x+xOF7Ne0S7Gj2qttoa5hEr5sQHFbjy0vGBuzvH5g9sRX
         UxX+04Bh15Pu3CWQin97YzS3atOdmXg+yjCCYeI08S4LpiVe84AzYau+qyfmW8Akqqly
         sWwlcLUMHT7Hz90NNb4/JkDb5LqmdB1C1zpO0m4hEYC6hz1038F/c3MluVA1q51CAD/Y
         /urQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708083083; x=1708687883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lyWfSKTdRSu/XPOYIRliEz8xFdTfpgDKmLuvOF0Pin8=;
        b=IaX4Cuc+rPnvt3ZabyRPA+4sEGkP/lJhWD3qrp+zxxBEjT9nPvt4DOjoxYvWnWfGUo
         giGAlWygdvO7/+jNy2tK7Br0fCs9EUkgEdwaw990Yd3pZCyqkznh3nnwMx6p37yzXanR
         u3OaC3oxKZQKim1h1imocrafKp7FHaaEGsMVErN60cTWZHfmjzu+0RqjoAD56F+wXxpR
         M7eh9iSydqigIzd+qMwEGoN576obbCGqxv08Psj7wFyy4F+UHBLZrUwCl+cVJiJjlcff
         EDrzUN1CsXkqyh95ybNjGfg+cp7SKODzd7P3kTkMRsFu4JipIVAsIJwA9LW2nqhSRzYa
         Ux1w==
X-Forwarded-Encrypted: i=1; AJvYcCXrSmogYeqE3zUjds4R6pBamknZ9H76sU7gt+51AeW0pO+Kt2hHE+sUEEIytI6EiPlvJm0qIByMydaPf+kwLV/BT8gM2qGLSag9sm7+2A==
X-Gm-Message-State: AOJu0YyKcm3ums2a87iZIEunwduN2CAc3Wcd63puPiGrzQtXzfCciLaT
	lZlDw0ef7sjGd85vMPc0ZqBr9RVWoeMVaVuZ1E0y0dNIVIjIoQa3N6yILCLm+aB0NP6lKPc5t8w
	xg+yYc22szumgHvQN6M8tUvBt3K4=
X-Google-Smtp-Source: AGHT+IEvROAdajvDaGhJmYch+/Aub0Z04uX1ZnjW2ApKdi35HTbO5+Uw3JnvWpTAQ1JVmcbINMpElpvcdSPaIErNnAE=
X-Received: by 2002:a17:90a:d702:b0:299:273c:7331 with SMTP id
 y2-20020a17090ad70200b00299273c7331mr2771398pju.41.1708083083212; Fri, 16 Feb
 2024 03:31:23 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-10-aford173@gmail.com>
 <5916132.MhkbZ0Pkbq@steina-w>
In-Reply-To: <5916132.MhkbZ0Pkbq@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 16 Feb 2024 05:31:12 -0600
Message-ID: <CAHCN7x+80iw0PWa4F4dMA=3RRaChNEO534LPACXd6FK0ndAHpw@mail.gmail.com>
Subject: Re: [PATCH V8 09/12] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	marex@denx.de, frieder.schrempf@kontron.de, 
	Lucas Stach <l.stach@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
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
	Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_033124_825827_168FB8A0 
X-CRM114-Status: GOOD (  26.07  )
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

T24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMzowNeKAr0FNIEFsZXhhbmRlciBTdGVpbgo8YWxleGFu
ZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbT4gd3JvdGU6Cj4KPiBIaSBhbGwsCj4KPiBBbSBTYW1z
dGFnLCAzLiBGZWJydWFyIDIwMjQsIDE3OjUyOjQ5IENFVCBzY2hyaWViIEFkYW0gRm9yZDoKPiA+
IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4KPiA+IFRoZSBI
RE1JIFRYIGNvbnRyb2xsZXIgb24gdGhlIGkuTVg4TVAgU29DIGlzIGEgU3lub3BzeXMgZGVzaWdu
d2FyZSBJUAo+ID4gY29yZSB3aXRoIGEgbGl0dGxlIGJpdCBvZiBTb0MgaW50ZWdyYXRpb24gYXJv
dW5kIGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5j
b20+Cj4gPgo+ID4gLS0tCj4gPiBWMzogIENoYW5nZSBuYW1lIGFuZCBsb2NhdGlvbiB0byBiZXR0
ZXIgaWRlbmZpdHkgYXMgYSBicmlkZ2UgYW5kCj4gPiAgICAgIEhETUkgMi4wYSB0cmFuc21pdHRl
cgo+ID4KPiA+ICAgICAgRml4IHR5cG9zIGFuZCBmZWVkYmFjayBmcm9tIFJvYiBhbmQgYWRkZWQg
cG9ydHMuCj4gPiAtLS0KPiA+ICAuLi4vZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4
LnlhbWwgICAgfCAxMDIgKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEw
MiBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4gPiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4Lnlh
bWwKPiA+Cj4gPiBkaWZmIC0tZ2l0Cj4gPiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L2JyaWRnZS9mc2wsaW14OG1wLWhkbWktdHgueWFtbAo+ID4gYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1p
LXR4LnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAu
LjM3OTFjOWY0ZWJhYgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrCj4gPiBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9mc2wsaW14OG1wLWhkbWktdHgu
eWFtbAo+ID4gQEAgLTAsMCArMSwxMDIgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0K
PiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvYnJpZGdlL2Zz
bCxpbXg4bXAtaGRtaS10eC55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBGcmVlc2NhbGUgaS5N
WDhNUCBEV0MgSERNSSBUWCBFbmNvZGVyCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAt
IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4gKwo+ID4gK2Rlc2NyaXB0
aW9uOgo+ID4gKyAgVGhlIGkuTVg4TVAgSERNSSB0cmFuc21pdHRlciBpcyBhIFN5bm9wc3lzIERl
c2lnbldhcmUKPiA+ICsgIEhETUkgMi4wYSBUWCBjb250cm9sbGVyIElQLgo+ID4gKwo+ID4gK2Fs
bE9mOgo+ID4gKyAgLSAkcmVmOiAvc2NoZW1hcy9kaXNwbGF5L2JyaWRnZS9zeW5vcHN5cyxkdy1o
ZG1pLnlhbWwjCj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiAr
ICAgIGVudW06Cj4gPiArICAgICAgLSBmc2wsaW14OG1wLWhkbWktdHgKPiA+ICsKPiA+ICsgIHJl
Zy1pby13aWR0aDoKPiA+ICsgICAgY29uc3Q6IDEKPiA+ICsKPiA+ICsgIGNsb2NrczoKPiA+ICsg
ICAgbWF4SXRlbXM6IDQKPiA+ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICBpdGVtczoK
PiA+ICsgICAgICAtIGNvbnN0OiBpYWhiCj4gPiArICAgICAgLSBjb25zdDogaXNmcgo+ID4gKyAg
ICAgIC0gY29uc3Q6IGNlYwo+ID4gKyAgICAgIC0gY29uc3Q6IHBpeAo+ID4gKwo+ID4gKyAgcG93
ZXItZG9tYWluczoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIHBvcnRzOgo+ID4g
KyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCj4gPiArCj4g
PiArICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgcG9ydEAwOgo+ID4gKyAgICAgICAgJHJlZjog
L3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4gPiArICAgICAgICBkZXNjcmlw
dGlvbjogUGFyYWxsZWwgUkdCIGlucHV0IHBvcnQKPiA+ICsKPiA+ICsgICAgICBwb3J0QDE6Cj4g
PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnQKPiA+
ICsgICAgICAgIGRlc2NyaXB0aW9uOiBIRE1JIG91dHB1dCBwb3J0Cj4gPiArCj4gPiArICAgIHJl
cXVpcmVkOgo+ID4gKyAgICAgIC0gcG9ydEAwCj4gPiArICAgICAgLSBwb3J0QDEKPgo+IElzIHRo
aXMgcmVhbGx5IGNvcnJlY3QgdGhhdCBwb3J0QDEgaXMgcmVxdWlyZWQ/IEFGQUlDUyB0aGlzIGhv
c3QgYWxyZWFkeQo+IHN1cHBvcnRzIEhQRCBhbmQgRERDIGJ5IGl0c2VsZiwgc28gdGhlcmUgaXMg
bm8gbmVlZCBmb3IgYSBkZWRpY2F0ZWQgSERNSQo+IGNvbm5lY3Rvci4KPiBXaXRoIHRoZSBjdXJy
ZW50IHN0YXRlIG9mIHRoZSBkcml2ZXJzIHRoaXMgb3V0cHV0IHBvcnQgaXMgY29tcGxldGVseSBp
Z25vcmVkCj4gYW55d2F5LiBZZXQgaXQgd29ya3MgZm9yIGEgbG90IG9mIHBlb3BsZS4KCk9uZSBv
ZiB0aGUgZmVlZGJhY2sgcmVzcG9uc2VzIEx1Y2FzIGdvdCB3YXMgdGhhdCBpdCB3YXMgbWlzc2lu
ZyB0aGUKcmVmZXJlbmNlIHRvIHRoZSBIRE1JIGNvbm5lY3Rvciwgc28gSSBhZGRlZCBpdCBhcyBh
IHJlc3BvbnNlIHRvIHRoYXQKZmVlZGJhY2suICBJIGhhdmUgdHJpZWQgZGV2aWNlIHRyZWVzIHdp
dGggYW5kIHdpdGhvdXQgaXQsIGFuZCBpdApkb2Vzbid0IGltcGFjdCBhbnl0aGluZywgYnV0IEl0
IHNlZW1zIGxpa2UgdGhlcmUgbWF5IGJlIGEgcmVxdWlyZW1lbnQKZm9yIGl0LgoKYWRhbQo+Cj4g
QmVzdCByZWdhcmRzLAo+IEFsZXhhbmRlcgo+Cj4gPiArCj4gPiArcmVxdWlyZWQ6Cj4gPiArICAt
IGNvbXBhdGlibGUKPiA+ICsgIC0gcmVnCj4gPiArICAtIGNsb2Nrcwo+ID4gKyAgLSBjbG9jay1u
YW1lcwo+ID4gKyAgLSBpbnRlcnJ1cHRzCj4gPiArICAtIHBvd2VyLWRvbWFpbnMKPiA+ICsgIC0g
cG9ydHMKPiA+ICsKPiA+ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gPiArCj4gPiAr
ZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2Nr
L2lteDhtcC1jbG9jay5oPgo+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0
LWNvbnRyb2xsZXIvaXJxLmg+Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9p
bXg4bXAtcG93ZXIuaD4KPiA+ICsKPiA+ICsgICAgaGRtaUAzMmZkODAwMCB7Cj4gPiArICAgICAg
ICBjb21wYXRpYmxlID0gImZzbCxpbXg4bXAtaGRtaS10eCI7Cj4gPiArICAgICAgICByZWcgPSA8
MHgzMmZkODAwMCAweDdlZmY+Owo+ID4gKyAgICAgICAgaW50ZXJydXB0cyA9IDwwIElSUV9UWVBF
X0xFVkVMX0hJR0g+Owo+ID4gKyAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19IRE1J
X0FQQj4sCj4gPiArICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVBfQ0xLX0hETUlfUkVGXzI2
Nk0+LAo+ID4gKyAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1QX0NMS18zMks+LAo+ID4gKyAg
ICAgICAgICAgICAgICAgPCZoZG1pX3R4X3BoeT47Cj4gPiArICAgICAgICBjbG9jay1uYW1lcyA9
ICJpYWhiIiwgImlzZnIiLCAiY2VjIiwgInBpeCI7Cj4gPiArICAgICAgICBwb3dlci1kb21haW5z
ID0gPCZoZG1pX2Jsa19jdHJsIElNWDhNUF9IRE1JQkxLX1BEX0hETUlfVFg+Owo+ID4gKyAgICAg
ICAgcmVnLWlvLXdpZHRoID0gPDE+Owo+ID4gKyAgICAgICAgcG9ydHMgewo+ID4gKyAgICAgICAg
ICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsKPiA+ICsgICAgICAgICAgIHBvcnRAMCB7Cj4gPiArICAgICAgICAgICAgIHJlZyA9IDwwPjsK
PiA+ICsKPiA+ICsgICAgICAgICAgICAgaGRtaV90eF9mcm9tX3B2aTogZW5kcG9pbnQgewo+ID4g
KyAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmcHZpX3RvX2hkbWlfdHg+Owo+ID4g
KyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICBw
b3J0QDEgewo+ID4gKyAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgIGhk
bWlfdHhfb3V0OiBlbmRwb2ludCB7Cj4gPiArICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2lu
dCA9IDwmaGRtaTBfY29uPjsKPiA+ICsgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgICAgIH07
Cj4gPiArICAgICAgICB9Owo+ID4gKyAgICB9Owo+Cj4KPiAtLQo+IFRRLVN5c3RlbXMgR21iSCB8
IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkKPiBB
bXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOAo+IEdlc2Now6RmdHNmw7xocmVyOiBEZXRs
ZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3RlZmFuIFNjaG5laWRlcgo+IGh0dHA6Ly93
d3cudHEtZ3JvdXAuY29tLwo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
