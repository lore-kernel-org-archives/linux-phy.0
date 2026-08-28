Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2075C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eC3ZyyM1Mt6B8rHsIKJUp868Dmcsk1kdauyXpGnI0I8=; b=FlEC4PYdH6WIN5
	sl8jCliwF0uFlOuIg0BsMeK/CkyyopsJGF0BgaV64pLemfW5H57AxVzm2GBbUkeCPUMmdUTloAmJR
	5BJ2B/QNtqOpyKSByuEv5+S1ocuzhQIGzUiyzLnzXoiKwVspFUXFHpcwQsXLNd2xILsbaFBG0unf7
	fh2zcTJk9qaHD5IH6PW+AGNcS4+WD4j9guxraz1r5Wc2gPeaVHN21FMzcWuLGThxRllT+y8WMkERH
	1k1rWd4k+3PbutZSrpOIDILfHFr+E0Js2WQnaDIkQWIKKEWlXiggABU29qgY8BI2UwW8XdN1qACje
	N/St8qLncE2M9tjlQRsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx26-00000005vCh-26uA;
	Fri, 28 Aug 2026 13:54:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx25-00000005vC8-0Vzj
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:54:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE4FA43721;
	Fri, 28 Aug 2026 13:54:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF4521F00A3A;
	Fri, 28 Aug 2026 13:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925252;
	bh=T3isB2H6d1Dx84uRJLozxn9jxSFH30cklxx2GVA7pdY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e3tiJWMEKxrIf7cqnKDTxZErmFVD+rv9rZlS0vmRINCbR4OdPnSkg0z6K1xurfEDF
	 aHB/0Y7w0UJbh8DDMRpYGGruUbo4pJSIkfxZnJtoCH54zqbZzckRUm28O2B7RwopsJ
	 hc1Agbusil0d+S1YWVlvQTCwN5dLMZ1MXwtB2gYwAALBFbOIa7G7mrPVaER04yFoSf
	 Gdbv408xFpDCdq7/xM/i9s0mWINZ3LIU4jAAKIZ/iuSwuGhtwTaWBth7sK1uupdUZ4
	 pgzt4b0jp/0stXADmhp3AHqiYIV73WoCg9tHvgchRFzBqFQAtUQGHZfLs2aoH3D2kl
	 3a1Xqy2LDV4Cg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/15] dt-bindings: display: bridge: Add
 starfive,jh7110-inno-hdmi-controller
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, lee@kernel.org, conor+dt@kernel.org, robh@kernel.org, linux-clk@vger.kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260828-jh7110-clean-send-v2-2-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134817eucas1p2e2756deff8871be4ea8bb5c65f9c179d@eucas1p2.samsung.com>
 <20260828-jh7110-clean-send-v2-2-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:54:11 +0000
Message-Id: <20260828135411.EF4521F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBwb3J0c2Ag
cHJvcGVydHkgZGVzY3JpYmVzIG9uZSBpbnB1dCBhbmQgb25lIG91dHB1dCBwb3J0IGJ1dCBmYWls
cyB0byBlbmZvcmNlIHRoaXMgY29uc3RyYWludCBpbiB0aGUgWUFNTCBzdHJ1Y3R1cmUuCi0tCgpj
b21taXQgNDE5Y2IyYjM2ODg3NWNiZTI4MjEyNDgxMDUyMmQ0MDFlNGIwYzQ1OApBdXRob3I6IE1p
Y2hhbCBXaWxjenluc2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+CgpkdC1iaW5kaW5nczog
ZGlzcGxheTogYnJpZGdlOiBBZGQgc3RhcmZpdmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVy
CgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhl
IFN0YXJGaXZlIEpINzExMApJbm5vc2lsaWNvbiBIRE1JIGNvbnRyb2xsZXIuCgo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvc3Rh
cmZpdmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvc3RhcmZpdmUsamg3MTEwLWlubm8taGRt
aS1jb250cm9sbGVyLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uv
c3RhcmZpdmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVyLnlhbWwKWyAuLi4gXQo+ICsgIHBo
eS1uYW1lczoKPiArICAgIGNvbnN0OiBoZG1pLXBoeQo+ICsKPiArICBwb3J0czoKPiArICAgICRy
ZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydHMKPiArICAgIGRlc2NyaXB0
aW9uOgo+ICsgICAgICBBIGdyYXBoIG5vZGUgd2l0aCBvbmUgaW5wdXQgcG9ydCBhbmQgb25lIG91
dHB1dCBwb3J0LgoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBtaXNzaW5nIHN0cnVjdHVy
ZSBhbGxvdyBpbnZhbGlkIGRldmljZSB0cmVlcyB0byBwYXNzIHZhbGlkYXRpb24/CgpUaGUgZGVz
Y3JpcHRpb24gc3RhdGVzIHRoZXJlIGlzIG9uZSBpbnB1dCBwb3J0IGFuZCBvbmUgb3V0cHV0IHBv
cnQsIGJ1dCB0aGUKWUFNTCBsYWNrcyB0aGUgaW50ZXJuYWwgcHJvcGVydHkgY29uc3RyYWludHMg
KHN1Y2ggYXMgcG9ydEAwIGFuZCBwb3J0QDEpIGFuZAp0aGUgYXNzb2NpYXRlZCByZXF1aXJlZCBs
aXN0LgoKV2l0aG91dCB0aGVzZSBleHBsaWNpdCBkZWZpbml0aW9ucywgZGV2aWNlIHRyZWVzIG1p
c3NpbmcgdGhlIGV4cGVjdGVkIG5vZGVzCm9yIGFkZGluZyBleHRyYW5lb3VzIGludmFsaWQgcG9y
dHMgd2lsbCBzaWxlbnRseSBwYXNzIGR0X2JpbmRpbmdfY2hlY2sgZGVzcGl0ZQp2aW9sYXRpbmcg
dGhlIGhhcmR3YXJlIHRvcG9sb2d5IGNvbnN0cmFpbnRzIGRlc2NyaWJlZC4KCkNvdWxkIGV4cGxp
Y2l0IGRlZmluaXRpb25zIGFuZCBjb25zdHJhaW50cyBmb3IgcG9ydEAwIGFuZCBwb3J0QDEgYmUg
YWRkZWQKaGVyZSB0byBwcm9wZXJseSBlbmZvcmNlIHRoZSBwb3J0IGNvdW50cz8KClsgLi4uIF0K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA4Mjgtamg3MTEwLWNsZWFuLXNlbmQtdjItMC0zMzE2ODBjOGI5ZDFAc2Ftc3VuZy5jb20/
cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
