Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBCEFC7EE26
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXpu3Nn0F/dcuquKlcTfhzvYYA9Z+9OdT0tXf9G2qK8=; b=Rn4wRg9zE5IAJO
	RLHk9xbPIl+CZEmLqB0LcILSuadg/Kl4lA5miGC5RMMrh7njQOgH7GaZjgZCpc2mqVvpCvNLf2Zn8
	xjhFxvrhbsUuNHy2dNJaMQDAEfh+EgCeBEnBkLGJVlSIbXle04HyfCvLDH3wyuGJPLVcBi+wKGvBG
	H4BvnxjIJ/+dd9mFmUUJX+66Ca8/j5yIcGll+6iwLTkJa9zRaERiwhmZhRS6lyJD5zCim8RLKcB0x
	eRcPljf4qkN56CgzAt8KioOTjp8vJ5MFfOXfWo8tf3q+90BjmDNuLM9XU+ulRMeRhNMLaxRFpn1WI
	ORhGC/8S/RO2ZW3dbAlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q045h-00Gsrk-1l;
	Fri, 19 May 2023 17:40:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q045W-00GsmQ-0K
	for linux-phy@lists.infradead.org;
	Fri, 19 May 2023 17:40:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 35BA965A11;
	Fri, 19 May 2023 17:40:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4EDEC433D2;
	Fri, 19 May 2023 17:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684518020;
	bh=UDkPTriVgF63ln4ZyrbQRph9MfKBLUZJt2i1hBGxbgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aqw8D6mpeQT4w0fcGePat4H8HZzBKIKWOeUIA8alAX2uA2qSAZBBelFH1hPRBkWB5
	 zCW7JnxXImPHDm1iFUam6V5xw63zRqh9PdXExsNYp081ytq/Tt16x0WpfMUCNOteX6
	 qBiUUORVTc5/nF6UChgQRNfB4VpikiTTxgof71VDpl6VjA3G0czOdDFRwvarH4XDND
	 pQlyZ9tx184IAxdcTRxFt2ul+EkdzLzzf+bYtdqnSAAjuEFWZA9OBQNYtxCjAw9P6N
	 D/Jgh9+OqviTJDwRB8ZudGMqBlFs6qx3Y0Pf4hWfzrXd6bpUg3KMCJ9IskzeXqQHQo
	 q94fvn1FHRRcQ==
Date: Fri, 19 May 2023 23:10:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Stanley Chang <stanley_chang@realtek.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>, Ray Chi <raychi@google.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Eugeniu Rosca <erosca@de.adit-jv.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Matthias Kaehlcke <mka@chromium.org>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Bhuvanesh Surachari <Bhuvanesh_Surachari@mentor.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v1 2/3] usb: phy: Add driver for the Realtek SoC USB
 2.0/3.0 PHY
Message-ID: <ZGe0f4OfaXzweSp3@matsya>
References: <20230519045825.28369-1-stanley_chang@realtek.com>
 <20230519045825.28369-2-stanley_chang@realtek.com>
 <0d165c7efbb71a65803abddc364e1c5252b8b939.camel@crapouillou.net>
 <0ee8a26205a041cab9a787ec29201a9f@realtek.com>
 <f7edea0c-dbfe-4c16-8134-0656411a837d@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7edea0c-dbfe-4c16-8134-0656411a837d@app.fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_104022_204534_3C95B5AA 
X-CRM114-Status: GOOD (  25.04  )
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

T24gMTktMDUtMjMsIDEzOjAxLCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+IE9uIEZyaSwgTWF5IDE5
LCAyMDIzLCBhdCAxMjo1OCwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+ID4+IAo+
ID4+IEknbSBwcmV0dHkgc3VyZSB0aGF0IGRyaXZlcnMvdXNiL3BoeS8gaXMgZGVwcmVjYXRlZCBu
b3cuLi4KPiA+PiAKPiA+PiBOZXcgZHJpdmVycyBzaG91bGQgYmUgd3JpdHRlbiBmb3IgdGhlIGdl
bmVyaWMgUEhZIHN1YnN5c3RlbSBpbgo+ID4+IGRyaXZlcnMvcGh5Ly4KPiAKPiBJbmRlZWQsIEkg
bWlzc2VkIHRoYXQgaW4gbXkgcmV2aWV3Lgo+IAo+ID4gVGhhbmtzIGZvciB5b3VyIHJlbWluZGVy
Lgo+ID4gV2lsbCBkcml2ZXJzL3VzYi9waHkgYmUgcmVtb3ZlZD8KPiA+IElzIGl0IG5vdCBhbGxv
d2VkIHRvIGFkZCBuZXcgZHJpdmVycz8KPiA+Cj4gPiBJbiBvdXIgYXBwbGljYXRpb24sIGRyaXZl
ci9waHkgaXMgbm90IHN1aXRhYmxlLgo+ID4gV2UgbmVlZCB0byBub3RpZnkgdGhlIHBoeSBkcml2
ZXIgd2hlbiB0aGUgVVNCIGh1YiBwb3J0IHN0YXR1cyBjaGFuZ2VzLgo+ID4gSG93ZXZlciwgZ2Vu
ZXJpYyBQSFkgZHJpdmVycyBhcmUgZGVzaWduZWQgZm9yIHZhcmlvdXMgZGV2aWNlJ3MgUEhZLgo+
ID4gQW5kIGl0IHNlZW1zIGluYXBwcm9wcmlhdGUgdG8gYWRkIHRoaXMgZnVuY3Rpb24uIFNvIHdl
IGNob29zZSB0byB1c2UgCj4gPiBkcml2ZXIvdXNiL3BoeS4gCj4gCj4gSWYgeW91IHJ1biBpbnRv
IHNvbWV0aGluZyB0aGF0IHdvcmtzIGluIHRoZSBvbGQgdXNicGh5IGxheWVyCj4gYnV0IGNhbid0
IGJlIGRvbmUgaW4gZHJpdmVycy9waHksIEkgdGhpbmsgdGhlIGJldHRlciBzb2x1dGlvbgo+IHdv
dWxkIGJlIHRvIGNoYW5nZSB0aGUgZHJpdmVycy9waHkvIGNvZGUgdG8gYWRkIHRoaXMuCgpUaGUg
aXMgY29ycmVjdCwgcGh5IGludGVyZmFjZXMgY2FuIGJlIGltcHJvdmVkIHVwb24gYW5kIGhhdmUg
YmVlbiBhZGRlZAp1cG9uIGFzIGFuZCB3aGVuIHdlIGhhdmUgdXNlcnMuCgpGV0lXIHRoZXJlIGFy
ZSBhbHJlYWR5IHVzYiBwaHkgZHJpdmVycyBpbiBHZW5lcmljIHBoeSBzdXNieXN0ZW0sIHNvIHlv
dQpuZWVkIHRvIHJlYWxseSBqdXN0aWZ5IHdoeSB5b3UgbmVlZCBhIG5ldyBpbnRlcmZhY2U/Cgot
LSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
