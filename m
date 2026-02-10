Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B0CE94627
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 01:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKodS32al7F94KtI9zbwrWE9S9gh05B/AtRT5wam7LQ=; b=ly3x4f641m+GZI
	R27IT4i+1q5IAimlrtWHjuS0pwMMjkVd2tgTX4aoZ4RjS8sIJ1PXB+eGxpDZZaW6S4QAmOKAjAcpV
	A+0qWoGvg0a5+osoptfzn0xEG4Tr2/WzZW47BHMa0tNQgkNccO+0ymQingnL2rCaOgAaBIGgzDhtq
	xWgj7TsQJw7rxHTM4GN2uh3OOy02wzHo+OqtKeGgShyRgMIPIoyhjbdCGnofpF1/trfBMGTHBRoAz
	Pkx9o38t4TR/p9k3q620VuMox+pvLYpdbP2v1eZoSp8RbDZMbCyQgybR/Olm/hKo/tjc6baTwE3FJ
	UyW8Y1qag0fnv91GKSsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpcZK-0000000GHUx-0UMo;
	Tue, 10 Feb 2026 01:29:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpcZG-0000000GHUG-2kfF;
	Tue, 10 Feb 2026 01:29:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 72E8142D57;
	Tue, 10 Feb 2026 01:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9B6DC116C6;
	Tue, 10 Feb 2026 01:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770686967;
	bh=vPtgEERLhI7QUhtgMm5j4VLfBY7NaUFPnI8j3SoVhu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/9YaCNww/VWJbyiYoqyRb2mg1WyMEGE331TuoF3q6kCtscpxoFiKym7AiVTaA3Ic
	 kk0S4qsyjWPSS2mKxAomH7M3IofnkyDsiRxBHSVOlF+kkwpnmNRg0b0L2rFNzQfpPz
	 s7o6Vj9NH6hf7e2QfCn/C/ziJ1M+NMWrQpMRCbXEsO/2JHYdgmocs92lp5wrUti6Gg
	 sqtixfIpF7vjzADDCJOHXtgxyHquG+hcReZGEXAklmygby+9UiTgXSIG3Jmjmxmkst
	 KWYNxWG/xNSABTeHxniwtMDSERXkFWnL5xDxaw3tbThZXBptRHhVkBQIXKLfSqXkQc
	 gDs4jTdxv5Qmw==
Date: Mon, 9 Feb 2026 19:29:26 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	Prasad Bolisetty <pbolisetty@axiado.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	SriNavmani A <srinavmani@axiado.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: arasan,sdhci: Add Axiado AX3000
 SoC
Message-ID: <177068696529.2278295.8145891834285711544.robh@kernel.org>
References: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-0-ef83b09325be@axiado.com>
 <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-1-ef83b09325be@axiado.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-1-ef83b09325be@axiado.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_172930_739038_3D88C7ED 
X-CRM114-Status: UNSURE (   8.91  )
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


On Fri, 06 Feb 2026 16:23:07 +0800, Tzu-Hao Wei wrote:
> From: SriNavmani A <srinavmani@axiado.com>
> 
> Add compatible strings for Axiado AX3000 SoC eMMC controller which
> is based on Arasan eMMC controller.
> 
> Signed-off-by: SriNavmani A <srinavmani@axiado.com>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
