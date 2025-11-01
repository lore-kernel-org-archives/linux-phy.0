Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE55CCF9F0
	for <linux-phy@archiver.kernel.org>; Sat,  1 Nov 2025 12:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPavsrVU0amufameSz33RO+8JkHGVLSAjJCMhUQ8YT4=; b=h+1oXC6oPCdWq5
	nbxlmwyTPqtD+GWRUEy883Fu2wkWUqso0tfn6U4rTo7tr5vbLMaT/OTBD6uXXQBL8I9rK4/7c/OWn
	e+IeaZUzyO9kSakWijoLrYBTmvAKNp67+fr0gKomDPuuMVdGJJ/8Dipnwq5NR+GvF9vFftEBpq/xh
	uMjmS3PXLKWrW2C22900rpUseThFCypdTCBqjK++WvdLNg3oOX+yv9rZdrR+bWMiNou5ERiXQqBRY
	zmu3b744I9gskPbGx268KJYmm9hYV08PqfAIu+3LHBAjxdlMopOyxakT+ly9Zv17wpZfBT6EZQO/Z
	R8yth5bOHpmE+CcHvAiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAvp-00000007juj-25bi;
	Sat, 01 Nov 2025 12:42:09 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAuO-00000007j17-3ztK;
	Sat, 01 Nov 2025 12:40:42 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1762000821; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=A7QggDksDzCmseQYSFGx/xof5FXoKWhxWCF1voGnOqira6R7CpXcFOe0adxPrhAfq46N1HjN76y4RmHjG2MKHWqbGxvwsMyJVal7+yN2yaVxHACMWl+iV2XKLZ756ZfiGeB7GPOMfmO5c2NiDuOqi33nIosp10r5BtTbdXDjSu0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762000821; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wX50N1iHvuUcfFTPrDTk6BLpkXD7It4diuWw8d34XeY=; 
	b=IRfmqhYlU29u+cfbSc2SPpAMwbA9jqEXzZ2q6s4FAq/fo8xrlDQSrLa8qvj+KfyhxxoqqjfejRhYxARtTv0si7j9gCxYbC/wfSsPcXJeow/Nupy5oK9uEUoQqa+vx/v1KKRRxXaopfS8uW9e92K+MwM/7lXIx+A+HLzbpKdLB3Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762000821;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=wX50N1iHvuUcfFTPrDTk6BLpkXD7It4diuWw8d34XeY=;
	b=hVxDDM/gqRw68T07nRuvdrHGupRkXhOU8RexT1UeP+9bS+r2KO4yzzfNJKjP+80C
	7ABb6CAL4qYLI3lXalMwKyt2SNufHOI19Bfnb3DH6aWQUjo7eCQ7Z9iLnS5/At0SWAQ
	DMYA4onW8qA2XN4liLwbv9J0ttSlgEbygWhi/Tro=
Received: by mx.zohomail.com with SMTPS id 1762000816267360.6637248664106;
	Sat, 1 Nov 2025 05:40:16 -0700 (PDT)
Message-ID: <548101c6c887299b3c39f294e376c782e0bd2160.camel@collabora.com>
Subject: Re: [PATCH 13/15] arm64: dts: mediatek: mt7981b: Add wifi memory
 region
From: Sjoerd Simons <sjoerd@collabora.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Matthias Brugger
 <matthias.bgg@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang	
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,  Manivannan Sadhasivam	 <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul	 <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones	 <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"	
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski	
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi	
 <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, netdev@vger.kernel.org, Daniel Golle
	 <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>
Date: Sat, 01 Nov 2025 13:40:06 +0100
In-Reply-To: <9bf32a56-b67f-488a-8719-3f97d85533d3@collabora.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
	 <20251016-openwrt-one-network-v1-13-de259719b6f2@collabora.com>
	 <9bf32a56-b67f-488a-8719-3f97d85533d3@collabora.com>
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_054041_048716_44E23B3E 
X-CRM114-Status: GOOD (  12.34  )
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

T24gVGh1LCAyMDI1LTEwLTE2IGF0IDEzOjI4ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToKPiBJbCAxNi8xMC8yNSAxMjowOCwgU2pvZXJkIFNpbW9ucyBoYSBzY3JpdHRv
Ogo+ID4gQWRkIHJlcXVpcmVkIG1lbW9yeSByZWdpb24gZm9yIHRoZSBidWlsdGluIHdpZmkgYmxv
Y2suIERpc2FibGUgdGhlIGJsb2NrCj4gPiBieSBkZWZhdWx0IGFzIGl0IHdvbid0IGZ1bmN0aW9u
IHByb3Blcmx5IHdpdGhvdXQgYXQgbGVhc3QgcGluIG11eGluZy4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogU2pvZXJkIFNpbW9ucyA8c2pvZXJkQGNvbGxhYm9yYS5jb20+Cj4gCj4gWW91IHNob3Vs
ZCBzcGxpdCB0aGlzIGNvbW1pdCBpbiB0d286Cj4gwqAgLSBBZGQgd2lmaSBtZW1vcnkgcmVnaW9u
Cj4gwqAgLSBEaXNhYmxlIHdpZmkgYnkgZGVmYXVsdAoKV2lsbCBzcGxpdC4KCj4gUmVnYXJkaW5n
IHRoZSBzZWNvbmQgY29tbWl0LCB5b3UgaGF2ZSB0byByZS1lbmFibGUgdGhlIHdpZmkgbm9kZSBp
biBhbGwgb2YKPiB0aGUgY3VycmVudGx5IHN1cHBvcnRlZCBNVDc5ODFiIGRldmljZXMsIGluY2x1
ZGluZzoKPiDCoCAtIFhpYW9taSBBWDMwMDBUCj4gwqAgLSBDdWR5IFdSMzAwMCBWMQo+IAo+IFdo
aWxlIEkgYWdyZWUgdGhhdCB3aXRob3V0IHBpbiBtdXhpbmcgdGhlIHdpZmkgbWF5IG5vdCBwcm9w
ZXJseSB3b3JrLCBpdCBpcwo+IHVuY2xlYXIgd2hldGhlciB0aGUgYWZvcmVtZW50aW9uZWQgZGV2
aWNlcyBhcmUgcHJlLXNldHRpbmcgdGhlIHBpbm11eCBpbiB0aGUKPiBib290bG9hZGVyIGJlZm9y
ZSBib290aW5nIExpbnV4Lgo+IAo+IEluIGNhc2UgdGhvc2UgZG8sIHlvdSdkIGJlICJicmVha2lu
ZyIgV2lGaSBvbiB0d28gcm91dGVycyBoZXJlLgoKV2lmaSB3aWxsIG5ldmVyIGhhdmUgd29ya2Vk
IG9uIHRob3NlIHVwc3RyZWFtOyBUaGUgZHJpdmVyIGhpdHMgYW4gdW5jb25kaXRpb25hbCAtRUlO
VkFMIGR1cmluZyBwcm9iZQpkdWUgdG8gdGhlICBtaXNzaW5nIG1lbW9yeS1yZWdpb24gdGhpcyBw
YXRjaCBhZGRzLiBJJ2xsIG1ha2Ugc3VyZSB0byBub3RlIHRoYXQgaW4gdGhlIG5ldyBkaXNhYmxl
CnBhdGNoLgoKLS0gClNqb2VyZCBTaW1vbnMgPHNqb2VyZEBjb2xsYWJvcmEuY29tPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
