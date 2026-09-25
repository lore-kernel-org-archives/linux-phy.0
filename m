Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EBA9C98318
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 02:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1+bkOy5iWrR6ZBN92QVisef2bWpgjaCt2pL8jTC4YY=; b=KvyRTRinTlsPT9
	nL/9zm/7ElBUoBF9PFGXLqDUh7MndNEGNLpbGnESgpfqrHcBm54WwVjWypRCAS70r4mC+U4aRy1c9
	FuBjBINcyztMTCB/cZk0ujgfyc7cwgYfu4FNouaxMkORtqBbF56w3uso0GPSrUO01dk2H7m7UsAQr
	J7KQ7YPo0vWyvYEIFXDnY3+1Qfl/QzJVF1RYEy0LF5n49IYh0twpJSsFCYlaWQE3AuxBTTOY++dkE
	cCc2BOwtkb72HimhPPPTf5smUk1WvXmQIlOAAbO6oByjwtqrJzMIkDVb7keuDzyi5+O7XrsZC9cY+
	+VXJeIms8T4wBDkVD3cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9vHy-0000000CVnl-2lYo;
	Fri, 25 Sep 2026 02:03:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9vHo-0000000CVjS-2l7D;
	Fri, 25 Sep 2026 02:03:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 867AC6022E;
	Fri, 25 Sep 2026 02:03:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C17431F00893;
	Fri, 25 Sep 2026 02:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790301819;
	bh=2DcEvfwfmeVBZJUGXm+guglmvCS4PPEV/BwTo5J2CK8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=j2IWEw2XjaXAKHXjlq/hSecnxIaNI96jV/cdtiOIjs0hrVaqddPU2KgtIpqwzhdI/
	 Vc5t30TIluHsim1Cu1eDG5nQqEDg3gVLlmTWWLCYyBeowOiQj4SoL2WadbBJNOKL0Y
	 25PeBfxgqNu4iqIxwOOOIgU3Cr6JRMB6JcjnkBlS0wuyjZjCiVmL9VaPH82NSqQEbz
	 v03gQ3C23S0I/LA2DNOFFLny5UAHXkXHXQr1o+w4diItkyxnNOahXcKY4MQj+voR7f
	 nzToISoDB7OAxyJgYRcGP507tClq2PJpZnUDDD2Jyfi8CKMKqQLtewrhNZBqr4W+zF
	 Yq8/xKfPQ7COQ==
Subject: Re: [PATCH net-next v10 02/11] dt-bindings: phy: rockchip:
 naneng-combphy: add rockchip,sgmii-mac-sel property
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
Date: Fri, 25 Sep 2026 02:03:37 +0000
Message-ID: <179030181733.2160803.4810080310196721706@kernel.org>
In-Reply-To: <20260922200336.2201212-3-coiaprant@gmail.com>
References: <20260922200336.2201212-3-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gQ29uY2VybiAodmVyaWZpZWQgRkFMU0Ug
UE9TSVRJVkUsIHJldGFpbmVkIGZvciBwb2xpY3kpOiAiVGhlCiAgYmluZGluZyBkb2N1bWVudHMg
YHJvY2tjaGlwLHNnbWlpLW1hYy1zZWxgIGJ1dCBubyBpbi10cmVlIGNvZGUgcmVhZHPigKYKCi0t
CgpkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hp
cCxzZ21paS1tYWMtc2VsIHByb3BlcnR5CgpUaGlzIGFkZHMgYW4gb3B0aW9uYWwgcm9ja2NoaXAs
c2dtaWktbWFjLXNlbCBwcm9wZXJ0eSB0byB0aGUgUm9ja2NoaXAKbmFuZW5nLWNvbWJwaHkgYmlu
ZGluZyBzbyBhIGRldmljZSB0cmVlIGNhbiBzZWxlY3Qgd2hldGhlciB0aGUgUkszNTY4ClNHTUlJ
IGludGVyZmFjZSBpcyByb3V0ZWQgdG8gR01BQzAgb3IgR01BQzEuIFRoZSBwcm9wZXJ0eSBpcyBh
IHVpbnQzMgpsaW1pdGVkIHRvIDAgb3IgMSwgZGVmYXVsdGluZyB0byAxLCBhbmQgaXMgb25seSBh
bGxvd2VkIGZvciB0aGUgUkszNTY4CmNvbXBhdGlibGUuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBo
eS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2No
aXAtbmFuZW5nLWNvbWJwaHkueWFtbAo+IGluZGV4IDM3OWIwOGJkOWU5N2EuLjhlODk4YmNlOWFm
NzMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9w
aHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwKPiBA
QCAtODAsNiArODAsMTUgQEAgcHJvcGVydGllczoKPiAgICAgIGRlc2NyaXB0aW9uOgo+ICAgICAg
ICBTb21lIGFkZGl0aW9uYWwgcGlwZSBzZXR0aW5ncyBhcmUgYWNjZXNzZWQgdGhyb3VnaCBHUkYg
cmVncy4KPiAgCj4gKyAgcm9ja2NoaXAsc2dtaWktbWFjLXNlbDoKPiArICAgICRyZWY6IC9zY2hl
bWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+ICsgICAgZW51bTogWzAsIDFdCj4g
KyAgICBkZWZhdWx0OiAxCj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgU2VsZWN0IGdtYWMw
IG9yIGdtYWMxIHRvIGJlIHVzZWQgYXMgU0dNSUkgY29udHJvbGxlci4KPiArICAgICAgVGhlIGhh
cmR3YXJlIHJlc2V0IHZhbHVlIGlzIEdNQUMxICgxKS4gU2V0IHRoaXMgdG8gMCB0byByb3V0ZQo+
ICsgICAgICBTR01JSSB0byBHTUFDMC4KPiArCgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBh
IGJ1ZywganVzdCBhIG5vdGUgb24gb3JkZXJpbmcgd2l0aGluIHRoZSBzZXJpZXMuCgpBdCB0aGlz
IGNvbW1pdCBhbG9uZSwgbm90aGluZyBpbiB0cmVlIHJlYWRzIHJvY2tjaGlwLHNnbWlpLW1hYy1z
ZWwsIHNvIGEKZGV2aWNlIHRyZWUgc2V0dGluZyBpdCB0byAwIHdvdWxkIHZhbGlkYXRlIHdpdGhv
dXQgYW55IGVmZmVjdCBvbiB0aGUKcGlwZSBHUkYgbXV4IGJpdC4KCkNoZWNraW5nIHRoZSByZXN0
IG9mIHRoZSBzZXJpZXMsIHRoZSBjb25zdW1lciBkb2VzIGxhbmQgaW1tZWRpYXRlbHkKYWZ0ZXJ3
YXJkczogcm9ja2NoaXBfY29tYnBoeV9wYXJzZV9kdCgpIGluCmRyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIGdhaW5zCgoJcHJpdi0+c2dtaWlfbWFjX3Nl
bCA9IDE7CglkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFj
LXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKCmFuZCB0aGUgUEhZX1RZUEVfU0dNSUkgY2Fz
ZSBvZiByazM1NjhfY29tYnBoeV9jZmcoKSBwcm9ncmFtcyB0aGUgYml0CmRlc2NyaWJlZCBoZXJl
OgoKCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBpcGVfZ3JmLCAmY2ZnLT5w
aXBlX3NnbWlpX21hY19zZWwsCgkJCQkJICAgICBwcml2LT5zZ21paV9tYWNfc2VsID4gMCk7Cgp3
aXRoIHRoZSBtYXRjaGluZyBkZXNjcmlwdG9yIGFkZGVkIHRvIHJrMzU2OF9jb21icGh5X2dyZmNm
Z3MsIHNvIHRoZQpiZWhhdmlvdXIgaXMgY29tcGxldGUgYXQgdGhlIGVuZCBvZiB0aGUgc2VyaWVz
IGFuZCBubyBjaGFuZ2UgaXMgbmVlZGVkCmhlcmUuCgo+IFsgLi4uIF0KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0
Y2hzZXQvMjAyNjA5MjIyMDAzMzYuMjIwMTIxMi0xLWNvaWFwcmFudCU0MGdtYWlsLmNvbQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
