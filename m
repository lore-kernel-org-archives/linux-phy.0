Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B66C9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 15:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSZ5vZ3KTKJEnXMNfuQNKQHlvsci8ZUzJShHTR5G6Lo=; b=dXZpa+PcfP5FPo
	JvdWZxBS7lWWgiEUXedXtQ+V9DvW9D0+m8UVtVRtV/LXW1BctGYu75BFzwAmR7pOXcHtP7Ppdd3Y3
	qLi3659Hxi8Kz0pZ1jIAx1/QTefhVIALE/Ytrg042HMUfR+yuYnq2nfYhd8TKUSPB5G6u4Su72i5Z
	4j7FOlLDv+Psj7SthqJxpyreIi4flNPrVYZPzD/W6iivDz0jN7HDuhqFV3vyHApQLmTCyqNZuA0Ce
	wFqzpjOSsnmC4Bp+ghOcu86719xeoAl8whPW+6p2VDl4oInluOcNM7nCaoi3Ci+ddNNl6ew6FmaqS
	NobE6qZoHG2g7ojsbeSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7ns-0000000DmMg-2AXx;
	Fri, 25 Sep 2026 15:25:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA7nq-0000000DmMA-2vL7
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 15:25:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F382360136;
	Fri, 25 Sep 2026 15:25:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE2E1F000FF;
	Fri, 25 Sep 2026 15:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790349933;
	bh=XjJu85d7wfISfmZzNSzPkWwyChELnjkdxti837YiI74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TklBtAtvfD4nKCooVinJbxY9ggCZg+43JN5Q8zDDCGOS4uG5RKMm55zXl3VbJpGKg
	 J47SESdECcQgOBxpGz0mKeWEcyGcDOXNiN3eXsjOLxhXyi/5xF09/VxrH3D6USBb6W
	 tbCKDpLicK7Hkus/J5y85XbqUhWWHw9BLpaQF+rplzaH9zNmLelzrjShAA6cVbeNon
	 Isfq6SxEv7TD8gHhILn9TsO053Hk/dQNU58rhuhrb5IYURSuhpvY/cuLFGLuXq6qWr
	 isHX+UVJ3uALkTHTFdq+eI/K+eMvShr5z6+MwTnbNoAi2WpI0RBiK/FUcQ2gIvCG62
	 Vzsk3UmQnlLzg==
Date: Fri, 25 Sep 2026 17:25:13 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
Message-ID: <q6trptalussxqayvkvfti7cm2uje4a6novrhelxp4adzd7smtu@3j5rpztp7jmr>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MDc6MTRBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIE5vcmQgR2VuNXgxNiBiaWZ1
cmNhdGVkIFFNUCBQQ0llIFBIWS4KPiAKPiBOb3JkIGhhcyBhIHNpbmdsZSBQQ0llIFBIWSBibG9j
ayBzcGxpdCBpbnRvIGZvdXIgcG9ydHMgd2hpY2ggY2FuIGJlCj4gdXNlZCBpbiBtdWx0aXBsZSBs
YW5lIGNvbmZpZ3VyYXRpb25zOiB4MTYsIHg4K3g4LCB4OCt4NCt4NCBhbmQKPiB4OCt4NCt4Mit4
Mi4gVGhlIGFjdGl2ZSB0b3BvbG9neSBpcyBzZWxlY3RlZCB0aHJvdWdoIHRoZSBsaW5rIG1vZGUK
PiBjb25maWd1cmF0aW9uIHJlZ2lzdGVyLCBhbmQgdGhlIGRyaXZlciBleHBvc2VzIHRoZSBjb3Jy
ZXNwb25kaW5nIFBIWQo+IGluc3RhbmNlcyBiYXNlZCBvbiB0aGF0IG1vZGUuCj4gCj4gVW5saWtl
IEdseW11ciwgd2hlcmUgdGhlIFBIWSBpcyBpbml0aWFsaXplZCBieSBmaXJtd2FyZSwgTm9yZCBy
ZXF1aXJlcwo+IExpbnV4IHRvIHByb2dyYW0gdGhlIFBIWSByZWdpc3RlcnMuIEFkZCB0aGUgUExM
LCBUWFJYWiwgUENTIGFuZCBQQ1MKPiBsYW5lIGluaXRpYWxpemF0aW9uIHRhYmxlcywgYWxvbmcg
d2l0aCB0aGUgcmVxdWlyZWQgcG93ZXItdXAsCj4gcG93ZXItZG93biBhbmQgc29mdC1yZXNldCBz
ZXF1ZW5jaW5nLgo+IAo+IEFkZCBwZXItcG9ydCBhbmQgZ3JvdXBlZCBQSFkgY29uZmlndXJhdGlv
bnMgZm9yIGFsbCBzdXBwb3J0ZWQgTm9yZAo+IGxhbmUgbW9kZXMuIEFsc28gYWRkIHN1cHBvcnQg
Zm9yIHJlZ3VsYXIgUEhZIHJlc2V0cyBpbiBhZGRpdGlvbiB0byB0aGUKPiBOT0NTUiByZXNldC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNo
dW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
