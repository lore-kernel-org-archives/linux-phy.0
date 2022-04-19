Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C7E9C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 07:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da1ZElsuBjYfvamo/YTuhaT+zv3rCd6IVryt7xvWIaY=; b=1r8gjAf0zMzlgj
	hgcPoad3bss9c5eFCVa+n5WdxFKmUbti9SJpf9HS+5R58+jZLDYAMca4a+z2Err5ssOXiOBpqX7aE
	KrHo4Tg+E0443YInjyfi+GPGx+q/URgkwg08C2mLxwUAHUGWeS1+Xu7YIldT5hOuZwhXHWRD83kPB
	HDeGGglBkKIuajhdeIdCPFQpCfmta/ex8YvF6a89BjzmGaP4rnwT4d5bU/jpQYzhEheQueaSsV9Fz
	4Vuxo5JqqIzflIg7bOSgRR7EpE8moVxYm5p9Cqo1G6h+0Ey0FIq1s/VzH9h9Elev8uILe2KSIEv94
	Dqc1l5WTZW5blsJltqgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiOO-0022Tx-Qe; Tue, 19 Apr 2022 07:35:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngi19-001sp5-6J
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 07:11:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2240761449;
 Tue, 19 Apr 2022 07:11:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 934FBC385B4;
 Tue, 19 Apr 2022 07:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650352277;
 bh=cRWiba3oQT1Wyx6PHg08VUtrSYo63vCoz8IqvjSghl8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=TDKa+4Z1WMzdK5u/xQ+Vnl31+oUi/2esWVXHnj9mJYhfpZUf3tPdGm2vG7vlCU4Rp
 NMCo5TgfXfIUhOU+LkrywC9d8CCgxc0+E448rG7x8CYyUF6pFEl2XIhUEwF+I2f+oY
 pKzn51uXGuHrTWRnM1ZOBU9yW42hDuV7oXhx4JV5uu/rx/fmBY2iicETFi0vrWpcGE
 /oX+6HjoPOlNiJqmZHEX/53RNnsB6w7V+hu6uy3r5pdbEjgnqv8CAq2ZM82edMowy/
 jW5heVh7FFxyhYzYt0cv1tWhJzRfKdlI6LvUBMKddQKBA758CV6Ny++9496xkjDBNc
 cT8HYCqZIC5YA==
Message-ID: <62bbc2a6-92fb-ff2b-a43f-ecb402e8f90c@kernel.org>
Date: Tue, 19 Apr 2022 09:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Content-Language: en-US
To: wangseok.lee@samsung.com, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>,
 vkoul <vkoul@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>,
 "lars.persson" <lars.persson@axis.com>
Cc: bhelgaas <bhelgaas@google.com>, linux-phy
 <linux-phy@lists.infradead.org>, linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi" <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>,
 linux-arm-kernel <linux-arm-kernel@axis.com>, kernel <kernel@axis.com>,
 Moon-Ki Jun <moonki.jun@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
References: <CGME20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a@epcms2p7>
 <20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a@epcms2p7>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_001119_380214_538A2AA3 
X-CRM114-Status: GOOD (  22.54  )
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

T24gMTkvMDQvMjAyMiAwMjowNywgV2FuZ3Nlb2sgTGVlIHdyb3RlOgo+PiBPbsKgMjgvMDMvMjAy
MsKgMDQ6MTQswqDsnbTsmZXshJ3CoHdyb3RlOgo+Pj4gwqBBZGTCoHN1cHBvcnTCoEF4aXMswqBB
UlRQRUMtOMKgU29DLgo+Pj4gwqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bC
oEF4aXPCoENvbW11bmljYXRpb25zLgo+Pj4gwqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBhcm02NMKg
YW5kwqBzdXBwb3J0wqBHRU40wqAmwqAybGFuZS4KPj4+IMKgVGhpc8KgUENJZcKgY29udHJvbGxl
csKgaXPCoGJhc2VkwqBvbsKgRGVzaWduV2FyZcKgSGFyZHdhcmXCoGNvcmUKPj4+IMKgYW5kwqB1
c2VzwqBEZXNpZ25XYXJlwqBjb3JlwqBmdW5jdGlvbnPCoHRvwqBpbXBsZW1lbnTCoHRoZcKgZHJp
dmVyLgo+Pj4gwqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBkcml2ZXIvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaS1leHlub3MuYwo+Pj4gwqAKPj4+IMKgU2lnbmVkLW9mZi1ieTrCoFdhbmdzZW9rwqBMZWXC
oAo+Pj4gLS0tCj4+PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyAgICAgICAg
fCAgMzEgKwo+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlICAgICAgIHwg
ICAxICsKPj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWFydHBlYzguYyB8IDkx
MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAzIGZpbGVzIGNoYW5nZWQsIDk0
NCBpbnNlcnRpb25zKCspCj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtYXJ0cGVjOC5jCj4+Pgo+Pgo+PiBJIHRvb2sgYSBsb29rIGF0IHRoZSB5
b3VyIGRyaXZlciBhbmQgYXQgZXhpc3RpbmcgUENJZSBFeHlub3MgZHJpdmVyLgo+PiBVbmZvcnR1
bmF0ZWx5IFBDSWUgRXh5bm9zIGRyaXZlciBpcyBpbiBwb29yIHNoYXBlLCByZWFsbHkgcG9vci4g
VGhpcwo+PiB3b3VsZCBleHBsYWluIHRoYXQgbWF5YmUgaXQncyBiZXR0ZXIgdG8gaGF2ZSBuZXcg
ZHJpdmVyIGluc3RlYWQgb2YKPj4gbWVyZ2luZyB0aGVtLCBlc3BlY2lhbGx5IHRoYXQgaGFyZHdh
cmUgaXMgZGlmZmVyZW50LiBBbHRob3VnaCBJIGFtIHN0aWxsCj4+IHdhaXRpbmcgZm9yIHNvbWUg
ZGVzY3JpcHRpb24gb2YgdGhlc2UgZGlmZmVyZW5jZXMuLi4KPj4KPj4gSSBzYWlkIHRoYXQgRXh5
bm9zIFBDSWUgbG9va3MgcG9vci4uLiBidXQgd2hhdCBpcyB3b3JzZSwgaXQgbG9va3MgbGlrZQo+
PiB5b3UgYmFzZWQgb24gaXQgc28geW91IGNvcGllZCBvciBzb21lIGJhZCBwYXR0ZXJucyBpdCBo
YWQuCj4+Cj4+IEV4Y2VwdCB0aGlzIHRoZSBkcml2ZXIgaGFzIHNldmVyYWwgY29kaW5nIHN0eWxl
IGlzc3Vlcywgc28gcGxlYXNlIGJlCj4+IHN1cmUgdG8gcnVuIGNoZWNrcGF0Y2gsIHNwYXJzZSBh
bmQgc21hdGNoIGJlZm9yZSBzZW5kaW5nIGl0Lgo+Pgo+PiBQbGVhc2Ugd29yayBvbiB0aGlzIGRy
aXZlciB0byBtYWtlIGl0IGNsb3NlIHRvIExpbnV4IGNvZGluZyBzdHlsZSwgc28KPj4gdGhlcmUg
d2lsbCBiZSBubyBuZWVkIGZvciB1cywgcmV2aWV3ZXJzLCBmb2N1cyBvbiBiYXNpYyBzdHVmZi4K
Pj4KPj4gT3B0aW9uYWxseSwgc2VuZCBhbGwgdGhpcyB0byBzdGFnaW5nLiA6KQo+Pgo+PiBCZXN0
IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+IEhpLAo+IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBraW5k
bmVzcyByZXZpZXcuCj4gSSB3aWxsIHJlLXdvcmsgYWdhaW4gY2xvc2UgdG8gdGhlIGxpbnV4IGNv
ZGluZyBzdHlsZS4KPiBBZGRpbHRpb25hbHksIElmIHlvdSB0ZWxsIG1lIHdoYXQgImJhZCBwYXR0
ZXJucyIgeW91IG1lbnRpb25lZCwKPiBpdCB3aWxsIGJlIHZlcnkgaGVscGZ1bCBmb3IgdGhlIHdv
cmsuCj4gQ291bGQgeW91IHBsZWFzZSB0ZWxsIG1lIHRoYXQ/CgpFeGNlcHQgdGhlIHRvb2xzIEkg
bWVudGlvbmVkIGJlZm9yZSwgdGhlIHBhdHRlcm5zIGFyZToKMS4gZGVidWcgbWVzc2FnZXMgZm9y
IHByb2JlIG9yIG90aGVyIGZ1bmN0aW9ucyAod2UgaGF2ZSBmdHJhY2UgYW5kIG90aGVyCnRvb2xz
IGZvciB0aGF0KS4KMi4gSW5jb25zaXN0ZW50IGNvZGluZyBzdHlsZSAoZS5nLiBkaWZmZXJlbnQg
aW5kZW50YXRpb24gaW4gc3RydWN0dXJlCm1lbWJlcnMpLgozLiBJbmNvbnNpc3RlbnQgY29kZSAo
ZS5nLiBhcnRwZWM4X3BjaWVfZ2V0X3N1YnN5c3RlbV9yZXNvdXJjZXMoKSBnZXRzCmRldmljZSBm
cm9tIHBkZXYgYW5kIGZyb20gcGNpIHNvIHlvdSBoYXZlIHR3byBzYW1lIHBvaW50ZXJzOyBvcgph
cnRwZWM4X3BjaWVfZ2V0X2VwX21lbV9yZXNvdXJjZXMoKSBzdG9yZXMgZGV2IGFzIGxvY2FsIHZh
cmlhYmxlIGJ1dAp1c2VzIGluc3RlYWQgcGRldi0+ZGV2KS4KNC4gTm90IHVzaW5nIGRldm1fcGxh
dGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpLgo1LiBXcmFwcGVycyBvdmVyIHdyaXRlbCgpIGFuZCBy
ZWFkbCgpIHdoaWNoIGRvIG5vdGhpbmcgZWxzZSB0aGFuIHdyYXAKb25lIGZ1bmN0aW9uLgo2LiBQ
cmludGluZyBtZXNzYWdlcyBpbiBpbnRlcnJ1cHQgaGFuZGxlcnMuCjcuIFNldmVyYWwgbG9jYWwv
c3RhdGljIHN0cnVjdHVyZXMgb3IgYXJyYXkgYXJlIG5vdCBjb25zdC4gUGx1cyB0aGV5IGFyZQpk
ZWZpbmVkIGFsbCB0aHJvdWdoIHRoZSBjb2RlLCBpbnN0ZWFkIG9mIGJlZ2lubmluZyBvZiBhIGZp
bGUuCgpBbHNvIC0geW91IGhhdmUgZm91ciBjbG9ja3MsIHNvIHVzZSBjbGsgYnVsayBBUEkuCgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
