Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86DBCA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zu9NzQAfgWKhCsKd9VZctAxVXpB3Nukd1RBlzpg+f8E=; b=oByImdoVaLWfbK
	UQZpTFZD4l2cfm7gzHYBSmoO5H+1Whwivmrac/8k9x5cx+Ko99emvjeYTe/i8XZWvZZn8cCKlPUfq
	1XXV/QNshDSNZx1VKKGWe5bySX6R4JTZDy2YsCEUGow42XaVISXD8fF3hRux4cUXQHHm+d6/j/0EY
	elFCR/bQxd/kMPASZlTCsdI9WFNEtkF0C0YlURPGOayO6x+0EYO8X4acPyHHST/axyfU7EMIeqUDc
	AV2Sybeiymh7Q71O3P7JGFKaMuI9qtBMl9rZxiH2qs1fvfIhsLttMK/E7+b46J5zeOa7UMhsu3IWA
	FmtmAy0l2xvmCGgiqvDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulucB-0000000BpHP-3869;
	Tue, 12 Aug 2025 19:24:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4U-0000000BSE2-2BxR
	for linux-phy@bombadil.infradead.org;
	Tue, 12 Aug 2025 16:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XbPWTCAAU2bSxfZSc4zLeK/B84owOYzQJdQ9mJDhm0Q=; b=qRvDBvUh6cPkkJO0RW8z9w8EAI
	LWR1JfPrNxfcRWYK9/F21pvGvJR1p5W3xG4UixIxCrIWVMOfUDgHbvrcoAqAyfkeKjlLaglVbyLul
	PotKlaiZyQtOCS74DdlnSShXAzSNchxdlc8Qo6MKdIig1jFqRkeiBNvR+G7n5OomSwyKOX3M86rxP
	be55d5vv/c1M8kRb2O1EHsm9edx/YMdqrqXjeOIBS5pVyQ00DmUUspVp1wwtbbVvkQ0BhAerDlOUf
	US752/pgi6Lq4lMN6Ndh3hqf5Q25Gl4A8Ak7ykK/CROMUKKS66i0B8Iklgdlb9x2mgs6LP6wMrET4
	qvcOefBg==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4Q-0000000FrKP-49C9
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:41:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7CCBBA57727;
	Tue, 12 Aug 2025 16:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EF14C4CEF7;
	Tue, 12 Aug 2025 16:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016913;
	bh=yQgCyFgmlpiQfbU/3+VFXyd2IaPslpZXj/9VuPOztFU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ewk+AaHKTP1J9VFrYB8nT2+5Cg6D99RsW5lyPD5+L4I9I3n5OXVHxm0slnz96N0YG
	 0YJO2IlR9zkGQeJWz/xSSPneYp+3Rt97D3i001ieiFK7jJafOkDEswF/T40lhMcwMc
	 JZfNFW6SOmdS7akXx03Mc+tMlplQSugtAa11JrY/KF9FerNQHVZvDAGNWTGjvQWa+6
	 9+WOvGdZRFW7cpimtjagJFHJ3OA4VknEt4L9bH/2hMT2vwekHZ+sReTRYhxRlWGyxv
	 cQo3N0Bq30hyDY4vSkbwfnZ8vZgSRRhE/CRSRfgDJ/DnqxLNtfZYyyBYd7h6bS7I/x
	 fi0gydERTUPDQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
Subject: Re: [PATCH v2 0/4] Add support for eUSB2 repeater on PMIV0104
Message-Id: <175501690862.633310.534963018208999296.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_174155_222330_D5E6EE4A 
X-CRM114-Status: UNSURE (   6.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Wed, 09 Jul 2025 16:55:13 +0200, Luca Weiss wrote:
> Add a new property qcom,tune-res-fsdif for the eUSB2 repeater and add
> the compatible for the repeater on the PMIV0104 PMIC.
> 
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Document qcom,tune-res-fsdif
      commit: 47e9b6f601932899280f725b0fdbc4d4f85e2719
[2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support tune-res-fsdif prop
      commit: 8e086fe190b63ef1d0d31b300bfefb5d00217427
[3/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PMIV0104
      commit: eb86c2ce4a89157da71d3a7953eac4dcde7d5527
[4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support for PMIV0104
      commit: 8427a4ca85b36247cb2c055ec7507a78a19246ad

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
