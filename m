Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDB64CA6007
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 15:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgNKzTAvVwxuFJH6eVPKr01Uot0QssPjIXWhpt++op0=; b=LELJMFIPbG8paa
	1wNpfKd8oDmK41jvi8uHiAsNU/qceITDY32y6QOL98sV36lazh6SGd7zAD4lIjM15rlO0WH1KMPkK
	1w170LmineE2GGqYiA/V0gR1jPQtNJHctq6J5VLNj/mkGfGjtFYyCj0505JTRl/pCuECwjtB3+Bvr
	EIVwWtwOhMrBzQlFQ32x+z73iMoecIDs2AMSU8cs2BLmfs3EttkVVac2f8YnSYF7hcnrqoKYwtq5I
	hC9RmFnChgZ/z7zFc4L+s0XXsdahSx1M5zRUBP6rE3wtFwmpaNpc4ef6uuBgD1xms1YQDF6CaJIjW
	nLu/XEBocx6OKP3UWxhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETMk-00000002gt6-05v4;
	Wed, 07 Oct 2026 15:15:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETMj-00000002gt0-0hbJ
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 15:15:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4537F60219;
	Wed,  7 Oct 2026 15:15:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4BF61F000FF;
	Wed,  7 Oct 2026 15:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791386131;
	bh=TjVi7Rx1rFn3sJeEh/l1JhFtiUFQYPyDX/et1rX8SSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Nty2Uc3MCI5Zn9Agpj9e+dynGJEtMbnGCx4L9CwvW4rmBgoTn8OFkTqe3SR6FHb5n
	 dP/eytvJ0+NHxSHwgUpjjIZd0Bj25ak8TabWTLcZ8O5BEj8sAfC0TTVwzO/968nj4R
	 PRlcxn4PMrUXFRpVzA/6psqVCHE1bBk5EIQuvO/H3PagWcztCy9cPyrG0Jy5tq2awY
	 eVK2ao5Uv1NfKSSYWh/18G1uFkKcLdD4UsGrOZelfMU2KOP0N+MILcD/ElNPkyx1u8
	 o7/8rRw45AK7KGai7zyHvbBWN/wfuQiNTf4jtjteeXO3zv+M4wtfJXyGfYLyeZJRcS
	 D+TCXjTYvAR0Q==
Date: Wed, 7 Oct 2026 17:15:24 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] phy: tegra: xusb: Add Tegra238 support
Message-ID: <uf6h4xyzc7c7jp7ekas2frmnynnwnrxpghq5krto6zyhimbcgx@asb7p5h5dqb6>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
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

T24gV2VkLCBPY3QgMDcsIDIwMjYgYXQgMDM6NDQ6NDBQTSArMDEwMCwgSm9uIEh1bnRlciB3cm90
ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFRlZ3JhMjM4IGRldmljZSB0byB0aGUgVGVncmEgWFVT
QiBQSFkgZHJpdmVyIGFuZAo+IGFkZCB0aGUgbmVjZXNzYXJ5IGRldmljZS10cmVlIGJpbmRpbmcg
ZG9jdW1lbnRhdGlvbiBmb3IgdGhpcyBkZXZpY2UuCj4gCj4gVGhpcyBzZXJpZXMgYWxzbyBpbmNs
dWRlcyBhIHRyaXZpYWwgY2xlYW4tdXAgcGF0Y2ggdG8gdXNlIHRoZQo+IGRldl9lcnJfcHJvYmUo
KSBmdW5jdGlvbiBpbiB0aGUgVGVncmEgWFVTQiBQSFkgZHJpdmVyIGluc3RlYWQgb2Ygb3Blbgo+
IGNvZGluZyB0aGlzIGZ1bmN0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvbiBIdW50ZXIgPGpv
bmF0aGFuaEBudmlkaWEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
