Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCDD4F30295
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 02:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT+O3jnTEecAbygfhx9GyNGbsTIdi4X3gN1sXQEY8Dk=; b=Oh+lmmvzRhFwH+
	OFk68eAGtyps+IPB6ST+dtKXGzpcU3RjZM+WdnMo80xPDWO6In9avnbs/0OmMY/5rsnfcGyg1BL54
	IWWdraSpzJQnO6dP79hRTDRPFv6b/eetgW1i/bMsV9Xxo5gh5Ziw3He4VZkPeOuVOhbM3hZlW8PAU
	+YAKWf/i/mS23DamMRqajQdJoCo+4qnzsdyuN0r6nro3o8d42zJHLafEzsdFZCFV/we9zNqGtoK4O
	tt/wj7oWW1jAlyX/NwMY3A0LCNJHBfyJaSOIErXffEmZvFJBvu7BBg4mtCkC//9Yd0d64lHR4Cqjx
	zHMh93Uo6f6d/bPz3T3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1y5P-00000003Enw-1ty9;
	Mon, 16 Mar 2026 02:53:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1y5M-00000003EnR-1nSZ
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 02:53:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3CA8D44316;
	Mon, 16 Mar 2026 02:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9377C4CEF7;
	Mon, 16 Mar 2026 02:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773629619;
	bh=f086Q6qm64jLIfAt39GIf5jozndghww97l+kATvoaig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CbF+NsKh5Ssgz4mu1cFl+rTq0AAImjOnQT5JFeBXkPgUaa/7uDt60ts75LM734CpM
	 BLyzBgeWimIpLN3k0aPVHqP7US5WIrly2pFl9UOBQUniWxGhecNxiS2011v3btXgkq
	 WZ6k5+pGDabPM8+sVxhoUZg4Q6pVljQxJgoTg0oIB93ZwJ0NzbjUiZUa9dLiLBtEmN
	 fZVuhhhJBGDhN0/TxIuTqOfW/P5/Gyjvbfe8AbJmLgzDuOyT/s9LMKW2fQQRvmlI4E
	 u3ZVFgS7UnlDkymKexpqbwNlw093PHOdb3cZ/4vG4vNtm1cmmoHflht2bQqpCGtCkn
	 /1/NKEhLbgL2Q==
Date: Sun, 15 Mar 2026 21:53:33 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
Message-ID: <abdviJbrluDn2Vrx@baldur>
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas>
 <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_195340_521341_C8C7D697 
X-CRM114-Status: GOOD (  20.12  )
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
ZSBSb290IENvbXBsZXggbm9kZS4KPiA+IAo+IAo+IFRoaXMgaXMgbm90IHJlbGF0ZWQgdG8gdGhl
IGRyaXZlciBjaGFuZ2UuIFRoZSBkcml2ZXIgY29ycmVjdGx5IHBhcnNlcyBhbGwgUm9vdAo+IFBv
cnQgcHJvcGVydGllcyBlaXRoZXIgaW4gdGhlIFJvb3QgQ29tcGxleCBub2RlIChvbGQgYmluZGlu
Zykgb3IgUm9vdCBQb3J0IG5vZGUKPiAobmV3IGJpbmRpbmcpLiBCdXQgY29tbWl0IDk2MDYwOWIy
MmJlNSwgbGVmdCBjb252ZXJ0aW5nIG1lbnRpb25lZCBib2FyZCBEVFMgdG8KPiB0aGUgbmV3IGJp
bmRpbmcsIGxlYXZpbmcgdGhvc2UgYWZmZWN0ZWQgcGxhdGZvcm1zIGluIGEgaGFsZiBiYWtlZCBz
dGF0ZSBpLmUuLAo+IHNvbWUgcHJvcGVydGllcyBpbiBSQyBub2RlIGFuZCBzb21lIGluIFJvb3Qg
UG9ydCBub2RlLiBEcml2ZXIgY2Fubm90IHBhcnNlIHN1Y2gKPiBjb21iaW5hdGlvbnMsIHNvIGl0
IGZhaWxzIGNvcnJlY3RseSBzby4KPiAKCkFyZSB5b3Ugc2F5aW5nIHRoYXQgYWJvdmUgbGlzdGVk
IG1hY2hpbmVzIGhhcyBicm9rZW4gUENJZSBzdXBwb3J0IGluCnY3LjAtcmM/CgpJdCBzZWVtcyB0
aGlzIGlzIGEgKHBhcnRpYWwpIHJldmVydCBvZiA5NjA2MDliMjJiZTUsIGlzIHRoaXMgYWN0dWFs
bHkKZml4aW5nIHRoYXQgY2hhbmdlLCBvciBpcyBpdCBvbmx5IGFwcGxpY2FibGUgb25jZSBzb21l
IG90aGVyIGNoYW5nZXMgYXJlCmFwcGxpZWQ/CgpXaGVyZSBzaG91bGQgdGhpcyBiZSBtZXJnZWQ/
CgpSZWdhcmRzLApCam9ybgoKPiAtIE1hbmkKPiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
