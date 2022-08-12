Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459E3C00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 12:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RK1jxwKbxuuoO4/FqRo2LIUr+s9DJFvtSPCpWdoL3hY=; b=x2wI7l83Ru84gU
	eBOSQsk6w9m+dMaCOXOWEN2wucIG++01CDzYdn14+yberbeymSXtm2iIIDLzmHXrAmzwnra/g0+rL
	e0HAlCWoMVglZSPRLaenJqeNUAuiAUwvgsqo7VmgO+rakBKE6vBt4d4qzhyLozL4e267sNLw/2opG
	/DzbGh/pIBfhjwXMauCjlV72coiGzU4NAHKnUYj7nnCPsKUs2KDQEkKS1yS8FrwiJ8dE2n5P/Xs7j
	IBQGImuoJM+1OCu5ZxtSAan1w/YbYh2lLUxV2mdmrEe8zbF06U0OAstfQxP7D+s0ui85K9QgORbnc
	RLKfFBymEYHjFpGOsuPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMU1Q-007LHQ-KO; Fri, 12 Aug 2022 12:44:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMU1N-007LFA-Fj
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 12:44:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EF36EB823AD;
	Fri, 12 Aug 2022 12:44:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FEFFC433C1;
	Fri, 12 Aug 2022 12:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660308250;
	bh=v4r6uGM2LXsRrkD3UxFHiSK374SWrfGW5tK23a7bkx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gYQyS8yW2SjLbDuY25vnjlZ58lUZ5hzoD57ZLxy2bIaYm5zo57ZVUczseGtcQAfpb
	 P32BVL15LrrXEGN+7ncFYmm3isKNsuxzwojaa+FzBKLYiM586z2h0WB8z3cx3ZLWgT
	 4yhS13QLJeh705zsSkFxdGfSa0rJF/NdU7sGW0rNxBuAGUCt1hWuWjhgXiLE76+6TN
	 39tmOpUExb3h/wNFDAIz1EXkaVGgqMal87fFBmmPbrzFJGBlUSwplOU9Q0ppM9dROC
	 IB5O6E28HTslZCgYKRyJDkWanH/oZDVBsBN0QFhjdC+OYlN9zy7EQPWKlhpnfgUPVg
	 l9fCNN9wroJQQ==
Received: by pali.im (Postfix)
	id ADB7C9CF; Fri, 12 Aug 2022 14:44:07 +0200 (CEST)
Date: Fri, 12 Aug 2022 14:44:07 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220812124407.pdjjxpsf6pddsmsr@pali>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
 <20220812045650.nzisin52zfbbwhsq@shindev>
 <20220812082055.dvwmjcvsyb3iglav@pali>
 <20220812120028.xcnvr3ocxmmkioqi@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220812120028.xcnvr3ocxmmkioqi@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_054413_839147_7DFF4C01 
X-CRM114-Status: GOOD (  22.57  )
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

T24gRnJpZGF5IDEyIEF1Z3VzdCAyMDIyIDEyOjAwOjI4IFNoaW5pY2hpcm8gS2F3YXNha2kgd3Jv
dGU6Cj4gT24gQXVnIDEyLCAyMDIyIC8gMTA6MjAsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gT24g
RnJpZGF5IDEyIEF1Z3VzdCAyMDIyIDA0OjU2OjUwIFNoaW5pY2hpcm8gS2F3YXNha2kgd3JvdGU6
Cj4gCj4gWy4uLl0KPiAKPiA+ID4gSSBub3RpY2VkIG9uZSBkaWZmZXJlbmNlIGJldHdlZW4geW91
ciBzeXN0ZW0gYW5kIG1pbmU6IFUtQm9vdCB2ZXJzaW9uLgo+ID4gPiBPbiBteSBzeXN0ZW0sIGl0
IGhhcyByYXRoZXIgb2xkIHZlcnNpb24gbm93Ogo+ID4gPiAKPiA+ID4gICBNYXJ2ZWxsPj4gdmVy
c2lvbgo+ID4gPiAgIFUtQm9vdCAyMDE3LjAzLWFybWFkYS0xNy4xMC4yLWcxNGFlZWRjIChKdW4g
MDEgMjAxOCAtIDE1OjM5OjEwICswODAwKQo+ID4gPiAgIGFhcmNoNjQtbGludXgtZ251LWdjYyAo
TGluYXJvIEdDQyA1LjItMjAxNS4xMS0yKSA1LjIuMSAyMDE1MTAwNQo+ID4gPiAgIEdOVSBsZCAo
R05VIEJpbnV0aWxzKSAyLjI1LjAgTGluYXJvIDIwMTVfMTAKPiA+ID4gCj4gPiA+IERvIHlvdSB0
aGluayBpdCdzIHdvcnRoIHRyeWluZyB0aGUgbGF0ZXN0IFUtYm9vdD8KPiA+ID4gCj4gPiA+IC0t
IAo+ID4gPiBTaGluJ2ljaGlybyBLYXdhc2FraQo+ID4gCj4gPiBZZXMsIHBsZWFzZSB1cGRhdGUg
ZmlybXdhcmVzIHRvIHRoZSBsYXRlc3RzIHZlcnNpb25zLiBPciBhdCBsZWFzdCB0cnkgdG8KPiA+
IGJvb3QgbmV3IFUtQm9vdCB2aWEgVUFSVCAod2l0aG91dCByZXBsYWNpbmcgZXhpc3RpbmcgdmVy
c2lvbikgYW5kIGNoZWNrCj4gPiBmb3IgZGlmZmVyZW5jZXMuCj4gPiAKPiA+IEJ1aWxkaW5nIGRv
Y3VtZW50YXRpb25zOgo+ID4gaHR0cHM6Ly90cnVzdGVkZmlybXdhcmUtYS5yZWFkdGhlZG9jcy5p
by9lbi9sYXRlc3QvcGxhdC9tYXJ2ZWxsL2FybWFkYS9idWlsZC5odG1sCj4gPiBodHRwczovL3Nv
dXJjZS5kZW54LmRlL3UtYm9vdC91LWJvb3QvLS9ibG9iL3YyMDIyLjA3L2RvYy9SRUFETUUubWFy
dmVsbAo+ID4gCj4gPiBVQVJUIGJvb3RpbmcgZG9jdW1lbnRhdGlvbiBpcyBjdXJyZW50bHkgd2Fp
dGluZyBmb3IgcmV2aWV3Ogo+ID4gaHR0cHM6Ly9yZXZpZXcudHJ1c3RlZGZpcm13YXJlLm9yZy9j
L1RGLUEvdHJ1c3RlZC1maXJtd2FyZS1hLysvMTYxOTgKPiAKPiBUaGFua3MgZm9yIHRoZSBnb29k
IHJlZmVyZW5jZXMuIEkndmUgbWFuYWdlZCB0byBidWlsZCBVLUJvb3QgZm9yIFVBUlQgYm9vdGlu
ZyAoSQo+IHVzZSBmZWRvcmEsIHRoZW4gbmVlZGVkIHRvIGlkZW50aWZ5IEZlZG9yYSBwYWNrYWdl
cyBjb3JyZXNwb25kaW5nIHRvIGd1aWRlZCBhcHQKPiBwYWNrYWdlcy4gSSBhbHNvIG5lZWRlZCB0
byBmaXggYSBidWlsZCBmYWlsdXJlIGluIEEzNzAwLXV0aWxzLW1hcnZlbGwuKQo+IAo+IEkgbW9k
aWZpZWQgYm9hcmQganVtcGVyIHBpbnMgdG8gVUFSVCBtb2RlIGFuZCBkb3dubG9hZGVkIHRoZSBi
dWlsdCBVLUJvb3QgdXNpbmcKPiBtb3gtaW1hZ2VyLiBUaGUgZG93bmxvYWRlZCBVLUJvb3Qgc2hv
d2VkIHRoZSBuZXcgdmVyc2lvbiBhbmQgZGV0ZWN0ZWQgbXkgU1NEOgo+IAo+ICAgPT4gdmVyc2lv
bgo+ICAgVS1Cb290IDIwMjIuMTAtcmMyLTAwMDQ5LWcxNTc4NjFlNmFmIChBdWcgMTIgMjAyMiAt
IDE4OjEwOjIxICswOTAwKQo+IAo+ICAgYWFyY2g2NC1saW51eC1nbnUtZ2NjIChHQ0MpIDEyLjEu
MSAyMDIyMDUwNyAoUmVkIEhhdCBDcm9zcyAxMi4xLjEtMSkKPiAgIEdOVSBsZCB2ZXJzaW9uIDIu
MzctNy5mYzM2Cj4gICA9PiBzY3NpIHNjYW4KPiAgIHNjYW5uaW5nIGJ1cyBmb3IgZGV2aWNlcy4u
Lgo+ICAgICBEZXZpY2UgMDogKDA6MCkgVmVuZG9yOiBBVEEgUHJvZC46IFNhbkRpc2sgU0RTU0RB
MjQgUmV2OiBVMjEwCj4gICAgICAgICAgICAgICBUeXBlOiBIYXJkIERpc2sKPiAgICAgICAgICAg
ICAgIENhcGFjaXR5OiAyMjg5MzYuNSBNQiA9IDIyMy41IEdCICg0Njg4NjIxMjggeCA1MTIpCj4g
Cj4gSG93ZXZlciwgYWZ0ZXIgYm9vdGluZyBMaW51eCBrZXJuZWwgdjUuMTguMTYgZnJvbSB0aGUg
VS1Cb290LCBzdGlsbCB0aGUgZXJyb3IKPiBtZXNzYWdlICJhdGExOiBTQVRBIGxpbmsgZG93biAo
U1N0YXR1cyAwIFNDb250cm9sIDMwMCkiIGlzIHByaW50ZWQuCj4gVGhpcyBtYXkgaW5kaWNhdGUg
dGhhdCB0aGUgZXJyb3IgaXMgbm90IHJlbGF0ZWQgVS1Cb290Lgo+IAo+IE5vdyBJJ20gbm90IHN1
cmUgd2hhdCdzIHRoZSBrZXkgZGlmZmVyZW5jZSBiZXR3ZWVuIHlvdXIgc3lzdGVtIGFuZCBtaW5l
LiBJZgo+IHRoZXJlIGlzIGFueXRoaW5nIEkgY2FuIGRvIG5leHQsIHBsZWFzZSBsZXQgbWUga25v
dy4KPiAKPiAtLSAKPiBTaGluJ2ljaGlybyBLYXdhc2FraQoKUHJvYmFibHkgdGhpcyBpcyBTU0Qg
ZGlzayBzcGVjaWZpYy4gSSB3aWxsIHRyeSB0byBwcmVwYXJlIHNvbWUga2VybmVsCmNoYW5nZXMg
dG8gdGVzdCBpZiBpdCBjaGFuZ2VzIHNvbWV0aGluZy4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
