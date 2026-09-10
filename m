Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F985C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 09:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlBz/NqHJdX2zJwbpYesuyjX8R2qkXQjO8uSwcalhpA=; b=C2l7eTnz6Skccs
	elxta+TFdEKSLc6Y8biX7PDmbv33w1YQOebnwoLvluhgIvOwAQ1haU0pyfnCKoKJw/FmwVNe9IRPt
	GK8pwrFLBgQXIftZpDU9MV52WmEPejrY2vlFKmzAY3epECAC3yMZAxbnXN6njmrUOKxsPBMWr4I+l
	cQ73os9cNhoB8llKH+Pl1jx3a04/6Xa6rMU6kssd924Cg5BjXHa7v1lWReQZl2DaXf10aiqalNppt
	Q1nUV4UKyomCFGP388zvoB3KT4KOveSREIGinRBF8hLK9Mm7QNlHz16vOxAObC1z5wIyuI48GzoRE
	ZtQDaxXEe96m+mWzjRXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bDl-0000000DudM-1KTt;
	Thu, 10 Sep 2026 09:37:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bDk-0000000DudA-0hjq
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 09:37:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A7FDE411D1;
	Thu, 10 Sep 2026 09:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0844A1F000FF;
	Thu, 10 Sep 2026 09:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789033047;
	bh=76CVFKEDW0GIDUNEHxaR1IVvxhYDaTAGEQjJ5WjheiU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b/IiDOC7HvYAGYS0J3oSYXxBZqZuviktLyqjpg0UOYWP9/ABphJlUKgV/IXXw5Dt5
	 R2nPR52VMKm5kIM6wd/17T3JB/HA2gijCGFuJvB2B1Ah4vE7yrdjPCMapXClObWbSE
	 EzFza+X/ekmZExp24trEql0tzxUu6sy1ZptqB2SVZB0klLdgXzALdCmfd5srh1BO90
	 UVv+jRsiYokZwIRjsLoGDiEWinWc71OF76KF0cuSg71yPD+N8ovNDXUBtmt5woMk1o
	 TSi+Qnbcf+hRlIsvSmrvRwmHBGd586NkYSjza2DMvzpA63tpLkoddQ8e5sDYEvp0Iz
	 9xQRxjbosZDvA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260910092038.48291-2-angelogioacchino.delregno@collabora.com>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-2-angelogioacchino.delregno@collabora.com>
Date: Thu, 10 Sep 2026 09:37:26 +0000
Message-Id: <20260910093727.0844A1F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwcm9wb3NlZCBQ
SFkgYmluZGluZyBtb2RlbHMgdGhlIFBIWSBhcyBhIHN0YW5kYWxvbmUgZGV2aWNlIHdpdGggYSBg
cmVnYCByZWdpb24gdGhhdCBvdmVybGFwcyB0aGUgZXhpc3RpbmcgRFAvZURQIE1BQyBjb250cm9s
bGVyLCBjYXVzaW5nIHJlc291cmNlIGNvbmZsaWN0cyBhbmQgYnJlYWtpbmcgYmFja3dhcmQgY29t
cGF0aWJpbGl0eS4KLS0KCmNvbW1pdCA0YzhmMGE2YmE2ZWU3NGEyOTczZTc1OTFlMDcwZGQ3N2Rl
MzM2YmU2CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50IE1U
ODE5NSBhbmQgTVQ4MTk2IERpc3BsYXlQb3J0IFBIWXMKClRoaXMgY29tbWl0IGFkZHMgYmluZGlu
Z3MgZm9yIHRoZSBEaXNwbGF5UG9ydCBhbmQgRW1iZWRkZWQgRGlzcGxheVBvcnQgUEhZcwpmb3Vu
ZCBpbiB0aGUgTWVkaWFUZWsgTVQ4MTk1IGFuZCBNVDgxOTYgU29Dcy4gVGhlIFBIWSBzdXBwb3J0
cyB2YXJ5aW5nCmltcGVkYW5jZSBjYWxpYnJhdGlvbnMgdG8gcmVhY2ggYW4gb3B0aW1hbCBFWUUg
c2lnbmFsIHBhdHRlcm4uCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODE5NS1kcC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssbXQ4MTk1LWRwLXBoeS55YW1sCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgxOTUtZHAtcGh5LnlhbWwKPiBAQCAt
MCwwICsxLDc3IEBAClsgLi4uIF0KPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsg
ICAgZW51bToKPiArICAgICAgLSBtZWRpYXRlayxtdDgxOTUtZHAtcGh5Cj4gKyAgICAgIC0gbWVk
aWF0ZWssbXQ4MTk2LWVkcC1waHkKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKCltT
ZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIHJlZyBwcm9wZXJ0eSBvdmVybGFwIHdpdGggdGhlIGV4
aXN0aW5nIERQL2VEUCBNQUMgY29udHJvbGxlcj8KCklmIHRoaXMgbmV3IGJpbmRpbmcgaXMgaW1w
bGVtZW50ZWQgYXMgYSBzdGFuZGFsb25lIGRldmljZSBub2RlLCB0aGUgUEhZCmRyaXZlciAobXRr
X2RwX3BoeV9wcm9iZSkgYW5kIHRoZSBEUCBkcml2ZXIgKG10a19kcF9kdF9wYXJzZSkgd2lsbCBi
b3RoCmNhbGwgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkgb24gdGhlIHNhbWUgbWVt
b3J5IHNwYWNlLgoKU2luY2UgdGhlIERQIGNvbnRyb2xsZXIgY3VycmVudGx5IG1hcHMgdGhlIGVu
dGlyZSAzMktCIHJlZ2lvbiBhbmQgdGhlIFBIWQpiaW5kaW5nIHJlcXVpcmVzIG1hcHBpbmcgdGhl
IGZpcnN0IDhLQiwgd2lsbCB0aGV5IGNvbmZsaWN0IHdoZW4gcmVxdWVzdGluZwp0aGUgbWVtb3J5
IHJlZ2lvbiBmcm9tIGlvbWVtX3Jlc291cmNlPwoKSXQgYXBwZWFycyB0aGUgc2Vjb25kIGRyaXZl
ciB0byBwcm9iZSB3b3VsZCBmYWlsIHdpdGggLUVCVVNZLCBicmVha2luZwpiYWNrd2FyZCBjb21w
YXRpYmlsaXR5IGZvciBkaXNwbGF5IGZ1bmN0aW9uYWxpdHkuCgpbIC4uLiBdCj4gK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICBwaHlA
MWM1MDAwMDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTk1LWRwLXBo
eSI7Cj4gKyAgICAgICAgcmVnID0gPDB4MWM1MDAwMDAgMHgyMDAwPjsKCltTZXZlcml0eTogSGln
aF0KRG9lcyB0aGlzIGV4YW1wbGUgZGVtb25zdHJhdGUgbWFwcGluZyB0aGUgUEhZIGV4YWN0bHkg
d2hlcmUgdGhlIGV4aXN0aW5nCm1lZGlhdGVrLG10ODE5NS1lZHAtdHggZGV2aWNlIGlzIG1hcHBl
ZCBpbiBvbGRlciBkZXZpY2UgdHJlZXM/CgpJZiB0aGUgZGV2aWNlIHRyZWUgdXNlcyB0aGlzIG5l
d2x5IGRvY3VtZW50ZWQgUEhZIG5vZGUgbGF5b3V0LCBpdCBzZWVtcyBhCnJlZ3Jlc3Npb24gd291
bGQgb2NjdXIgdW5jb25kaXRpb25hbGx5IGR1cmluZyBzeXN0ZW0gYm9vdCBkdWUgdG8gdGhlCmNv
bmZsaWN0aW5nIG1lbW9yeSByZWdpb25zLgoKPiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owpb
IC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwOTEwMDkyMDM4LjQ4MjkxLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bj
b2xsYWJvcmEuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
