Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1BFCCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqNQfvnYVSSjcjIdtTqEmgbogf8taRTrSMKp4Uvvk2Y=; b=Yh3qxRr+b/Z2GL
	TdSY4Th5MitvrUj5Mrz0e5sBpNdh2qxAcYu9y6IFI4sCwfhRBykI8EIFCv1hDVGV6yrMtutRDVQQc
	i7OEsyMTrrV0iaVY1SAcSWH2dVeEccXsDSIzZWjbaiZxfd8ww0nH2dG5KHFw/WtXP5EfzvyD3j+93
	YAqyZF+EQw9hGLiqDbrSOmY1zZW973nVHt6aFVLIzHjP5mcbBJwftW6DmvMkqVhwBR061DNQK61V3
	gF5tvgegKnGZahHrsi5h+D7yx5+tZHaU5be5pgnVwWO3j5B2zUCK9pKr0ZLggiVZe1+UZ+4MkAXc4
	F/hyhwoWdU7rz54SAiDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhKc-00000002x5n-2VcW;
	Fri, 16 Oct 2026 12:46:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhKa-00000002x5H-3ASc
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:46:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F0EC060A82;
	Fri, 16 Oct 2026 12:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CE011F000C4;
	Fri, 16 Oct 2026 12:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154799;
	bh=wsQYsV1A6d3Q9LTOhBvoV1/8at0kxLQz0vH3H68Dex4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SKGyFuyWcy9p1xIgFNeeENir2EK1iGEqcjOS+x3uCLdv0gmDZqRNhTfOzEKAh9Utx
	 X2g5pcg0nyjEawqqS4BkiPHvlE6gvuVYOLrNLOkfipW7Re1hOvFf+V0tHorljmY3cy
	 BGU49Sr6rXCAGv+rStGYHkTOpn6zuSaRvfNSxRBYJAqIK5Y6u2SKh1k/UCwJTFvn+k
	 DDiW4IRS+FL605BQMRYePuOMwM755G4q9Tl3p26XSfETUG4OsVvSlCcfanDiBhLvkK
	 8BQ8NcCZ2q6qnACfVVj6hQaeMYimH97OE6n7OxYjwVDs54CNfbUDsxVc2bA4sTlw8G
	 CVPoDr986CoTg==
Message-ID: <sashiko-outbox-174333@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 02/23] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-2-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-2-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:46:38 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IHVmczogbWVkaWF0ZWs6IGluY29tcGF0aWJsZSBzY2hlbWEgY2hhbmdlIGJyZWFrcyBpbi10cmVl
IG10ODE5NS5kdHNpCi0tCgpjb21taXQgMmVlZTFkZDBjOTFhMDk1ZmFmNmQ3NzE3ZTBkNmFkMzA3
Y2JmODUxZApBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNv
bGxhYm9yYS5jb20+CgpkdC1iaW5kaW5nczogdWZzOiBtZWRpYXRlayx1ZnM6IENvbXBsZXRlIHRo
ZSBiaW5kaW5nCgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBtZWRpYXRlayx1ZnMueWFtbCBiaW5k
aW5nIGJ5IG1ha2luZyBmcmVxLXRhYmxlLWh6CmRpc2FsbG93ZWQsIGVuZm9yY2luZyBvcGVyYXRp
bmctcG9pbnRzLXYyLCBhbmQgcmVuYW1pbmcgYW5kIGV4cGFuZGluZyB0aGUKY2xvY2sgcmVxdWly
ZW1lbnRzIGZvciBNVDgxOTUgYW5kIE1UODE5MiBwbGF0Zm9ybXMuIEl0IGFsc28gZG9jdW1lbnRz
IHZhcmlvdXMKcG93ZXIgc3VwcGx5IHBpbnMgYW5kIGFkZHMgYSBuZXcgZXhhbXBsZSBmb3IgTVQ4
MTk1LgoKPiAgICAgRGlzYWxsb3cgZnJlcS10YWJsZS1oeiBhbmQgbW92ZSB0byBvcGVyYXRpbmct
cG9pbnRzLXYyLiBJdCdzIGZpbmUgdG8KPiAgICAgYnJlYWsgY29tcGF0aWJpbGl0eSBoZXJlLCBh
cyB0aGUgYmluZGluZyBpcyBjdXJyZW50bHkgdW51c2VkIGFuZCB3b3VsZAo+ICAgICBiZSBpbXBv
c3NpYmxlIHRvIGNvcnJlY3RseSB1c2UgaW4gaXRzIGN1cnJlbnQgc3RhdGUuCgpJcyB0aGlzIGRl
c2NyaXB0aW9uIGFjY3VyYXRlIHJlZ2FyZGluZyB0aGUgYmluZGluZyBiZWluZyB1bnVzZWQ/CgpM
b29raW5nIGF0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTk1LmR0c2ksIHRoZXJl
IGlzIGFuIGFjdGl2ZQptYWlubGluZSB1c2VyIG9mIHRoZSBtZWRpYXRlayxtdDgxOTUtdWZzaGNp
IGNvbXBhdGlibGUgc3RyaW5nOgoKYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxOTUu
ZHRzaTp1ZnNoY2koKSB7CiAgICAgICAgLi4uCiAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDgxOTUtdWZzaGNpIjsKICAgICAgICAuLi4KICAgICAgICBjbG9jay1uYW1lcyA9ICJ1ZnMi
LCAidWZzX2FlcyIsICJ1ZnNfdGljayIsCiAgICAgICAgICAgICAgICAgICAgICAidW5pcHJvX3N5
c2NsayIsICJ1bmlwcm9fdGljayIsCiAgICAgICAgICAgICAgICAgICAgICAidW5pcHJvX21wX2Jj
bGsiLCAidWZzX3R4X3N5bWJvbCIsCiAgICAgICAgICAgICAgICAgICAgICAidWZzX21lbV9zdWIi
OwogICAgICAgIGZyZXEtdGFibGUtaHogPSA8MCAwPiwgPDAgMD4sIDwwIDA+LCA8MCAwPjsKICAg
ICAgICAuLi4KfQoKV2lsbCB0aGlzIGNoYW5nZSBjYXVzZSBkdGJzX2NoZWNrIHZhbGlkYXRpb24g
dG8gZmFpbCBmb3IgdGhlIE1UODE5NSBwbGF0Zm9ybQpzaW5jZSBpdCBzdGlsbCByZWxpZXMgb24g
ZnJlcS10YWJsZS1oeiBhbmQgdGhlIG9sZCB1ZnMtcHJlZml4ZWQgY2xvY2sgbmFtZXM/Cgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL21lZGlhdGVr
LHVmcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9tZWRpYXRl
ayx1ZnMueWFtbAo+IGluZGV4IDE1YzM0N2Y1ZTY2MDQuLjk0NWNiOTg2YjA2YjcgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9tZWRpYXRlayx1ZnMu
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0
ZWssdWZzLnlhbWwKClsgLi4uIF0KCj4gQEAgLTU0LDI5ICs5Niw0MSBAQCBhbGxPZjoKPiAgICAg
ICAgcHJvcGVydGllczoKPiAgICAgICAgICBjb21wYXRpYmxlOgo+ICAgICAgICAgICAgY29udGFp
bnM6Cj4gLSAgICAgICAgICAgIGVudW06Cj4gLSAgICAgICAgICAgICAgLSBtZWRpYXRlayxtdDgx
OTUtdWZzaGNpCgpbIC4uLiBdCgo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBj
b25zdDogbWVkaWF0ZWssbXQ4MTk1LXVmc2hjaQo+ICsgICAgdGhlbjoKPiArICAgICAgcHJvcGVy
dGllczoKPiArICAgICAgICBjbG9ja3M6Cj4gKyAgICAgICAgICBtaW5JdGVtczogMTAKPiArICAg
ICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIG1pbkl0ZW1zOiAxMAoKW1NldmVyaXR5OiBN
ZWRpdW1dCkRvZXMgZW5mb3JjaW5nIGEgbWluaW11bSBvZiAxMCBjbG9ja3MgaGVyZSBicmVhayBl
eGlzdGluZyBpbi10cmVlIGRldmljZQp0cmVlcz8KCkFzIHNob3duIGFib3ZlLCB0aGUgZXhpc3Rp
bmcgbXQ4MTk1LmR0c2kgc3BlY2lmaWVzIGV4YWN0bHkgOCBjbG9ja3MuIEJlY2F1c2UKdGhpcyBw
YXRjaCByZXF1aXJlcyAxMCBjbG9ja3MsIGV4cGxpY2l0bHkgcmVxdWlyZXMgdGhlIG5ldyBuYW1l
cyB3aXRob3V0IHRoZQp1ZnNfIHByZWZpeCwgYW5kIGZvcmJpZHMgZnJlcS10YWJsZS1oeiwgd2ls
bCBpdCBicmVhayBiYWNrd2FyZCBjb21wYXRpYmlsaXR5CmFuZCBsZWF2ZSB0aGUgdHJlZSBpbiBh
IGJyb2tlbiBzdGF0ZSBmb3IgTVQ4MTk1IHVzZXJzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxNi1tdDgxOTYtdWZzLXYxNC0w
LWU4ZDU2NWUwY2Q0NUBjb2xsYWJvcmEuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
