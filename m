Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51A22C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 10:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7l5HmaTu1qSz/zv/OX9VdLsOfthKJANxC4B+sYA4L0=; b=D1OqUrDpKx/992
	fIwzZ56RvW8UYiTd0TorrS07lwOs1PTmGvFLCvFsc93LqnminhTK1w7uCeWEohup1Hs4Y2oaTklDM
	bgqkSFHFrrPcdlBPJR/RAupbBgXXC64oTvFAjCaZJ1CnmhkflrzOtk9LVqCDfpDT4wauyGO5uEtVM
	fCs9g2Jx4CI+RteF+pZEPlSHkymUfBtwNIHlrkCjUuUr7TRa8B+vBE8S8qIgFT0ApKoEySCh2Pu41
	G5h24RuicKBFQfocDww+qui3+7QCPlDgYIKtwvoYD0gzY4dMzMZA1Wy3HXpqg/6ko2bwYQbgqQx86
	o/R1cKgesBGh6p4QRq2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outaY-00ACuj-HX; Tue, 15 Nov 2022 10:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outQf-00A5zD-Vy; Tue, 15 Nov 2022 10:44:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1232B13D5;
	Tue, 15 Nov 2022 02:44:37 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 061473F73B;
	Tue, 15 Nov 2022 02:44:28 -0800 (PST)
Date: Tue, 15 Nov 2022 10:44:26 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
 <vkoul@kernel.org>
Cc: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>, Chen-Yu Tsai
 <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <20221115104426.20728ba5@donnerap.cambridge.arm.com>
In-Reply-To: <52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-4-andre.przywara@arm.com>
	<Y2ypy0CM8rJGu2g4@matsya>
	<4438485.LvFx2qVVIh@jernej-laptop>
	<52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_024434_112508_09337C86 
X-CRM114-Status: GOOD (  18.97  )
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

T24gVHVlLCAxNSBOb3YgMjAyMiAxMTowMzoyNCArMDEwMApLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgoKSGksCgo+IE9uIDE1LzExLzIw
MjIgMDc6MDEsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSDEjWV0cnRlaywgMTAuIG5v
dmVtYmVyIDIwMjIgb2IgMDg6MzU6MzkgQ0VUIGplIFZpbm9kIEtvdWwgbmFwaXNhbChhKTogIAo+
ID4+IE9uIDA2LTExLTIyLCAxNTo0OCwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6ICAKPiA+Pj4gRnJv
bTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPj4+Cj4gPj4+IFRoZSBGMUMxMDBz
IFNvQyBoYXMgb25lIFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQgdG8gYSBNVVNCIGNvbnRyb2xsZXIu
Cj4gPj4+Cj4gPj4+IEFkZCBzdXBwb3J0IGZvciBpdHMgVVNCIFBIWS4gIAo+ID4+Cj4gPj4gVGhp
cyBkb2VzIG5vdCBhcHBseSBmb3IgbWUsIHBsZWFzZSByZWJhc2UgYW5kIHJlc2VuZAo+ID4+Cj4g
Pj4gQWxzbywgY29uc2lkZXIgc3BsaXR0aW5nIHBoeSBwYXRjaGVzIGZyb20gdGhpcy4gSSBkb250
IHRoaW5rIHRoZXJlIGlzCj4gPj4gYW55IGRlcGVuZGVuY3kgIAo+ID4gCj4gPiBEVCBwYXRjaGVz
IGluIHRoaXMgc2VyaWVzIGRlcGVuZCBvbiBmdW5jdGlvbmFsaXR5IGFkZGVkIGhlcmUuCj4gPiAg
IAo+IAo+IERUUyBhbHdheXMgZ29lcyBzZXBhcmF0ZWx5IGZyb20gZHJpdmVyIGNoYW5nZXMgYmVj
YXVzZSBpdCBpcyBhIGhhcmR3YXJlCj4gZGVzY3JpcHRpb24uIERlcGVuZGluZyBvbiBkcml2ZXIg
bWVhbnMgeW91IGhhdmUgcG90ZW50aWFsIEFCSSBicmVhaywgc28KPiBpdCBpcyBhbHJlYWR5IGEg
d2FybmluZyBzaWduLgoKV2UgdW5kZXJzdGFuZCB0aGF0IDstKQpXaGF0IEplcm5laiBtZWFudCB3
YXMgdGhhdCB0aGUgRFRTIHBhdGNoZXMgYXQgdGhlIGVuZCBkZXBlbmQgb24gcGF0Y2gKMDEvMTAs
IHdoaWNoIGFkZHMgdG8gdGhlIFBIWSBiaW5kaW5nIGRvYy4gSSBhbSBub3Qgc3VyZSBpZiBWaW5v
ZCdzCnN1Z2dlc3Rpb24gd2FzIGFib3V0IHNwbGl0dGluZyBvZmYgMDEvMTAsIDAzLzEwLCBhbmQg
MTAvMTAsIG9yIGp1c3QgdGhlCnR3byBsYXR0ZXIgd2hpY2ggdG91Y2ggdGhlIGRyaXZlci4KCkkg
Y2FuIHNwbGl0IG9mZiAwMy8xMCBhbmQgMTAvMTAsIHJlYmFzZWQgb24gdG9wIG9mIGxpbnV4LXBo
eS5naXQvbmV4dCwgYW5kCnNlbmQgdGhhdCB0byBWaW5vZC4KVGhlbiBJIHdvdWxkIGtlZXAgMDEv
MTAgaW4gYSByZXNwaW4gb2YgdGhpcyBzZXJpZXMgaGVyZSwgdG8gc2F0aXNmeSB0aGUKZGVwZW5k
ZW5jeSBvZiB0aGUgbGF0ZXIgRFRTIHBhdGNoZXMsIGFuZCBWaW5vZCBjYW4gcGljayB0aGF0IG9u
ZSBwYXRjaCBmcm9tCnRoZXJlPwoKQ2hlZXJzLApBbmRyZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
