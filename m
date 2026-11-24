Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EB6606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 17:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ceb5ocmd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=g+54x+pL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xEkHrr0grsHjC/IlC+p1NvLcAb52JbHtHtI/QkkHWDo=; b=ceb5ocmdWWaCgvx78KWZG62HRR
	da//i9yS+u9Of2NPQRuhfLwCcysaPAomLA8+LKulLlgEwNpSWw60ewOB9dkeBT8G9kTPeN1BUzRiK
	1DFGxlAC45BX9vsKQCFvBEdAy6X7cpouKATd8F8Ye2sw6d7kPjFvC6EEW9R6usfZ9uBUF95lY0IjV
	ViQ9XJwdcaEXylMuGk24QSF2zFkenvV+Kym2ikBWzH0Z606efSHnYLK+0bzK/k+sxoeVhJYBOsASb
	qEzp3sPMkHDqvyozzCCrQrvtR5K1Fusn/38JTqZRn7ki5sQheFv1V3mAXVgf+zszuAAP6nIz54jwH
	wl4Lem2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVuAH-00000007KBL-27Fw;
	Tue, 24 Nov 2026 17:18:45 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVuAE-00000007KAJ-18WH
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 17:18:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D73E44E41709;
	Tue, 24 Nov 2026 17:18:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9B4E7601E1;
	Tue, 24 Nov 2026 17:18:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8F64211E69AC2;
	Tue, 24 Nov 2026 18:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795540717; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MMIveEgZcxzjxz6ZQiv/+4zr63avK8Y8JIemnxMuPEU=;
	b=g+54x+pLU5Kc2m40alhMaVRIENF1mgYNwpY79Wr/hIkUVfH+6KcxX042P/N7vI3ZCrXQqX
	cYHmmzcrNhi+W0dZqmqEUgBvYr9/fuq5j+inrTYwA6DcNo09xgx1XmHjalE/+PCrBWJEyZ
	j5DKjgo4ZSJIql7gm2ZokKvKKEEZm0HeKhDDWDX9AHr1r0fubD5FZibQ0tt9dVmRYPd9Jf
	jFDN2GIIN+I0MPPul+TJs7I/VKkQ89JfMGb3h5uQSCmY0enkaucsyfdDToglMov2VdE3Iq
	r+2Mu+QbFeLnZ/WHPeTkSIOMEyWaW8fraPv+FHvSYkSfVPjk5f23Gs9RqtwDng==
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
Subject: Re: [PATCH 4/4] phy: cadence-torrent: rewrite Torrent PHY driver
Date: Tue, 24 Nov 2026 18:18:24 +0100
Message-ID: <22sq13shQmSOkQPF53jaXw@bootlin.com>
In-Reply-To: <20261121-artichoke-sturgeon-of-karma-a7c4e5@quoll>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-4-da2db7125cd7@bootlin.com>
 <20261121-artichoke-sturgeon-of-karma-a7c4e5@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_091842_620116_78DE7D4E 
X-CRM114-Status: GOOD (  29.11  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0dXJkYXksIE5vdmVtYmVyIDIxLCAyMDI2IGF0IDU6MTbigK9QTSwgS3J6eXN6dG9mIEtv
emxvd3NraSB3cm90ZToKPiBPbiBGcmksIE5vdiAyMCwgMjAyNiBhdCAwMTo1NTo1MlBNICswMTAw
LCBCZW5qYW1pbiBSb2JpbiB3cm90ZToKPiA+IFRoZSBDYWRlbmNlIFRvcnJlbnQgUEhZIChzZDA4
MDEpIGlzIGEgbXVsdGktcHJvdG9jb2wgU2VyRGVzIHVzZWQgaW4KPiA+IHNldmVyYWwgU29Dcywg
YW1vbmcgdGhlbSB0aGUgVGV4YXMgSW5zdHJ1bWVudHMgSjcyeHggZmFtaWx5LiBJdHMKPiA+IHBy
b2dyYW1taW5nIGRlcGVuZHMgb24gbWFueSBwYXJhbWV0ZXJzOiB0aGUgc2VsZWN0ZWQgcHJvdG9j
b2wgKGVhY2gKPiA+IGFzc29jaWF0ZWQgUExMIGhhcyB0byBiZSBzZXQgdG8gYSBkaWZmZXJlbnQg
ZnJlcXVlbmN5KSwgdGhlIERpc3BsYXlQb3J0Cj4gPiBiaXQgcmF0ZSwgdGhlIHJlZmVyZW5jZSBj
bG9jayBmcmVxdWVuY3ksIHdoZXRoZXIgc3ByZWFkLXNwZWN0cnVtCj4gPiBjbG9ja2luZyAoU1ND
KSBpcyBlbmFibGVkLCB0aGUgbnVtYmVyIG9mIGxhbmVzLCBhbmQgdGhlIFBIWSByZXZpc2lvbgo+
ID4gYW5kIHRlY2hub2xvZ3kgKHByb2Nlc3Mgbm9kZSkuCj4gPiAKPiA+IFRoZSBjdXJyZW50IHBo
eS1jYWRlbmNlLXRvcnJlbnQgZHJpdmVyIGhhcmQtY29kZXMsIGZvciBldmVyeSBzdXBwb3J0ZWQK
PiA+IGNvbmZpZ3VyYXRpb24sIHRoZSBzZXQgb2YgcmVnaXN0ZXIgdmFsdWVzIHRvIHByb2dyYW0u
IEJlY2F1c2UgdGhpcwo+ID4gY29uZmlndXJhdGlvbiBzcGFjZSBpcyBsYXJnZSwgYWRkaW5nIGEg
bmV3IGJvYXJkIG9yIGEgbmV3IGNvbWJpbmF0aW9uCj4gPiBvZiBzdGFuZGFyZHMgcmVxdWlyZXMg
ZHVwbGljYXRpbmcgZG96ZW5zIG9mIG9wYXF1ZSByZWdpc3RlciB2YWx1ZXMsCj4gPiB3aGljaCBp
cyBpbmZsZXhpYmxlIGFuZCBoYXJkIHRvIG1haW50YWluLgo+ID4gCj4gPiBUaGlzIG5ldyBkcml2
ZXIgdmVyc2lvbiBjb21wdXRlcyB0aGUgcmVnaXN0ZXIgdmFsdWVzIGluc3RlYWQ6Cj4gPiAKPiA+
ICAgLSByZWdpc3RlcnMgdGhhdCBkZXBlbmQgb24gdGhlIHJlZmVyZW5jZSBjbG9jayBmcmVxdWVu
Y3kgb3Igb24gYSBQTEwKPiA+ICAgICBmcmVxdWVuY3kgYXJlIGNvbXB1dGVkIGF0IHJ1biB0aW1l
LCBmcm9tIHRoZSByZWZlcmVuY2UgY2xvY2sKPiA+ICAgICBvYnRhaW5lZCB0aHJvdWdoIHRoZSBj
bG9jayBmcmFtZXdvcmsgYW5kIGZyb20gdGhlIFBMTCBmcmVxdWVuY3kKPiA+ICAgICBkZXJpdmVk
IGZyb20gdGhlIHNlbGVjdGVkIHN0YW5kYXJkOwo+ID4gICAtIHRoZSBvdGhlciByZWdpc3RlcnMs
IHdoaWNoIG9ubHkgZGVwZW5kIG9uIHRoZSBzdGFuZGFyZCB0eXBlLCB0aGUKPiA+ICAgICBQSFkg
cmV2aXNpb24gYW5kIHRoZSB0ZWNobm9sb2d5LCBhcmUgaGFuZGxlZCBieSBvbmUgZnVuY3Rpb24g
cGVyCj4gPiAgICAgcmVnaXN0ZXIsIHVzaW5nIGFuIGludGVybmFsIHRhYmxlIHNlbGVjdGVkIHRo
cm91Z2ggYQo+ID4gICAgIHN0YW5kYXJkL3JldmlzaW9uL3RlY2hub2xvZ3kga2V5Lgo+ID4gCj4g
PiBUaGUgUEhZIHJldmlzaW9uIGFuZCB0ZWNobm9sb2d5IGFyZSBkZXRlY3RlZCBhdXRvbWF0aWNh
bGx5IGZyb20gdGhlCj4gPiBQSFkgaWRlbnRpZmljYXRpb24gcmVnaXN0ZXJzLCBhbmQgdGhlIERp
c3BsYXlQb3J0IGxpbmsgaW5pdGlhbGl6YXRpb24KPiA+IGFuZCByYXRlIHJlY29uZmlndXJhdGlv
biBoYXZlIGJlZW4gcmV3cml0dGVuLgo+ID4gCj4gPiBDb21wYXJlZCB3aXRoIHRoZSBleGlzdGlu
ZyBkcml2ZXIsIHRoaXMgcmV3cml0ZSBwcm92aWRlczoKPiAKPiAxMGsgbGluZXMgcGF0Y2ghCgpJ
IHdhcyBleHBlY3RpbmcgdGhpcyBraW5kIG9mIGZlZWRiYWNrLCB3aGljaCBpcyB3aHkgdGhlIGNv
dmVyIGxldHRlciBzYXlzOgoKICBCZWNhdXNlIHRoaXMgaXMgYSBjb21wbGV0ZSByZXdyaXRlLCB0
aGUgZGlmZiBpcyBsYXJnZSBhbmQgbm90IHdlbGwKICBzdWl0ZWQgdG8gYSBsaW5lLWJ5LWxpbmUg
cmV2aWV3LiBUaGUgcmV3cml0dGVuIGRyaXZlciBjYW4gYmUgZmV0Y2hlZAogIGZyb20gdGhlIHBo
eS1jYWRlbmNlLXRvcnJlbnQgYnJhbmNoIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9iZW5qYXJvYmlu
L2xpbnV4CgpUbyBnaXZlIG1vcmUgY29udGV4dDogdGhlIG5ldyBkcml2ZXIgd2FzIHdyaXR0ZW4g
ZnJvbSBzY3JhdGNoLCBpbiBhIG5ldwplbXB0eSBmaWxlLCBhbHRob3VnaCBhIHZlcnkgc21hbGwg
cGFydCBvZiB0aGUgb2xkIGRyaXZlciB3YXMgY29waWVkIG92ZXIuCkkgaW5pdGlhbGx5IGNvbnNp
ZGVyZWQgYWRkaW5nIHRoZSBuZXcgZHJpdmVyIHRvIHN0YWdpbmcsIGJ1dCBhZnRlciBpbnRlcm5h
bApkaXNjdXNzaW9uIHdlIGRlY2lkZWQgYWdhaW5zdCBpdC4KCj4gCj4gTm8sIGluc3RlYWQgaW1w
cm92ZSB0aGUgZHJpdmVyIGluc3RlYWQgb2YgZG9pbmcgYnVuY2ggb2Ygc2lnbmlmaWNhbnQKPiBj
aGFuZ2VzIGxpa2U6Cj4gCj4gPiAtI2RlZmluZSBNQVhfTlVNX0xBTkVTCQk0Cj4gPiArI2RlZmlu
ZSBNQVhfTlVNX0xBTkVTCQk4CgpSZWdhcmRpbmcgaW5jcmVtZW50YWwgY2hhbmdlczogSSBjb3Vs
ZCB0cnkgdG8gYnVpbGQgYSBzZXJpZXMgb2Ygc21hbGxlcgpzdGVwcyBmcm9tIHRoZSBvbGQgZHJp
dmVyIHRvd2FyZHMgdGhlIG5ldyBvbmUuIFRoYXQgY29tZXMgYXQgYW4KYWRkaXRpb25hbCAiY29z
dCIsIHNpbmNlIGludGVybWVkaWF0ZSBwYXRjaGVzIHdvdWxkIGZpeCBmdW5jdGlvbnMgb3IKaG93
IHRoZXJlIGFyZSBjYWxsZWQsIHRoYXQgYSBsYXRlciBwYXRjaCB0aGVuIHJlbW92ZXMgb3IgcmVw
bGFjZXMuCgpIb3dldmVyLCBldmVuIHdpdGggc3VjaCBhIHNlcmllcywgdGhlIGNvcmUgdHJhbnNm
b3JtYXRpb24gcmVtYWluczogb25lCnBhdGNoIHJlcGxhY2luZyBhbGwgdGhlIHRhYmxlcyB3aXRo
IHBlci1yZWdpc3RlciBmdW5jdGlvbnMgY29tcHV0aW5nIHRoZQp2YWx1ZXMuIFRoYXQgcGF0Y2gg
YWxvbmUgcmVtb3ZlcyByb3VnaGx5IDNrIGxpbmVzIGFuZCBhZGRzIDIuNWsgbGluZXMsCndoaWNo
IGNhbm5vdCByZWFsbHkgYmUgc3BsaXQgZnVydGhlci4KClNvLCBJIGFtIGdvaW5nIHRvIHRyeSB0
byBjcmVhdGUgYW4gaW5jcmVtZW50YWwgc2VyaWVzOiBtYW55ICJzbWFsbCIgcGF0Y2hlcwpjb252
ZXJnaW5nIHRvd2FyZHMgdGhlIG5ldyBpbXBsZW1lbnRhdGlvbiwgd2l0aCBvbmUgdW5hdm9pZGFi
bGUgbGFyZ2UgcGF0Y2guCgpXaXRoIHRoaXMgYWRkaXRpb25hbCBjb250ZXh0LCBjb3VsZCB5b3Ug
Y29uZmlybSB3aGV0aGVyIHlvdSB3b3VsZApwcmVmZXIgdGhlIHNlcmllcyBzcGxpdCBpbnRvIHNt
YWxsZXIgcGF0Y2hlcz8KCj4gCj4gVGhpcyBpcyBhYnNvbHV0ZWx5IHVucmV2aWV3YWJsZS4KCgot
LSAKQmVuamFtaW4gUm9iaW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
