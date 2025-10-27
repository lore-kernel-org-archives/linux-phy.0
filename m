Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7729CCF9EA
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 13:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roQGo3peiNVQN+qiSceVDsHHertPLUNqcvdoUKn6egM=; b=rvyQlH7jIX3Eyx
	ZyLdm92FaPhUWNi4yenbyAIXmJaHXYOaNmEctMErghk7qfexYHlFOqNn0tIe7jZBQrhSIy18WIogP
	W3aUguL7LkBTbqrwGmN1t4xeC28qqmI+YKxcqeVQVtlVk2mO+nVN5ru4u4I4bHUBKpuB8k+YqLIx9
	SL1uMfZYe4a8z5F53fZXKr2gDImlDvOW6P0gh6sL+NXkNzTYgs/0p4yQCVISAo5Aito2n1clesLKk
	dQl8DiuB3SOE0CtS6zep+f80s+akAIWmkOfnjK6CJOQrhRORtAQTj/0ywlkAeHReefCpS+vs5kQSq
	WF+g6wsELEkykgDHXjlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDNAH-0000000E0TF-2hY7;
	Mon, 27 Oct 2025 13:21:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDNAG-0000000E0T2-2qVG
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 13:21:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9242F61203;
	Mon, 27 Oct 2025 13:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B761AC4CEF1;
	Mon, 27 Oct 2025 13:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761571295;
	bh=p1dZI6DmbusIRv3j5AzlxgAKY0Lnkm8edANP/6i32cM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpUatmzA5yocogYbqU4D6PC0xo9JtRT42k5wdLrQt+MuR+ut5BhKPV74ozUp5TgRN
	 iV6d7RKcCg2f7kMpg+EqnEtOaBbmtlfe+cLCJb+V6v+mg/hbS2/qhCOBoHz0ditTRB
	 GtI1X8tZrUkKwdtHs0jbfQPwqr1THdeP9dl0djSEehHkHdM8ukpspjYQGfFHoA2+Rc
	 WitEoEpEAkLg5wRpymcVK0E5+spQdOk5LsDBfmM4u1/qGGUC+v0fbLurrYi/XPbQmp
	 EkS2F50OrJaI+mUl+neksvz9Q+4/4OCKeo2AQuqB9g6UShytqSS9EQrC+1BZaB/qGM
	 Gb3J5FTyjLyFg==
Date: Mon, 27 Oct 2025 18:51:22 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/6] Add PCIe support for Kaanapali
Message-ID: <o4o6tthwz4vz5uqqjv5c4cld6qhhrfa7xzotjd3qyz7gpoab5s@ki4nwe6us4zc>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMDM6Mjc6MzBBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gRGVzY3JpYmUgUENJZSBjb250cm9sbGVyIGFuZCBQSFkuIEFsc28gYWRkIHJlcXVpcmVkIHN5
c3RlbSByZXNvdXJjZXMgbGlrZQo+IHJlZ3VsYXRvcnMsIGNsb2NrcywgaW50ZXJydXB0cyBhbmQg
cmVnaXN0ZXJzIGNvbmZpZ3VyYXRpb24gZm9yIFBDSWUuCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAt
IFJld3JpdGUgY29tbWl0IG1zZyBmb3IgUEFUQ0hbMy82XQo+IC0gS2VlcCBrZWVwIHBjcy1wY2ll
IHJlaWdzdGVyIGRlZmluaXRpb25zIHNvcnRlZC4KPiAtIEFkZCBSZXZpZXdlZC1ieSB0YWcuCj4g
LSBLZWVwIHFtcF9wY2llX29mX21hdGNoX3RhYmxlIHNvcnRlZC4KPiAtIExpbmsgdG8gdjE6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDkyNC1rbnAtcGNpZS12MS0wLTVmYjU5ZTM5
OGI4M0Bvc3MucXVhbGNvbW0uY29tLwo+IAo+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFu
Zy55dUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+IFFpYW5nIFl1ICg2KToKPiAgICAgICBkdC1i
aW5kaW5nczogUENJOiBxY29tLHBjaWUtc204NTUwOiBBZGQgS2FhbmFwYWxpIGNvbXBhdGlibGUK
PiAgICAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeTogQWRk
IEthYW5hcGFsaSBjb21wYXRpYmxlCj4gICAgICAgcGh5OiBxY29tLXFtcDogcXNlcmRlcy10eHJ4
OiBBZGQgY29tcGxldGUgUU1QIFBDSWUgUEhZIHY4IHJlZ2lzdGVyIG9mZnNldHMKPiAgICAgICBw
aHk6IHFjb20tcW1wOiBwY3MtcGNpZTogQWRkIHY4IHJlZ2lzdGVyIG9mZnNldHMKPiAgICAgICBw
aHk6IHFjb20tcW1wOiBxc2VyZGVzLWNvbTogQWRkIHNvbWUgbW9yZSB2OCByZWdpc3RlciBvZmZz
ZXRzCj4gICAgICAgcGh5OiBxY29tOiBxbXAtcGNpZTogYWRkIFFNUCBQQ0llIFBIWSB0YWJsZXMg
Zm9yIEthYW5hcGFsaQoKU28gdGhpcyBwbGF0Zm9ybSBkb2Vzbid0IHN1cHBvcnQgbm9jc3IgUEhZ
IHJlc2V0PwoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
