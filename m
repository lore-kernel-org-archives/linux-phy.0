Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2D1EFED9EF
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 17:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5a4OGY6JyL5uAd6SVUPOTnrb6N9yEQ+bWhAXunfDr1w=; b=q+kkkahAhHURhj
	6+Dij/MJUbQQOslooNynihem5r7DanMWE5ytm/bhxuppUmj0ZpWSK17HhFjLQ0ZO29UUYyBJHTFib
	QBBDNDD43G6CepBL4M53ZBPpXn82nIgrYm7pE0Ncfxq0plrxa4ujt/HLJZAm9leUKpncJ634oiMqe
	MgFpaw7dUbgJwCYbnReEHcVrEO8GFR9EuGX+FLm7Ip5eqhGPfmqoqZU/SbY7yVDgAbBxjb7GbbISo
	RP5tmlwm1vmKNXAHf9DTa3qu3ytdfVS/VU7kmUDl3TaS7H3hngRmpVgqWiQ2EkTYf6i+Do/tQDBeZ
	WZsHu20dIt9vgsPXo3ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Xyv-00000006tpS-2DIb;
	Tue, 17 Mar 2026 17:13:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Xyr-00000006tor-3sEp
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 17:13:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1AA0D43D0C;
	Tue, 17 Mar 2026 17:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDAECC19424;
	Tue, 17 Mar 2026 17:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773767601;
	bh=YUGa0rM6GM1dvmEZEUBayZ4+YXqnZXKw66yxX9v/xAY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=aHT7mi1uauabWthYhhgW7RDcMOIZvX05rdzbiXcYf0uaDcwYWPC8K2do58vOQLNJs
	 1m0hy6lkghHp7mr7UNlTP4coo6YUHYdDMD0nXbMkSbhcYhanGJkJDpswOe6vPiaJis
	 jVGV/H7moSB9f+cwN5nSWtqyWJAWBBXSpsgx/lqsnQvquy0XpdJYvzdx3d02pLDSK8
	 TEl0y2UYGSO2xmUnePn/99e555ZPXD7C2XIPxsYWE84uBNhR5wzdd7TvTgMrQ0AsHf
	 vMAzXa6ioNgU9NczSZxx5h08/w/5zVQxlXPdniYdub5tJMfXkSICq1bcV46WZ/x9pv
	 dpn3xKRIC63rw==
Date: Tue, 17 Mar 2026 12:13:19 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org,
	kwilczynski@kernel.org, bhelgaas@google.com,
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
Message-ID: <20260317171319.GA90412@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_101322_933747_1B7E8C15 
X-CRM114-Status: GOOD (  21.40  )
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

T24gU2F0LCBNYXIgMTQsIDIwMjYgYXQgMDc6NTA6NTBQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIEZyaSwgTWFyIDEzLCAyMDI2IGF0IDExOjQ1OjQyQU0gLTA1MDAs
IEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBPbiBGcmksIE1hciAxMywgMjAyNiBhdCAwNTo0Njox
OFBNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToKPiA+ID4gQ29tbWl0IDk2MDYwOWIyMmJlNSAo
ImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlCj4gPiA+
IEdQSU9zIHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0ll
IHBvcnRzIikgZGlkIG5vdAo+ID4gPiBjb252ZXJ0IGFsbCBIYW1vYeKAkWJhc2VkIHBsYXRmb3Jt
cyB0byB0aGUgbmV3IG1ldGhvZCBvZiBkZWZpbmluZyBQRVJTVCBhbmQKPiA+ID4gV2FrZSBHUElP
cyBpbiB0aGUgUENJZSByb290IHBvcnQgbm9kZXMuCj4gPiA+IAo+ID4gPiBXaXRob3V0IHRoZSBj
aGFuZ2UgUENJZSBwcm9iZSB3aWxsIGZhaWwuIFRoZSBwcm9iZSBmYWlsdXJlIGhhcHBlbnMgYmVj
YXVzZQo+ID4gPiB0aGUgUEhZIHN0YXlzIGluIHRoZSBjb250cm9sbGVyIG5vZGUgd2hpbGUgdGhl
IFBFUlNUL1dha2UgR1BJT3Mgd2VyZSBtb3ZlZAo+ID4gPiB0byB0aGUgcG9ydCBub2Rlcy4KPiA+
ID4gCj4gPiA+IFRoaXMgZml4ZXMgcHJvYmUgZmFpbHVyZXMgc2VlbiBvbiB0aGUgZm9sbG93aW5n
IHBsYXRmb3JtczoKPiA+ID4gIC0geDEtaHAtb21uaWJvb2steDE0Cj4gPiA+ICAtIHgxLW1pY3Jv
c29mdC1kZW5hbGkKPiA+ID4gIC0geDFlODAxMDAtbGVub3ZvLXlvZ2Etc2xpbTd4Cj4gPiA+ICAt
IHgxZTgwMTAwLW1lZGlvbi1zcHJjaHJnZC0xNC1zMQo+ID4gPiAgLSB4MXA0MjEwMC1sZW5vdm8t
dGhpbmtib29rLTE2Cj4gPiA+ICAtIHgxLWFzdXMtemVuYm9vay1hMTQKPiA+ID4gIC0geDEtY3Jk
Cj4gPiA+ICAtIHgxLWRlbGwtdGhlbmEKPiA+ID4gCj4gPiA+IEZpeGVzOiA5NjA2MDliMjJiZTUg
KCJhcm02NDogZHRzOiBxY29tOiBoYW1vYTogTW92ZSBQSFksIFBFUlNULCBhbmQgV2FrZSBHUElP
cyB0byBQQ0llIHBvcnQgbm9kZXMgYW5kIGFkZCBwb3J0IE5vZGVzIGZvciBhbGwgUENJZSBwb3J0
cyIpCj4gPiAKPiA+IEFyZSB5b3Ugc2F5aW5nIHRoYXQgRFRzIGluIHRoZSBmaWVsZCBicm9rZSBi
ZWNhdXNlIG9mIHNvbWUga2VybmVsCj4gPiBjaGFuZ2U/ICBUaGF0J3Mgbm90IHN1cHBvc2VkIHRv
IGhhcHBlbi4gIEV2ZW4gdGhvdWdoIFBIWSwgUEVSU1QsIGFuZAo+ID4gV2FrZSBHUElPcyBzaG91
bGQgYmUgZGVzY3JpYmVkIGluIFJvb3QgUG9ydCBub2RlcyBpbnN0ZWFkIG9mIHRoZSBSb290Cj4g
PiBDb21wbGV4IG5vZGUgaW4gKmZ1dHVyZSogRFRzLCB0aGUga2VybmVsIGlzIHN0aWxsIHN1cHBv
c2VkIHRvIGFjY2VwdAo+ID4gdGhlIG9sZCBzdHlsZSB3aXRoIHRoZW0gZGVzY3JpYmVkIGluIHRo
ZSBSb290IENvbXBsZXggbm9kZS4KPiAKPiBUaGlzIGlzIG5vdCByZWxhdGVkIHRvIHRoZSBkcml2
ZXIgY2hhbmdlLiBUaGUgZHJpdmVyIGNvcnJlY3RseQo+IHBhcnNlcyBhbGwgUm9vdCBQb3J0IHBy
b3BlcnRpZXMgZWl0aGVyIGluIHRoZSBSb290IENvbXBsZXggbm9kZSAob2xkCj4gYmluZGluZykg
b3IgUm9vdCBQb3J0IG5vZGUgKG5ldyBiaW5kaW5nKS4gQnV0IGNvbW1pdCA5NjA2MDliMjJiZTUs
Cj4gbGVmdCBjb252ZXJ0aW5nIG1lbnRpb25lZCBib2FyZCBEVFMgdG8gdGhlIG5ldyBiaW5kaW5n
LCBsZWF2aW5nCj4gdGhvc2UgYWZmZWN0ZWQgcGxhdGZvcm1zIGluIGEgaGFsZiBiYWtlZCBzdGF0
ZSBpLmUuLCBzb21lIHByb3BlcnRpZXMKPiBpbiBSQyBub2RlIGFuZCBzb21lIGluIFJvb3QgUG9y
dCBub2RlLiBEcml2ZXIgY2Fubm90IHBhcnNlIHN1Y2gKPiBjb21iaW5hdGlvbnMsIHNvIGl0IGZh
aWxzIGNvcnJlY3RseSBzby4KClRoZSBjb21taXQgbG9nIG1lbnRpb25zIHByb2JlIGZhaWx1cmVz
IG9uIHNvbWUgbWFjaGluZXMuICBJJ2QgbGlrZSBpdAp0byBiZSBtb3JlIGNsZWFyIGFib3V0IHdo
byBpcyBhZmZlY3RlZCBhbmQgd2hhdCB0aGV5IG5lZWQgdG8gZG8gdG8gZml4CnRoZWlyIG1hY2hp
bmVzLiAgSWYgaXQgb25seSBhZmZlY3RzIGRldmVsb3BlcnMgd2hvIGdlbmVyYXRlZCBEVHMgYmFz
ZWQKb24gOTYwNjA5YjIyYmU1IGZvciBpbnRlcm5hbCB0ZXN0aW5nLCB3ZSBzaG91bGQgc2F5IHRo
YXQgc28gaXQncyBjbGVhcgp0aGF0IG5vIGVuZCB1c2VycyB3aWxsIHNlZSBhbnkgcmVncmVzc2lv
bnMgb3IgYm9vdCBmYWlsdXJlcy4KCklzIHRoZXJlIHNvbWUgd2F5IHRvIHZlcmlmeSB0aGF0IGFm
dGVyIHRoaXMgcGF0Y2gsIG5vbmUgb2YgdGhlCmdlbmVyYXRlZCBEVEJzIGFyZSBpbiB0aGlzIGhh
bGYtYmFrZWQgc2l0dWF0aW9uPyAgU29tZSBraW5kIG9mCmF1dG9tYXRlZCBEVEIgY2hlY2tlcj8K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
