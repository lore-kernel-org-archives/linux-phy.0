Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40CC4C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 15:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1LQZJWU2TwGqZptUa5XPU2I5k9Dw1VNKIkrHXIVYojk=; b=1DFs+qZERRh4xj
	kOUd04EktRtk5VegYj1r54y1xmD2U7PoIKcuDzgtPll8B7Zg97mhMUgXjs2KsEOAELPnf+SQNzpzR
	01o/5Ge4V77UcBzjlD9U65megc1fIZ+W92KneGdWZMxOIne+MJ8zxGqjmxeVkQbtEx2Q6cLUKEuht
	vztlYJY09N5fU6iXsESyGtMjQFxWX0acmkGWfbXpNc33if8XM/jET9Oxw2nIks6WR2EIWr0RyWtS4
	XsXstDocl1bXXBrsVF552uFdbMXDwf00ppI9Rn5U7f9xL3ly3wBoX3VvvNrD/yi02Jm9R37w1M7td
	wBVoLQJQN87wQI7eF0Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngpxZ-004jr1-4i; Tue, 19 Apr 2022 15:40:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngpf0-004bXt-Ss
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 15:21:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1E77361683;
 Tue, 19 Apr 2022 15:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 986E0C385A7;
 Tue, 19 Apr 2022 15:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650381657;
 bh=fJp7yQJNvvX2MmXaIzcbM8RzbPPUIBZ6s777OJkBTw8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=stfDx2eA/Mcz94iKo3DOA0RPzhMccdQGNrkEt2sncPJN1tHXJkY4dkgToWNjtWSgh
 5qgpImpVdEVcj6Af6tGJUbe4n+fBt9/O7lS8RwSSpcUtEdudcF/4IRM8CdUGYIiOSy
 lvJMdYXLtQSuFc5HqmX3+toxjOFuZq/cbovViZl0F0RuWmbmEq5ZjD0UyxfsiH9SJH
 GiW+6FUmnlFgfB2+dKgGSqiptWAL5srKYTARRZ4VdZjw2Jc1CpGIYTFmaOKWTORTMS
 Dvl98RiVcWgP6dOyTgrVPkk/2kYZ36wdOcQKmNQRI1NORUhsbhiHHM2fedHABaYcCB
 0bFBil9FeOuNA==
Date: Tue, 19 Apr 2022 10:20:55 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: wangseok.lee@samsung.com, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>,
 vkoul <vkoul@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>,
 "lars.persson" <lars.persson@axis.com>, bhelgaas <bhelgaas@google.com>,
 linux-phy <linux-phy@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi" <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>,
 linux-arm-kernel <linux-arm-kernel@axis.com>,
 kernel <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
 Dongjin Yang <dj76.yang@samsung.com>
Subject: Re: [PATCH 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Message-ID: <20220419152055.GA1203016@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62bbc2a6-92fb-ff2b-a43f-ecb402e8f90c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_082059_074944_62F3B9C6 
X-CRM114-Status: GOOD (  34.67  )
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

T24gVHVlLCBBcHIgMTksIDIwMjIgYXQgMDk6MTE6MDlBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAxOS8wNC8yMDIyIDAyOjA3LCBXYW5nc2VvayBMZWUgd3JvdGU6Cj4g
Pj4gT27CoDI4LzAzLzIwMjLCoDA0OjE0LMKg7J207JmV7ISdwqB3cm90ZToKPiA+Pj4gwqBBZGTC
oHN1cHBvcnTCoEF4aXMswqBBUlRQRUMtOMKgU29DLgo+ID4+PiDCoEFSVFBFQy04wqBpc8KgdGhl
wqBTb0PCoHBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbnMuCj4gPj4+IMKgVGhpc8Kg
aXPCoGJhc2VkwqBvbsKgYXJtNjTCoGFuZMKgc3VwcG9ydMKgR0VONMKgJsKgMmxhbmUuCj4gPj4+
IMKgVGhpc8KgUENJZcKgY29udHJvbGxlcsKgaXPCoGJhc2VkwqBvbsKgRGVzaWduV2FyZcKgSGFy
ZHdhcmXCoGNvcmUKPiA+Pj4gwqBhbmTCoHVzZXPCoERlc2lnbldhcmXCoGNvcmXCoGZ1bmN0aW9u
c8KgdG/CoGltcGxlbWVudMKgdGhlwqBkcml2ZXIuCj4gPj4+IMKgVGhpc8KgaXPCoGJhc2VkwqBv
bsKgZHJpdmVyL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktZXh5bm9zLmMKPiA+Pj4gwqAKPiA+Pj4g
wqBTaWduZWQtb2ZmLWJ5OsKgV2FuZ3Nlb2vCoExlZcKgCj4gPj4+IC0tLQo+ID4+PiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyAgICAgICAgfCAgMzEgKwo+ID4+PiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZpbGUgICAgICAgfCAgIDEgKwo+ID4+PiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1hcnRwZWM4LmMgfCA5MTIgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gPj4+ICAzIGZpbGVzIGNoYW5nZWQsIDk0NCBpbnNlcnRpb25zKCsp
Cj4gPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1hcnRwZWM4LmMKPiA+Pj4KPiA+Pgo+ID4+IEkgdG9vayBhIGxvb2sgYXQgdGhlIHlvdXIgZHJp
dmVyIGFuZCBhdCBleGlzdGluZyBQQ0llIEV4eW5vcyBkcml2ZXIuCj4gPj4gVW5mb3J0dW5hdGVs
eSBQQ0llIEV4eW5vcyBkcml2ZXIgaXMgaW4gcG9vciBzaGFwZSwgcmVhbGx5IHBvb3IuIFRoaXMK
PiA+PiB3b3VsZCBleHBsYWluIHRoYXQgbWF5YmUgaXQncyBiZXR0ZXIgdG8gaGF2ZSBuZXcgZHJp
dmVyIGluc3RlYWQgb2YKPiA+PiBtZXJnaW5nIHRoZW0sIGVzcGVjaWFsbHkgdGhhdCBoYXJkd2Fy
ZSBpcyBkaWZmZXJlbnQuIEFsdGhvdWdoIEkgYW0gc3RpbGwKPiA+PiB3YWl0aW5nIGZvciBzb21l
IGRlc2NyaXB0aW9uIG9mIHRoZXNlIGRpZmZlcmVuY2VzLi4uCj4gPj4KPiA+PiBJIHNhaWQgdGhh
dCBFeHlub3MgUENJZSBsb29rcyBwb29yLi4uIGJ1dCB3aGF0IGlzIHdvcnNlLCBpdCBsb29rcyBs
aWtlCj4gPj4geW91IGJhc2VkIG9uIGl0IHNvIHlvdSBjb3BpZWQgb3Igc29tZSBiYWQgcGF0dGVy
bnMgaXQgaGFkLgo+ID4+Cj4gPj4gRXhjZXB0IHRoaXMgdGhlIGRyaXZlciBoYXMgc2V2ZXJhbCBj
b2Rpbmcgc3R5bGUgaXNzdWVzLCBzbyBwbGVhc2UgYmUKPiA+PiBzdXJlIHRvIHJ1biBjaGVja3Bh
dGNoLCBzcGFyc2UgYW5kIHNtYXRjaCBiZWZvcmUgc2VuZGluZyBpdC4KPiA+Pgo+ID4+IFBsZWFz
ZSB3b3JrIG9uIHRoaXMgZHJpdmVyIHRvIG1ha2UgaXQgY2xvc2UgdG8gTGludXggY29kaW5nIHN0
eWxlLCBzbwo+ID4+IHRoZXJlIHdpbGwgYmUgbm8gbmVlZCBmb3IgdXMsIHJldmlld2VycywgZm9j
dXMgb24gYmFzaWMgc3R1ZmYuCj4gPj4KPiA+PiBPcHRpb25hbGx5LCBzZW5kIGFsbCB0aGlzIHRv
IHN0YWdpbmcuIDopCj4gPj4KPiA+PiBCZXN0IHJlZ2FyZHMsCj4gPj4gS3J6eXN6dG9mCj4gPiBI
aSwKPiA+IAo+ID4gVGhhbmsgeW91IGZvciB5b3VyIGtpbmRuZXNzIHJldmlldy4KPiA+IEkgd2ls
bCByZS13b3JrIGFnYWluIGNsb3NlIHRvIHRoZSBsaW51eCBjb2Rpbmcgc3R5bGUuCj4gPiBBZGRp
bHRpb25hbHksIElmIHlvdSB0ZWxsIG1lIHdoYXQgImJhZCBwYXR0ZXJucyIgeW91IG1lbnRpb25l
ZCwKPiA+IGl0IHdpbGwgYmUgdmVyeSBoZWxwZnVsIGZvciB0aGUgd29yay4KPiA+IENvdWxkIHlv
dSBwbGVhc2UgdGVsbCBtZSB0aGF0Pwo+IAo+IEV4Y2VwdCB0aGUgdG9vbHMgSSBtZW50aW9uZWQg
YmVmb3JlLCB0aGUgcGF0dGVybnMgYXJlOgo+IDEuIGRlYnVnIG1lc3NhZ2VzIGZvciBwcm9iZSBv
ciBvdGhlciBmdW5jdGlvbnMgKHdlIGhhdmUgZnRyYWNlIGFuZCBvdGhlcgo+IHRvb2xzIGZvciB0
aGF0KS4KPiAyLiBJbmNvbnNpc3RlbnQgY29kaW5nIHN0eWxlIChlLmcuIGRpZmZlcmVudCBpbmRl
bnRhdGlvbiBpbiBzdHJ1Y3R1cmUKPiBtZW1iZXJzKS4KPiAzLiBJbmNvbnNpc3RlbnQgY29kZSAo
ZS5nLiBhcnRwZWM4X3BjaWVfZ2V0X3N1YnN5c3RlbV9yZXNvdXJjZXMoKSBnZXRzCj4gZGV2aWNl
IGZyb20gcGRldiBhbmQgZnJvbSBwY2kgc28geW91IGhhdmUgdHdvIHNhbWUgcG9pbnRlcnM7IG9y
Cj4gYXJ0cGVjOF9wY2llX2dldF9lcF9tZW1fcmVzb3VyY2VzKCkgc3RvcmVzIGRldiBhcyBsb2Nh
bCB2YXJpYWJsZSBidXQKPiB1c2VzIGluc3RlYWQgcGRldi0+ZGV2KS4KPiA0LiBOb3QgdXNpbmcg
ZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkuCj4gNS4gV3JhcHBlcnMgb3ZlciB3cml0
ZWwoKSBhbmQgcmVhZGwoKSB3aGljaCBkbyBub3RoaW5nIGVsc2UgdGhhbiB3cmFwCj4gb25lIGZ1
bmN0aW9uLgo+IDYuIFByaW50aW5nIG1lc3NhZ2VzIGluIGludGVycnVwdCBoYW5kbGVycy4KPiA3
LiBTZXZlcmFsIGxvY2FsL3N0YXRpYyBzdHJ1Y3R1cmVzIG9yIGFycmF5IGFyZSBub3QgY29uc3Qu
IFBsdXMgdGhleSBhcmUKPiBkZWZpbmVkIGFsbCB0aHJvdWdoIHRoZSBjb2RlLCBpbnN0ZWFkIG9m
IGJlZ2lubmluZyBvZiBhIGZpbGUuCgpUaGFua3MsIEtyenlzenRvZiwgYWxsIGdyZWF0IGFkdmlj
ZS4KCk5vdCBoYXZpbmcgbG9va2VkIGF0IHRoZSBkcml2ZXIgYXQgYWxsLCBhbmQgYmVjYXVzZSBJ
J20gbm90IGF0IGFsbApleHBlcnQgaW4gbmF0aXZlIGRyaXZlcnMgbGlrZSB0aGlzLCBhbHNvIHJl
dXNlIGFzIG11Y2ggb2YgdGhlCnN0cnVjdHVyZSBvZiBvdGhlciBkcml2ZXJzIGFzIHBvc3NpYmxl
LCBlc3BlY2lhbGx5IHRoZSBzaWJsaW5ncyBpbgpkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy8u
ICBUaGF0IG1lYW5zIHNpbWlsYXIgc3RydWN0dXJlLCBzaW1pbGFyCnZhcmlhYmxlIG5hbWVzLCBz
aW1pbGFyIGZ1bmN0aW9uIG5hbWVzLCBldGMuICBUaGlzIG1ha2VzIGl0IGVhc2llciBmb3IKcGVv
cGxlIHRvIGNvbXBhcmUgd2l0aCBvdGhlciBkcml2ZXJzIHRvIHNlZSB3aGljaCBhcmUgYWZmZWN0
ZWQgYnkKZnV0dXJlIGJ1ZyBmaXhlcy4KCkJqb3JuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
