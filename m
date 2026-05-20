Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49556CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 11:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usQNa8onK5S8GuHKLs+pjli4OPC7+DirwkLVwgoSGr0=; b=49wtrYSb/odSlG
	z+bBEtVdwscKxmRSIR0ceO5iBtTbDNcSvtqBwhtgzKKHdAQ2/Zw6ZFY54lNGoQ6ROAmGW2j9LcQpp
	++sUsI5mZkyZZOe3P6ENOelneb+a1v7ePBpQQde5DffSHzzMt2rr4p0a/gF5VGaArBA7zO9GLTFfF
	BLEC60dT+HK5prVaZgkEWkColcQeYPGnYWwh8SG76kXFrIIoQWV+NaSts078aKsRVDXbEq23/A7sv
	6UhHTR1cd7kCZ0SpTKct7v4Co8lASno8fG7azTCOi5it3eFPxe2vAmr4zUIFzlHRkjQOrlO434OM5
	MRHlMmKr9fYVGfds7sug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPero-00000004QDl-3lRO;
	Wed, 20 May 2026 11:13:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPerm-00000004QD1-3uKY;
	Wed, 20 May 2026 11:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JRJUo4PXuYN1XhJVP15C+J6R1n1WzcWxMs+6lKcGyXw=; b=UIMfPi0n+2sixL8bSd9VaSky4K
	RHWEU0+Im4DinWDobN+TIklEhd6YinjY5ra47zGedlGtmCK3VcLA4SdnC/T9Wz+xbv787uc9NCmur
	oE/Pb9YEfcxcHLNfgJgespEqEWtw4n5OmHUUJpLH4OusgknEWNuQPRuBNqljFKhUo5+wDF9F6HKDp
	7be2MVHEYOcgda44vWIrGG8KrxbAhoTugxFAOK6tqo9T6Y/e1aUu/oa9ixbiz6AQcrrmBIpaKFezU
	Ywj+BMGYYbwcxGr5YO+NvKrymVGhCxN9ndMlH+BhpCaopR6UWjmoW1Bez1Zy8MLmFiEb1e5C3LRV6
	xx0+IXow==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v15 7/9] drm/rockchip: cdn-dp: Add multiple bridges to support PHY
 port selection
Date: Wed, 20 May 2026 13:12:49 +0200
Message-ID: <12511061.0AQdONaE2F@phil>
In-Reply-To: <20260304094152.92-8-kernel@airkyi.com>
References: <20260304094152.92-1-kernel@airkyi.com>
 <20260304094152.92-8-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_041334_969807_518A4368 
X-CRM114-Status: GOOD (  23.77  )
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

QW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDEwOjQxOjUwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoZSBSSzMzOTkgaGFzIHR3byBVU0IvRFAgY29t
Ym8gUEhZIGFuZCBvbmUgQ0ROLURQIGNvbnRyb2xsZXIuIEFuZAo+IHRoZSBDRE4tRFAgY2FuIGJl
IHN3aXRjaGVkIHRvIG91dHB1dCB0byBvbmUgb2YgdGhlIFBIWXMuIElmIGJvdGggcG9ydHMKPiBh
cmUgcGx1Z2dlZCBpbnRvIERQLCBEUCB3aWxsIHNlbGVjdCB0aGUgZmlyc3QgcG9ydCBmb3Igb3V0
cHV0Lgo+IAo+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciBtdWx0aXBsZSBicmlkZ2VzLCBl
bmFibGluZyB1c2VycyB0byBmbGV4aWJseQo+IHNlbGVjdCB0aGUgb3V0cHV0IHBvcnQuIEZvciBl
YWNoIFBIWSBwb3J0LCBhIHNlcGFyYXRlIGVuY29kZXIgYW5kIGJyaWRnZQo+IGFyZSByZWdpc3Rl
cmVkLgo+IAo+IFRoZSBjaGFuZ2UgaXMgYmFzZWQgb24gdGhlIERSTSBBVVggSFBEIGJyaWRnZSwg
cmF0aGVyIHRoYW4gdGhlCj4gZXh0Y29uIGFwcHJvYWNoLiBUaGlzIHJlcXVpcmVzIHRoZSBEVCB0
byBjb3JyZWN0bHkgZGVzY3JpYmUgdGhlCj4gY29ubmVjdGlvbnMgYmV0d2VlbiB0aGUgZmlyc3Qg
YnJpZGdlIGluIGJyaWRnZSBjaGFpbiBhbmQgRFAKPiBjb250cm9sbGVyLiBGb3IgZXhhbXBsZSwg
dGhlIGJyaWRnZSBjaGFpbiBtYXkgYmUgbGlrZSB0aGlzOgo+IAo+IFBIWSBhdXggYmlyZGdlIC0+
IGZzYTQ0ODAgYW5hbG9nIGF1ZGlvIHN3aXRjaCBicmlkZ2UgLT4KPiBvbm5uLG5iN3ZwcTkwNG0g
VVNCIHJlbWluZGVyIGJyaWRnZSAtPiBVU0ItQyBjb250cm9sbGVyIEFVWCBIUEQgYnJpZGdlCj4g
Cj4gSW4gdGhpcyBjYXNlLCB0aGUgY29ubmVjdGlvbiByZWxhdGlvbnNoaXBzIGFtb25nIHRoZSBQ
SFkgYXV4IGJyaWRnZQo+IGFuZCB0aGUgRFAgY29udG9ybGxlciBuZWVkIHRvIGJlIGRlc2NyaWJl
ZCBpbiBEVC4KPiAKPiBJbiBhZGRpdGlvbiwgdGhlIGNkbl9kcF9wYXJzZV9uZXh0X2JyaWRnZV9k
dCgpIHdpbGwgcGFyc2VzIGl0IGFuZAo+IGRldGVybWluZXMgd2hldGhlciB0byByZWdpc3RlciBv
bmUgb3IgdHdvIGJyaWRnZXMuCj4gCj4gU2luY2UgdGhlcmUgaXMgb25seSBvbmUgRFAgY29udHJv
bGxlciwgb25seSBvbmUgb2YgdGhlIFBIWSBwb3J0cyBjYW4KPiBvdXRwdXQgYXQgYSB0aW1lLiBU
aGUga2V5IGlzIGhvdyB0byBzd2l0Y2ggYmV0d2VlbiBkaWZmZXJlbnQgUEhZcywKPiB3aGljaCBp
cyBoYW5kbGVkIGJ5IGNkbl9kcF9zd2l0Y2hfcG9ydCgpIGFuZCBjZG5fZHBfZW5hYmxlKCkuCj4g
Cj4gVGhlcmUgYXJlIHR3byBjYXNlczoKPiAKPiAxLiBOZWl0aGVyIGJyaWRnZSBpcyBlbmFibGVk
LiBJbiB0aGlzIGNhc2UsIGJvdGggYnJpZGdlcyBjYW4KPiBpbmRlcGVuZGVudGx5IHJlYWQgdGhl
IEVESUQsIGFuZCB0aGUgUEhZIHBvcnQgbWF5IHN3aXRjaCBiZWZvcmUKPiByZWFkaW5nIHRoZSBF
RElELgo+IAo+IDIuIE9uZSBicmlkZ2UgaXMgYWxyZWFkeSBlbmFibGVkLiBJbiB0aGlzIGNhc2Us
IG90aGVyIGJyaWRnZXMgYXJlIG5vdAo+IGFsbG93ZWQgdG8gcmVhZCB0aGUgRURJRC4gU28gd2Ug
d2lsbCB0cnkgdG8gcmV0dXJuIHRoZSBjYWNoZWQgRURJRC4KPiAKPiBTaW5jZSB0aGUgc2NlbmFy
aW8gb2YgdHdvIHBvcnRzIHBsdWcgaW4gYXQgdGhlIHNhbWUgdGltZSBpcyByYXJlLAo+IEkgZG9u
J3QgaGF2ZSBhIGJvYXJkIHdoaWNoIHN1cHBvcnQgdHdvIFR5cGVDIGNvbm5lY3RvciB0byB0ZXN0
IHRoaXMuCj4gVGhlcmVmb3JlLCBJIHRlc3RlZCBmb3JjZWQgc3dpdGNoaW5nIG9uIGEgc2luZ2xl
IFBIWSBwb3J0LCBhcyB3ZWxsIGFzCj4gb3V0cHV0IHVzaW5nIGEgZmFrZSBQSFkgcG9ydCBhbG9u
Z3NpZGUgYSByZWFsIFBIWSBwb3J0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxj
aGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiBSZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8
bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
