Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC65C48260
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 03:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBkT+hy40fJJEjj33mMYHhhab/hDvIANwWrYqPXOfNo=; b=3HTnsHe+qgCbFK
	BeUweNlpxnpccLnDo5SmPwMXoVbAyHYNlxsKdFTWZH4nPaU6PJx70Y+rHOZo+Fjw+an5n9kZ0I67g
	QjlYwkA1Sxrs5RHLx/bDFBW9DQV63zFPybqtOwBEJ+TFFV0iwqGDGt4971lMWaKJ6ns4M3kklamae
	Lik9/TxzW8Qz/dKJlI15bzT0o2c9hEolJwP522XWLUTW0CGXyPQS6Qg2F3Y/YUXAGCdojTW5jew3e
	uFhH9axZbwq934xltmHPzZV3Q34Vcx+5Wl7mEZu+T4nVV5aJgouCZXJ5aophEfScxLO/l/jmNkdEr
	IxhEZTZtOTSuySWemN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXCIq-00000005wIV-3cnb;
	Tue, 06 Feb 2024 03:39:20 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXCIn-00000005wHF-3b6N;
	Tue, 06 Feb 2024 03:39:19 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2906bcae4feso3950233a91.3;
        Mon, 05 Feb 2024 19:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707190756; x=1707795556; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYjlWLoy2riopH+zlSIcKPkCBJ5S6WcdaC4eCMXtR5k=;
        b=YYhJgkBA/VaUG8pymJAxy4ay8BDClJGRgxPXZuyb1UFHF8otQcHa8jrANe/pTXU8JX
         zyvtwDaaG+1eHBZpielsKs/4OOFgOLAUMBRlmaBwqaZgU9BY/JHhzG2VhqIAm3V+eR3Q
         PtuhmRDhuJLC432W2KCu93x23ucjPR4Weq46OCfeBci+5LUZcw3UM1gTRMkU1B7Gv7X3
         sUOM66gCpvI6FUtidKWsV+G6XP3ue6cU9aCIoVU+nu+zH0JcDrEBxFDm1PIlIy0Cn6pg
         zR5r9SGReDE/HFC+A3SncqUUaOJ10M7A+V2xJNPp43IinHj5Pc+Eo9aTfi24U+X3AUU9
         ANHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707190756; x=1707795556;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYjlWLoy2riopH+zlSIcKPkCBJ5S6WcdaC4eCMXtR5k=;
        b=Bjs+m2mwXnc05fJwDcjsrLQysBJp3hOB4Bau+42KrS4EUFEeMQA8LLfMv5VxiA9DqZ
         zxoslrattxkh/a2g3VFP4H+JvGxbvyryVe0JhAixQPazU7KhqekeVB/MaX1mxUhZQ3UZ
         BEaTjgh/1rDY8FaqfAQrhJ7zMw6HNTHBZEixTh9Esy5ooQ+93UQQebsP9+cf/vtjXM2K
         7i+n3s+QARgyFYod8dXjWNJcDNosfILfss2+PD98UjiL21UVuLcFtlIEJPNnVHyvZZn2
         aT9QNKT7ZOFk64GDs3QeRZ8xATJDR6AZEj5sJLXXfFHJ5BgzbAXUQoJL/tTNrepoW5x5
         ZAow==
X-Gm-Message-State: AOJu0Yyn07nfXgYeURFvTF+dvZilOrkvw5EJm4AU369+GJqq11lyk7mV
	3gIC3j709nN6wy7Wi7mJ3VLv81D0YijPgdctVaWLqBkEIaIlGHtvBj4JaQ5osY8yx+WSzeFrZ1W
	LLJTjiMpC7XW1qanphA+pSsk1h51ClYEdQto=
X-Google-Smtp-Source: AGHT+IEi3Qu7s8A5yqq9dadRqq+/DNxO2AVwQ1u94+npiHZDRfNlXaJVAhLSodnyi3Tw6RgQjNl4siYPcAtd7AmA2jQ=
X-Received: by 2002:a17:90a:f195:b0:296:379b:6739 with SMTP id
 bv21-20020a17090af19500b00296379b6739mr1208689pjb.48.1707190755465; Mon, 05
 Feb 2024 19:39:15 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-3-aford173@gmail.com>
 <CAA8EJpo4omXogg48urEMzxQ+CA7DNTSf66pA6hoO8wpmtn_-MQ@mail.gmail.com> <20240205081719.z2uqa4dwn5ucsymv@pengutronix.de>
In-Reply-To: <20240205081719.z2uqa4dwn5ucsymv@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 5 Feb 2024 21:39:04 -0600
Message-ID: <CAHCN7x+9pLZZhypgVh8Q3jAxeM6UKJrPCOdjVoszK3XLTh=gBQ@mail.gmail.com>
Subject: Re: [PATCH V8 02/12] phy: freescale: add Samsung HDMI PHY
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, devicetree@vger.kernel.org, 
	alexander.stein@ew.tq-group.com, Catalin Marinas <catalin.marinas@arm.com>, 
	dri-devel@lists.freedesktop.org, frieder.schrempf@kontron.de, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, 
	David Airlie <airlied@gmail.com>, marex@denx.de, Robert Foss <rfoss@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, linux-pm@vger.kernel.org, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Will Deacon <will@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, 
	Vinod Koul <vkoul@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_193917_958833_48B41327 
X-CRM114-Status: GOOD (  38.29  )
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

T24gTW9uLCBGZWIgNSwgMjAyNCBhdCAyOjE34oCvQU0gTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiAyNC0wMi0wNCwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPiA+IE9uIFNhdCwgMyBGZWIgMjAyNCBhdCAxNzo1MywgQWRhbSBGb3JkIDxhZm9yZDE3
M0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4KPiA+ID4KPiA+ID4gVGhpcyBhZGRzIHRoZSBkcml2ZXIgZm9yIHRo
ZSBTYW1zdW5nIEhETUkgUEhZIGZvdW5kIG9uIHRoZQo+ID4gPiBpLk1YOE1QIFNvQy4KPiA+ID4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+ID4g
PiBUZXN0ZWQtYnk6IEFsZXhhbmRlciBTdGVpbiA8YWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3Vw
LmNvbT4KPiA+ID4gLS0tCj4gPiA+IFY0OiAgTWFrZSBsb29rdXAgdGFibGUgaGV4IHZhbHVlcyBs
b3dlciBjYXNlLgo+ID4gPgo+ID4gPiBWMzogIFJlLW9yZGVyIHRoZSBNYWtlZmlsZSB0byBrZWVw
IGl0IGFscGhhYmV0aWNhbAo+ID4gPiAgICAgIFJlbW92ZSB1bnVzZWQgZGVmaW5lcwo+ID4gPgo+
ID4gPiBWMjogIEZpeGVkIHNvbWUgd2hpdGVzcGFjZSBmb3VuZCBmcm9tIGNoZWNrcGF0Y2gKPiA+
ID4gICAgICBDaGFuZ2UgZXJyb3IgaGFuZGxpbmcgd2hlbiBlbmFibGluZyBhcGJjbGsgdG8gdXNl
IGRldl9lcnJfcHJvYmUKPiA+ID4gICAgICBSZWJhc2Ugb24gTGludXgtTmV4dAo+ID4gPgo+ID4g
PiAgICAgIEkgKEFkYW0pIHRyaWVkIHRvIGhlbHAgbW92ZSB0aGlzIGFsb25nLCBzbyBJIHRvb2sg
THVjYXMnIHBhdGNoIGFuZAo+ID4gPiAgICAgIGF0dGVtcHRlZCB0byBhcHBseSBmaXhlcyBiYXNl
ZCBvbiBmZWVkYmFjay4gIEkgZG9uJ3QgaGF2ZQo+ID4gPiAgICAgIGFsbCB0aGUgaGlzdG9yeSwg
c28gYXBvbG9naWVzIGZvciB0aGF0Lgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9LY29uZmlnICAgICAgICAgICAgICAgIHwgICAgNiArCj4gPiA+ICBkcml2ZXJzL3BoeS9m
cmVlc2NhbGUvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgIDEgKwo+ID4gPiAgZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAxMDc1ICsrKysrKysrKysrKysr
KysrKwo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMDgyIGluc2VydGlvbnMoKykKPiA+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYwo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25m
aWcgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvS2NvbmZpZwo+ID4gPiBpbmRleCA4NTM5NThmYjJj
MDYuLjVjMmI3MzA0MmRmYyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxl
L0tjb25maWcKPiA+ID4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcKPiA+ID4g
QEAgLTM1LDYgKzM1LDEyIEBAIGNvbmZpZyBQSFlfRlNMX0lNWDhNX1BDSUUKPiA+ID4gICAgICAg
ICAgIEVuYWJsZSB0aGlzIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgUENJRSBQSFkgYXMgZm91bmQg
b24KPiA+ID4gICAgICAgICAgIGkuTVg4TSBmYW1pbHkgb2YgU09Dcy4KPiA+ID4KPiA+ID4gK2Nv
bmZpZyBQSFlfRlNMX1NBTVNVTkdfSERNSV9QSFkKPiA+ID4gKyAgICAgICB0cmlzdGF0ZSAiU2Ft
c3VuZyBIRE1JIFBIWSBzdXBwb3J0Igo+ID4gPiArICAgICAgIGRlcGVuZHMgb24gT0YgJiYgSEFT
X0lPTUVNCj4gPiA+ICsgICAgICAgaGVscAo+ID4gPiArICAgICAgICAgRW5hYmxlIHRoaXMgdG8g
YWRkIHN1cHBvcnQgZm9yIHRoZSBTYW1zdW5nIEhETUkgUEhZIGluIGkuTVg4TVAuCj4gPiA+ICsK
PiA+ID4gIGVuZGlmCj4gPiA+Cj4gPiA+ICBjb25maWcgUEhZX0ZTTF9MWU5YXzI4Rwo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlIGIvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL01ha2VmaWxlCj4gPiA+IGluZGV4IGNlZGIzMjhiYzRkMi4uNzllNWYxNmQzY2U4
IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUKPiA+ID4g
KysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlCj4gPiA+IEBAIC00LDMgKzQsNCBA
QCBvYmotJChDT05GSUdfUEhZX01JWEVMX0xWRFNfUEhZKSAgICAgICAgKz0gcGh5LWZzbC1pbXg4
cW0tbHZkcy1waHkubwo+ID4gPiAgb2JqLSQoQ09ORklHX1BIWV9NSVhFTF9NSVBJX0RQSFkpICAg
ICAgKz0gcGh5LWZzbC1pbXg4LW1pcGktZHBoeS5vCj4gPiA+ICBvYmotJChDT05GSUdfUEhZX0ZT
TF9JTVg4TV9QQ0lFKSAgICAgICArPSBwaHktZnNsLWlteDhtLXBjaWUubwo+ID4gPiAgb2JqLSQo
Q09ORklHX1BIWV9GU0xfTFlOWF8yOEcpICAgICAgICAgKz0gcGh5LWZzbC1seW54LTI4Zy5vCj4g
PiA+ICtvYmotJChDT05GSUdfUEhZX0ZTTF9TQU1TVU5HX0hETUlfUEhZKSAgKz0gcGh5LWZzbC1z
YW1zdW5nLWhkbWkubwo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtc2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1z
dW5nLWhkbWkuYwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAw
MDAwMDAuLmJmMGUyMjk5ZDAwZgo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gPiA+IEBAIC0wLDAgKzEs
MTA3NSBAQAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gPiA+
ICsvKgo+ID4gPiArICogQ29weXJpZ2h0IDIwMjAgTlhQCj4gPiA+ICsgKiBDb3B5cmlnaHQgMjAy
MiBQZW5ndXRyb25peCwgTHVjYXMgU3RhY2ggPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KPiA+ID4g
KyAqLwo+ID4gPiArCj4gPiA+ICsjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+Cj4gPiA+
ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4K
PiA+ID4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2lvcG9s
bC5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L29mX2RldmljZS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gPiA+ICsjaW5j
bHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvcG1f
cnVudGltZS5oPgo+ID4gPiArCj4gPiA+ICsjZGVmaW5lIFBIWV9SRUdfMzMgICAgICAgICAgICAg
MHg4NAo+ID4gPiArI2RlZmluZSAgUkVHMzNfTU9ERV9TRVRfRE9ORSAgIEJJVCg3KQo+ID4gPiAr
I2RlZmluZSAgUkVHMzNfRklYX0RBICAgICAgICAgIEJJVCgxKQo+ID4gPiArCj4gPiA+ICsjZGVm
aW5lIFBIWV9SRUdfMzQgICAgICAgICAgICAgMHg4OAo+ID4gPiArI2RlZmluZSAgUkVHMzRfUEhZ
X1JFQURZICAgICAgIEJJVCg3KQo+ID4gPiArI2RlZmluZSAgUkVHMzRfUExMX0xPQ0sgICAgICAg
ICAgICAgICAgQklUKDYpCj4gPiA+ICsjZGVmaW5lICBSRUczNF9QSFlfQ0xLX1JFQURZICAgQklU
KDUpCj4gPiA+ICsKPiA+ID4gKwo+ID4gPiArI2RlZmluZSBQSFlfUExMX1JFR1NfTlVNIDQ4Cj4g
PiA+ICsKPiA+ID4gK3N0cnVjdCBwaHlfY29uZmlnIHsKPiA+ID4gKyAgICAgICB1MzIgICAgIGNs
a19yYXRlOwo+ID4gPiArICAgICAgIHU4IHJlZ3NbUEhZX1BMTF9SRUdTX05VTV07Cj4gPiA+ICt9
Owo+ID4gPiArCj4gPiA+ICtjb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZyBwaHlfcGxsX2NmZ1tdID0g
ewo+ID4gPiArICAgICAgIHsgICAgICAgMjIyNTAwMDAsIHsKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgMHgwMCwgMHhkMSwgMHg0YiwgMHhmMSwgMHg4OSwgMHg4OCwgMHg4MCwgMHg0MCwK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg0ZiwgMHgzMCwgMHgzMywgMHg2NSwgMHgw
MCwgMHgxNSwgMHgyNSwgMHg4MCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg2Yywg
MHhmMiwgMHg2NywgMHgwMCwgMHgxMCwgMHg4ZiwgMHgzMCwgMHgzMiwKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgMHg2MCwgMHg4ZiwgMHgwMCwgMHgwMCwgMHgwOCwgMHgwMCwgMHgwMCwg
MHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHgwMCwgMHg4MCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
MHgwMCwgMHhlMCwgMHg4MywgMHgwZiwgMHgzZSwgMHhmOCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAg
ICAgICAgICAgICAgIH0sCj4gPiA+ICsgICAgICAgfSwgewo+ID4gPiArICAgICAgICAgICAgICAg
MjM3NTAwMDAsIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHgwMCwgMHhkMSwgMHg1
MCwgMHhmMSwgMHg4NiwgMHg4NSwgMHg4MCwgMHg0MCwKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgMHg0ZiwgMHgzMCwgMHgzMywgMHg2NSwgMHgwMCwgMHgwMywgMHgyNSwgMHg4MCwKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg2YywgMHhmMiwgMHg2NywgMHgwMCwgMHgxMCwg
MHg4ZiwgMHgzMCwgMHgzMiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg2MCwgMHg4
ZiwgMHgwMCwgMHgwMCwgMHgwOCwgMHgwMCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgMHgwMCwgMHg4MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHgwMCwgMHhlMCwgMHg4MywgMHgwZiwg
MHgzZSwgMHhmOCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgIH0sCj4gPgo+ID4g
R2VuZXJhbGx5IEkgc2VlIHRoYXQgdGhlc2UgZW50cmllcyBjb250YWluIGEgaGlnaCBsZXZlbCBv
ZiBkdXBsaWNhdGlvbi4KPiA+IENvdWxkIHlvdSBwbGVhc2UgZXh0cmFjdCB0aGUgY29tbW9uIHBh
cnQgYW5kIGEgcmF0ZS1kZXBlbmRlbnQgcGFydC4KPiA+IE5leHQsIGl0IHdvdWxkIGJlIGJlc3Qg
aWYgaW5zdGVhZCBvZiB3cml0aW5nIHRoZSByZWdpc3RlciB2YWx1ZXMgdmlhCj4gPiB0aGUgcmF0
ZSBMVVQsIHRoZSBkcml2ZXIgY291bGQgY2FsY3VsYXRlIHRob3NlIHZhbHVlcy4KPiA+IFRoaXMg
YWxsb3dzIHVzIHRvIHN1cHBvcnQgb3RoZXIgSERNSSBtb2RlcyBpZiB0aGUgbmVlZCBhcmlzZXMg
YXQgc29tZSBwb2ludC4KPgo+IEhpIEFkYW0sCj4KPiBjYW4geW91IHBsZWFzZSBoYXZlIGEgbG9v
ayBhdDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzQ4MzA2OTguR1hBRlJxVm9PR0BzdGVp
bmEtdy8KPgo+IHRoZXJlIHdlIGhhdmUgZml4ZWQgdGhpcyBhbHJlYWR5LiBOb3Qgc3VyZSB3aGlj
aCB2ZXJzaW9uIHlvdSBwaWNrZWQgZm9yCj4geW91ciB3b3JrLgoKSXQgbXVzdCBoYXZlIGJlZW4g
YW4gZWFybGllciB2ZXJzaW9uLiAgSSBnb3QgdGhlIGxpc3QgZnJvbSBGYWJpbywgYnV0CkkgbWln
aHQgaGF2ZSBhbHNvIGdvdHRlbiBpdCBtaXhlZCB1cC4gIEknbGwgbG9vayBhdCB0aGlzIHZlcnNp
b24gYW5kCmJhc2UgbXkgc2VyaWVzIG9uIGl0IGFuZCB0cnkgdG8gYWRkcmVzcyBjb21tZW50cyBv
dGhlcnMgbWFkZS4gIEl0J2xsCmxpa2VseSB0YWtlIG1lIGEgZmV3IGRheXMgdG8gY2F0Y2ggdXAu
Cgp0aGFua3MgZm9yIHRoZSBwb2ludGVyLgoKYWRhbQo+Cj4gUmVnYXJkcywKPiAgIE1hcmNvCj4K
PiA+Cj4gPiA+ICsgICAgICAgfSwgewo+ID4gPiArICAgICAgICAgICAgICAgMjQwMDAwMDAsIHsK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHgwMCwgMHhkMSwgMHg1MCwgMHhmMCwgMHgw
MCwgMHgwMCwgMHg4MCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg0Ziwg
MHgzMCwgMHgzMywgMHg2NSwgMHgwMCwgMHgwMSwgMHgyNSwgMHg4MCwKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgMHg2YywgMHhmMiwgMHg2NywgMHgwMCwgMHgxMCwgMHg4ZiwgMHgzMCwg
MHgzMiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgMHg2MCwgMHg4ZiwgMHgwMCwgMHgw
MCwgMHgwOCwgMHgwMCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
MHgwMCwgMHg4MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgMHgwMCwgMHhlMCwgMHg4MywgMHgwZiwgMHgzZSwgMHhmOCwg
MHgwMCwgMHgwMCwKPiA+ID4gKyAgICAgICAgICAgICAgIH0sCj4gPgo+ID4KPiA+IC0tCj4gPiBX
aXRoIGJlc3Qgd2lzaGVzCj4gPiBEbWl0cnkKPiA+Cj4gPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
