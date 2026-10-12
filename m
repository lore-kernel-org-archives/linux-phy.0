Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6DA7CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoEq97CJtySBQrp/98H4q7QNnXFk8NfIijVQo2URf3k=; b=qHxwOm2zdFrhSB
	jk6FsDzSpU8wVzScJujCJbfh8DCKUcbp1nRkrVSQ3qOcu1JvAfQmUKWJ3m6zPRbgupoQG9UHbLLH7
	6u7FXhYBN92QIUMdto00opAecFM7RcMANUME33Vo+RpdGmcC/OVGeWKnLYccv3nxyFGR6JItZr1yb
	8Tyebr8dJRuHhPryrcme0ANLIMFs/+d/H6SdfUB4vBrtAKnIRO3E/qmWpkd3Y/T4wBefRtcQslGV6
	eOifrLrMVpg91VHl1vmiSaOcv4zb3mnHQDKaXVIFuUr7zhBPilfsGIxeBp43JjBVLoXSTQfXo6bAG
	bk/WvKpOBb8DjQwtnVww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGJ4-0000000Aben-1RiD;
	Mon, 12 Oct 2026 13:43:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGJ2-0000000AbeP-2Bwv
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:43:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CC92241A27;
	Mon, 12 Oct 2026 13:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571BC1F0089B;
	Mon, 12 Oct 2026 13:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791812587;
	bh=HU8W7WyvQhr6+WPeL0/gx4fQymldhTyReuYTGv/aPN4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XdBhCkqtSGb0JMR0LcYhaWbbRIwpLceLXs+GpbyJhFZflUgf2/lFwshzZsHeFlgJA
	 3nQuAKSmOt+F6NJaSTVFnwdML2KTYo4g2f8etbqB3Vpa2FBE1suWJaAXgasuR4qQ1f
	 c1GWQ24uo+qrWYa++bkmdi31OcgpDnzG8HnwuVAOsVs6Ov3/1RwfE/ktkyNkZsUqxt
	 9fWirxuQym+a4PZzyUdEGPD1gBDQkJrEBnIM5sUifbdBP4oBzA4gUbx8OqNFldlh5C
	 4rGLXnZDHxjRm1Pjsafp/bAPbeflk1rh0fROezPZ7pbBoA29iTRaeXo7J/pxnGg/dH
	 mVcY6PrMm7H6Q==
Message-ID: <sashiko-outbox-168203@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 12/13] phy: qcom: edp: Add Nord PHY configuration
 data tables
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org
In-Reply-To: <20261012-nord-drv-dt-v2-12-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-12-a2ab9af954d2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 13:43:06 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gYnVpbGQ6IHVudXNlZCBz
dGF0aWMgc3ltYm9scyBicmVhayBjb21waWxhdGlvbiB1bmRlciBXZXJyb3IKLS0KCmNvbW1pdCBi
YzNkNWM3ZDE1OWExMmRjOGJhYzJmMDZiY2M5MDg5NTg0Y2ZhODc3CkF1dGhvcjogUml0ZXNoIEt1
bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTogZWRwOiBBZGQg
Tm9yZCBQSFkgY29uZmlndXJhdGlvbiBkYXRhIHRhYmxlcwoKVGhpcyBjb21taXQgYWRkcyBOb3Jk
LXNwZWNpZmljIEFVWCBjaGFubmVsLCBWQ08gZGl2aWRlciwgTERPIGFuZCBUWApyZXNpc3RvciBj
YWxpYnJhdGlvbiBkYXRhLiBUaGVzZSB0YWJsZXMgYXJlIHNvdXJjZWQgZnJvbSBIUEcgVGFibGVz
CjItMS1hLCAyLTEtYiBhbmQgMi0xLWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5j
Cj4gaW5kZXggM2U4NTdkMTA1NjY4MC4uY2I1ZjZlMGFlNjA3YiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLWVkcC5jCj4gQEAgLTE3NDEsNiArMTc0MSwzOSBAQCBzdGF0aWMgaW50IHFj
b21fZWRwX2NvbV9jb25maWd1cmVfcGxsX25vcmQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHAp
Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfYXV4X2Nm
Z19ub3JkW0RQX0FVWF9DRkdfU0laRV0gPSB7Cj4gKwkweDAwLCAweDEzLCAweGE0LCAweDAwLCAw
eDBhLCAweDI2LCAweDBhLCAweDAzLCAweDM3LCAweDAzLCAweDAyLCAweDAyLCAweDA0LAo+ICt9
Owo+ICsKPiArc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfdmNvX2Rpdl9jZmdfbm9yZFs0XSA9IHsK
PiArCTB4MDAsIDB4MDAsIDB4MDIsIDB4MDEsCj4gK307CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0
aGlzIGNvZGUgaW50cm9kdWNlIHVudXNlZCBzdGF0aWMgdmFyaWFibGVzPwoKVGhlc2UgYXJyYXlz
LCBhcyB3ZWxsIGFzIHR4X3Jlc19jZmdfbm9yZCBiZWxvdywgYXJlIGRlZmluZWQgYXMgc3RhdGlj
IGJ1dCBhcmUKbm90IHJlZmVyZW5jZWQgYW55d2hlcmUgaW4gdGhpcyBjb21taXQuIERlZmluaW5n
IHVucmVmZXJlbmNlZCBzdGF0aWMgYXJyYXlzCnRyaWdnZXJzIGEgLVd1bnVzZWQtY29uc3QtdmFy
aWFibGUgY29tcGlsZXIgd2FybmluZy4KCklmIHRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCBDT05G
SUdfV0VSUk9SPXksIHRoaXMgd2FybmluZyBpcyBwcm9tb3RlZCB0byBhbgplcnJvciBhbmQgYnJl
YWtzIHRoZSBidWlsZC4gV2hpbGUgYSBsYXRlciBwYXRjaCBpbiB0aGlzIHNlcmllcyAoY29tbWl0
CjEzOTNjNzlmMjliZDc4OGE4M2NlMjNjNDUzNzNiYTM5ZTY5MTMyZDApIHJlZmVyZW5jZXMgdGhl
c2UgdGFibGVzLAppbnRlcm1lZGlhdGUgcGF0Y2hlcyBtdXN0IGNvbXBpbGUgY2xlYW5seSB0byBt
YWludGFpbiBnaXQgYmlzZWN0YWJpbGl0eS4KCj4gKwo+ICtzdGF0aWMgaW50IHFjb21fZWRwX2xk
b19jb25maWdfbm9yZChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCkKPiArewo+ICsJY29uc3Qg
c3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19kcCAqZHBfb3B0cyA9ICZlZHAtPmRwX29wdHM7Cj4g
Kwo+ICsJd3JpdGVsKDB4ZDAsIGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcpOwoKW1NldmVyaXR5
OiBMb3ddCkRvZXMgdGhpcyBjb2RlIGludHJvZHVjZSBhbiB1bnVzZWQgc3RhdGljIGZ1bmN0aW9u
PwoKU2ltaWxhciB0byB0aGUgc3RhdGljIGFycmF5cyBhYm92ZSwgcWNvbV9lZHBfbGRvX2NvbmZp
Z19ub3JkIGlzIGRlZmluZWQgYXMKc3RhdGljIGJ1dCBuZXZlciBjYWxsZWQgaW4gdGhpcyBjb21t
aXQuIFRoaXMgdHJpZ2dlcnMgYSAtV3VudXNlZC1mdW5jdGlvbgp3YXJuaW5nLCB3aGljaCB3aWxs
IGFsc28gYnJlYWsgdGhlIGJ1aWxkIHVuZGVyIENPTkZJR19XRVJST1I9eS4KClsgLi4uIF0KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjEwMTItbm9yZC1kcnYtZHQtdjItMC1hMmFiOWFmOTU0ZDJAb3NzLnF1YWxjb21tLmNvbT9wYXJ0
PTEyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
