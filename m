Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C74C624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uypIq6uLVbGHmy0tOv1OVImbWhvKdNZG4ortE++B5XU=; b=Geq2eDuk4JHQSf
	ss6zKl9azqM/XwVg7r7K17fDWlAVyk1L6APKGEP5uEfRsERuTJly1SXgEO/iHQPdNJUWbIRKN26Ot
	XCWd7iJ5uHQkcRhOX7hGIMnwFEaTz2vdt3IXc3saBAcRVVrBTtrUrnPsQ6HsYfQFPGSxvD+V5oKh5
	UlPdURaXV0YZoSP879YVeBg/mWjujaveh3yRcja7CweMqSmYLGYlTZ/coRIoiBvDOUj88FFFs+/r0
	26/B3jqkxaO+VS1WicTHXMo5Rg/UfPnHkDurBEfShiGPJbqu5xzgZJB01JVdOfOhOVVlzEDUPU4fa
	K+oBfWYBvz4/BkyUmITQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U4V-00000002Euh-2os6;
	Fri, 04 Sep 2026 13:35:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U4T-00000002EuM-3oqR
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:35:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EDAF7601F0;
	Fri,  4 Sep 2026 13:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 372801F00A3D;
	Fri,  4 Sep 2026 13:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788528908;
	bh=mZKjmtsE3tzdE9+pHIwlJUk3Qt+6fz8Ww6jrCUSt+X4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ymk12fQxbY03vo1t2Nt9xp4fUI2HH4+OaDVrSfOXmVoPt0xMoEuFDu6Tk9UnuWPbv
	 iCbc/I8MVG2pa7E57gdTJubTaNkbb3mGpcy308auCmykK3S29HUABmdlzPt9qp74+/
	 Bm3s6CSjkEkBq6+tj7PAoRf/jVQtbaitkEuX1qM++bczBwssu2Cle7sJ+WIL+pGf05
	 zHz+7QAqSJ4Y16mmYDMK/fyMoKHGZUPcb3DFCZiFx4Yujyumc6ZaI0UEhGaKgNaIJh
	 OPs2P45AwQYw1SNxzNasjCqX1roSB6rfaigF8xVdetV0i074C2rmyymZ7xa7XJ4FH3
	 8zaD5hyv/uPHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 02/19] dt-bindings: display: bridge: Add
 starfive,jh7110-inno-hdmi-controller
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, lee@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-2-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132712eucas1p167f9527c4728af56f811d06832b43c36@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-2-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:35:07 +0000
Message-Id: <20260904133508.372801F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNsb2NrIG5h
bWVzIGRlc2NyaWJlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgY29udHJhZGljdCB0aGUgY2xvY2sg
bmFtZXMgZGVmaW5lZCBpbiB0aGUgc2NoZW1hLgotLQoKY29tbWl0IGQ4YTk0YzlhMWJhMzMzYTMx
M2Q3NGEyM2Y5ZjVmYjZkY2M0MDE0NzIKQXV0aG9yOiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxj
enluc2tpQHNhbXN1bmcuY29tPgoKZHQtYmluZGluZ3M6IGRpc3BsYXk6IGJyaWRnZTogQWRkIHN0
YXJmaXZlLGpoNzExMC1pbm5vLWhkbWktY29udHJvbGxlcgoKVGhpcyBjb21taXQgYWRkcyB0aGUg
ZGV2aWNlIHRyZWUgYmluZGluZyBzY2hlbWEgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAKSW5ub3Np
bGljb24gSERNSSBjb250cm9sbGVyLgoKPiBJdCBjb25zdW1lcyByZWdpc3RlciBhY2Nlc3MgY2xv
Y2tzIChzeXMsIG1jbGssIGJjbGspIGZyb20gdGhlIHZvdXRjcmcgYW5kCj4gYm90aCB0aGUgcGl4
ZWwgY2xvY2sgKHBjbGspIGFuZCB0aGUgUEhZIGZyb20gaXRzIGhkbWlfcGh5IHNpYmxpbmcuCgpb
IC4uLiBdCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9icmlkZ2Uvc3RhcmZpdmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVyLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvc3RhcmZp
dmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVyLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmVhNDg5YTc3MjJkMDIKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3N0
YXJmaXZlLGpoNzExMC1pbm5vLWhkbWktY29udHJvbGxlci55YW1sCgpbIC4uLiBdCgo+ICsgIGNs
b2NrLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHBjbGsKPiArICAgICAg
LSBjb25zdDogbWNsawo+ICsgICAgICAtIGNvbnN0OiBiY2xrCj4gKyAgICAgIC0gY29uc3Q6IHBp
eGVsCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIGNsb2NrIG5hbWVzIGRlc2NyaWJlZCBpbiB0aGUg
Y29tbWl0IG1lc3NhZ2UgY29udHJhZGljdCB0aGUgY2xvY2sgbmFtZXMKZGVmaW5lZCBpbiB0aGUg
c2NoZW1hLgoKVGhlIGNvbW1pdCBtZXNzYWdlIHN0YXRlcyB0aGF0IHRoZSBkZXZpY2UgY29uc3Vt
ZXMgcmVnaXN0ZXIgYWNjZXNzIGNsb2NrcwoiKHN5cywgbWNsaywgYmNsaykiIGFuZCB0aGUgcGl4
ZWwgY2xvY2sgIihwY2xrKSIuIEhvd2V2ZXIsIHRoZSBzY2hlbWEgZGVmaW5lcwp0aGUgZXhwZWN0
ZWQgY2xvY2sgbmFtZXMgYXMgInBjbGsiIGZvciB0aGUgbWFpbiBjbG9jayBhbmQgInBpeGVsIiBm
b3IgdGhlCnBpeGVsIGNsb2NrLgoKSXMgdGhlIGNvbW1pdCBtZXNzYWdlIGluYWNjdXJhdGUsIG9y
IHNob3VsZCB0aGUgc2NoZW1hIHVzZSAic3lzIiBhbmQgInBjbGsiCmluc3RlYWQgb2YgInBjbGsi
IGFuZCAicGl4ZWwiIGZvciB0aGVzZSByZXNwZWN0aXZlIGNsb2Nrcz8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQtamg3MTEw
LWNsZWFuLXNlbmQtdjMtMC00ODRmOWFlNzI3MTVAc2Ftc3VuZy5jb20/cGFydD0yCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
