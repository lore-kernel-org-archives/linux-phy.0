Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C40C7115C
	for <linux-phy@archiver.kernel.org>; Sat, 21 Jun 2025 07:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlwiZTZaoBMlYQNy5Xy0EQI50k4wHSb+SJQ//uby4XM=; b=rn/YfIEQ+ZYsvP
	ke7lY6GwJylltffvSkDbMYK9fXlm0d42+I/K2u9r8e2ae9SMw5Xr6l6q0bkl55/YicooS28f0tPPr
	x8eG5WNlK1XOUVU4+HTAJcH00PvK56fva9RwcbXl1QSn1nUX9LxvNdp2YCBvovxzdikYMMhhyDsZH
	wRE336mMyhxpZCrt0m8++d7TkSST1rV05ZS3Pu5rSGoKr0qS7hbfZ+6aTPNGoW9WDt74MlryQVzu+
	Yu6I6pmFnYn1D6KidqBu8s6DfhLEpKwe/Ngjq3zY8pIJLtnSlJhqf9Jlaue/TKvevIRbXfZWOrPWP
	xJRAtfZAYPfub8939n0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSsoq-0000000HCur-2NDa;
	Sat, 21 Jun 2025 07:39:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSsoo-0000000HCuI-203c;
	Sat, 21 Jun 2025 07:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZitZ8bWumcyW1MR/MaKS/o+JAIlQ+zy7xef+odnx7uM=; b=C4NDFT8ANCUVmX3P5VsdZa6rIK
	/P3uu4Zg9awdZuPmOmGaCBUFrChk/ie0XymVM4KlvFRBxN3MHvPl36nrvChRlXiaeQro08YdVsIpi
	friKF9S3HzhCpJzy+007YBHJMZzP9K68EKsSCER1eQWAXmZDyunU5C0IUelZVjvWv3Ctf6UnjhNZF
	YB6b6VtqSfe6W/tkaiVwIbiBQpwD6dz7rsT1Ix4gAl92HEolqEZ9kXwG1Dtal6XTJJYSCNqtKCnnF
	JglR3KkfRhdGmVzl2iOGB4OGcNVidSBtzSc628JPCpGWvyJb3R65zV3wJvuILAsQQvhZOx7yaDaU0
	vzEvGF6Q==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSsof-0004Xc-TU; Sat, 21 Jun 2025 09:39:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v6 0/4] PCI: rockchip: Improve driver quality
Date: Sat, 21 Jun 2025 09:39:08 +0200
Message-ID: <4760493.mogB4TqSGs@phil>
In-Reply-To: <cover.1750470187.git.geraldogabriel@gmail.com>
References: <cover.1750470187.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_003918_538435_DBBBEBA0 
X-CRM114-Status: GOOD (  13.55  )
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

SGkgR2VyYWxkbywKCkFtIFNhbXN0YWcsIDIxLiBKdW5pIDIwMjUsIDAzOjQ3OjUxIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgR2VyYWxkbyBOYXNjaW1lbnRvOgo+IER1cmlu
ZyBhIDMwLWRheSBkZWJ1Z2dpbmctcnVuIGZpZ2h0aW5nIHF1aXJreSBQQ0llIGRldmljZXMgb24g
UkszMzk5Cj4gc29tZSBxdWFsaXR5IGltcHJvdmVtZW50cyBiZWdhbiB0byB0YWtlIGZvcm0gYW5k
IHRoaXMgaXMgbXkgYXR0ZW1wdAo+IGF0IHVwc3RyZWFtaW5nIGl0LiBJdCB3aWxsIGVuc3VyZSBt
YXhpbXVtIGNoYW5jZSBvZiByZXRyYWluaW5nIHRvIEdlbjIKPiA1LjBHVC9zLCBvbiBhbGwgZm91
ciBsYW5lcyBhbmQgZml4IGFzeW5jIHN0cm9iZSBURVNUX1dSSVRFIGRpc2FibGVtZW50LgoKanVz
dCBhIGRyaXZlciBieSBjb21tZW50LCB5b3UgbWlnaHQgd2FudCB0byBkcm9wIHRoZSBSRkMgZWxl
bWVudCBmcm9tCnRoZSBwYXRjaCBzdWJqZWN0cy4KCkl0IGRvZXMgbG9vayBsaWtlIHRoaW5ncyB0
YWtlIGZvcm0gbmljZWx5IGFuZCBob3cgcGVvcGxlIHJlYWQgdGhvc2UKUkZDIG1hcmtzIHZhcmll
cyB3aWxkbHkuIFNvbWUgbWF5IGV2ZW4gcmVhZCBpdCBhcyAidGhpcyBpcyB1bmZpbmlzaGVkIgpv
ciBzb21ldGhpbmcgYW5kIHNwZW50IHJldmlldyB0aW1lIG9uIG90aGVyIHRoaW5ncy4KClNvIGlm
IHlvdSdyZSBtb3N0bHkgaGFwcHkgd2l0aCB5b3VyIGNoYW5nZXMsIGp1c3QgZHJvcCB0aGUgUkZD
IHBhcnQgOi0pCgoKPiAtLS0KPiBWNSAtPiBWNjogcmVmbG93IHRvIDc1IGNvbHMsIHVzZSA1LjBH
VHMgaW5zdGVhZCBvZiBHZW4yIG5vbWVuY2xhdHVyZSwKPiBjbGFyaWZ5IHN0cm9iZSB3cml0ZSBh
ZGp1c3RtZW50IGFuZCByZW1vdmUgUEhZX0NGR19SRF9NQVNLCj4gVjQgLT4gVjU6IGZpeCBidWls
ZCBmYWlsdXJlLCByZWZsb3cgY29tbWl0IG1lc3NhZ2VzIGFuZCBhbHNvIGNvbnZlcnQKPiByZWdp
c3RlcnMgZm9yIEVQIG9wZXJhdGlvbiwgYWxsIHN1Z2dlc3RlZCBieSBJbHBvCj4gVjMgLT4gVjQ6
IGZpeCBzZXR0aW5nLXVwIG9mIFRMUyBpbiBMaW5rIENvbnRyb2wgYW5kIFN0YXR1cyBSZWdpc3Rl
ciAyLAo+IGFsc28gYWRqdXN0IGNvbW1pdCB0aXRsZXMKPiBWMiAtPiBWMzogY29ycmVjdGx5IGNs
ZWFuLXVwIHdpdGggc3RhbmRhcmQgUENJZSBkZWZpbmVzIGFzIHBlciBCam9ybidzCj4gc3VnZ2Vz
dGlvbgo+IFYxIC0+IFYyOiB1c2Ugc3RhbmRhcmQgUENJZSBkZWZpbmVzIGFzIHN1Z2dlc3RlZCBi
eSBCam9ybgo+IAo+IEdlcmFsZG8gTmFzY2ltZW50byAoNCk6Cj4gICBQQ0k6IHJvY2tjaGlwOiBV
c2Ugc3RhbmRhcmQgUENJZSBkZWZpbmVzCj4gICBQQ0k6IHJvY2tjaGlwOiBTZXQgVGFyZ2V0IExp
bmsgU3BlZWQgYmVmb3JlIHJldHJhaW5pbmcKPiAgIHBoeTogcm9ja2NoaXAtcGNpZTogRW5hYmxl
IGFsbCBmb3VyIGxhbmVzIGlmIHJlcXVpcmVkCj4gICBwaHk6IHJvY2tjaGlwLXBjaWU6IFByb3Bl
cmx5IGRpc2FibGUgVEVTVF9XUklURSBzdHJvYmUgc2lnbmFsCj4gCj4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jICAgfCAgNCArLQo+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgNDggKysrKysrKysrKystLS0tLS0tLS0tCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oICAgICAgfCAxMiArLS0tLS0K
PiAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXBjaWUuYyAgICB8IDE1ICsrKy0t
LS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0MyBkZWxldGlvbnMoLSkK
PiAKPiAKCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
