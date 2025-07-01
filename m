Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982DFC8303A
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YofiWcKHqdTFoE5xlk/9F2L0oneijsLKSe5L+ct6B3A=; b=FrpuXVnyyGynsT
	LfokTHQYgNOFHamrq/QKSXqlc+QB2t8Qk4vUwcs7pK41aHq+w896pSRmFEkJYvq4J5n/pimYjgsQO
	rPzf/nnLZE2puhFr8WlzJstCZ/4Wy9C01t7hmF5PRRdR1hlAXcaibUZA5qY0pISYEbXpZKxHX9ypY
	iZZEhArD+ApZQO6b7iPX+OzAjOtuCHtcqRO30X6tpsVIAWb7jC8mvmXetIYGLDQMyd9MPQePCU1p1
	GarJaQUnmj0FvVjPWioLJyzpLfvcRSCo4cDLO/jhmZ1m18U7NR74brdsVta4V7FCRN6CxyWGf9An3
	ng/KMF52O7pan8iAuX5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWbjZ-00000005ed7-1GYs;
	Tue, 01 Jul 2025 14:13:17 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWaMH-00000005MyI-3WpR;
	Tue, 01 Jul 2025 12:45:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A0EA6A52FD9;
	Tue,  1 Jul 2025 12:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A734C4CEEF;
	Tue,  1 Jul 2025 12:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751373908;
	bh=iA/ph/M71kX2tGT946O6HBiCUvqw1IpsbbdvFe4xP1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t7omG6lvtr1EWRZrLsk+sFSIN6sWytvPyEZspFlI2ntr7CykfGRx7JWDrn71eIZNV
	 tujrFLD8V0/AbA3SHZdblplsXWkSxvPsVnZ7FJfms1isZIRx8rSsCbUCWBblBI8ReD
	 qlGB2wAvYu6nl+SrUXD+aSvQ6gGYjvj77sbxMq+VHuE9eveEyKIWwJVpfSEZ569UPK
	 Iepz5Y1VZ5Hw1GtqY6M9Bu8+T7oFyZzhrJMJRtWfw70F9kqE25m2BWEY7mwbcuyRcx
	 a+CLjszVCYVny4lwiLYc2VX2EOG4iB+HxqMsOaG+NWDPuKIwDWocet/x0o/JO3hN1o
	 iOlR+U8f7hvAg==
Date: Tue, 1 Jul 2025 18:14:54 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Philipp Stanner <pstanner@redhat.com>, 
	linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rick wertenbroek <rick.wertenbroek@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Valmantas Paliksa <walmis@gmail.com>, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v9 1/4] PCI: rockchip: Use standard PCIe defines
Message-ID: <5uoyjs4vndspqdjho5lb2e6odek5fnfxrefftmxpzpejuqsgze@adyovdwmpxwe>
References: <cover.1751322015.git.geraldogabriel@gmail.com>
 <e81700ef4b49f584bc8834bfb07b6d8995fc1f42.1751322015.git.geraldogabriel@gmail.com>
 <ce0fdbf2753075056c227ce7567a69386a5aa0a3.camel@redhat.com>
 <aGPOkw2G2IeNhDRy@geday>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aGPOkw2G2IeNhDRy@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_054509_958724_03F91D38 
X-CRM114-Status: GOOD (  17.95  )
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

T24gVHVlLCBKdWwgMDEsIDIwMjUgYXQgMDk6MDM6MzFBTSBHTVQsIEdlcmFsZG8gTmFzY2ltZW50
byB3cm90ZToKPiBPbiBUdWUsIEp1bCAwMSwgMjAyNSBhdCAwOTo1NDo1MUFNICswMjAwLCBQaGls
aXBwIFN0YW5uZXIgd3JvdGU6Cj4gPiBPbiBNb24sIDIwMjUtMDYtMzAgYXQgMTk6MjQgLTAzMDAs
IEdlcmFsZG8gTmFzY2ltZW50byB3cm90ZToKPiA+ID4gQ3VycmVudCBjb2RlIHVzZXMgY3VzdG9t
LWRlZmluZWQgcmVnaXN0ZXIgb2Zmc2V0cyBhbmQgYml0ZmllbGRzIGZvcgo+ID4gPiBzdGFuZGFy
ZCBQQ0llIHJlZ2lzdGVycy4gQ2hhbmdlIHRvIHVzaW5nIHN0YW5kYXJkIFBDSWUgZGVmaW5lcy4g
U2luY2UKPiA+ID4gd2UgYXJlIG5vdyB1c2luZyBzdGFuZGFyZCBQQ0llIGRlZmluZXMsIGRyb3Ag
dW51c2VkIGN1c3RvbS1kZWZpbmVkCj4gPiA+IG9uZXMsCj4gPiA+IHdoaWNoIGFyZSBub3cgcmVm
ZXJlbmNlZCBmcm9tIG9mZnNldCBhdCBhZGRlZCBDYXBhYmlsaXRpZXMgUmVnaXN0ZXIuCj4gPiAK
PiA+IFRoaXMgY291bGQgYmUgcGhyYXNlZCBhIGJpdCBtb3JlIGNsZWFubHkuIEF0IGxlYXN0IEkg
ZG9uJ3QgZ2V0IGV4YWN0bHkKPiA+IHdoYXQgImZyb20gb2Zmc2V0IiBtZWFucy4gWW91IG1lYW4g
eW91IHJlcGxhY2UgdGhlIHVudXNlZCBjdXN0b20gb25lcz8KPiA+IEJ1dCBpZiB0aGV5J3JlIHVu
dXNlZCwgd2h5IGFyZSB0aGV5IGV2ZW4gYmVpbmcgcmVwbGFjZWQ/Cj4gCj4gSGkgUGhpbGlwcCEK
PiAKPiAiZnJvbSBvZmZzZXQiIG1lYW5zIHdlIHVzZSBzdGFuZGFyZCBQQ0llIGRlZmluZXMgZm9y
IHJlZ2lzdGVycyB0aGF0IGFyZQo+IGFkamFjZW50IHRvIENhcGFiaWxpdGllcyBSZWdpc3Rlciwg
YW5kIHdlIHJlZmVyZW5jZSB0aGVtIGZyb20gdGhlIG9mZnNldAo+IGF0IENhcGFiaWxpdGllcyBS
ZWdpc3Rlci4KPiAKPiBObywgYWxsIHJlZ2lzdGVycyByZXBsYWNlZCBhcmUgaW4gdXNlLCB1bnVz
ZWQgaW4gdGhhdCBjb250ZXh0IG1lYW5zIHRoZXkKPiAodGhlIGN1c3RvbS1kZWZpbmVkIHJlZ2lz
dGVycyB3aGljaCBjYW4gYmUgcmVmZXJlbmNlZCBzdGFydGluZyBmcm9tCj4gQ2FwYWJpbGl0aWVz
IFJlZ2lzdGVyIGFkZHJlc3MpIGJlY29tZSB1bnVzZWQgYWZ0ZXIgdGhlIGNoYW5nZSwgb25seS4K
PiAKCkkndmUgcmV3b3JkZWQgdGhlIGNvbW1pdCBtZXNzYWdlOgpodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9wY2kvcGNpLmdpdC9jb21taXQvP2g9Y29udHJv
bGxlci9yb2NrY2hpcCZpZD0wNGU3NDBkZmUxNTNmMmI2NTMwY2U5OWMwZTM0NjYwMGQzZmIyZWY3
Cgo+ID4gCj4gPiAKPiA+ID4gCj4gPiA+IFN1Z2dlc3RlZC1CeTogQmpvcm4gSGVsZ2FhcyA8Ymhl
bGdhYXNAZ29vZ2xlLmNvbT4KPiA+IAo+ID4gcy9CeS9ieQo+IAo+IFRoYW5rcyBmb3IgdGhlIGNh
cGl0YWxpemF0aW9uIGNhdGNoLiBVbmZvcnR1bmF0ZWx5IHRoZXJlJ3MgbGl0dGxlIEkgY2FuIGRv
Cj4gbm93IHRoYXQgTWFuaSB3ZW50IGFoZWFkIGFuZCBhcHBsaWVkIHRoZSBmaXJzdCB0d28gcGF0
Y2hlcyAoZGlyZWN0bHkKPiByZWxhdGVkIHRvIFBDSSBzdWJzeXN0ZW0pLgo+IAoKVGhpcyB3YXMg
YWxyZWFkeSB0YWtlbiBjYXJlIQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
