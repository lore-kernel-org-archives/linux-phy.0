Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5DD1061B21
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 10:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSEVlICt4L0V7hVPNChT+z1wyIXSNKgf96OZyKnjr54=; b=S/yJl/JmKRz+pI
	6Dpg7aovvt/pIlNiDCm8BGi8bprHMDhef0exZZZcYCkyLENn68pghmQh/+TfEus/uN0ED0NHlonCy
	mhAILMJCnewCyh1mjSURX1Kc4Dx26UDQSsZDzRpqa5Y8RnoJvwATqkfQNf3gOoj2pXnFbJbgAdejo
	/rLTZHd9tdrtppip8ZclL4nUcjFpp7H1aY79/pE58D0TIAOpv+Bhz8btdgh+Ancung5+WRCrNNien
	mEyEtN4Zxni9aBIIi5G9ut4ADAFO5rR0dDOwY4OeKQRIs5zGOTZfg5qhep/DTR4Wac6fQSd7Qkqje
	yhpDypRWgr2xC4M6tE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7WRv-0000000CnU4-15AO;
	Tue, 31 Mar 2026 10:35:55 +0000
Received: from www537.your-server.de ([2a01:4f8:d0a:334f::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7WRs-0000000CnTY-2cJH;
	Tue, 31 Mar 2026 10:35:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=P+IgeM0E/Q07Sn3hriePPAxBXX3SXluGXODr4AiAiTw=; b=ZgAnieGle6zDl3EZKJg0za741y
	zLirxy2bugV/zO27BFhx+ku4dR6GFfFWtuYzQjuImkfCYLhPK9uMkKfoQEdvi29mCImnUcwR7RtIg
	d7SsfWichOIrd13aI4eXlX4npgSaqznv0AJ80EmsJCikOi05MrDOXJr8dh4ImuXnmpun9fXwcHDuU
	36cqMsfJacfr+oTkytel6paurOlzmPkKklJWqoHRektriOdfEDxeC5SXGzy1r6iQxvRM6Dj12rPS0
	8WFzww8a7xSQnM0YilT0Oc2yQpaXRa8rL68N0NdvnfGA7YGPO+1wtVTZ5a9TeMnM4G7TzKHEHPmyX
	BCdbp99A==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7WRe-000A6b-2s;
	Tue, 31 Mar 2026 12:35:38 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7WRd-0004TE-2w;
	Tue, 31 Mar 2026 12:35:38 +0200
Message-ID: <b93cbe578c3a4dec6b3b07780e57d50702a37d3d.camel@ew.tq-group.com>
Subject: Re: [PATCH v2 5/7] phy: ti: gmii-sel: add support for J722S SoC
 family
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Vladimir Oltean <olteanv@gmail.com>
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
Date: Tue, 31 Mar 2026 12:35:37 +0200
In-Reply-To: <20260330223741.pmrx25cslrlpbcea@skbuf>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
	 <5d00697f133cd33a1df62ac7ebf73e507e49ed2f.1774354734.git.nora.schiffer@ew.tq-group.com>
	 <20260330223741.pmrx25cslrlpbcea@skbuf>
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27957/Tue Mar 31 08:24:30 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_033552_654694_611DED96 
X-CRM114-Status: GOOD (  22.41  )
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

T24gVHVlLCAyMDI2LTAzLTMxIGF0IDAxOjM3ICswMzAwLCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6
Cj4gSGkgTm9yYSwKPiAKPiBPbiBUdWUsIE1hciAyNCwgMjAyNiBhdCAwMToyOTo0MVBNICswMTAw
LCBOb3JhIFNjaGlmZmVyIHdyb3RlOgo+ID4gVGhlIEo3MjJTIGdtaWktc2VsIGlzIG1vc3RseSBp
ZGVudGljYWwgdG8gdGhlIEFNNjQncywgYnV0IGFkZGl0aW9uYWxseQo+ID4gc3VwcG9ydHMgU0dN
SUkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZmZXIgPG5vcmEuc2NoaWZmZXJA
ZXcudHEtZ3JvdXAuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvdGkvcGh5LWdtaWktc2Vs
LmMgfCAxMSArKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktZ21paS1zZWwuYyBiL2Ry
aXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jCj4gPiBpbmRleCA2MjEzYzJiNjAwNWE1Li40ZTI0
MmIxODkyMzM0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LWdtaWktc2VsLmMK
PiA+ICsrKyBiL2RyaXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jCj4gPiBAQCAtMjUxLDYgKzI1
MSwxMyBAQCBzdHJ1Y3QgcGh5X2dtaWlfc2VsX3NvY19kYXRhIHBoeV9nbWlpX3NlbF9zb2NfYW02
NTQgPSB7Cj4gPiAgCS5yZWdmaWVsZHMgPSBwaHlfZ21paV9zZWxfZmllbGRzX2FtNjU0LAo+ID4g
IH07Cj4gPiAgCj4gPiArc3RhdGljIGNvbnN0Cj4gPiArc3RydWN0IHBoeV9nbWlpX3NlbF9zb2Nf
ZGF0YSBwaHlfZ21paV9zZWxfc29jX2o3MjJzID0gewo+ID4gKwkudXNlX29mX2RhdGEgPSB0cnVl
LAo+ID4gKwkucmVnZmllbGRzID0gcGh5X2dtaWlfc2VsX2ZpZWxkc19hbTY1NCwKPiA+ICsJLmV4
dHJhX21vZGVzID0gQklUKFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSksCj4gCj4gSSdtIG5vdCBm
YW1pbGlhciB3aXRoIHRoZSBoYXJkd2FyZSwgYnV0ICJtb3N0bHkgaWRlbnRpY2FsIHRvIEFNNjQs
IGJ1dAo+IGFkZGl0aW9uYWxseSBzdXBwb3J0cyBTR01JSSIgZG9lcyBub3QgZXhwbGFpbiB3aHkg
ajcyMnMgZG9lcyBub3QgaW5oZXJpdAo+IHRoZSBmZWF0dXJlcyB0aGF0IGFtNjU0IGhhcyAoUEhZ
X0dNSUlfU0VMX1JHTUlJX0lEX01PREUgYW5kCj4gQklUKFBIWV9HTUlJX1NFTF9GSVhFRF9UWF9E
RUxBWSkuCj4gCj4gVGhlIHBoeS1nbWlpLXNlbCBmcm9tIGo3MjJzIGRvZXMgc3VwcG9ydCBSR01J
SSwgcmlnaHQ/IEJlY2F1c2UgaW4gbGFjawo+IG9mIHRoZSBQSFlfR01JSV9TRUxfUkdNSUlfSURf
TU9ERSBmZWF0dXJlLCBwaHlfZ21paV9zZWxfbW9kZSgpIHdpbGwganVzdAo+IHNpbGVudGx5IHNr
aXAgdGhlIHJlZ21hcF9maWVsZF93cml0ZShyZWdmaWVsZCwgcmdtaWlfaWQpIGNhbGwsIGFuZAo+
IHJldHVybiBzdWNjZXNzZnVsbHkgZGVzcGl0ZSBhbiBpbmNvbXBsZXRlIGNvbmZpZ3VyYXRpb24u
Cj4gCj4gV2UgaGF2ZSB0aGUgcGh5X3ZhbGlkYXRlKCkgY2FsbCBhbmQgcGh5X29wczo6dmFsaWRh
dGUoKSB0aHJvdWdoIHdoaWNoCj4gdGhlIFBIWSBjYW4gcmVwb3J0IHRvIHRoZSBFdGhlcm5ldCBj
b250cm9sbGVyIHdoaWNoIHBoeV9pbnRlcmZhY2VfdCBpdAo+IHN1cHBvcnRzIGFuZCB3aGljaCBp
dCBkb2Vzbid0LiBJZiB0aGUgajcyMnMgZG9lc24ndCBzdXBwb3J0IFJHTUlJLCBtYXliZQo+IGl0
IHNob3VsZCBpbXBsZW1lbnQgdGhpcyBtZXRob2QuCgpUaGFua3MgZm9yIG5vdGljaW5nIHRoaXMs
IFBIWV9HTUlJX1NFTF9SR01JSV9JRF9NT0RFIGFuZApQSFlfR01JSV9TRUxfRklYRURfVFhfREVM
QVkgYXJlIG1pc3NpbmcgaW5kZWVkIC0gd2lsbCBmaXggaW4gdjMuIEkgbWFkZSB0aGUKbWlzdGFr
ZSB0byByZWJhc2UgZnJvbSBhbiBvbGRlciBrZXJuZWwgdmVyc2lvbiB3aGVyZSB0aGVzZSBmbGFn
cyBkaWRuJ3QgZXhpc3QKeWV0IGFuZCBuZWdsZWN0ZWQgdG8gZG91YmxlIGNoZWNrIHdoZW4gdGhl
IHJlYmFzZSB3ZW50IHRocm91Z2ggd2l0aG91dApjb25mbGljdHMuIEkgYXNzdW1lIEkgZGlkbid0
IG5vdGljZSBhbnkgaXNzdWVzIGJlY2F1c2Ugb3VyIGJvb3Rsb2FkZXIgbGVmdCB0aGUKY29udHJv
bGxlciBpbiB0aGUgY29ycmVjdCBzdGF0ZS4KCkJlc3QsCk5vcmEKCgo+IAo+ID4gK307Cj4gPiAr
CgotLSAKVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIy
MjkgU2VlZmVsZCwgR2VybWFueQpBbXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOApHZXNj
aMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBT
Y2huZWlkZXIKaHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
