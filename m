Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B55C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Db07msEWOte+vSLRPtNmd5EJfNRARcqSUKjYCjfB9vY=; b=WHD0vkOjzU7GnN
	pEQAlnBkIBaZbl4KaXfdIu6Ak85TALREy1kXUjXOUqN8g1Uh8rv1vo8sZnS6dwJd+072T/Lm8H08l
	ZrUmQ/lESlGaWZCyX9LzJVja01+TfxPPvBlk3lCNfnqnAYFLjpAAQZhHf2zvjOkOj7cuq3pO5yPpw
	RGrMI23y+G39XPBz/JQvDcARrQC9hZOmwYdLUG+B79WvmuYQkMH+VrHcblqpa6jMAWcdOn3dNlHY7
	p6WlnJI4/2BHSGY752kMs925WAms5ahNY4bUctns+vPp+0rCVPevkYKhpkPF5XmQBvrTvCj37x+ok
	PBerRO9CNCkGC/4654gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QrY-000000061qW-2Lvs;
	Tue, 15 Sep 2026 10:58:08 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QrW-000000061q7-140m
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789469883;
	bh=9Dqd/3myOp0uOV2PXIihuLG0UGPpoBxXIqC+sUB4vUo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k3lw390qlA8dh62t0WimAyIDtFI+jdt/LuX0VsOiqXfFSzkodpqr5G6Lht5+HKuth
	 kp4pPc2kLGnP/RyfOuXs9x1ztpAb9jZV+gYXA/RAQZssrkxbJAfklb8DHi3mwXpdr8
	 MT9qLvu6TCoNqfqq+vkMf4WS241psWZpIwQcCKolVdzl8d+TAV+4N1CTqr9zayD8o0
	 +dE3/2RN+T7Ih0lXe2klHkhnCmUGPwJAbp2Z38LHuA/gw9Wn9v8YTkNUSuNEbYxEns
	 ydYVn8OPrw95llTMqwr2dtMYYXgAUYaMja+mkrYzPRiL8sWNklx6p5BrmgOiOXTfbH
	 +vQkQ6VzrEYCg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1077B17E089A;
	Tue, 15 Sep 2026 12:58:03 +0200 (CEST)
Message-ID: <0255ffba-ce22-4065-a94e-dc2e0e635b62@collabora.com>
Date: Tue, 15 Sep 2026 12:58:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Document MT8196 MediaTek
 PCI-Express Gen4 S-PHY
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org,
 devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh@kernel.org
References: <20260915101022.23852-1-angelogioacchino.delregno@collabora.com>
 <20260915101022.23852-2-angelogioacchino.delregno@collabora.com>
 <20260915101828.D552F1F000FF@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260915101828.D552F1F000FF@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_035806_478189_E219A399 
X-CRM114-Status: GOOD (  18.14  )
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

On 9/15/26 12:18, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] dt-bindings: strict array prevents 1-lane S-PHY nvmem configuration
> --
> 
> commit c6841c20d82c1db99761e33c189c44960b8b5284
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> dt-bindings: phy: Document MT8196 MediaTek PCI-Express Gen4 S-PHY
> 
> This commit adds device tree bindings for the MediaTek PCI-Express Gen4 S-PHY
> found in newer SoCs like the MT8196. The PHY supports link rates up to 16.0
> GT/s per lane, up to two lanes, and both Root Complex and End Point modes.
> 
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml
>> new file mode 100644
>> index 0000000000000..3fd1bfbc3822f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml
> [ ... ]
>> +  nvmem-cell-names:
>> +    items:
>> +      - const: int-r
> [ ... ]
>> +      - const: tx-lanes-pmos
>> +      - const: tx-lanes-nmos
>> +      - const: tx-ln0-rswn
>> +      - const: tx-ln1-rswn
>> +      - const: cal-version
> 
> [Severity: Medium]
> Does this rigid array structure prevent valid 1-lane S-PHY configurations from
> passing schema validation?
> 
> Defining a device tree node for a 1-lane PHY typically involves omitting the
> unused "tx-ln1-rswn" eFuse cell. However, because the items array enforces
> strict positional constraints, omitting that entry shifts the index of the
> global "cal-version" cell. This will cause dt_binding_check to fail for
> legitimate 1-lane configurations.
> 
> Could the schema be adjusted to allow the second lane's eFuse cell to be
> optional without breaking the expected position of "cal-version"? Otherwise,
> it seems DT authors are forced to either drop calibration entirely or include
> irrelevant dummy eFuse references.

In the single lane case, one lane is usually used for USB3, but the calibrations
are specific to the interface, so the second lane calibration is always present
even if only one is used.

Besides, this is done on purpose to enforce having all calibration handles in the
SoC DTSI file, because the second lane being used for this or that is something
board specific - so this avoids the (too usual) mistake of enabling two-lane PCIe
on a board while only one lane has calibration (which means none get calibrated).

So yes, it could be done, but it wasn't done on purpose.

In any case, should the need to declare only one lane calibration, it's still
something that can be done later with an if block.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
