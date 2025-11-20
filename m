Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4DCDCF9C72
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ql/27EWUVMIX92xIDCc1SE/BfED4ITdK8nR4WJxcdLs=; b=PmK7KlbKShJTDP
	zqBa7Ujp1FOn0axcYlYIQKuBK1Km6e6vz7pW7c56PJeQqrtmYGUfWWjVGsx8YLaKbsErKnB+Xxo6M
	R6mritg0U34iVZrfpKhoUb9wWLYlTwn1QKkHiQToxFYmDvcISpES2BWaWb4CqPxKHHYRovp4YEtzC
	78m0diabirJt+i8oSoKqK2drZuxIC7BWrcWKBrkbn7y4PH9yJTyJIfPUvITaKhYo9oyOPX4KcyRDT
	zvooVZQBXYumMTyt93mJLoIzKQnqqKskqbtJrUrD7B6ICdXo3KLIjlYw9v28iGlOCCyjrSOuPxC0T
	d88sfKOJt3QBLAnh/OXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C4-00000007441-1fHi;
	Thu, 20 Nov 2025 17:11:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bs-000000073zJ-0edd;
	Thu, 20 Nov 2025 17:11:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D3F3244215;
	Thu, 20 Nov 2025 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A64C116D0;
	Thu, 20 Nov 2025 17:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658687;
	bh=IABz3Vm9WE8tNAIYgl3s7DgNhJLHFMdvNzFll8AaOrM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UF91YOyEeFNguuHHLAdKTR9eAYMaQEjGov78H/L9q/PSBxcLKwMGwHx57I9Evbnm+
	 T4qlamnkQ9ugk0Ggq98YlDHt+CsBwBVP4AVMBwqhe1TEIaxrP4fZk1qTetghCmnrBB
	 mZ4LgM8KLZB35rVdtQRxE5Dr1BcZjGFCTeivy9iKofuAirk1DWlrdtoe+nz5eK+jB4
	 pHbcruZfsgFl1qGXmqRHT8A8fJ1KqA8jxcVZD3O/Ux0XZB+a5UQnq+o9kSBdPHvKvN
	 aw5URqSKw83JQQ13oqWyv5HLwt7flM6Wy4gKlTYm/kKHTXhB6qogGnmATJ0jMs2DR+
	 vgT6tZJuKzucg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
References: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix clock prepare imbalance
Message-Id: <176365868405.207696.4847424403085518315.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091128_280258_9734CA52 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
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

Ck9uIE1vbiwgMDYgT2N0IDIwMjUgMDk6MDc6MTIgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IENvbW1pdCBmNGZiOWM0ZDdmOTQgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0Mz
IHJ1bnRpbWUgc3VzcGVuZAo+IHdpdGggVURDIGJvdW5kIChFODUwKykiKSBpbmNvcnJlY3RseSBh
ZGRlZCBjbGtfYnVsa19kaXNhYmxlKCkgYXMgdGhlCj4gaW52ZXJzZSBvZiBjbGtfYnVsa19wcmVw
YXJlX2VuYWJsZSgpIHdoaWxlIGl0IHNob3VsZCBoYXZlIG9mIGNvdXJzZQo+IHVzZWQgY2xrX2J1
bGtfZGlzYWJsZV91bnByZXBhcmUoKS4gVGhpcyBtZWFucyBpbmNvcnJlY3QgcmVmZXJlbmNlCj4g
Y291bnRzIHRvIHRoZSBDTVUgZHJpdmVyIHJlbWFpbi4KPiAKPiBVcGRhdGUgdGhlIGNvZGUgYWNj
b3JkaW5nbHkuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIHBoeTogZXh5bm9z
NS11c2JkcmQ6IGZpeCBjbG9jayBwcmVwYXJlIGltYmFsYW5jZQogICAgICBjb21taXQ6IDVlNDI4
ZTQ1YmYxN2E4ZjM3ODQwOTljYTVkZWQxNmUzYjVkNTk3NjYKCkJlc3QgcmVnYXJkcywKLS0gCn5W
aW5vZAoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
