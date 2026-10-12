Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 783BDCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECPhhmyQ+HEwL4An8y1GK1B7EBsGzN3V8UfDWttuFhI=; b=Dnfq8ZTLankPbp
	Kqj/U+VZmYp26iQh08ojuzfZE9rF1O+6ger+xP2kAU8DA1HZsKavHEsfJuLPz1wWqJxtw3MRf4Qia
	qBx2aF7x6WqFMy22UCfS9pVZ/ds0VJFnKEBRMH98QahUqxCYQOgDtILOIkBV4wVw3BR+QnavEONmX
	6LZ1UxoFT/QXUsv0MAz1syW+XIQi8w98rBXC3p6E0eM/XD1/bfIUAxDrOUI6fjbI6YKMFJ6ikgkiY
	GeKF3Drez0MDr+kYz44zFfw8gLRie0YzYl7E+afde121NWF2mdLkJoZ4ST7siDg8JJitRa0aB7Uun
	m0CJpCnjs0kLre3oqe7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGI0y-0000000AoR5-0fOY;
	Mon, 12 Oct 2026 15:32:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGI0w-0000000AoQU-2KSh
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:32:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1AFC443A90;
	Mon, 12 Oct 2026 15:32:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 834231F0089B;
	Mon, 12 Oct 2026 15:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791819154;
	bh=VpxzDJstSsto0RTGs836L18/JiYYMQazVuw1Z3RZYlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fhj2mM+c+gtmIhtLFxRKOe0XW0PW3V45eNmHLhWzRc4QCP7mXRKTdDc56TbxiE8lt
	 OW2eUq8KZqLsVBuEpcQ0+wIELD0Q6f7wWoR897We/Y6RRUtHrtrAs9ubXob/wS3HRj
	 5fWC6rlnb3tqZj1gUCOJau1FL6GYAK7ccEcWn5i6yzvkOod65Iefa4O3rFol3RLe8F
	 UIpQKvzQ9HsyvXnwdfB0Abn2TFKoWOydrjrKdXqb5AFDmmVuUAad9PD3wHRrdgJu0K
	 Ya8FBC4Uiv1oF0G7aXfolae/fcSAbcgiHT8szvVYGl+Z+yq7JCyRiPVfJ++G0xjDGq
	 EGcc4LEemZJtA==
Date: Mon, 12 Oct 2026 21:02:24 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/4] phy: qcom-qmp-pcie-multiphy: Split phy_ops into
 init/exit/reset/power_on
Message-ID: <asz9ApG3h3EJC40t@debian>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-3-0b2195836f30@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-3-0b2195836f30@oss.qualcomm.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMTE6MDQ6MjNQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gUGVyIEhQRywgdGhlIGNvbnRyb2xsZXIgbm93IGNhbGxzIHBoeV9pbml0KCkgZnJvbQo+IHFj
b21fcGNpZV9ob3N0X2luaXQoKSBhbmQgcGh5X3Jlc2V0KCkgZnJvbSBpbnNpZGUgaXRzIG93biBj
b3JlIHJlc2V0Cj4gYXNzZXJ0L2RlYXNzZXJ0LiBNYWtpbmcgdGhhdCBhY3R1YWxseSBoYXBwZW4g
aGVyZSBuZWVkcyBwaHlfb3BzOjppbml0Cj4gYW5kIHBoeV9vcHM6OnJlc2V0IGltcGxlbWVudGVk
LCBhbmQgcGh5X29wczo6cG93ZXJfb24gYWRqdXN0ZWQgdG8KPiBtYXRjaC4gU3BsaXQgdGhlIGNv
bWJpbmVkIHBoeV9vcHM6OnBvd2VyX29uL3Bvd2VyX29mZiBpbnRvCj4gcGh5X29wczo6aW5pdC9l
eGl0L3Jlc2V0L3Bvd2VyX29uIHRvIGRvIHRoYXQuCj4gCj4gcGh5X29wczo6aW5pdCBlbmFibGVz
IHBvd2VyIGRvbWFpbnMsIHJlZ3VsYXRvcnMsIGFuZCBhbGwgUEhZIGNsb2Nrcwo+IChwaXBlIGNs
b2NrIGZpcnN0KS4gcGh5X29wczo6cmVzZXQgZG9lcyB0aGUgbm8tQ1NSIHJlc2V0IGFzc2VydC8K
PiBkZWxheS9kZWFzc2VydC9kZWxheS4gcGh5X29wczo6cG93ZXJfb24gaXMgbGVmdCB3aXRoIGp1
c3QgdGhlIFBDUwo+IHN0YXR1cyBwb2xsLiBwaHlfb3BzOjpleGl0IG1pcnJvcnMgcGh5X29wczo6
aW5pdCBpbiByZXZlcnNlOwo+IHBoeV9vcHM6OnBvd2VyX29mZiBpcyBkcm9wcGVkIHNpbmNlIG5v
dGhpbmcgcmVtYWlucyBmb3IgaXQgdG8gZG8uCj4gCj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUg
PHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
