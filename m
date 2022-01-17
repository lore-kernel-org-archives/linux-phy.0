Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6D5C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jan 2022 15:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRF/v5N9GI90qem7IlIDkJ9VMsLCZVe7tPoDQaMoxv0=; b=4UpYmxbFiRgkqY
	YlJUWGTAEeqeagMCkIFJq2io938GCmRkWbyFXrhBdIWIKR7hwGOVDhrdbWubxtEXOOiKDSOHlWVwx
	nTnH5qRybO0M8v0AtjE9MPoePrKU/VZx8rgANeBNcLMTBzGTs7TOqmMSeUknpiegW510kzfMrS+ks
	R9HlUCUl70X85c3wLtDKj0GDpGCWBGcm6pu42Txg14l714wfd4KgksBrGGxX7yg9hCn/1Dc6ehz+v
	5V0VKygm3e1Oe7/IXjvb8cyeH3R+FtqQSmVAe1N8M/E27ardv1sP6p3gh9oGlMbprDwd3UF/VrQEz
	S18MCpYd3IdZAWTzAbYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9TW7-00FJ0R-1z; Mon, 17 Jan 2022 15:01:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9TTF-00FHVH-Kh
 for linux-phy@lists.infradead.org; Mon, 17 Jan 2022 14:58:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 89E5560B07;
 Mon, 17 Jan 2022 14:58:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F28CC36AE7;
 Mon, 17 Jan 2022 14:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642431536;
 bh=J5rgVzBianAc02/FslOLHixhJssrJYFn1AKI2egp28E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OZ1hsq/OqNGcK7q6N8XEkHIjaUkd/a9VnoZXKoB1Cdtg+peaPmLDxQ7ncJuSk+Ger
 alUQsFeqlDtj5RpvyxjfBgBGEarqoqONo0bPlSSoljCBt4gJT5H32b/mZJZKiIyHE3
 ROyYRy5Ki1k5k0oK3Hxu15lOndaSl6kL3khf4A7hn8sF4ZcVY0GfjUQw1YnFeF0rcW
 xU9Y0tYxnO3bBcLQpUxAbjbLAVORqC62XsSNvrdCK4bvPqzrFw036S6N4QBRjpWlmE
 RyLK0OqNFtHBnzQgZ9wi1dHaLwSuifcq1zbzSYLxOb5jii/PbH+tlnlNps5P7+m+K3
 aucBY3kLdcdCg==
Date: Mon, 17 Jan 2022 15:58:51 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Gregory CLEMENT
 <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v3 0/5] Armada 3720 comphy native implementation
Message-ID: <20220117155851.5759b337@thinkpad>
In-Reply-To: <20220103143220.13070-1-kabel@kernel.org>
References: <20220103143220.13070-1-kabel@kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_065857_834351_26C29271 
X-CRM114-Status: GOOD (  21.70  )
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

RGVhciBWaW5vZCwKCmRpZCB5b3UgZmluZCB0aW1lIHRvIGxvb2sgYXQgdGhpcyBzZXJpZXM/CgpN
YXJlawoKT24gTW9uLCAgMyBKYW4gMjAyMiAxNTozMjoxNSArMDEwMApNYXJlayBCZWjDum4gPGth
YmVsQGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBIZWxsbyBWaW5vZCwKPiAKPiB0aGlzIGlzIHYzIG9m
IHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNvbXBoeSB0byBuYXRpdmUga2VybmVsCj4gaW1wbGVt
ZW50YXRpb24uCj4gCj4gVGVzdGVkIG9uIFR1cnJpcyBNT1ggYW5kIEVTUFJFU1NPYmluICh0ZXN0
ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6Cj4gZXRoZXJuZXQsIFBDSWUsIFVTQjMsIFNBVEEp
Lgo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gLSByZW1vdmVkIGRldmljZS10cmVlIGNoYW5naW5n
IHBhdGNoLCBHcmVnb3J5IGFwcGxpZWQgaXQgb24gbXZlYnUvZHQ2NAo+IC0gY2hhbmdlZCByYXcg
c3BpbiBsb2NrIHRvIG9yZGluYXJ5IHNwaW4gbG9jawo+IC0gZml4ZWQgaW5kZW50YXRpb24gb2Yg
Z2JlX3BoeV9pbml0X2ZpeAo+IC0gdXNlIEZJRUxEX1BSRVAoKSBtYWNybwo+IAo+IENoYW5nZXMg
c2luY2UgdjEgKGFsbCBjaGFuZ2VzIGluIHBhdGNoIDIvNik6Cj4gLSByZWZhY3RvcmVkIHRvIHVz
ZSBHRU5NQVNLKCkKPiAtIGZpeGVkIHZhcmlvdXMgcmVnaXN0ZXIgbmFtZXMgdG8gY29uZm9ybSB0
byBGdW5jdGlvbmFsIFNwZWNpZmljYXRpb24KPiAtIHJlZmFjdG9yZWQgdmFyaW91cyByZWdpc3Rl
ciBuYW1lcyB0byBoYXZlIHVuaWZvcm0gbmFtaW5nCj4gLSByZWZhY3RvcmVkIHJlZ2lzdGVyIGFj
Y2VzcyBpbnRvIG9uZSBmdW5jdGlvbiwgd2hpY2ggZGVjaWRlcyB3aGV0aGVyCj4gICB0aGUgYWNj
ZXNzIHNob3VsZCBiZSBkaXJlY3Qgb3IgaW5kaXJlY3QsIHNvIGFzIHRvIG5vdCBoYXZlIGFsbCB0
aGVzZQo+ICAgY2hlY2tzIGRvbmUgZXZlcnl3aGVyZSBpbiB0aGUgY29kZQo+IC0gbW92ZWQgYXJv
dW5kIG9uZSByZWdpc3RlciBkZWZpbml0aW9uIHRvIGhhdmUgdGhlIHJlZ2lzdGVycyBzb3J0ZWQK
PiAgIGFjY29yZGluZyB0byB0aGVpciBvZmZzZXQKPiAtIGFkZGVkIGNvbW1lbnRzIHRvIHNvbWUg
cmVnaXN0ZXIgZGVmaW5pdGlvbnMKPiAtIGFkZGVkIHN1cHBvcnQgZm9yIFBIWSByZXNldCgpIG1l
dGhvZAo+IC0gd2hlbiBjaGFuZ2luZyBQSFkgbW9kZSwgdGhlIGRyaXZlciBub3cgcmVzZXRzIHRo
ZSBQSFkgYW5kIGl0cwo+ICAgcmVnaXN0ZXJzIHRvIHB1dCB0aGUgUEhZIGluIGtub3duIHN0YXRl
Cj4gLSBmaXhlZCB0aGUgcG93ZXJfb2ZmKCkgbWV0aG9kCj4gLSBhZGRlZCBzcGlubG9jayBndWFy
ZCB3aGVuIGFjY2Vzc2luZyBQSFkgU2VsZWN0b3IgcmVnaXN0ZXIsIHNpbmNlIGl0Cj4gICBpcyBz
aGFyZWQgYmV0d2VlbiB0aGUgUEhZcyBhbmQgc28gdGhlIFBIWSBtdXRleCBpcyBpbnN1ZmZpY2ll
bnQKPiAtIHVwb24gZHJpdmVyIHByb2JlIGNoYW5nZWQgdGhlIGNhbGxzIHRvIHBvd2VyX29mZigp
IHRvIHJlc2V0KCkKPiAKPiAKPiBUaGUgb3JpZ2luYWwgY292ZXIgbGV0dGVyIHNhaWQ6Cj4gCj4g
VGhlIFJQQyBjYWxsaW5nIHRvIEFSTSBUcnVzdGVkIEZpcm13YXJlIGltcGxlbWVudGF0aW9uIG9m
IEFybWFkYSAzNzIwCj4gY29tcGh5IGRyaXZlciBjYXVzZWQgcXVpdGUgYSBudW1iZXIgb2YgaXNz
dWVzIChleHBsYWluZWQgbW9yZSBpbiBwYXRjaCAyKS4KPiAKPiBUaGlzIHNlcmllcyBmaXhlcyB0
aG9zZSBpc3N1ZXMgYnkgcmVpbXBsZW1lbnRpbmcgdGhlIGRyaXZlciB0byBuYXRpdmUKPiBrZXJu
ZWwgaW1wbGVtZW50YXRpb24uCj4gCj4gVGhlIGxhc3QgMyBjb21taXRzIHJldmVydCBjb21taXRz
IGluIEFIQ0ksIFVTQiwgYW5kIFBDSSBkcml2ZXJzLCB0aGF0IHdlcmUKPiBpbnRyb2R1Y2VkIHRo
ZXJlIGJlY2F1c2Ugb2YgdGhvc2UgaXNzdWVzLgo+IAo+IFBhbGkgUm9ow6FyICg1KToKPiAgIHBo
eTogbWFydmVsbDogcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeTogUmVtb3ZlIHBvcnQgZnJvbSBkcml2
ZXIKPiAgICAgY29uZmlndXJhdGlvbgo+ICAgcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAt
Y29tcGh5OiBBZGQgbmF0aXZlIGtlcm5lbCBpbXBsZW1lbnRhdGlvbgo+ICAgUmV2ZXJ0ICJhdGE6
IGFoY2k6IG12ZWJ1OiBNYWtlIFNBVEEgUEhZIG9wdGlvbmFsIGZvciBBcm1hZGEgMzcyMCIKPiAg
IFJldmVydCAidXNiOiBob3N0OiB4aGNpOiBtdmVidTogbWFrZSBVU0IgMy4wIFBIWSBvcHRpb25h
bCBmb3IgQXJtYWRhCj4gICAgIDM3MjAiCj4gICBSZXZlcnQgIlBDSTogYWFyZHZhcms6IEZpeCBp
bml0aWFsaXphdGlvbiB3aXRoIG9sZCBNYXJ2ZWxsJ3MgQXJtCj4gICAgIFRydXN0ZWQgRmlybXdh
cmUiCj4gCj4gIGRyaXZlcnMvYXRhL2FoY2kuaCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgMiAtCj4gIGRyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYyAgICAgICAgICAgICAgICAgICAgIHwg
ICAgMiArLQo+ICBkcml2ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMgICAgICAgICAgICAgICB8
ICAgIDIgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyAgICAgICAg
fCAgICA0ICstCj4gIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5j
IHwgMTM2OSArKysrKysrKysrKysrKysrLS0KPiAgZHJpdmVycy91c2IvaG9zdC94aGNpLW12ZWJ1
LmMgICAgICAgICAgICAgICAgfCAgIDQyIC0KPiAgZHJpdmVycy91c2IvaG9zdC94aGNpLW12ZWJ1
LmggICAgICAgICAgICAgICAgfCAgICA2IC0KPiAgZHJpdmVycy91c2IvaG9zdC94aGNpLXBsYXQu
YyAgICAgICAgICAgICAgICAgfCAgIDIwICstCj4gIGRyaXZlcnMvdXNiL2hvc3QveGhjaS1wbGF0
LmggICAgICAgICAgICAgICAgIHwgICAgMSAtCj4gIDkgZmlsZXMgY2hhbmdlZCwgMTI0NSBpbnNl
cnRpb25zKCspLCAyMDMgZGVsZXRpb25zKC0pCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
