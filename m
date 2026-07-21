Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C410C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 08:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHJmxsHM08c0x5Vuts+idJ2mDNGq7UM6JkBnn2EBTho=; b=aZkW+u8QyYgB8F
	il6Q/XJ7rRJudEslUntth233EVpaXZOF7p5WEPJdYFPDzW7lvyMrRKlsBQ+u6uAE4PnmUOtxDpTt8
	+ZTIdVrV6HfEkeF4AXFgDDOJNAnM6inThZ/W3aC1ae5I1eqpz13MF2JKliWd1RmeBKV7iX+Vi5fTL
	HHiTtXQ4xK+9Ok2tHi6kMrAn1eOgcsOthrShEjS662Jv2VV7x8h/7/lidlSk3suoKZ1AIoN2sQz+n
	RwNZxGiLSm4xEucKjFEbwuGhRjcaFT0mTMCvvm6itbVK+dkc2guh7tZSTGPuvm9NoM2phzr2GShWO
	k0RqbXe2WS9Bdt7i1MXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5he-00000008nIB-0mEe;
	Tue, 21 Jul 2026 08:19:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5hL-00000008mu5-4AU5
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 08:19:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FB0042A08;
	Tue, 21 Jul 2026 08:19:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4E61F00A3D;
	Tue, 21 Jul 2026 08:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784621971;
	bh=lVtaX7Zx70XRxWSS5I/G2DvKC0wET8HQ9h61CsXZPxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=drE3GvzOvAZVMhVXaAMxXtE+IXIDad2hDXr9da3M8Mnxujikf8fNdPIb4w56q1eku
	 IdsOerke7OkTKcN0HD5s0NQ7GobEHDv24wO4lgSA8ARw2LsWALs1BPVGowdjZuYecE
	 3T3JxX8XiPHoyymVaOG2QCxrct4dyHAoQmvIGvPufqdTB0SYwhofYMGbm+kXU274+k
	 WeSGRoOnXnA5ivKaz0PxCO6fYBlkabkV1YElm0VOrzD7U9AbXs+/J15eM3t7+jBRfZ
	 6NEztdWbye0oyPJ7/Fvx42OvaeOBen1AdkYaAgubALfKZPr5qWfte4H/JjgI7LGQck
	 +BX93Fctx5OZQ==
Date: Tue, 21 Jul 2026 10:19:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SM8475 QMP PHY
Message-ID: <20260721-strong-malkoha-of-politeness-5dfcfd@quoll>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
 <20260715-sm8475-bup-pcie-v2-1-48bd91a19abf@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-pcie-v2-1-48bd91a19abf@proton.me>
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

On Wed, Jul 15, 2026 at 02:37:46AM -0400, Esteban Urrutia wrote:
> SM8450 init sequence for this PHY varies significantly and can't be reused
> in SM8475.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
