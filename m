Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8447BC982C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ik6rvroUDqA6UPMeBxqYtC+0OyFdXy5UAeWv1VDskBM=; b=tm6b1vX3OaxyCN
	wGOksi+6awLpIqiQx9sIhJdP6Pi/2k5il06OLB+onFOie++H87lfrQYeBqFU+1K6WPsppiz7Ta4RL
	jSKaB4qp7Z3NDLXIcZ2Sn5HHEbe9V9QpjhAs5dGc/DBiO3qOeyFqSNyG7U7XeiWoLCgcWXco3Xhdb
	PDQsBDpW9hBE4kviuXmS8NVqLQp07zrrZsfM+zb3ZLk+gGCKVeoCTo2M13CN6GT82iz5E/iOD+0uU
	RO7Qn0VkCBPpaclUn6RC4G/0/iOS3uEbnZK3Wm7ba4kl9LHB9OfW0OjdOX8ZiVcYnC2TVbDJhqG3C
	zBxUvQlSnE8avaEeN/oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBk-00000007FRP-0bsQ;
	Tue, 15 Sep 2026 15:35:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBh-00000007FOv-2kqV
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:35:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 67BCB4371B;
	Tue, 15 Sep 2026 15:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD1571F00898;
	Tue, 15 Sep 2026 15:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486513;
	bh=XSb8dXizqy5/EqI8CxSB6VpYY3eCdPsC9ugr3cwl2Vc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A9AAdEaYvscgYzGfa9JvOhjKbnzT+IN3imErOzjDuyz0iJhJcHcbJyREaNre0XXFJ
	 SGx5nqCAs5uR5DJ0AGfp2sXm1ICyAAEeVL2nMIJ4hQaP4PYABSYWBjtdxudZJ9+KDH
	 Ha008Bcwkm0ew36LE9r23SgomnutdEZRal8qcy267B5nLDpC8ZuyYeFl/dPvvoW5mM
	 7FaO2aNsmcl43a1a2tzeyUGFtHqmrL1UrkpF7PruvQpp5Gi5bMQ+etrEg4xuAYh/7i
	 waEVPF+NL0fFo9yqRX8dqV9UG1Rfb3/HBVLCsaivBeRWICBy0rgIf9wuKGToGgNAFG
	 eExbmj9Ag+raA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 04/20] dt-bindings: soc: starfive: Add
 starfive,jh7110-vout-syscon
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: neil.armstrong@linaro.org, lee@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260915-jh7110-clean-send-v4-4-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153220eucas1p1f5b0e03015500d9d66db8993426c8734@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-4-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:35:12 +0000
Message-Id: <20260915153512.AD1571F00898@smtp.kernel.org>
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

PiBUaGUgdmlkZW8gb3V0cHV0IHN1YnN5c3RlbSBoYXMgaXRzIG93biBzeXN0ZW0gY29udHJvbGxl
ciwgZG9jdW1lbnRlZCBhcwo+IGRvbV92b3V0X3N5c2Nvbi4gQW1vbmcgb3RoZXIgdGhpbmdzIGl0
IGhvbGRzIHRoZSBtdXggdGhhdCBzZWxlY3RzIHdoaWNoCj4gREM4MjAwIG91dHB1dCBkcml2ZXMg
dGhlIEhETUkgdHJhbnNtaXR0ZXIsIHNvIHRoZSBIRE1JIGNvbnRyb2xsZXIgbmVlZHMKPiB0byBy
ZWFjaCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenlu
c2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91
bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUtamg3MTEwLWNsZWFuLXNlbmQt
djQtMC1mMGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5jb20/cGFydD00CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
