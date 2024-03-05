Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98588C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 14:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndDw4DXTedX01qVwobwgqGDSG5wuHLVI/Om5uTxG1YM=; b=VPeHVmfP/cti4c
	rXAScmu8kiW1Zkh1MnOgUAlIwt9p5gGUDLJOueHBkWFAqlYBsLcSog4Nea3z4b1MFjUSdA+9J46KW
	O8/u/fuZE3ZMxCdyqAYHTUpWnHyOKTAij7Jrr/KrkndX95lqNlXSxuq2kXZfAADJFdv++0bWlicTG
	JydRM4ALp5etJ1F9a3VqM0DEDCGwZx2NiTTQAXcHMF/qRNi04x9WfWezINh1dqgXWIyt4X65ukdBH
	OIVr1D4LDmwAc84GvC+d4k5yrVgPv6Fx2z44ITG/cu3ipqNAczmDAUQ/GqVTwJDDft1Z9Mnlx+roL
	oowlxhA4ETJASFM6KwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWDA-0000000E9w6-0VJf;
	Tue, 05 Mar 2024 14:56:08 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWD5-0000000E9tW-1pF0
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 14:56:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B12AACE1C51;
	Tue,  5 Mar 2024 14:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7C5FC433C7;
	Tue,  5 Mar 2024 14:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650561;
	bh=HziwUH5sW0NWbkfvO4gvMNkhVHphWUEl9FgSM+AIM/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vf3JfgX+5vuDM/TQz5RfdFAJ8XIQE/47D7O5EC4bSsewRcUA1qrpRQELmpFNQHDID
	 8IUU4mvdqCdAZnKc8H7x+L6HzvR11P+E8J4GM6+euTCUD5bB1ccvzfRwT4rCUeLLu2
	 YqWntEK0/7RuPzULk4zIknYyGy58JO7nsErrYTSG/3If6PWos9q/57wRjw2EjNXig9
	 M1Smsl3TeZSho0Ldxkra9hIS8N46r+FWgf9dvZ9i1/yiquz7cujdOu5bIYDAMuWTMO
	 vxEkvvHnEOmSK3biusXbFykVfPPT7J6+OlzUdJBgBhFKsxLZRSZjQ14qW/udm+SMu9
	 RvK3S2Nq3UPLg==
Date: Tue, 5 Mar 2024 08:55:58 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	David Yang <mmyangfl@gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: hisi-inno-usb2: convert to YAML
Message-ID: <20240305145558.GA3339636-robh@kernel.org>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
 <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_065603_777983_87C1F5E7 
X-CRM114-Status: GOOD (  12.11  )
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

On Tue, Mar 05, 2024 at 10:19:47AM +0800, Yang Xiwen wrote:
> convert the legacy text binding to YAML. While at it, remove
> "hisilicon,inno-usb2-phy" fallback compatible.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 91 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 -----------------
>  2 files changed, 91 insertions(+), 71 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
> new file mode 100644
> index 000000000000..ba82405ddf51
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon HiSTB SoCs INNO USB2 PHY device
> +
> +maintainers:
> +  - Yang Xiwen <forbidden405@outlook.com>
> +
> +properties:
> +  compatible:
> +    items:

If there's another version, you can drop 'items' (and its '-' below).

> +      - enum:
> +          - hisilicon,hi3798cv200-usb2-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
