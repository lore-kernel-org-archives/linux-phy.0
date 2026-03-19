Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3F681090257
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 17:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6izJlgq13NBcfHN1mxq6elhu9Kb61Pb5+ddwN1EDQns=; b=GaKx2Y0nyimLym
	8kY5mp/ajES6rAlyDjIta003p8+oGRU9TIOGhzqsVVk0gg1F7uBg4/qjpymyzaI0jQj+Ksw4KcAeZ
	WcwUzWMOwwmLgFT8ZYkysXH5EljAoUX6ROLSiczQpgyDloEU7BgvjUrXcFSSGFUUifYZifURaywtZ
	3Wl1sjrPtiLw8ihh2JGOUpJQgSbC01q095okywHUsuAl7nhueJa46lU5n76RdiIXT8NlyNCrrmLnF
	IO2ju2GsTX8GDUYXvVBdCzXtI7t4p8t0nSQT5R3NmYlMCsIQ88lcvBwvYZRZ+AoL16Rqv1bkfIbUy
	mJr1LJtHEw++85TguC3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3H00-0000000BAiZ-1bX3;
	Thu, 19 Mar 2026 17:17:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Gzy-0000000BAhi-0LjW
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 17:17:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8829E40723;
	Thu, 19 Mar 2026 17:17:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F9FCC2BCAF;
	Thu, 19 Mar 2026 17:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773940649;
	bh=s1URZtMYRdo2m24AfGzq+HczpETBJJYGDMsU+ejJkek=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=vITGmSgaVDGo35wP0edDRbyzFYwuN5X4rd0VjuPbprttAsBRd+5vhNnDcLSXaR6Eq
	 CMa6IlaN6BSzu/792cXFr76CuUvzspffPNMdUDuKNmYjRSOJoluuHcRGKJijBHmqiX
	 NuBMLA306VPdMONBe31tc9geYDlMFfEmvF+wnxuJIIG1PN36Sgple7lbcM6Ipc1JbI
	 7yHh4Dd1bCY0EP0GEcI92Zq6lAaT7GUiUUS790Yf58ENBWeM9IZqSd7MHFoqF1RBeX
	 byTfveamzLFTG42yrAoJqdNzeNNU5lTKD2f6WCVPqw25nq+TNY3blWpXyc6XvTbweu
	 1GdgGF5ukjv8w==
Date: Thu, 19 Mar 2026 12:17:28 -0500
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
Message-ID: <20260319171728.GA505341@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5vqy4tfhfxeu4li33qffjzrlgqgbflidds35qdni3trdoues2@kvuzjxenrdff>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_101730_169921_5F07309C 
X-CRM114-Status: GOOD (  35.91  )
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

T24gVGh1LCBNYXIgMTksIDIwMjYgYXQgMTA6NTg6MzZBTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFR1ZSwgTWFyIDE3LCAyMDI2IGF0IDEyOjEzOjE5UE0gLTA1MDAs
IEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBPbiBTYXQsIE1hciAxNCwgMjAyNiBhdCAwNzo1MDo1
MFBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+IE9uIEZyaSwgTWFy
IDEzLCAyMDI2IGF0IDExOjQ1OjQyQU0gLTA1MDAsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+
ID4gT24gRnJpLCBNYXIgMTMsIDIwMjYgYXQgMDU6NDY6MThQTSArMDgwMCwgWml5dWUgWmhhbmcg
d3JvdGU6Cj4gPiA+ID4gPiBDb21taXQgOTYwNjA5YjIyYmU1ICgiYXJtNjQ6IGR0czogcWNvbTog
aGFtb2E6IE1vdmUgUEhZLCBQRVJTVCwgYW5kIFdha2UKPiA+ID4gPiA+IEdQSU9zIHRvIFBDSWUg
cG9ydCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRzIikgZGlkIG5v
dAo+ID4gPiA+ID4gY29udmVydCBhbGwgSGFtb2HigJFiYXNlZCBwbGF0Zm9ybXMgdG8gdGhlIG5l
dyBtZXRob2Qgb2YgZGVmaW5pbmcgUEVSU1QgYW5kCj4gPiA+ID4gPiBXYWtlIEdQSU9zIGluIHRo
ZSBQQ0llIHJvb3QgcG9ydCBub2Rlcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2l0aG91dCB0aGUg
Y2hhbmdlIFBDSWUgcHJvYmUgd2lsbCBmYWlsLiBUaGUgcHJvYmUgZmFpbHVyZSBoYXBwZW5zIGJl
Y2F1c2UKPiA+ID4gPiA+IHRoZSBQSFkgc3RheXMgaW4gdGhlIGNvbnRyb2xsZXIgbm9kZSB3aGls
ZSB0aGUgUEVSU1QvV2FrZSBHUElPcyB3ZXJlIG1vdmVkCj4gPiA+ID4gPiB0byB0aGUgcG9ydCBu
b2Rlcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyBmaXhlcyBwcm9iZSBmYWlsdXJlcyBzZWVu
IG9uIHRoZSBmb2xsb3dpbmcgcGxhdGZvcm1zOgo+ID4gPiA+ID4gIC0geDEtaHAtb21uaWJvb2st
eDE0Cj4gPiA+ID4gPiAgLSB4MS1taWNyb3NvZnQtZGVuYWxpCj4gPiA+ID4gPiAgLSB4MWU4MDEw
MC1sZW5vdm8teW9nYS1zbGltN3gKPiA+ID4gPiA+ICAtIHgxZTgwMTAwLW1lZGlvbi1zcHJjaHJn
ZC0xNC1zMQo+ID4gPiA+ID4gIC0geDFwNDIxMDAtbGVub3ZvLXRoaW5rYm9vay0xNgo+ID4gPiA+
ID4gIC0geDEtYXN1cy16ZW5ib29rLWExNAo+ID4gPiA+ID4gIC0geDEtY3JkCj4gPiA+ID4gPiAg
LSB4MS1kZWxsLXRoZW5hCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEZpeGVzOiA5NjA2MDliMjJiZTUg
KCJhcm02NDogZHRzOiBxY29tOiBoYW1vYTogTW92ZSBQSFksIFBFUlNULCBhbmQgV2FrZSBHUElP
cyB0byBQQ0llIHBvcnQgbm9kZXMgYW5kIGFkZCBwb3J0IE5vZGVzIGZvciBhbGwgUENJZSBwb3J0
cyIpCj4gPiA+ID4gCj4gPiA+ID4gQXJlIHlvdSBzYXlpbmcgdGhhdCBEVHMgaW4gdGhlIGZpZWxk
IGJyb2tlIGJlY2F1c2Ugb2Ygc29tZSBrZXJuZWwKPiA+ID4gPiBjaGFuZ2U/ICBUaGF0J3Mgbm90
IHN1cHBvc2VkIHRvIGhhcHBlbi4gIEV2ZW4gdGhvdWdoIFBIWSwgUEVSU1QsIGFuZAo+ID4gPiA+
IFdha2UgR1BJT3Mgc2hvdWxkIGJlIGRlc2NyaWJlZCBpbiBSb290IFBvcnQgbm9kZXMgaW5zdGVh
ZCBvZiB0aGUgUm9vdAo+ID4gPiA+IENvbXBsZXggbm9kZSBpbiAqZnV0dXJlKiBEVHMsIHRoZSBr
ZXJuZWwgaXMgc3RpbGwgc3VwcG9zZWQgdG8gYWNjZXB0Cj4gPiA+ID4gdGhlIG9sZCBzdHlsZSB3
aXRoIHRoZW0gZGVzY3JpYmVkIGluIHRoZSBSb290IENvbXBsZXggbm9kZS4KPiA+ID4gCj4gPiA+
IFRoaXMgaXMgbm90IHJlbGF0ZWQgdG8gdGhlIGRyaXZlciBjaGFuZ2UuIFRoZSBkcml2ZXIgY29y
cmVjdGx5Cj4gPiA+IHBhcnNlcyBhbGwgUm9vdCBQb3J0IHByb3BlcnRpZXMgZWl0aGVyIGluIHRo
ZSBSb290IENvbXBsZXggbm9kZSAob2xkCj4gPiA+IGJpbmRpbmcpIG9yIFJvb3QgUG9ydCBub2Rl
IChuZXcgYmluZGluZykuIEJ1dCBjb21taXQgOTYwNjA5YjIyYmU1LAo+ID4gPiBsZWZ0IGNvbnZl
cnRpbmcgbWVudGlvbmVkIGJvYXJkIERUUyB0byB0aGUgbmV3IGJpbmRpbmcsIGxlYXZpbmcKPiA+
ID4gdGhvc2UgYWZmZWN0ZWQgcGxhdGZvcm1zIGluIGEgaGFsZiBiYWtlZCBzdGF0ZSBpLmUuLCBz
b21lIHByb3BlcnRpZXMKPiA+ID4gaW4gUkMgbm9kZSBhbmQgc29tZSBpbiBSb290IFBvcnQgbm9k
ZS4gRHJpdmVyIGNhbm5vdCBwYXJzZSBzdWNoCj4gPiA+IGNvbWJpbmF0aW9ucywgc28gaXQgZmFp
bHMgY29ycmVjdGx5IHNvLgo+ID4gCj4gPiBUaGUgY29tbWl0IGxvZyBtZW50aW9ucyBwcm9iZSBm
YWlsdXJlcyBvbiBzb21lIG1hY2hpbmVzLiAgSSdkIGxpa2UgaXQKPiA+IHRvIGJlIG1vcmUgY2xl
YXIgYWJvdXQgd2hvIGlzIGFmZmVjdGVkIGFuZCB3aGF0IHRoZXkgbmVlZCB0byBkbyB0byBmaXgK
PiA+IHRoZWlyIG1hY2hpbmVzLgo+IAo+IFRoZXJlIGlzIGFscmVhZHkgYSBsaXN0IG9mIGFmZmVj
dGVkIG1hY2hpbmVzIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0Cj4gbWVzc2FnZS4KPgo+IEFuZCBm
b3IgZml4LCB0aGV5IGp1c3QgbmVlZCB0byBhcHBseSB0aGlzIHBhdGNoLiBPciBvbmNlIHRoaXMg
cGF0Y2gKPiBnZXRzIG1lcmdlZCBpbnRvIHY3LjAtcmNTLCB2Ny4wIHdpbGwgaGF2ZSBubyBpc3N1
ZS4KPgo+ID4gIElmIGl0IG9ubHkgYWZmZWN0cyBkZXZlbG9wZXJzIHdobyBnZW5lcmF0ZWQgRFRz
IGJhc2VkIG9uCj4gPiAgOTYwNjA5YjIyYmU1IGZvciBpbnRlcm5hbCB0ZXN0aW5nLCB3ZSBzaG91
bGQgc2F5IHRoYXQgc28gaXQncwo+ID4gIGNsZWFyIHRoYXQgbm8gZW5kIHVzZXJzIHdpbGwgc2Vl
IGFueSByZWdyZXNzaW9ucyBvciBib290Cj4gPiAgZmFpbHVyZXMuCj4gCj4gV2hvZXZlciBoYXZl
IGluY2x1ZGVkIGNvbW1pdCA5NjA2MDliMjJiZTUgaW4gdGhlaXIga2VybmVsIGFuZCB1c2luZwo+
IHRoZSBhYm92ZSBtZW50aW9uZWQgbWFjaGluZXMgd2lsbCBzZWUgdGhlIGZhaWx1cmUuIEJ1dCBs
b29rcyBsaWtlIG5vCj4gb25lIHJlYWxseSB0ZXN0ZWQgdjcuMC1yY1Mgb24gdGhlc2UgbWFjaGlu
ZXMgYXMgd2UgaGF2ZW4ndCBnb3R0ZW4KPiBhbnkgcmVwb3J0cyBzbyBmYXIuCgpUd28gcG9pbnRz
OgoKICAtIGEyZmJlY2RiYmI5ZCAoIlBDSTogcWNvbTogQWRkIHN1cHBvcnQgZm9yIHBhcnNpbmcg
dGhlIG5ldyBSb290CiAgICBQb3J0IGJpbmRpbmciKSBpcyBpbnRlbmRlZCBmb3IgaGFyZHdhcmUg
d2l0aCBtdWx0aXBsZSBSb290IFBvcnRzCiAgICB3aXRoIGluZGVwZW5kZW50IFBIWS9yZXNldCBj
b250cm9scy4KCiAgICBUaGUgZHJpdmVyIHdpbGwgYWx3YXlzIGZhbGwgYmFjayB0byBQSFkvcmVz
ZXQgaW5mbyBpbiB0aGUgaG9zdAogICAgYnJpZGdlLCBzbyBJIHRoaW5rIHRoZSBvbmx5IHJlYXNv
biB0byBkbyA5NjA2MDliMjJiZTUgYW5kIHRoaXMgZml4CiAgICBpcyBpZiBoYW1vYS5kdHNpIHdp
bGwgYWxzbyBiZSB1c2VkIGZvciBoYXJkd2FyZSB3aXRoIG11bHRpcGxlIFJvb3QKICAgIFBvcnRz
LiAgSWYgdGhlcmUncyBubyBwbGFuIGZvciBtdWx0aXBsZSBSUHMgd2l0aCBoYW1vYS5kdHNpLAog
ICAgcmV2ZXJ0aW5nIDk2MDYwOWIyMmJlNSBpcyBhbm90aGVyLCBsZXNzIHJpc2t5LCBvcHRpb24u
CgogIC0gOTYwNjA5YjIyYmU1IG9ubHkgdG91Y2hlcyAuZHRzaSBhbmQgLmR0cyBmaWxlczsgaXQg
ZG9lc24ndCBjaGFuZ2UKICAgIHRoZSBrZXJuZWwgaXRzZWxmLgoKICAgIFNvIEkgYXNzdW1lIHRo
aXMgaXNzdWUgb25seSBhZmZlY3RzIHNvbWVib2R5IHdobyB1c2VkIHY3LjAtcmMxIHRvCiAgICBy
ZWJ1aWxkIHRoZSBEVEIgZm9yIG9uZSBvZiB0aG9zZSBtYWNoaW5lcyBhbmQgdGhlbiBpbnN0YWxs
ZWQgdGhhdAogICAgbmV3IERUQiBvbiB0aGVpciBzeXN0ZW0uICBUaGF0IHNvdW5kcyBsaWtlIGRl
dmVsb3BlcnMgdG8gbWUsIG5vdAogICAgZW5kIHVzZXJzLgoKICAgIFRoZSBjb21taXQgbG9nIGFs
cmVhZHkgbWVudGlvbnMgdGhlIGFmZmVjdGVkIG1hY2hpbmVzLiAgSSdtCiAgICBzdWdnZXN0aW5n
IHRoYXQgaXQgc2hvdWxkIGFsc28gc2F5IHNvbWV0aGluZyBhYm91dCB0aGUgZmFjdCB0aGF0CiAg
ICBvbmx5IERUQnMgYnVpbHQgd2l0aCA5NjA2MDliMjJiZTUgYXJlIGFmZmVjdGVkLCBpLmUuLCBE
VEJzIGJ1aWx0CiAgICB3aXRoIDk2MDYwOWIyMmJlNSBidXQgd2l0aG91dCB0aGlzIGZpeCBhcmUg
aW5jb21wYXRpYmxlIHdpdGggdGhlCiAgICBrZXJuZWwgZHJpdmVyLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
