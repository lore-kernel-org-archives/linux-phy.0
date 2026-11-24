Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E185A606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 16:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=46ysjsbt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=cC5cNUw7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LV10trrztFTcyWdkVbi6MkvJXYvb+RLSbTvvN3rM/lI=; b=46ysjsbtjtHqXd2aWRB1/67i+F
	PjMxlfrP3WJa43D420vEIXtDPsNtINNtVlYQUvCxQc5sj2Z4szKLufZP59EUaDJzSyg3wgil7spq0
	oibBaSjeFEM+kt0y0iL6d8SYaKEdqf9VeDY5qTtVT47AtH5vNnH7KJ/2Bzwsc9hm1853RyyJNVzYh
	eoGZQqvxcQRJIUUF1MWDYlYz9HVl35AMH2iYaSd46uwnoJzfZucnlPCQ6CGr6i9OrHCRqN+oMPfkM
	1nDwjd6xjkaG+Fqed2e3ZEwol3GJP2exLh/ldudKe6X1XzYf1iDZmIhvTLI2/IqweEAts/gqA2iuo
	D6V7ClKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVtaT-000000079BN-25XN;
	Tue, 24 Nov 2026 16:41:45 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVtaO-000000079AO-3Ux0;
	Tue, 24 Nov 2026 16:41:43 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 86173C2C65F;
	Tue, 24 Nov 2026 16:41:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id ED19B601E1;
	Tue, 24 Nov 2026 16:41:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A4A9211E69A7F;
	Tue, 24 Nov 2026 17:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795538489; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cheJlkoanCZTRG4AhCJxbSrRT9zoO/I9wDY38Qxp5Hk=;
	b=cC5cNUw7oFJed13YEaX4fWUIaxKQkdzydKfQ9yy80c4r8hL2EGyps+9mJ9gPa29bZau93Z
	Mm1WW2W0cSx8HaIZMfhL8Sptorsuabrl1dcNoZflp6Fq1/r8sVQHlybGU079m+Fz4TNUT6
	cYwawPDm55MjDOIwMVGf0aPeWweEWwNEl5LljDozd9ecGuUzMutf6GwrFFPV8yw5+zfTOR
	1VLNmelAq4LWQODxHw7mpEce9TdtfE7LVBSIZBXXLTs32hcgPBpUOMAV8PJ6Fv5aOBPJYN
	w5d5TTZUCQxTY2eLtRCdP7Nrk5UXXYUZ+ff4wW+D+Cnu3nlAnXVzWj00DBMliA==
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
Subject: Re: [PATCH 3/4] dt-bindings: phy: cadence-torrent: add phy-mode constants
Date: Tue, 24 Nov 2026 17:41:19 +0100
Message-ID: <8vihTUc0Sjqm4gFwtZkB5w@bootlin.com>
In-Reply-To: <20261121-wine-nautilus-of-courage-94af4f@quoll>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-3-da2db7125cd7@bootlin.com>
 <20261121-wine-nautilus-of-courage-94af4f@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_084141_023166_B6CD9D1C 
X-CRM114-Status: GOOD (  18.31  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0dXJkYXksIE5vdmVtYmVyIDIxLCAyMDI2IGF0IDU6MjDigK9QTSwgS3J6eXN6dG9mIEtv
emxvd3NraSB3cm90ZToKPiBPbiBGcmksIE5vdiAyMCwgMjAyNiBhdCAwMTo1NTo1MVBNICswMTAw
LCBCZW5qYW1pbiBSb2JpbiB3cm90ZToKPiA+IEFkZCB0aGUgYENETlNfVE9SUkVOVF9NT0RFXypg
IGNvbnN0YW50cyB0bwo+ID4gaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LWNhZGVuY2UuaCBz
dWNoIGFzIFNBVEEtTFAgYW5kIDI1MDBCQVNFLVguCj4gCj4gQnV0IHdoeT8gV2h5IGRvIHdlIG5l
ZWQgbW9yZSBvZiB0aGVzZSBwcm9wZXJ0aWVzPwoKVGhlIFRvcnJlbnQgUEhZIHN1cHBvcnRzIG11
bHRpcGxlIHN0YW5kYXJkczogUENJZSwgVVNCLCBTQVRBLCBYQVVJIGFuZApTR01JSSwgLi4uIEZv
ciBzb21lIG9mIHRoZW0sIGFkZGl0aW9uYWwgY29uZmlndXJhdGlvbiBvcHRpb25zIGV4aXN0OgoK
LSBVU0I6CiAgV2UgbmVlZCB0byBrbm93IHRoZSBJL08gc3VwcGx5IHZvbHRhZ2UgKDEuMSBWIG9y
IDEuMiBWKSwgc2luY2UgaXQKICBhZmZlY3RzIHRoZSBUWCBmdWxsLXN3aW5nIG1hZ25pdHVkZSBt
dWx0aXBsaWVyIGNvbmZpZ3VyYXRpb24gZm9yIHRoZQogIFVTQiBUWC9SWCBwYWQgc3VwcGx5LgoK
ICBUaGUgbGluayBjYW4gYWxzbyBiZSBsaW1pdGVkIHRvIEdlbiAxIHNwZWVkICg1IEdiL3MgU3Vw
ZXJTcGVlZCkKICBpbnN0ZWFkIG9mIEdlbiAyICgxMCBHYi9zIFN1cGVyU3BlZWQrKSB0byByZWR1
Y2UgcG93ZXIsIHdoaWNoIGlzIHdoeQogIHRoZSBvcHRpb24gaXMgbmFtZWQgIkxQIiAobG93IHBv
d2VyKS4KCi0gU0FUQToKICBUaGUgUEhZIHN1cHBvcnRzIFNBVEEgR2VuIDEgKDEuNSBHYi9zKSwg
R2VuIDIgKDMuMCBHYi9zKSBhbmQgR2VuIDMKICAoNi4wIEdiL3MpLiBUaGUgbGluayBjYW4gYWxz
byBiZSBsaW1pdGVkIHRvIEdlbiAyIHRvIHJlZHVjZXMgcG93ZXIuCgotIFhBVUk6CiAgVGhlIGxp
bmsgY2FuIGJlIGNvbmZpZ3VyZWQgdG8gMVggb25seSAoMy4xMjUgR2IvcyBsYW5lIHJhdGUpLAog
IGRyb3BwaW5nIHRoZSAyWCByYXRlICg2LjI1IEdiL3MpLCBhZ2FpbiB0byByZWR1Y2UgcG93ZXIu
CgotIFNHTUlJOgogIFRoZSBsaW5rIGNhbiBiZSAib3ZlcmNsb2NrZWQiIHRvIDI1MDBCQVNFLVgg
KGNhbGxlZCBTR01JSSsgaW4gdGhlCiAgdXNlciBndWlkZSkgaW5zdGVhZCBvZiAxR2Jwcy4gVGhl
cmUgaXMgbm8gUEhZIHR5cGUgaW4KICBgaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LmhgIGZv
ciAyNTAwQkFTRS1YLCBhbmQgc2luY2UgaXQgaXMKICB0ZWNobmljYWxseSBTR01JSSBhdCBhIGhp
Z2hlciBzcGVlZCwgSSBhbSBub3Qgc3VyZSBhZGRpbmcgYSBuZXcgUEhZCiAgdHlwZSB0aGVyZSBp
cyBhcHByb3ByaWF0ZS4gVGhhdCBpcyB3aHkgSSBhZGRlZCB0aGVzZSBjb25zdGFudHMgdG8KICBw
aHktY2FkZW5jZS5oIGluc3RlYWQgb2YgcmV1c2luZyBQSFlfKiB0eXBlcy4gSWYgdGhlcmUgaXMg
YSBwcmVmZXJyZWQKICB3YXksIEkgYW0gaGFwcHkgdG8gcmV3b3JrIHRoaXMuCgo+ID4gCj4gPiBU
aGVzZSBjb25zdGFudHMgYXJlIHVzZWQgYnkgdGhlIG5ldyBDYWRlbmNlIFRvcnJlbnQgUEhZIGRy
aXZlciBhbmQKPiA+IGFyZSByZWZlcmVuY2VkIGJ5IHRoZSBgY2RucyxwaHktbW9kZWAgcHJvcGVy
dHkgb2YgdGhlIENhZGVuY2UgVG9ycmVudAo+ID4gUEhZIGJpbmRpbmcgdG8gc2VsZWN0IHRoZSBQ
SFkgbW9kZS4KPiAKPiBUaGF0J3Mgb2J2aW91cywgZXhwbGFpbiB3aHkgeW91IGFyZSBkdXBsaWNh
dGluZyBwaHkgdHlwZSBpbnN0ZWFkLgoKWW91IGFyZSByaWdodCwgdGhlIGNvbW1pdCBtZXNzYWdl
IG5lZWRzIGltcHJvdmVtZW50LgoKQW55IGd1aWRhbmNlIG9uIGhvdyB5b3Ugd291bGQgbGlrZSB0
aGVzZSBvcHRpb25zIHJlcHJlc2VudGVkIGluIHRoZQpiaW5kaW5nIHdvdWxkIGJlIG11Y2ggYXBw
cmVjaWF0ZWQgYXMgSSBhbSBub3QgZW50aXJlbHkgc3VyZSBhYm91dCB0aGUKYmVzdCBhcHByb2Fj
aCBteXNlbGYuCgpUaGUgcGxhbiBpcyB0byBldmVudHVhbGx5IGFsbG93IHJlY29uZmlndXJpbmcg
dGhlIFNHTUlJIGxpbmsgc3BlZWQKZHluYW1pY2FsbHkgdGhyb3VnaCBwaHlfc2V0X21vZGUoKSwg
YnV0IGZvciBub3cgdGhlIGNvbmZpZ3VyYXRpb24gbmVlZHMKdG8gYmUgZXhwcmVzc2VkIHN0YXRp
Y2FsbHkgZnJvbSB0aGUgRFRTLgoKLS0gCkJlbmphbWluIFJvYmluLCBCb290bGluCkVtYmVkZGVk
IExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
