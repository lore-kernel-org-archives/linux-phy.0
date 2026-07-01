Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 824A8C43602
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 13:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GL5ZCvUU8B6O9ToiRYmhc/C31cgcq3vZX8siYhLB2p8=; b=2zNehiLCFraiYg
	Jc4cbt0k7rYhhBF+DMP0xsPRr+E+0SWA+g7SmDi64329YdXDEICbLN38xqjMAJj21nl9mpXnXviE6
	X1D6bjNMeTvIIimrYUAahMEFAtDcauQ8sPikpEHT0Msv+4ghFQPgUaExc78R3bvRileGpTZhypN/s
	qQJPqvOU9PNKyjaevCq/ZaNtCPDNyV18/3QVDCVwi19B18XHa+xF0E34gDy0HJrciGxqXXa80s/T8
	pFKhL61IqthXEtOLmAZRjz2YxSlzBYQVOav7ifJgrnT6x2kh8ZBPA80hCVQBEWZ9AFESi3C4Or/xN
	L6mNkUl0OdYp1ZxLzTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuev-000000027D5-0tG5;
	Wed, 01 Jul 2026 13:07:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuet-000000027Cb-09rJ
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 13:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782911236;
	bh=egO+P7S6yZj5BJWfitgoiKOxhPzV42iE+OehiNwLm2s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WwMS5IBngxFJJs/3LwWc49EYO4C7SimfxbyxeN9GQAEZLtqtwk18ZhuBGXcBdp07K
	 BgoQFcsmgqNBkMdukII1kqMfanABYxDAf2i5K49cAb0gDerEa2jlSbeet4vxGEIuQJ
	 Xupr0D1WCv+lzdM/vP9l8xLLhTPtpDfhxFSbMm3uRiLbjyKC5CcnOGxm2/7u1efI52
	 FkJbFrtrSR1C6c5nPU0wBM+joqJTkgvt+601gYjpum3WTxus1KRDvt8/3rmiM0XYVy
	 b886YntTtHRyIAwGB0DJOS8zHQ0foIqFTxNIApXwgns7xS7OHlNztB6OUS+DBwk7kj
	 h8nkBfLNaIjwA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC83D17E0909;
	Wed,  1 Jul 2026 15:07:15 +0200 (CEST)
Message-ID: <f1a7844c-76dc-4170-84e7-c6116c2f4194@collabora.com>
Date: Wed, 1 Jul 2026 15:07:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
 <20260701122755.D031B1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701122755.D031B1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_060719_234149_8E7F3871 
X-CRM114-Status: GOOD (  13.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/1/26 14:27, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The device tree example will fail `make dt_binding_check` validation due to a 64-bit `reg` property at the root level without `#address-cells = <2>` and `#size-cells = <2>`.

That's not "Low", that should be "High" - failing dt_binding_check validation is
critical enough here.

Anyway, will allow some time for reviews before fixing that.

> --
> 
> commit c7b476cde050e045aaa56bae9dd7ecc7b3d34ced
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> dt-bindings: phy: Document MT8195 and MT8196 DisplayPort PHYs
> 
> This adds bindings for the DisplayPort and Embedded DisplayPort PHYs found in
> the MediaTek MT8195 and MT8196 SoCs. The PHY supports varying impedance
> calibrations for the signals to reach an optimal EYE signal pattern.
> 
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
>> new file mode 100644
>> index 0000000000000..5847963a7085e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
> 
> [ ... ]
> 
>> +examples:
>> +  - |
>> +    phy@1c500000 {
>> +        compatible = "mediatek,mt8195-dp-phy";
>> +        reg = <0 0x1c500000 0 0x2000>;
> 
> [Severity: Low]
> Looking at the examples section in mediatek,mt8195-dp-phy.yaml, will this
> example pass make dt_binding_check validation? The reg property contains 4
> cells, but since the example node is at the root level without a parent node
> explicitly defining #address-cells = <2> and #size-cells = <2>, the dummy
> root node defaults to 1 for both. This causes the 4 cells to be parsed as 2
> separate items, which violates the schema's maxItems: 1 constraint.
> 
>> +        #phy-cells = <0>;
>> +        nvmem-cells = <&edp_glb_bias_trim>, <&edp_clktx_impsel>,
>> +                      <&edp_imp_ln0_pmos>, <&edp_imp_ln0_nmos>,
>> +                      <&edp_imp_ln1_pmos>, <&edp_imp_ln1_nmos>,
>> +                      <&edp_imp_ln2_pmos>, <&edp_imp_ln2_nmos>,
>> +                      <&edp_imp_ln3_pmos>, <&edp_imp_ln3_nmos>;
>> +        nvmem-cell-names = "rbias-trim", "impedance-txclk",
>> +                           "impedance-lane0p", "impedance-lane0n",
>> +                           "impedance-lane1p", "impedance-lane1n",
>> +                           "impedance-lane2p", "impedance-lane2n",
>> +                           "impedance-lane3p", "impedance-lane3n";
>> +    };
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
