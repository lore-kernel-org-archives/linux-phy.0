Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1A1606A32E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 16:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w9TF1f0J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=btgL06DM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=izAsToY0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RyVllQHZYi1U2QgI1Hivwff2uf/0llMnNU648d7h1/8=; b=w9TF1f0J0T+4rQnAPi8WdIv+lv
	/e7P/UirJIEAK3bHKAxHbwAkj/YyVDCzw0gSWKl1daCPd0ncOFOXEfNX+L0B2YYGm3ELuFa1Z4a/C
	tec30Lu8W8L2wVKk2Ox3dWkspBFo9lBeKzX2E2XtORPi+nyjFZ7aSjOi3uKyT7bwx36kcqtN+71Ll
	oiu2dtpDijVODD5T81au8L+YyDoOQ/Y+Y3C6lPrglyuP5QX3EiuqqCxsp7VqeQG58Uu3eQzbzpcQK
	SBAe9szMwdfa2Na+qS0+CbkF/Rluq+n7IwagpwbntnfSigrSJdAU9jbeRUFqWZb2d7pQE9rzUBEZA
	Vq+XB09w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVt7l-000000074N9-43mv;
	Tue, 24 Nov 2026 16:12:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVt7i-000000074Li-3J6T
	for linux-phy@bombadil.infradead.org;
	Tue, 24 Nov 2026 16:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ZAH3uJtDRDARFLlkyP7xUIfb21FLpBpXW/Qncc4Cje4=; b=btgL06DMNycZztpSctKoA0E5Ur
	SYRUrffoJCj/mlTTKZamcTWyok4kiVTnouLEr2fegb0Iur++emUB79VzLquPOX4ntnNVY+JkYj1JL
	yjsOetWlstUoRbdP8zDN1x4LNL+3WQ89kdMnr2bN3GIvb8Zh+Gu2QWPXnp57H14nxSDv3p+gFJfgx
	OHit8Km8K30BJN1p7YZ8cRRMJnZHLxxM0OHHDMl/fK2zZzRXraYzEE/pkYv2HVX42hzpuS5FmFpzH
	6vZ90S9ZJDK0q6auhbUltGlEWd/7xEgM+uVbw2/J1u5ZTW851ZJdxxtCHNAValQ69S+BWKc0wTIGT
	XpEl2owQ==;
Received: from smtpout-03.galae.net ([185.246.85.4])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVt7Y-00000004K5F-29Bc
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 16:11:55 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 586CC4E41766;
	Tue, 24 Nov 2026 16:11:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 21F15601E1;
	Tue, 24 Nov 2026 16:11:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4A72E11E69A44;
	Tue, 24 Nov 2026 17:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795536696; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ZAH3uJtDRDARFLlkyP7xUIfb21FLpBpXW/Qncc4Cje4=;
	b=izAsToY0CPCK6ofDDGATgxe0On9y83CeO4uz6Vb/iYIc9JbPM1wsXYVwuV6uoxzAWXsQjp
	ubSqwRDEA5mm6eldGynVFPdOTCchhyoofs8ADkxfrU9IcSqXfUiz26+QyenyYMxLzFeGCe
	uOLVic3NkI+RGgTHH4jAG5vYhMAjvLGuPLTzkP3qGmr7WufqiSZ7dk7QJF70Jx8eKuRyiO
	9f4h0DXNHj1zUZCH/Q/7rOnpX4cwMfrGfvIrrDpoY4WccWuA/RlDRLPUguGNfJ5hcCd1SO
	uS32qZ5/g++IHzR1o/n/1T5nhEjTSM5ymBNz5jzYK8km3k6Ry6n8anK2ufLY/Q==
From: Benjamin Robin <benjamin.robin@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yuti Amonkar <yamonkar@cadence.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, Andrew Davis <afd@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Chintan Vankar <c-vankar@ti.com>,
 Abhash Kumar Jha <a-kumar2@ti.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Thomas Richard <thomas.richard@bootlin.com>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: cadence-torrent: drop cdns,num-lanes
 default value
Date: Tue, 24 Nov 2026 17:11:25 +0100
Message-ID: <UlYYmHSPRwOwyW5SQXMI_w@bootlin.com>
In-Reply-To: <20261121-favorite-turtle-of-penetration-c3157f@quoll>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-2-da2db7125cd7@bootlin.com>
 <20261121-favorite-turtle-of-penetration-c3157f@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_161152_437294_61B65B48 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0dXJkYXksIE5vdmVtYmVyIDIxLCAyMDI2IGF0IDU6MTnigK9QTSwgS3J6eXN6dG9mIEtv
emxvd3NraSB3cm90ZToKPiBPbiBGcmksIE5vdiAyMCwgMjAyNiBhdCAwMTo1NTo1MFBNICswMTAw
LCBCZW5qYW1pbiBSb2JpbiB3cm90ZToKPiA+IFRoZSBkcml2ZXIgdHJlYXRzIGNkbnMsbnVtLWxh
bmVzIGFzIG1hbmRhdG9yeSBhbmQgcmVmdXNlcyB0byBwcm9iZSBhIFBIWQo+ID4gc3ViLW5vZGUg
dGhhdCBkb2VzIG5vdCBwcm92aWRlIGl0LCBsb2dnaW5nOgo+ID4gCj4gPiAgIE5vICJjZG5zLG51
bS1sYW5lcyItcHJvcGVydHkuCj4gPiAKPiA+IEEgZGVmYXVsdCB2YWx1ZSBpbiB0aGUgc2NoZW1h
IHdyb25nbHkgc3VnZ2VzdHMgdGhhdCB0aGUgcHJvcGVydHkgaXMKPiA+IG9wdGlvbmFsLCB3aGlj
aCBpdCBpcyBub3Qgc2luY2UgaXQgaXMgbGlzdGVkIGFzIHJlcXVpcmVkLiBSZW1vdmUgdGhlCj4g
PiAiZGVmYXVsdDogNCIgc28gdGhlIGJpbmRpbmcgcmVmbGVjdHMgdGhlIGFjdHVhbCBkcml2ZXIg
YmVoYXZpb3IgYW5kIHRoZQo+ID4gbWFuZGF0b3J5IG5hdHVyZSBvZiB0aGUgcHJvcGVydHkuCj4g
Cj4gTm8sIHRoYXQncyBhIGJ1ZyBpbiB0aGUgZHJpdmVyIGludHJvZHVjZWQgaW4gMjAyMC4gWW91
IGlnbm9yZWQgdGhlCj4gYmFja2dyb3VuZCBhbmQgaGlzdG9yeSBvZiB0aGlzIGRyaXZlciBhbmQg
RFQgYmluZGluZ3MuCgpIZWxsbyBLcnp5c3p0b2YsCgpJIHdhcyBub3QgYXdhcmUgdGhhdCB0aGlz
IHdhcyBhIGRyaXZlciBidWcgaW50cm9kdWNlZCBpbiAyMDIwLiBTZXJpZXMgWzFdCm1hZGUgdGhl
ICJjZG5zLG51bS1sYW5lcyIgcHJvcGVydHkgcmVxdWlyZWQgaW4gdGhlIERUIGJpbmRpbmcgYmFj
ayB0aGVuCihzZWUgWzJdKSwgc28gdGhlIG1pc21hdGNoIGhhcyBiZWVuIHRoZXJlIGZvciBzaXgg
eWVhcnMgd2l0aCBubyBvbmUKY29tcGxhaW5pbmcgc28gZmFyLgoKVHdvIG9wdGlvbnMgKEkgaGF2
ZSBhIHNsaWdodCBwcmVmZXJlbmNlIGZvciB0aGUgMm5kIHByb3Bvc2FsKToKCjEuIEtlZXAgbXkg
Y3VycmVudCBjaGFuZ2U6IGxlYXZlIHRoZSBwcm9wZXJ0eSByZXF1aXJlZCBhbmQgZHJvcCB0aGUK
ICAgbWlzbGVhZGluZyAiZGVmYXVsdDogNCIgZnJvbSB0aGUgc2NoZW1hLCBzbyB0aGUgYmluZGlu
ZyBtYXRjaGVzIHRoZQogICBkcml2ZXIncyBiZWhhdmlvci4KCjIuIFJlc3RvcmUgdGhlIHByZXZp
b3VzIGJlaGF2aW9yOiBtYWtlICJjZG5zLG51bS1sYW5lcyIgb3B0aW9uYWwgYW5kCiAgIGRlZmF1
bHQgdG8gNCBsYW5lcyBhZ2FpbiwgZml4aW5nIHRoZSBkcml2ZXIgcmVncmVzc2lvbiBpbnRyb2R1
Y2VkCiAgIGluIDIwMjAuCgpXaGljaCBvbmUgZG8geW91IHByZWZlcj8gSWYgeW91IGNvbnNpZGVy
IHRoZSAyMDIwIGNoYW5nZSBhIHJlZ3Jlc3Npb24sCkkgY2FuIGZpeCB0aGUgZHJpdmVyIGluc3Rl
YWQgYW5kIG1ha2UgdGhlIHByb3BlcnR5IG9wdGlvbmFsIHdpdGggYQpkZWZhdWx0IG9mIDQuCgpb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE2MDAyODA5MTEtOTIxNC02LWdpdC1zZW5k
LWVtYWlsLXNqYWtoYWRlQGNhZGVuY2UuY29tLwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzE2MDAyODA5MTEtOTIxNC04LWdpdC1zZW5kLWVtYWlsLXNqYWtoYWRlQGNhZGVuY2UuY29t
LwoKLS0gCkJlbmphbWluIFJvYmluLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwg
ZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
