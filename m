Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5769EECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCvLbWcmCncprz69wzp8kgFF0NbfllxGfmLLViJYAIo=; b=fq4bNHZWYFJdpp
	b8bF8dCQg9eJimo/hEHuwBmSFapWGuPqkyTJ17GGRp/2cXXj62iBCT7LyLd5lzQoqk+ReKQFmlIe/
	BAbQcw2G5DB/LSp4AadnEltPd/5Xi2BrNE95vO2SoVV4DohwhzmcUEfFTqSvawqKOP8vj+/wWhCqk
	rV5j5irhyfts7A0OjGaCdc1O9acYvVKrvVK45gI89tCDW78aHIVFd52VfHo2Io/LCAhfzk1IMC2m+
	j8h5zlrHkjtRHdDGDjbmDl9RKwBVJX93t2ceLU5vBXsyY2h84uhLxIdEVud4Cc+ReAd2Xj0r0qITh
	93IetK8k5eFfSVYoQJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaukF-009nIv-N1; Wed, 21 Sep 2022 08:06:11 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaukB-009nG5-BO
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 08:06:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id B7B70CE1C4F;
	Wed, 21 Sep 2022 08:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF84C433D6;
	Wed, 21 Sep 2022 08:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663747560;
	bh=iiGgNNFdcLKteCa878KTXhVaJVoiH2Je1zOl3/yPFqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M3WdeFWERpiU/U3gFJ1lwxlTQPCvouHm0KycEjUTajbzf8LUOHXD3tHyi+kkI0pBK
	 qq3gyM2HFadro4Ms0dCA5mIJ33Tsx6Qg3v5DZkEoqX8lr4epcxjhgGPi4kZNL71kQI
	 zv2wbOA6YujKG5HqS1N+m2MpNuJK3TOpV5s8yCcQ2smF5M0dK5PxCBXwOrl7pbtc+t
	 9Xi18gN1tVp1SH/FPrl4WG/BTOIU+kxvn9r9Q0p57qVH29vbMblsHT5j2tuFEKgFJX
	 cTm3+ymeRUVVhKFFA+ak4vLfcz3ZSkWtGx+6Lx+mXDMqCPw+/k3RaSslaYKib0cHnl
	 Jl9VZXGJ+vnuA==
Received: by pali.im (Postfix)
	id 282D0789; Wed, 21 Sep 2022 10:05:57 +0200 (CEST)
Date: Wed, 21 Sep 2022 10:05:57 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <20220921080557.jdg5wywpa5qxcyo2@pali>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921050300.riwyofdncxscrwe3@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_010608_473451_5D9E53CE 
X-CRM114-Status: GOOD (  27.30  )
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

T24gV2VkbmVzZGF5IDIxIFNlcHRlbWJlciAyMDIyIDA1OjAzOjAxIFNoaW5pY2hpcm8gS2F3YXNh
a2kgd3JvdGU6Cj4gT24gU2VwIDIwLCAyMDIyIC8gMTQ6MTEsIFBhbGkgUm9ow6FyIHdyb3RlOgo+
ID4gVHVycmlzIE1PWCBib2FyZCB3aXRoIG9sZGVyIEFSTSBUcnVzdGVkIEZpcm13YXJlIHZlcnNp
b24gdjEuNSBpcyBub3QgYWJsZQo+ID4gdG8gZGV0ZWN0IGFueSBVU0IgMy4wIGRldmljZSBjb25u
ZWN0ZWQgdG8gVVNCLUEgcG9ydCBvbiBNb3gtQSBtb2R1bGUgYWZ0ZXIKPiA+IGNvbW1pdCAwYTZm
YzcwZDc2YmQgKCJwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IFJlbW92ZSBi
cm9rZW4KPiA+IHJlc2V0IHN1cHBvcnQiKS4gT24gdGhlIG90aGVyIGhhbmQgVVNCIDIuMCBkZXZp
Y2VzIGNvbm5lY3RlZCB0byB0aGUgc2FtZQo+ID4gVVNCLUEgcG9ydCBhcmUgd29ya2luZyBmaW5l
Lgo+ID4gCj4gPiBJdCBsb29rcyBhcyBpZiB0aGUgb2xkZXIgZmlybXdhcmUgY29uZmlndXJlcyBD
T01QSFkgcmVnaXN0ZXJzIGZvciBVU0IgMy4wCj4gPiBzb21laG93IGluY29tcGF0aWJseSBmb3Ig
a2VybmVsIGRyaXZlci4gRXhwZXJpbWVudHMgc2hvdyB0aGF0IHJlc2V0dGluZwo+ID4gQ09NUEhZ
IHJlZ2lzdGVycyB2aWEgc2V0dGluZyBTRlRfUlNUIGF1dG8tY2xlYXJpbmcgYml0IGluIENPTVBI
WV9TRlRfUkVTRVQKPiA+IHJlZ2lzdGVyIGZpeGVzIHRoaXMgaXNzdWUuCj4gPiAKPiA+IFJlc2V0
IHRoZSBDT01QSFkgaW4gbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNfcG93ZXJfb24oKSBmdW5jdGlv
biBhcyBhIGZpcnN0Cj4gPiBzdGVwIGFmdGVyIHNlbGVjdGluZyBDT01QSFkgbGFuZSBhbmQgVVNC
IDMuMCBmdW5jdGlvbi4gV2l0aCB0aGlzIGNoYW5nZQo+ID4gVHVycmlzIE1PWCBib2FyZCBjYW4g
c3VjY2Vzc2Z1bGx5IGRldGVjdCBVU0IgMy4wIGRldmljZXMgYWdhaW4uCj4gPiAKPiA+IEJlZm9y
ZSB0aGUgYWJvdmUgbWVudGlvbmVkIGNvbW1pdCB0aGlzIHJlc2V0IHdhcyBpbXBsZW1lbnRlZCBp
biBQSFkgcmVzZXQKPiA+IG1ldGhvZCwgc28gdGhpcyBpcyB0aGUgcmVhc29uIHdoeSB0aGVyZSB3
YXMgbm8gaXNzdWUgd2l0aCBvbGRlciBmaXJtd2FyZQo+ID4gdmVyc2lvbiB0aGVuLgo+ID4gCj4g
PiBGaXhlczogMGE2ZmM3MGQ3NmJkICgicGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29t
cGh5OiBSZW1vdmUgYnJva2VuIHJlc2V0IHN1cHBvcnQiKQo+ID4gUmVwb3J0ZWQtYnk6IE1hcmVr
IEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+IFNoaW5pY2hpcm8sIGNvdWxkIHlvdSBwbGVh
c2UgY2hlY2sgdGhhdCBhbGwgVVNCIGZ1bmN0aW9uYWxpdHkgc3RpbGwKPiA+IHdvcmtzIGNvcnJl
Y3RseSBvbiB5b3VyIGJvYXJkPwo+ID4gLS0tCj4gCj4gU3VyZS4gVEw7RFIsIHRoaXMgcGF0Y2gg
d29ya3Mgb2sgZm9yIG15IGVzcHJlc3NvYmluIHY3IGJvYXJkLgo+IAo+IFRlc3RlZC1ieTogU2hp
bidpY2hpcm8gS2F3YXNha2kgPHNoaW5pY2hpcm8ua2F3YXNha2lAd2RjLmNvbT4KPiAKPiBJIHBy
ZXBhcmVkIGJhc2Uga2VybmVsIHY1LjE5LjEwIGFwcGx5aW5nIHRoZSBjb21taXQgMGE2ZmM3MGQ3
NmJkLiBSZWdhcmRsZXNzCj4gd2hldGhlciB0aGlzIGZpeCBwYXRjaCBmb3IgVHVycml4IE1PWCBi
b2FyZCBpcyBhcHBsaWVkIG9yIG5vdCwgdHdvIFVTQiBwb3J0cyBvbgo+IG15IGVzcHJzc29iaW4g
djcgYm9hcmQgd29ya2VkIGFzIGV4cGVjdGVkLiBJIGNvbmZpcm1lZCBpdCBieSB1c2luZyBVU0Ig
dGh1bWIKPiBkcml2ZS4gVGhlIGRyaXZlIHdhcyBkZXRlY3RlZCBhbmQgaXRzIHBhcnRpdGlvbiB3
YXMgbW91bnRlZCBzdWNjZXNzZnVsbHkgdXNpbmcKPiBlaXRoZXIgb2YgdGhlIHR3byBVU0IgcG9y
dHMuCgpUaGFuayB5b3UgZm9yIHRlc3RpbmchIEFueXdheSwgcGxlYXNlIGNoZWNrIHRoYXQgVVNC
IDMuMCBkZXZpY2UgaXMKd29ya2luZyBmaW5lLiBCZWNhdXNlIGFzIEkgd3JvdGUgaW4gY29tbWl0
IG1lc3NhZ2UsIG9uIFR1cnJpcyBNb3ggd2FzClVTQiAyLjAgZGV2aWNlIHdvcmtpbmcgZmluZSwg
YnV0IFVTQiAzLjAgbm90LiBBbmQgbWF5YmUgY2hlY2sgaW4gc3lzdGVtCihsc3VzYikgdGhhdCBV
U0IgMy4wIGRldmljZSB3YXMgcmVhbGx5IGRldGVjdGVkIGFzIFVTQiAzLjAgYmVjYXVzZSBVU0IK
My4wIGRldmljZXMgaGF2ZSBzdXBwb3J0ZWQgYWxzbyBmYWxsYmFjayBVU0IgMi4wLzEueCBsZWdh
Y3kgbW9kZS4KCj4gSSBhbHNvIGNvbmZpcm1lZCBTQVRBIHBvcnQgaXMgb2sgKG15IFNTRCBjYXJk
IHdhcyBkZXRlY3RlZCB3aXRob3V0IGVycm9yCj4gbWVzc2FnZSkgYW5kIHRocmVlIG5ldHdvcmsg
cG9ydHMgd29ya3Mgb2sgKCJMaW5rIGlzIFVwIiBtZXNzYWdlIG9uIG5ldHdvcmsgY2FibGUKPiBj
b25uZWN0aW9uKS4gSSBkaWQgc2FtZSBjb25maXJtYXRpb25zIHdpdGggdGhlIGxhdGVzdCBmaXJt
d2FyZSAoVEYtQSBhbmQgVS1ib290KQo+IGFuZCBvbGQgZmlybXdhcmUgKHdpdGggdmVyc2lvbiBk
YXRlIGluIDIwMTcpLiBBbGwgbG9va3MgZ29vZCBmb3IgbWUuCj4gCj4gLS0gCj4gU2hpbidpY2hp
cm8gS2F3YXNha2kKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
