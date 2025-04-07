Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26777C3601E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 16:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rir6RNgmDvL/kGwICEiiC88SmFkXTiI7GzpOLI9x7uw=; b=npAjNvfZRZeDf/NFuruTHPQ4Ci
	E4VsG7UD+6vZ6aNDfhIkI/tdXdxU+oaqX05XQq6e7vaDsCTxGzqZtvHE21fHkJfiFWZHIlkTg7sjT
	ELnJU0SUmXGlmnI1/P35WdEjJXMbcpsZ1zrzvuR2gNLYxRpm/qm//3RxoilYzsJSwiMgDd1p34q93
	q8hXzQCn+Mk3erg+udho5/TCV50rmXMgKHHsOgE6wcOx1MzT3S1pJea7156RjNVbBjK3Td5N/mtc5
	XS+6shiMR1zkrv1VYbhapXQwtutCEStEKtbS5bFVujXLDM9ZIO54ZGzFIpBFlx44ZnJWcg5dZ4DuP
	E/RXocbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pJz-00000001Aei-3ONm;
	Mon, 07 Apr 2025 16:27:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ltN-00000000LgO-0IzR
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 12:47:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E2A116113B;
	Mon,  7 Apr 2025 12:47:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0AA3C4CEDD;
	Mon,  7 Apr 2025 12:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744030076;
	bh=+IgO/E1P2X9+2yuR3YvVnFoL9ihGcuvDSLanfznzRRA=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kpT8c2cv1xcz5ZHuC/5PEcmSVqNA3JxyZM+ffBQBgaRZFR7rMxiV4lYnjdFRlihyw
	 i1VsA5BelYISKVWIYxkh16w1iduFyQkzYRF/wCNqhglkUVXRvWk6KpvzjBG+hnxEdg
	 ul97TWkE4jge8PmxIEGSMUPv+T7vRz7QBG1ZpvDc6dYQ6pB22L9KGwN3bWpG64Mx39
	 krGyHe6R3ZFoUIk2Itd7rzBGNRxZhKnEXiaOhkui+mQuYnFzruoV7lbE3GnFMz2eI8
	 4FTw35xUBvkdNBb1ruSsBs6oaXVPaXCakyBc0EWXNi4dbdmBaIwGcOEI/6iAGalDa3
	 0YcZ3G+JdTVug==
Date: Mon, 07 Apr 2025 07:47:54 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
In-Reply-To: <20250405174319.405975-1-mitltlatltl@gmail.com>
References: <20250405174319.405975-1-mitltlatltl@gmail.com>
Message-Id: <174402971815.1782886.2804255933275419532.robh@kernel.org>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg
 override handler
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


On Sun, 06 Apr 2025 01:43:18 +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overrided, it varies
> from devices and platforms, not only HS trasmit amplitude(0x51),
> HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57).
> 
> The device I plan to upstream also uses it, so I write the patch for
> it (Oneplus Pad Pro / Oneplus Pad 2, sm8650-mtp based).
> 
> In upstream, only Sony Xperia 1 V is using this, so fixing it for sony,
> in downstream, some crd, mtp, htk devices also use it, I have no
> such device, don't set it for them.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../qcom/sm8550-sony-xperia-yodo-pdx234.dts   |  5 +-
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 86 +++++++++++++++----
>  2 files changed, 72 insertions(+), 19 deletions(-)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/v6.14-rc6-274-gf4e35e5f940c (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250405174319.405975-1-mitltlatltl@gmail.com:

arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dtb: pmic@7 (qcom,pm8550): phy@fd00: 'qcom,host-param-override-seq', 'qcom,param-override-seq' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dtb: phy@fd00 (qcom,pm8550b-eusb2-repeater): 'qcom,host-param-override-seq', 'qcom,param-override-seq' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-repeater.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
