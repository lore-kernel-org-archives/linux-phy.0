Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73154107527C
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 08:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsIJVTuefP2V7CrmIuwOHKCTuGXSZMgInmYgJKOz4sQ=; b=JfknVPbQ5q/6Zu
	OQGLhBkbdXoilx8+7RDLfieGa50UYoMANfqFdHCtHnmns7MQg7TCG63y/QcPNjP4qO+mADQbZwUjF
	G2ic1sZvyRYjTk+kGHaLUHhp951LqNdUL9iMG1YekPVdqdhjOwFI3n84vmEzODGomj7bw1nVvngao
	iaSOYguV/nOJ/3B9Zcj2kF+dcwGY/PeIsmGS30T4yV6XC+4g9UaxI2pydb2gvQdjLxXvcsPymnNFF
	ghZbo46P1rqE+ZiqH1PuESNDnyDSXdiT70kOrq5cZUoI9ydXNGT8r7ib0rE6at+WuEsxlVryPLlHL
	po06kKAI6KTSxN2/SnUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w39AG-0000000AHB1-0Wcq;
	Thu, 19 Mar 2026 08:55:36 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w39AD-0000000AHAB-0Aim;
	Thu, 19 Mar 2026 08:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dI1nFWFJiT0g+Klurn667jIXgS6STvOyM35+JIVWERw=; b=nEpkOgmhgLY8wIPVM2BFWVL4MZ
	OOXw0eQbA+R5ITSHE4BT2KMXYJ8X0zjTjyWMs9zJvNcgeyjG4XP+qkVMr5ZN6hZ29N1F2+sZARHJu
	x1wrsaZyaA1Srd+eiyCS6kGTEKCQ35Yj2C2+Kj3NbkUeoh0qviO/gi21hy4mzq5h7JsQWdWXiUpDV
	pJ/Sb6XuIJ9tUGXZTg1MgFko/3mPmOHByAdGuI68xmha+nMxK+Yz1oFci1aTa/f9A0S50sUa63vSl
	4lxjRoKivMstEZjFg4fpk5HoTolAN0u9osjSSLkC7G/i/uek5QW0E5PppGP/CAAcNmbJydRF0Us3Y
	mgtVS2uw==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w39A6-000HLH-1g;
	Thu, 19 Mar 2026 09:55:26 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w39A5-000M6L-1a;
	Thu, 19 Mar 2026 09:55:25 +0100
Message-ID: <37396c094c7124169ca376cf6aea5350971aec54.camel@ew.tq-group.com>
Subject: Re: [PATCH 3/7] dt-bindings: net: ti: k3-am654-cpsw-nuss: Add
 ti,j722s-cpsw-nuss compatible
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>,  Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,  Nishanth Menon
 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org,  linux-arm-kernel@lists.infradead.org,
 linux@ew.tq-group.com
Date: Thu, 19 Mar 2026 09:55:24 +0100
In-Reply-To: <20260318-sustained-reshuffle-eaf180729a9c@spud>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
	 <1382fed198246f1563dea091478757aebc4e4948.1773751309.git.nora.schiffer@ew.tq-group.com>
	 <20260318-sustained-reshuffle-eaf180729a9c@spud>
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27945/Thu Mar 19 07:24:38 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_015533_078289_8CFDE6E7 
X-CRM114-Status: GOOD (  15.31  )
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

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDE3OjM1ICswMDAwLCBDb25vciBEb29sZXkgd3JvdGU6Cj4g
T24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgMDM6MDU6MjVQTSArMDEwMCwgTm9yYSBTY2hpZmZlciB3
cm90ZToKPiA+IFRoZSBKNzIyUyBDUFNXM0cgaXMgbW9zdGx5IGlkZW50aWNhbCB0byB0aGUgQU02
NCdzLCBidXQgYWRkaXRpb25hbGx5Cj4gPiBzdXBwb3J0cyBTR01JSS4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogTm9yYSBTY2hpZmZlciA8bm9yYS5zY2hpZmZlckBldy50cS1ncm91cC5jb20+Cj4g
PiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3RpLGszLWFt
NjU0LWNwc3ctbnVzcy55YW1sIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3RpLGszLWFtNjU0LWNwc3ctbnVzcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHN3LW51c3MueWFtbAo+ID4gaW5kZXggYTk1
OWMxZDdlNjQzYS4uOWFiODIzN2M3Zjc5ZSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvdGksazMtYW02NTQtY3Bzdy1udXNzLnlhbWwKPiA+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvdGksazMtYW02NTQtY3Bz
dy1udXNzLnlhbWwKPiA+IEBAIC01OSw2ICs1OSw3IEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAg
LSB0aSxqNzIwMC1jcHN3eGctbnVzcwo+ID4gICAgICAgIC0gdGksajcyMWUtY3Bzdy1udXNzCj4g
PiAgICAgICAgLSB0aSxqNzIxZS1jcHN3eGctbnVzcwo+ID4gKyAgICAgIC0gdGksajcyMnMtY3Bz
dy1udXNzCj4gCj4gRm9yIGFsbCB0aGVzZSBiaW5kaW5ncywgd2h5IGlzIGEgZmFsbGJhY2sgbm90
IHN1aXRhYmxlPyBTZWVtcyBsaWtlIGl0J2QKPiBiZSBwb3NzaWJsZSBoZXJlLCBzaW5jZSB0aGVy
ZSdzIGp1c3QgYSBuZXcgZmVhdHVyZS4gSXMgdGhlcmUgc29tZSBvdGhlcgo+IHByb2dyYW1taW5n
IG1vZGVsIGRpZmZlcmVuY2U/CgpJIHRoaW5rIGEgZmFsbGJhY2sgbWFrZXMgc2Vuc2UsIEkgZGlk
bid0IGFkZCBvbmUgYmVjYXVzZSBvdGhlciB2YXJpYW50cyBkZXJpdmVkCmZyb20gdGhlIEFNNjQg
ZG9uJ3QgaGF2ZSBvbmUgZWl0aGVyLiBJIGNhbiBpbmNsdWRlIGEgZmFsbGJhY2sgaW4gdjIgKGZv
ciBhbGwgMwpiaW5kaW5ncyBpbiB0aGlzIHNlcmllcykuCgpCZXN0LApOb3JhCgoKCj4gCj4gPiAg
ICAgICAgLSB0aSxqNzg0czQtY3Bzd3hnLW51c3MKPiA+ICAKPiA+ICAgIHJlZzoKPiA+IC0tIAo+
ID4gVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIyMjkg
U2VlZmVsZCwgR2VybWFueQo+ID4gQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKPiA+
IEdlc2Now6RmdHNmw7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3Rl
ZmFuIFNjaG5laWRlcgo+ID4gaHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwo+ID4gCgotLSAKVFEt
U3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVs
ZCwgR2VybWFueQpBbXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8
aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIK
aHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
