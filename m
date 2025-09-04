Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE66BCA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtNQc6XG0XoIv4x2WwZU20rssFvX7aG7pxu4sqBiWNU=; b=i7a6AzDeECq4ZX
	ddu7j7ezAy3235T+YRB5Uz2Uh8STgLxLxuq4jUaI6fGsiY/ptMK3WVP+ZziPBajQhc2YlqcmELKzM
	dri7X9zWJ2qQ0XxheE2Y2wLn36X5CxL+0uQuXmZqh8oHGPz6Jm1u9+EzXLPC+PO1OlpgaTXtMu+Gd
	ACriCoxgW335oN3G5+KAMP0hzPyc+Atsxz5856rbb/smwgJ+x30D7arqyjRPfilltP5znLzhgLRzT
	wj7on/MCqDGYsaH9gU7m3jOl0zECUUzqmtN0bbFQkOVoXlM9te7n95jfoDZTpLrkJhrLp5VOJev1q
	mWLcJKcGKlvOAKlsY9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3oJ-00000009eNq-2FTH;
	Thu, 04 Sep 2025 06:51:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3la-00000009djw-0Pix;
	Thu, 04 Sep 2025 06:48:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E8CE3601A4;
	Thu,  4 Sep 2025 06:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 107DBC4CEF0;
	Thu,  4 Sep 2025 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756968496;
	bh=WyIvrOVDNWf5X8qTZLswd5dlm0L7vHB640A5eFNHu8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VKF40z36T6RfMUh5C1AQd4nbgMrAgm0MeJh780thFPYJbKuSL0apzCOU7eP15cHUK
	 kKm5/Dejsjsy6TfPgf0zobV/ssA91J8UYmFvtpaRcUAWot99NvbxHuzx1JQEGKFI58
	 QiiL0ok7G5sQSlo8yvQkPEQuS88rzE1HcgPzWmNuI1Ito7lyj/jVpZ4v3jh3HHOZYA
	 SbnveT0uf1mhQkjGNzzBPrZiVfd1dH5QTeAL8Sj8fmkJFB/mA1ig3njRVkWqUw2Xbg
	 iEaN3gGOGDzF2JpzLMRwW1iT1xPXR8bgc1/8gSlkA+U/icaAippFP4/wLerAesmnDW
	 GWNpLB3ZFLi5Q==
Date: Thu, 4 Sep 2025 08:48:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org, 
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org, m.szyprowski@samsung.com, 
	s.nawrocki@samsung.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, dev.tailor@samsung.com, 
	faraz.ata@samsung.com, muhammed.ali@samsung.com, selvarasu.g@samsung.com
Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Message-ID: <20250904-interesting-lovely-ringtail-38bbef@kuoka>
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
 <CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
 <20250903073827.3015662-2-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903073827.3015662-2-pritam.sutar@samsung.com>
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

On Wed, Sep 03, 2025 at 01:08:22PM +0530, Pritam Manohar Sutar wrote:
> Document support for the USB20 phy found on the ExynosAutov920 SoC. The
> USB20 phy is functionally identical to that on the Exynos850 SoC, so no
> driver changes are needed to support this phy. However, add a dedicated
> compatible string for USB20 phy found in this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>

You just dropped all tags without explaining why.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
