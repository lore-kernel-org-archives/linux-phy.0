Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F07781075279
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W08LOyUQaBifvxff5Er6fQxigkmHw9OWw/YpHXuLPNA=; b=esGCcMhqph3DZ2
	MsfpZlRLtQ36GnVcghWUIY8yRVPKP+0EVyZ+0TPCEjPLM13cUYf3p9KnCwYH49LvQRfobAYcTvYOW
	5qdVXoRq/vWVaXi5DVjB1HKGX5bYGfW0SJsMO/L8vgYWQNU7Go7b9d+3sITeL8OciM1291GGWCd6i
	lSYFgVyR2V3KVimcu6BgRxX38VBJrizngt66TKO1DMwjuAybDkls7prtYvsEnR8dgTu8aVROx3LMP
	1l8UhqOhtbVWdJwFdJC9C2MNzDNNY2FDNGWP9UEACA49/72Gbex6wmsmb3NlB3NcITSeLEOB60Z63
	sJUurFh7BDig50l/qT4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w397t-0000000AGqt-1YZu;
	Thu, 19 Mar 2026 08:53:09 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w397q-0000000AGpw-1RLy;
	Thu, 19 Mar 2026 08:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Cy4910z4yKJ6chHebZmM0+S0xkDCsGUvQzxCGdWrqlo=; b=W3qBLApMiwlOSyK7y9elQXdTFi
	Ic0InLtfkfyj1C62uw3fTiOnT+O35+LH4qoEWpSFVLiOJKHcuyrOPj4cl7gOUKW2yyZ3LXWl6Pbyn
	mMBFpnsXxRWDN7EWDUM50FKvaIWP4C01mMX7o9WTRt8SPK18qccGeHVvbxm96fvqq0T/NHc0Xf4Va
	toG7EHiV0OA9zZTf6fIByGYVeqh2CJGFC+ybWqLlGa7pqlNAx8t+x7wKFe1i3oyQRmMd3DGzG96N0
	ZYJdmolg1BIT0yEwkQGihJQYjVxe5nAuGmedBO4Fv4wW1hcWpByAFscuGxTyukKWCbOf6lmBdmSuB
	ZuBfNjzg==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w397i-000Gux-1c;
	Thu, 19 Mar 2026 09:52:58 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w397h-000NT9-1X;
	Thu, 19 Mar 2026 09:52:57 +0100
Message-ID: <4cd1dc92490b7e441378c85da3a0e14010ba74d0.camel@ew.tq-group.com>
Subject: Re: [PATCH 6/7] net: ethernet: ti: am65-cpsw: add support for J722S
 SoC family
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>,  Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,  Nishanth Menon
 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,  netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux@ew.tq-group.com
Date: Thu, 19 Mar 2026 09:52:56 +0100
In-Reply-To: <4cc3dd9fab460d35215c8f97496b9ae16c5bcb22.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
	 <4cc3dd9fab460d35215c8f97496b9ae16c5bcb22.1773751309.git.nora.schiffer@ew.tq-group.com>
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27945/Thu Mar 19 07:24:38 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_015306_505038_8844F567 
X-CRM114-Status: GOOD (  14.36  )
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

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDE1OjA1ICswMTAwLCBOb3JhIFNjaGlmZmVyIHdyb3RlOgo+
IFRoZSBKNzIyUyBDUFNXM0cgaXMgbW9zdGx5IGlkZW50aWNhbCB0byB0aGUgQU02NCdzLCBidXQg
YWRkaXRpb25hbGx5Cj4gc3VwcG9ydHMgU0dNSUkuCj4gCj4gU2lnbmVkLW9mZi1ieTogTm9yYSBT
Y2hpZmZlciA8bm9yYS5zY2hpZmZlckBldy50cS1ncm91cC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMgfCA4ICsrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvdGkvYW02NS1jcHN3LW51c3MuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUt
Y3Bzdy1udXNzLmMKPiBpbmRleCBkOTQwMDU5OWU4MGE0Li5mYzU3ZDVlNmVkZjRjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jCj4gQEAgLTM0NjgsNiArMzQ2
OCwxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFtNjVfY3Bzd19wZGF0YSBhbTY0eF9jcHN3eGdf
cGRhdGEgPSB7Cj4gIAkuZmRxcmluZ19tb2RlID0gSzNfUklOR0FDQ19SSU5HX01PREVfUklORywK
PiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYW02NV9jcHN3X3BkYXRhIGo3MjJzX2Nw
c3d4Z19wZGF0YSA9IHsKPiArCS5xdWlya3MgPSBBTTY0X0NQU1dfUVVJUktfRE1BX1JYX1RET1dO
X0lSUSB8IEFNNjRfQ1BTV19RVUlSS19DVVRfVEhSVSwKCkFoLCBJIGp1c3QgcmVhbGl6ZWQgdGhh
dCBJIHNlbnQgdGhlIHdyb25nIHZlcnNpb24gb2YgdGhpcyBwYXRjaCwKQU02NF9DUFNXX1FVSVJL
X0NVVF9USFJVIG9ubHkgZXhpc3RzIGluIHRoZSBUSSB2ZW5kb3Iga2VybmVsLi4uIHNvcnJ5IGFi
b3V0CnRoaXMsIHdpbGwgZml4IGluIHYyLgoKQ2FuIHNvbWVvbmUgZnJvbSBUSSBhbnN3ZXIgaWYg
QU02NF9DUFNXX1FVSVJLX0RNQV9SWF9URE9XTl9JUlEgaXMgbmVlZGVkIGZvciB0aGUKSjcyMlM/
CgpCZXN0LApOb3JhCgoKCj4gKwkuYWxlX2Rldl9pZCA9ICJhbTY0LWNwc3d4ZyIsCj4gKwkuZmRx
cmluZ19tb2RlID0gSzNfUklOR0FDQ19SSU5HX01PREVfUklORywKPiArCS5leHRyYV9tb2RlcyA9
IEJJVChQSFlfSU5URVJGQUNFX01PREVfU0dNSUkpLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBhbTY1X2Nwc3dfcGRhdGEgajcyMDBfY3Bzd3hnX3BkYXRhID0gewo+ICAJLnF1aXJr
cyA9IDAsCj4gIAkuYWxlX2Rldl9pZCA9ICJhbTY0LWNwc3d4ZyIsCj4gQEAgLTM0OTUsNiArMzUw
Miw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFtNjVfY3Bzd19udXNzX29m
X210YWJsZVtdID0gewo+ICAJeyAuY29tcGF0aWJsZSA9ICJ0aSxhbTY1NC1jcHN3LW51c3MiLCAu
ZGF0YSA9ICZhbTY1eF9zcjFfMH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInRpLGo3MjFlLWNwc3ct
bnVzcyIsIC5kYXRhID0gJmo3MjFlX3BkYXRhfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAidGksYW02
NDItY3Bzdy1udXNzIiwgLmRhdGEgPSAmYW02NHhfY3Bzd3hnX3BkYXRhfSwKPiArCXsgLmNvbXBh
dGlibGUgPSAidGksajcyMnMtY3Bzdy1udXNzIiwgLmRhdGEgPSAmajcyMnNfY3Bzd3hnX3BkYXRh
fSwKPiAgCXsgLmNvbXBhdGlibGUgPSAidGksajcyMDAtY3Bzd3hnLW51c3MiLCAuZGF0YSA9ICZq
NzIwMF9jcHN3eGdfcGRhdGF9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJ0aSxqNzIxZS1jcHN3eGct
bnVzcyIsIC5kYXRhID0gJmo3MjFlX2Nwc3d4Z19wZGF0YX0sCj4gIAl7IC5jb21wYXRpYmxlID0g
InRpLGo3ODRzNC1jcHN3eGctbnVzcyIsIC5kYXRhID0gJmo3ODRzNF9jcHN3eGdfcGRhdGF9LAoK
LS0gClRRLVN5c3RlbXMgR21iSCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5
IFNlZWZlbGQsIEdlcm1hbnkKQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jD
pGZ0c2bDvGhyZXI6IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2No
bmVpZGVyCmh0dHBzOi8vd3d3LnRxLWdyb3VwLmNvbS8KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
