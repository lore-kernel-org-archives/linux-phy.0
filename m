Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2034CC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mksh7T0jAysjyfkM8jCK8RDtMxyTqZxJX/iJM3UzHg8=; b=4klxTLX3+h4Jvd
	2Q0gtjQybHinIXNev2YsSWFl/mp8lDhSjJGzcNOcSrrGJUQjPQmxVbSN3ThCak24ERIur4nIkVUwu
	nwWd8BmG6t8kPIoaVPalNP363H5CDI+mjPTq/LsbNAPBPidHb4IW75vCiOA8Yf4HQ+mb0E2ydbmS9
	o6C0nCFZaSY8jLrVXvx6bxeLnmyD6q4vkw0SUY8pwOgv/V+5wyDwjQXZBCARQOqKCNchoNrDpWpLL
	xUfHDrfsknGRWImXigvteztWaOTN6Wc/k+yfBG/tmCpfIv6BNKH6+ZSTDRNdCrquXs2vPKFLU3gE1
	hAB5K+ZYfBNXK3mJtMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmJV-0000000D5FJ-2G5C;
	Mon, 06 Jul 2026 16:36:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmJU-0000000D5En-1J2N
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 16:36:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D831600AE;
	Mon,  6 Jul 2026 16:36:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98BD71F000E9;
	Mon,  6 Jul 2026 16:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783355815;
	bh=zCwhz7SYOBzlCyq63S3QzaXZnIA6AhTV8JUT7OVdLRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oXFMh8SuHX6p8AYT4D45ZGncYnMZ8zgmBtiO0fs6l3A+K/J7wbMNs1XuDjNlcw6Ol
	 hQrJok8zs4BTv03w1DVwFFjDlvET/xTX3yIIWjjrV2PnN5Kqg1H7XUQbT0B77E4UZR
	 olAfo1CmXXTr0nxInCItcU9UxxtlJ7sqMrdsM+WAeLvUGL/JWK2KeCy5LkwYRDB+7n
	 G/EQyWYj3v+ALcs+1b/uo6umqo9tIbH9Jcgt8fmeXiRfMiGPpAAUVFys/0rqTM/U7D
	 cFacpwcDjISVcoQoZswHZuTidL36gyYMFnFotMMTcoHGX5JZNOeF4r/vG5CxLZFqAF
	 33f18wXKuct7g==
Date: Mon, 6 Jul 2026 18:36:45 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatible
Message-ID: <yntj62kr7tixc7capwdr6xhv2zpisfrjg62bwftgiuujf4fzt5@cjdrkglo4dv5>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
 <20260706-pastoral-okapi-of-reading-e5bdb3@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706-pastoral-okapi-of-reading-e5bdb3@quoll>
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

T24gTW9uLCBKdWwgMDYsIDIwMjYgYXQgMDg6NDY6NDFBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiBGcmksIEp1bCAwMywgMjAyNiBhdCAwNTozODo0MFBNICswNTMwLCBW
aXZlayBQZXJuYW1pdHRhIHdyb3RlOgo+ID4gQWRkIHFjb20sbWFpbGktcGNpZSBhcyBhIGNvbXBh
dGlibGUgc3RyaW5nIHRoYXQgZmFsbHMgYmFjayB0bwo+ID4gcWNvbSxoYXdpLXBjaWUsIGFzIHRo
ZSBNYWlsaSBTb0MgcmV1c2VzIHRoZSBIYXdpIFBDSWUgY29udHJvbGxlciBJUC4KPiA+IAo+ID4g
VGhlIE1haWxpIFNvQyBpcyBhIGRlcml2YXRpdmUgb2YgSGF3aSBhbmQgc2hhcmVzIHRoZSBzYW1l
IFBDSWUKPiA+IGNvbnRyb2xsZXIgYXJjaGl0ZWN0dXJlLCBhbGxvd2luZyByZXVzZSBvZiB0aGUg
ZXhpc3RpbmcgSGF3aSBQQ0llCj4gPiBEVCBiaW5kaW5ncy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogVml2ZWsgUGVybmFtaXR0YSA8dml2ZWsucGVybmFtaXR0YUBvc3MucXVhbGNvbW0uY29tPgo+
ID4gLS0tCj4gPiBEZXBlbmRlbmNpZXM6Cj4gPiAtIFBDSTogcWNvbTogQWRkIFBDSWUgc3VwcG9y
dCBmb3IgdXBjb21pbmcgSGF3aSBTb0MKPiA+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjYwNjI1LWhhd2ktcGNpZS12NC0wLTFhNTc4NjAzY2Q4NkBvc3MucXVhbGNvbW0uY29tLwo+
IAo+IFNxdWFzaCB0aGUgcGF0Y2hlcyB0aGVuLgo+IAoKQnV0IHRoZXNlIGFyZSB0d28gaW5kZXBl
bmRlbnQgU29DIGFkZGl0aW9ucywgaXNuJ3QgaXQ/CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
