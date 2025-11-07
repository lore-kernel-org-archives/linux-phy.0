Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87017CCF9E3
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 09:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BE2iXsZv5//HjF6K0vaC30E2K8wfK88P6jkTkaoxDXQ=; b=kxxFmtB8unJ2s/
	mHjb0/Aymb3qLlRR1imC+N1/J3nyD683o3BxYSSPTGD4aBqMb0Um382QCZkl6x1QU0zyXzP67OT6C
	Qchz/lb67qyASlQKkW7Ggcp4asFp1jkoe+IUATVMKMFwAH4mrIVuz5D51NYDFBO6YneHJdlI/Pq/w
	I7FujoAbqPE7VP7C5vduBDY2Gtp0ZxDlXO+MxkOcaNexbwFJ7dH/w16kvEh+wStJjFwQg2vdfslo1
	7zEFmvYF9IYzD0MY81fF+yzvRRocUf0XJdM4AgNiUFAty5kqLnwuVBRZqjZLD5In5LuT4L+Z9asoY
	05VnCZDqsNqrmf/yEuIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIRZ-0000000Gvvv-0Unl;
	Fri, 07 Nov 2025 09:07:41 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIRV-0000000Gvuy-2JMo
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 09:07:39 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2F0A81A1919;
	Fri,  7 Nov 2025 09:07:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EC1B46070B;
	Fri,  7 Nov 2025 09:07:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EA9AA11851DE5;
	Fri,  7 Nov 2025 10:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1762506451; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Sy63ZFPfLxeX+rkZOJprYwfHaS5jEGoCibkMAFJMUlc=;
	b=0rzgYZsY73DyTeUngQTpshM2GBPYgAwxOp9qVrv8gZO96h4rFyI682/J7ahEUWaNzeuM9B
	tJkWuSNE1n0ibZwbVBGXWKUpVjNcJSW3Aknslb/zrlqs/iw7h+P+t1v4uxvg1xkaglHBMQ
	D0V7tRIG4q1UiPtBhiyqFYrlnQZvbt03vH+3LGrm+YYygSLwk9hecL0CKN1L4Ua1i/Xx4C
	0E9RSPkqeqrwmsn1eAY17ZBAP80uozInu/RRnYqcfyWSqG4JX4ultmjT58SiAGhxUQDif/
	2gKPHvhZm3CGlMFmzu6XjChJjyxxvhnw2BCO9Buq4zlUqrEMv1Be+AcJrkYqWA==
Mime-Version: 1.0
Date: Fri, 07 Nov 2025 10:07:27 +0100
Message-Id: <DE2CE3YY1Q9E.3HLFSD4K2CCGS@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v2 0/7] Add generic PHY driver used by MACB/GEM on EyeQ5
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, "Conor Dooley"
 <conor.dooley@microchip.com>, "Jerome Brunet" <jbrunet@baylibre.com>,
 "Andrew Lunn" <andrew@lunn.ch>
To: "Philipp Zabel" <p.zabel@pengutronix.de>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>, "Vladimir Kondratiev"
 <vladimir.kondratiev@mobileye.com>, =?utf-8?q?Gr=C3=A9gory_Clement?=
 <gregory.clement@bootlin.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
 <56a49462312d89fd0de6da273f698c0f89e73ada.camel@pengutronix.de>
In-Reply-To: <56a49462312d89fd0de6da273f698c0f89e73ada.camel@pengutronix.de>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_010737_732630_5D481EF6 
X-CRM114-Status: GOOD (  11.50  )
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

T24gVGh1IE5vdiA2LCAyMDI1IGF0IDExOjUxIEFNIENFVCwgUGhpbGlwcCBaYWJlbCB3cm90ZToK
PiBPbiBTYSwgMjAyNS0xMS0wMSBhdCAwOTo1MyArMDEwMCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
PiBBYm91dCBtZXJnaW5nLCBpdCdsbCBwcm9iYWJseSBiZSBjb21wbGV4LiBJIHNlZSBubyBidWls
ZCBkZXBlbmRlbmNpZXMsCj4+IGJ1dCB0aGUgYm9hcmQgd2lsbCBiZSBpbiBhbiBvZGQgc3RhdGUg
aWYgb25seSBzb21lIHBhdGNoZXMgYXJlIGFwcGxpZWQuCj4+IFNvbWUgZGV2X3dhcm4oKSBhdCBi
b290IGFuZCBkZXYtPm9mX25vZGUgcmVmY291bnRpbmcgaXNzdWVzIGF0IHVubG9hZC4KPj4gCj4+
ICAtIFtQQVRDSCAxLzddIGR0LWJpbmRpbmdzOiBzb2M6IG1vYmlsZXllOiBPTEIgaXMgYW4gRXRo
ZXJuZXQgUEhZIHByb3ZpZGVyIG9uIEV5ZVE1Cj4+ICAgIFdlIHRvdWNoIGR0LWJpbmRpbmdzIGJl
Y2F1c2UgT0xCIGJlY29tZXMgYSBQSFkgcHJvdmlkZXIuCj4+ICAgID0+IGxpbnV4LW1pcHMgKD8p
Cj4+IAo+PiAgLSBbUEFUQ0ggMi83XSBwaHk6IEFkZCBkcml2ZXIgZm9yIEV5ZVE1IEV0aGVybmV0
IFBIWSB3cmFwcGVyCj4+ICAgIFdlIGFkZCB0aGUgZ2VuZXJpYyBQSFkgZHJpdmVyIGluIGRyaXZl
cnMvcGh5L3BoeS1leWVxNS1ldGguYyB3aXRoIHRoZQo+PiAgICB1c3VhbCBLY29uZmlnLCBNYWtl
ZmlsZSBhbmQgTUFJTlRBSU5FUlMgY2hhbmdlcy4KPj4gICAgPT4gbGludXgtcGh5ICg/KQo+PiAK
Pj4gIC0gW1BBVENIIDYvN10gTUlQUzogbW9iaWxleWU6IGV5ZXE1OiBhZGQgdHdvIENhZGVuY2Ug
R0VNIEV0aGVybmV0IGNvbnRyb2xsZXJzCj4+ICAgIFtQQVRDSCA3LzddIE1JUFM6IG1vYmlsZXll
OiBleWVxNS1lcG06IGFkZCB0d28gQ2FkZW5jZSBHRU0gRXRoZXJuZXQgUEhZcwo+PiAgICBEVFMg
cGF0Y2hlcyB0byBhZGQgYm90aCB0aGUgI3BoeS1jZWxscyBvZiBPTEIgYW5kIHRoZSBNQUNCIGlu
c3RhbmNlcy4KPj4gICAgPT4gbGludXgtbWlwcwo+PiAKPj4gIC0gW1BBVENIIDQvN10gY2xrOiBl
eWVxOiBhZGQgRXllUTUgY2hpbGRyZW4gYXV4aWxpYXJ5IGRldmljZSBmb3IgZ2VuZXJpYyBQSFlz
Cj4+ICAgIFdlIG11c3QgdXBkYXRlIGNsay1leWVxIGJlY2F1c2UgaXQgaW5zdGFudGlhdGVzIGEg
bmV3IGF1eGRldi4KPj4gICAgPT4gbGludXgtY2xrCj4+IAo+PiAgLSBbUEFUQ0ggMy83XSBjbGs6
IGV5ZXE6IHVzZSB0aGUgYXV4aWxpYXJ5IGRldmljZSBjcmVhdGlvbiBoZWxwZXIKPj4gICAgW1BB
VENIIDUvN10gcmVzZXQ6IGV5ZXE6IGRyb3AgZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCkg
ZG9uZSBieSBwYXJlbnQKPj4gICAgV2l0aCB0aGUgZGV2LT5vZl9ub2RlIGFzc2lnbmVtZW50LCB3
ZSBtdXN0IGFsc28gY29ycmVjdCByZXNldC1leWVxLgo+PiAgICA9PiBzZXBhcmF0ZSB0aGVtIGlu
dG8gbGludXgtY2xrIGFuZCBsaW51eC1yZXNldD8KPgo+IFNpbmNlIDMgYW5kIDQgc2hvdWxkIGdv
IHZpYSBjbGssIGFuZCA1IGhhcyBhIGRlcGVuZGVuY3kgb24gMywgSSB3b3VsZAo+IHN1Z2dlc3Qg
bWVyZ2luZyB0aGVtIGFsbCB0b2dldGhlci4KClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrIFBoaWxp
cHAsIGFuZCB0aGUgcmV2aWV3IG9uIFs1LzddLiBHZXR0aW5nIGl0Cm1lcmdlZCBpbiBsaW51eC1j
bGsgd2lsbCBlYXNlIHRoZSBwcm9jZXNzIGFuZCBhdm9pZCBicmVha2FnZS4gVXBkYXRlZApzdW1t
YXJ5OgoKIC0gW1BBVENIIDEvN10gZHQtYmluZGluZ3M6IHNvYzogbW9iaWxleWU6IE9MQiBpcyBh
biBFdGhlcm5ldCBQSFkgcHJvdmlkZXIgb24gRXllUTUKICAgW1BBVENIIDYvN10gTUlQUzogbW9i
aWxleWU6IGV5ZXE1OiBhZGQgdHdvIENhZGVuY2UgR0VNIEV0aGVybmV0IGNvbnRyb2xsZXJzCiAg
IFtQQVRDSCA3LzddIE1JUFM6IG1vYmlsZXllOiBleWVxNS1lcG06IGFkZCB0d28gQ2FkZW5jZSBH
RU0gRXRoZXJuZXQgUEhZcwogICA9PiBsaW51eC1taXBzCgogLSBbUEFUQ0ggMi83XSBwaHk6IEFk
ZCBkcml2ZXIgZm9yIEV5ZVE1IEV0aGVybmV0IFBIWSB3cmFwcGVyCiAgID0+IGxpbnV4LXBoeQoK
IC0gW1BBVENIIDMvN10gY2xrOiBleWVxOiB1c2UgdGhlIGF1eGlsaWFyeSBkZXZpY2UgY3JlYXRp
b24gaGVscGVyCiAgIFtQQVRDSCA0LzddIGNsazogZXllcTogYWRkIEV5ZVE1IGNoaWxkcmVuIGF1
eGlsaWFyeSBkZXZpY2UgZm9yIGdlbmVyaWMgUEhZcwogICBbUEFUQ0ggNS83XSByZXNldDogZXll
cTogZHJvcCBkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSBkb25lIGJ5IHBhcmVudAogICA9
PiBsaW51eC1jbGsKCkkgbWlnaHQgc2VuZCBWMyBzb29uLCB3aXRoIHlvdXIgdHJhaWxlcnMgYXBw
ZW5kZWQuCgpUaGFua3MsCgotLQpUaMOpbyBMZWJydW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXgg
YW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
