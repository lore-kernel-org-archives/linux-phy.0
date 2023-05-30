Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F03DC77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 07:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K9aoqF+9GijiHzDy0bg8xsM+q0bqNeFa24LVMxQkno=; b=oP2hiEipU1wUXi
	NT43BRebSnohK3ISKCOvEgf7Jf8SYHNBh9rKlVS5SftnBaaib7bHpzgs5PHlkqcUob58ud4nHa3Me
	fGrEC99EHqRs6l3ChoOp4cJyCfxge1TqarG6O2WeJfkPm5mJwYuSC0w2VOYQVxqYfxcTSyG9PJ1pq
	GMLmX4DApCTYEqdfquXl3puUIlqsW6gJjmXOT+UCbsDKqryK3wCl00P0mhY7DnyeG1kppdKuKa4RP
	qhbtUwJcO2pA4HbEo2+FdTPSDb/erIm0k8utm3sTaS4y8ccVssh/7MXpY3QctV4cS4A+QlPSrovet
	2jxFUUWcrrPCPUCWqyqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tpq-00CkAg-38;
	Tue, 30 May 2023 07:32:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tpo-00Ck9m-2e
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 07:32:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 61C8360D54;
	Tue, 30 May 2023 07:31:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45893C4339B;
	Tue, 30 May 2023 07:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1685431917;
	bh=Y1cumOGcWbCEjzGUG/6ltidpNwm2fGZvgprc96SngPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b8/7KG6l2rkllhSgyEtiXGCrBc6eUT8eUgS0m2nBBCUg0sr3L4VZjm6Wb1MIE0pW1
	 94RjH6yRTYBlur75IuOyzDDzDCSV6f+bshblivkTI9jRaM8f23z5lHIMoXVtpTX0U1
	 NPxzO36wDBKvi8ah0F5w1V7SXOe3qJEHmZ2e4tvo=
Date: Tue, 30 May 2023 08:31:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: kernel test robot <lkp@intel.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bagas Sanjaya <bagasdotme@gmail.com>, Ray Chi <raychi@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Flavio Suligoi <f.suligoi@asem.it>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0/3.0 PHY
Message-ID: <2023053041-cane-jokester-d433@gregkh>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-2-stanley_chang@realtek.com>
 <2023052915-repurpose-partner-20a8@gregkh>
 <1dfa6d4026364fb99eeffa548cda0cfc@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1dfa6d4026364fb99eeffa548cda0cfc@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_003200_905636_ADB05F21 
X-CRM114-Status: GOOD (  17.35  )
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

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgMDE6NTA6NTFBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IEhpIEdyZWcsCj4gCj4gPiBPbiBUaHUsIE1heSAyNSwgMjAyMyBh
dCAxMDoyNjowM0FNICswODAwLCBTdGFubGV5IENoYW5nIHdyb3RlOgo+ID4gPiBSZWFsdGVrIERI
QyAoZGlnaXRhbCBob21lIGNlbnRlcikgUlREIFNvQ3Mgc3VwcG9ydCBEV0MzIFhIQ0kgVVNCCj4g
PiA+IDIuMC8zLjAgY29udHJvbGxlci4gQWRkZWQgdHdvIGRyaXZlcnMgdG8gZHJpdmUgdGhlICBV
U0IgMi4wLzMuMCBQSFkKPiA+IHRyYW5zY2VpdmVycy4KPiA+ID4gRm9yIFVTQiAzLjAgdHJhbnNj
ZWl2ZXJzLCBhIGRyaXZlciBwaHktcnRrLXVzYjMgaXMgcHJvdmlkZWQuCj4gPiA+IFRoZSBkcml2
ZXIgcGh5LXJ0ay11c2IyIGlzIHVzZWQgdG8gc3VwcG9ydCBVU0IgMi4wIHRyYW5zY2VpdmVycy4K
PiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3RhbmxleSBDaGFuZyA8c3RhbmxleV9jaGFuZ0By
ZWFsdGVrLmNvbT4KPiA+ID4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50
ZWwuY29tPgo+ID4gCj4gPiBUaGUga2VybmVsIHRlc3Qgcm9ib3QgZGlkIG5vdCByZXBvcnQgdGhh
dCBhIG5ldyBkcml2ZXIgd2FzIG5lZWRlZCA6KAo+ID4gCj4gCj4gVGhpcyByZXBvcnQgaXMgYmFz
ZWQgb24gdjEgcGF0Y2guCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xp
bnV4LXVzYi9wYXRjaC8yMDIzMDUxOTA0NTgyNS4yODM2OS0yLXN0YW5sZXlfY2hhbmdAcmVhbHRl
ay5jb20vCj4gCj4gVGhlIG9yaWdpbmFsIGRyaXZlciBpcyBhdCBkcml2ZXJzL3VzYi9waHkvCj4g
SWYgdGhpcyByZXBvcnQgaXMgbm90IGFwcHJvcHJpYXRlLCBJIHdpbGwgcmVtb3ZlIGl0LgoKRG9l
cyBpdCBtYWtlIHNlbnNlIHRvIGluY2x1ZGUgaXQ/CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
