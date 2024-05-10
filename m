Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE1CC25B5F
	for <linux-phy@archiver.kernel.org>; Fri, 10 May 2024 12:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzIBcXQ87K7VxsHWIMUMGlNDsQgYfU74jpldE0Nrxa0=; b=ckqMlq2g5xcImB
	V37M5H1Wau2PmQcFo05yA7Y6N7GBJ4QW+G7/pOoF/OMT8YKn2xm3DXcUAvX/JhhMexBCLcaWENh3R
	4s7bN+UBsyZXb0HSYCrEpzsfKM1TpYedqxPasg3A7GtzRPqLYKeYhxUeJhhZn8pTTb8j6q38+Npt6
	Q1VmOkpmrnqe2OZUFCOsLseejXqicyz34S9NOGgQsNY4s4yU6LX4jb409x+2aCMxoGYPtwUFcnkiu
	uUIKIIsk3WpyRzL+Hpso5f4p4Hq3/eqkovvVoboR+hHDiRyOB0p3GMweCdzyTAKhH9fL2y7URqV+Q
	SOKiZy1wyYRTNjs+7QGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5PgB-00000005JBX-1Net;
	Fri, 10 May 2024 12:48:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5Pg2-00000005J8U-0tdN;
	Fri, 10 May 2024 12:48:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 107B361E66;
	Fri, 10 May 2024 12:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84EA9C113CC;
	Fri, 10 May 2024 12:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715345320;
	bh=V8xD1Koidl+pNdYoJfQFLAiAFVdTfdYB2dUbuhjigGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=elRO8c91+R0DCAXv7+SLp8jJSCziQgTrHU6dWu9qwHD6XqKBCLiHuCKHNSbrgbcQg
	 eJsQ0tFhCPQE2Y4O65z6uB4IrPGycaFkyuaOcB+YtDbvnjSSu49cJ0WU6MuQoLwWy3
	 VxtXhLaNg2Y2Mv5eWn/LmrdnOqvHRlj/7/dCfxp9tpC9NhIxjD1VnxnJ7Maz3PCPe7
	 LUqVWh0Ve9W2L+elph2QaZ0lc0RXMVlxbhOlTEuz25bOZUBWskDyl4CnteT7owXUgs
	 jlwx/DYGCq9Hoav6/8i3JoYd0Ef4TlYm3FuTRoOTqnsoenH6UTmIUB8FSOwqSIeAVX
	 EXF9K5LfHBQVg==
Date: Fri, 10 May 2024 07:48:38 -0500
From: Rob Herring <robh@kernel.org>
To: Liankun Yang <liankun.yang@mediatek.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	jitao.shi@mediatek.com, mac.shen@mediatek.com,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/2] Add dp PHY dt-bindings
Message-ID: <20240510124838.GA3916816-robh@kernel.org>
References: <20240510110523.12524-1-liankun.yang@mediatek.com>
 <20240510110523.12524-3-liankun.yang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240510110523.12524-3-liankun.yang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_054845_153636_8E4A43FE 
X-CRM114-Status: GOOD (  18.33  )
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

On Fri, May 10, 2024 at 07:04:15PM +0800, Liankun Yang wrote:
> Add dp PHY dt-bindings.
> 
> Changeds in v2:
> - Add dp PHY dt-bindings.
> https://patchwork.kernel.org/project/linux-mediatek/patch/
> 20240403040517.3279-1-liankun.yang@mediatek.com/
> 
> Signed-off-by: Liankun Yang <liankun.yang@mediatek.com>
> ---
>  .../display/mediatek/mediatek.phy-dp.yaml     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml

git refuses to apply your patch because 'new file mode 100644' is 
missing. You must have edited the patch or something.

If it did apply, you'd notice it fails testing.

> index 000000000000..476bc329363f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,phy-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Display Port Controller
> +
> +maintainers:
> +  - Mac shen <mac.shen@mediatek.com>
> +  - Liankun yang <Liankun.yang@mediatek.com>
> +
> +description: |
> +  Special settings need to be configured by MediaTek DP based on the actual
> +  hardware situation. For example, when using a certain brand's docking
> +  station for display projection, garbage may appear. Adjusting the specific
> +  ssc value can resolve this issue.
> +
> +properties:
> +  status: disabled
> +    description: |
> +      Since the DP driver has already registered the DP PHY device
> +      through mtk_dp_register_phy(), so the status is disabled.

What!? Please show me any other binding that has 'status' in it. Go read 
up on how to write bindings and what goes in them.

> +
> +  dp-ssc-setting:
> +    - ssc-delta-hbr
> +    description: Specific values are set based on the actual HW situation.
> +
> +required:
> +  - status
> +  - dp-ssc-setting
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        phy-dp@1c600000 {
> +          status = "disabled";
> +          dp-ssc-setting {
> +            ssc-delta-hbr = <0x01fe>;
> +          }
> +        };
> +    };
> -- 
> 2.18.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
