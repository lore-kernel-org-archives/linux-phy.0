Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72285D5B862
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 18:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lPoFM3WVK3awAvEaIYjTtwMEU9YKC9UHhCURalbIk8=; b=tNuTVqI4uV5VUH
	SoNNbHRduZv0kn36NM65wfcpnUI2924IJhBdDTq1MeNlBAI1IznJz66oyErMHeGAvxbVmjSmfcHSC
	GPGNf01fMUiMc/GW7JA+Jvo0+hqDP8WjCuOlifp5bfgFFlDOQ8XI4rod0ILAXghH239/VWTC7hKVR
	rOE01qXQMPM8Ah0rdW1KJ2AfPLMaaKJTdiV0wTinQ1c0e081TJJH6XlZGYlxgcEkOxfbVqpYokCnF
	vQ2txG+XGJKItePnAm8H9tv6PRHFbYKgtK70DLyaTGsePAWRfw/OpvL95ME72OrRPZ31vjPFVLpw3
	EzkkRJMeiCW5+Lj/aECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVD6w-000000047PQ-43lH;
	Mon, 15 Dec 2025 18:15:54 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVD6t-000000047P0-0Rsu
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 18:15:54 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 8F9484E41C1E;
	Mon, 15 Dec 2025 18:15:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4FA7160664;
	Mon, 15 Dec 2025 18:15:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9381311940441;
	Mon, 15 Dec 2025 19:15:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765822545; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2me3Ljn4gfmMgfkqKAj40oeX1P+gfTzAJLA5BMsltrI=;
	b=a5/gTm2qjBEjpF77m0/AebIsh0AMWFDxUBJndGfo8gqphxBM/xne0JolHsTWrIWoBW4uFF
	zkQUxQaqPH7c3Jcc9x8rV1LEHNjEmY0HhlR/LTOePWxQaPj3lglMC1kL50xCGNNu/NuWjj
	VbD1K3vFp2sDbpBtxvsVrAEG+sOespBORcsI1E/BP2XR2qo81EjpObRpNs9Mulv3NxKYXk
	IDU5LMofzpB4Y3KF0lLcoYY9c3j5d71qTM2XcrriiI+6brLfFHstUNIfUVxDF5MbVnN8Z0
	5n7Ji6HtLVAsEkyZth6KveMNi24V/BWnPDlRXywh+3yPeFjXphK8+KUrd9RW/g==
Mime-Version: 1.0
Date: Mon, 15 Dec 2025 19:15:38 +0100
Message-Id: <DEYZUJHYWKF7.1D7N8XSD46NKC@bootlin.com>
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v4 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
X-Mailer: aerc 0.20.1
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
 <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
 <DEYVVCWBOZSH.2ZY41YCHLS8FU@bootlin.com>
 <DEYVXJI90AA7.KPDEQCNZOOXI@bootlin.com>
 <DEYXM6CGJULV.1KKA37ZLEIW1K@bootlin.com>
In-Reply-To: <DEYXM6CGJULV.1KKA37ZLEIW1K@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_101551_518048_BB095E9D 
X-CRM114-Status: GOOD (  10.15  )
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

SGkgVGjDqW8sCgpPbiBNb24gRGVjIDE1LCAyMDI1IGF0IDU6MzAgUE0gQ0VULCBUaMOpbyBMZWJy
dW4gd3JvdGU6Cj4gT24gTW9uIERlYyAxNSwgMjAyNSBhdCA0OjExIFBNIENFVCwgTHVjYSBDZXJl
c29saSB3cm90ZToKPj4gT24gTW9uIERlYyAxNSwgMjAyNSBhdCA0OjA4IFBNIENFVCwgVGjDqW8g
TGVicnVuIHdyb3RlOgo+Pj4gT24gV2VkIERlYyAxMCwgMjAyNSBhdCA1OjA2IFBNIENFVCwgTHVj
YSBDZXJlc29saSB3cm90ZToKPj4+PiBPbiBNb24gTm92IDI0LCAyMDI1IGF0IDM6NDEgUE0gQ0VU
LCBUaMOpbyBMZWJydW4gd3JvdGU6Cj4+Pj4+ICsJcHJvdmlkZXIgPSBkZXZtX29mX3BoeV9wcm92
aWRlcl9yZWdpc3RlcihkZXYsIGVxNV9waHlfeGxhdGUpOwo+Pj4+PiArCWlmIChJU19FUlIocHJv
dmlkZXIpKSB7Cj4+Pj4+ICsJCWRldl9lcnIoZGV2LCAicmVnaXN0ZXJpbmcgcHJvdmlkZXIgZmFp
bGVkXG4iKTsKPj4+Pj4gKwkJcmV0dXJuIFBUUl9FUlIocHJvdmlkZXIpOwo+Pj4+PiArCX0KPj4+
Pgo+Pj4+IEFzIGFib3ZlLCB3aHkgbm90IGRldl9lcnJfcHJvYmUoKT8KPj4+Cj4+PiBHb29kIGlk
ZWEgb25jZSBhZ2Fpbi4KPj4+Cj4+Pj4gT3RoZXIgdGhhbiB0aGUgYWJvdmUgbWlub3IgaXNzdWVz
LCBMR1RNLiBUaGlzIGRyaXZlciBsb29rcyBjbGVhbmx5Cj4+Pj4gaW1wbGVtZW50ZWQuCj4+Pgo+
Pj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBEb2VzIHRoYXQgaW1wbHkgSSBjYW4gYXBwZW5kIHlv
dXIgUmIgdHJhaWxlcj8KPj4KPj4gSWYgeW91IGFwcGx5IGFsbCB0aGUgY2hhbmdlcyBJIGhhdmUg
bWVudGlvbiwgeWVzLCBidXQgaW4gZG91YnQgeW91IGNhbgo+PiBhdm9pZCBpdCBhbmQgSSdsbCBy
ZXZpZXcgeW91ciBuZXh0IHZlcnNpb24uIFJlLXJldmlld2luZyBpcyBtdWNoIGZhc3Rlcgo+PiB0
aGFuIHJldmlld2luZyB0aGUgZmlyc3QgdGltZSAobGFzdCBmYW1vdXMgd29yZHMpLgo+Cj4gSSd2
ZSB0YWtlbiB0aGUgUmIgdHJhaWxlciwgaG9waW5nIGV2ZXJ5dGhpbmcgaXMgdG8geW91ciB0YXN0
ZS4KPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNTEyMTUtbWFjYi1waHktdjUt
MC1hOWRmZWEzOWRhMzRAYm9vdGxpbi5jb20vCgpJIGNoZWNrZWQgdGhlIGRlbHRhLCBsb29rcyBj
b3JyZWN0LCBSLWJ5IGNvbmZpcm1lZC4KCkx1Y2EKCi0tCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4K
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29t
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
