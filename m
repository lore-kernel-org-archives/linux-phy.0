Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0947CC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jan 2022 18:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAdKN4xqh8m4Hd7FzyikLnDMulgWY4vTAgpWuWLyMBw=; b=m7cbi4X78H0EtP
	stQPMSSU5QManJS2ZJSObqhjaW5XndQSyQHVMJDsL2HKPrbazYWdABsGrp4kWi6lH16VTXt9CLu32
	dUPlYJHyhjaooTxxA1LvLrI+FfEEGBLhzA2xtU79JBzcmz8i5RN/hRxRLhCBPsXcJZyQT2aDZBIbg
	2Cz41r9p8QGYnya1sFCQuxZJIRJ92i0njyBlCiajwmVuWqNWgtUh2pd3joijiRrpP7qCHunLIH29T
	WRbhdz22Iu4VecKs/+beE7zWZBLTlxCq7/mrecsC+OKidG7ZQsjgUw2KMlI5WP7gWjm92xVKrRq23
	UAKnoqmPGMpx7TY+TXzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAblC-00Cht9-Ep; Thu, 20 Jan 2022 18:02:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAbl6-00Chpp-6F
 for linux-phy@lists.infradead.org; Thu, 20 Jan 2022 18:02:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 452C6B81E18;
 Thu, 20 Jan 2022 18:02:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 689BCC340E0;
 Thu, 20 Jan 2022 18:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642701721;
 bh=xC8OW4CUchMp0erk9wqkXdiLHGoZ3LLIAA7sgkPWiP0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=STqmId7/Gepb2e10OOESnjpCgVu+XYM9AIJ7eEWxDd3gFSyxf2LloLOmdjceOCH2u
 LmaFwZdvyDTJGVSiPASaMhJMInGt9tTb0JBz5T3pa+WS6Gde1JtMoVsQV+0u3+iVQ6
 AS3azklGnlI9JEVw8iJ2uFK0R6c2d3ycMqNfGKKoDYcrB1XvwjROFX/qJ+vQxBeLe6
 WQeI7glnlt9n6RBnoOT4D5T09IONYBTot49F3Xm241WTMRs2nLYNVZD3xBb96ENPD5
 y/AXWhi1jmGqlxirgROQecJ9LlqNW3tBEkYhopkYNIjdEeTKlkFOsqVpLXHnJWIQPb
 iiva4lKWR1Wiw==
Date: Thu, 20 Jan 2022 19:01:55 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Vladimir
 Oltean <olteanv@gmail.com>, Holger Brunck
 <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Russell King
 <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 ore@pengutronix.de, alexandru.tachici@analog.com
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <20220120190155.717f2d52@thinkpad>
In-Reply-To: <20220120084914.ga7o372lyynbn4ly@pengutronix.de>
References: <20220119131117.30245-1-kabel@kernel.org>
 <20220120084914.ga7o372lyynbn4ly@pengutronix.de>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_100204_575000_4510417B 
X-CRM114-Status: GOOD (  20.34  )
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

T24gVGh1LCAyMCBKYW4gMjAyMiAwOTo0OToxNCArMDEwMApNYXJjIEtsZWluZS1CdWRkZSA8bWts
QHBlbmd1dHJvbml4LmRlPiB3cm90ZToKCj4gT24gMTkuMDEuMjAyMiAxNDoxMToxNywgTWFyZWsg
QmVow7puIHdyb3RlOgo+ID4gQ29tbW9uIFBIWXMgYW5kIG5ldHdvcmsgUENTZXMgb2Z0ZW4gaGF2
ZSB0aGUgcG9zc2liaWxpdHkgdG8gc3BlY2lmeQo+ID4gcGVhay10by1wZWFrIHZvbHRhZ2Ugb24g
dGhlIGRpZmZlcmVudGlhbCBwYWlyIC0gdGhlIGRlZmF1bHQgdm9sdGFnZQo+ID4gc29tZXRpbWVz
IG5lZWRzIHRvIGJlIGNoYW5nZWQgZm9yIGEgcGFydGljdWxhciBib2FyZC4KPiA+IAo+ID4gQWRk
IHByb3BlcnRpZXMgYHR4LXAycC1taWNyb3ZvbHRgIGFuZCBgdHgtcDJwLW1pY3Jvdm9sdC1uYW1l
c2AgZm9yIHRoaXMKPiA+IHB1cnBvc2UuIFRoZSBzZWNvbmQgcHJvcGVydHkgaXMgbmVlZGVkIHRv
IHNwZWNpZnkgdGhlIG1vZGUgZm9yIHRoZQo+ID4gY29ycmVzcG9uZGluZyB2b2x0YWdlIGluIHRo
ZSBgdHgtcDJwLW1pY3Jvdm9sdGAgcHJvcGVydHksIGlmIHRoZSB2b2x0YWdlCj4gPiBpcyB0byBi
ZSB1c2VkIG9ubHkgZm9yIHNwZWZpY2ljIG1vZGUuIE1vcmUgdm9sdGFnZS1tb2RlIHBhaXJzIGNh
biBiZQo+ID4gc3BlY2lmaWVkLgo+ID4gCj4gPiBFeGFtcGxlIHVzYWdlIHdpdGggb25seSBvbmUg
dm9sdGFnZSAoaXQgd2lsbCBiZSB1c2VkIGZvciBhbGwgc3VwcG9ydGVkCj4gPiBQSFkgbW9kZXMs
IHRoZSBgdHgtcDJwLW1pY3Jvdm9sdC1uYW1lc2AgcHJvcGVydHkgaXMgbm90IG5lZWRlZCBpbiB0
aGlzCj4gPiBjYXNlKToKPiA+IAo+ID4gICB0eC1wMnAtbWljcm92b2x0ID0gPDkxNTAwMD47Cj4g
PiAKPiA+IEV4YW1wbGUgdXNhZ2Ugd2l0aCB2b2x0YWdlcyBmb3IgbXVsdGlwbGUgbW9kZXM6Cj4g
PiAKPiA+ICAgdHgtcDJwLW1pY3Jvdm9sdCA9IDw5MTUwMDA+LCA8MTEwMDAwMD4sIDwxMjAwMDAw
PjsKPiA+ICAgdHgtcDJwLW1pY3Jvdm9sdC1uYW1lcyA9ICIyNTAwYmFzZS14IiwgInVzYiIsICJw
Y2llIjsKPiA+IAo+ID4gQWRkIHRoZXNlIHByb3BlcnRpZXMgaW50byBhIHNlcGFyYXRlIGZpbGUg
cGh5L3RyYW5zbWl0LWFtcGxpdHVkZS55YW1sLAo+ID4gd2hpY2ggc2hvdWxkIGJlIHJlZmVyZW5j
ZWQgYnkgYW55IGJpbmRpbmcgdGhhdCB1c2VzIGl0LiAgCj4gCj4gSWYgSSB1bmRlcnN0YW5kIHlv
dXIgdXNlLWNhc2UgY29ycmVjdGx5LCB5b3UgbmVlZCBkaWZmZXJlbnQgdm9sdGFnZSBwMnAKPiBs
ZXZlbHMgaW4gdGhlIGNvbm5lY3Rpb24gYmV0d2VlbiB0aGUgRXRoZXJuZXQgTUFDIGFuZCB0aGUg
RXRoZXJuZXQKPiBzd2l0Y2ggb3IgRXRoZXJuZXQtUEhZPwoKVGhpcyBpcyBhIFNlckRlcyBkaWZm
ZXJlbnRpYWwgcGFpciBhbXBsaXR1ZGUuIFNvIHllcyB0byB5b3VyIHF1ZXN0aW9uLAppZiB0aGUg
TUlJIGludGVyZmFjZSB1c2VzIGRpZmZlcmVudGlhbCBwYWlyLCBsaWtlIHNnbWlpLCAxMGdiYXNl
LXIsIC4uLgoKPiBTb21lIG9mIHRoZSB0d28gd2lyZSBFdGhlcm5ldCBzdGFuZGFyZHMgKDEwYmFz
ZS1UMVMsIDEwYmFzZS1UMUwsCj4gMTAwYmFzZS1UMSwgMTAwMGJhc2UtVDEpIGRlZmluZXMgc2V2
ZXJhbCBwMnAgdm9sdGFnZSBsZXZlbHMgb24gdGhlIHdpcmUsCj4gaS5lLiBiZXR3ZWVuIHRoZSBQ
SFlzLiBBbGV4YW5kcnUgaGFzIHBvc2VkIGEgc2VyaWVzIHdoZXJlIHlvdSBjYW4KPiBzcGVjaWZ5
IHRoZSBiZXR3ZWVuLVBIWSB2b2x0YWdlIGxldmVsczoKPiAKPiB8IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDIxMTIxMDExMDUwOS4yMDk3MC04LWFsZXhhbmRydS50YWNoaWNpQGFuYWxv
Zy5jb20vCgpDb3BwZXIgZXRoZXJuZXQgaXMgc29tZXRoaW5nIGRpZmZlcmVudCwgc28gbm8gY29u
ZmxpY3QKCj4gQ2FuIHdlIG1ha2UgY2xlYXIgdGhhdCB5b3VyIGJpbmRpbmcgc3BlY2lmaWVzIHRo
ZSB2b2x0YWdlIGxldmVsIG9uIHRoZQo+IE1JSSBpbnRlcmZhY2UsIGluIGNvbnRyYXN0IEFsZXhh
bmRydSdzIGJpbmRpbmc/CgpUaGUgYmluZGluZyBleHBsaWNpdGx5IHNheXMgImNvbW1vbiBQSFki
LCBub3QgZXRoZXJuZXQgUEhZLiBJIGRvbid0CnRoaW5nIHRoZXJlIHdpbGwgYmUgYW55IGNvbmZ1
c2lvbi4gSXQgY2FuIGFsc28gYmUgc3BlY2lmaWVkIGZvciBVU0IzKwpkaWZmZXJlbnRpYWwgcGFp
cnMsIG9yIFBDSWUgZGlmZmVyZW50aWFsIHBhaXJzLCBvciBEaXNwbGF5UG9ydApkaWZmZXJlbnRp
YWwgcGFpcnMuLi4KCk1hcmVrCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
