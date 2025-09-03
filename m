Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C944CA100C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 07:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krr+UIOMV0V7/wDcoSbKyFE2kEoIMjeutwGbX1x/CDc=; b=fa36Zns8yn6afN
	sX9hEhQ9+zLCuNShDMw62EOQ6d0eq3keOwLa0i3ETN7oRfa3HlZOZCDXwnOwWwEcsdiFP12ethduq
	DGhOgR/p69Xcshxid5BWoWxmb/2p9Pd5dHhUg5ppElr02fFp8UxvBCTv29XM81A+wvDve4vdIPVGu
	yqokF5S8+tooKG3FZQbvgrbKld9TSQm5BNGVDlD9f6s7+MxfgyZBnohSZb0zLdit3Tg0+XS8Gj5yd
	QHjkRC8/hpxXqcDPUBRFhOr1v7lQB9AeHLmyaG/7RGuFoaFWHDldiVdzwf3BnEKUgHIAO5KO1n/jd
	NT+PBEtZ8eTkvt+ZcZ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthc7-00000004w1Y-3r7b;
	Wed, 03 Sep 2025 07:09:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthaO-00000004vCY-0qm1
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 07:07:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E7C6760233;
	Wed,  3 Sep 2025 07:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FFABC4CEF0;
	Wed,  3 Sep 2025 07:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756883234;
	bh=r9uAufaV0I/Ny+9etNBRBx9BD7ng0paiT3NI5GgaMjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tHvXhAOmr/rLGDm4F9bdO6aY3cih50qzjSyfLm4u0wOWjLZwYUCAVI+bfBzHFljGM
	 2Cr9bKWyfIhiDFBh+fR3sNJZJ2UBwkx9jBmoJwuZXmLZ86mp6Yb281iYGs2pwJ/3vS
	 Q9OwyBvED1coqdKIhxoDalBx2kN3hou0+4Gpg/lV+4iBWAK4Qk3bwWcNjd2vKYwCoJ
	 eNvt5lUe1ZlSpxGhEB1CTivK4pPaJwTGxXVzPQzPXBq5hYErmCoprUtSg4CuN/26hA
	 S+WQEmAwmqGzhJWPslYDndqeLs75ujjImT8w0YvemBs9fspM7SFPqOlkFZ0yILxO7e
	 JrQ7q66gKxp5Q==
Date: Wed, 3 Sep 2025 09:07:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
Message-ID: <20250903-amaranth-rhino-of-wind-3b8850@kuoka>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
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

On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> etc... without an USB-C connector and no PD events.

What is the use case for static mapping? Embedded HDMI port on T14s
laptop?

> 
> Add a property that documents the static lanes mapping to
> each underlying PHY to allow supporting boards directly
> connecting USB3 and DisplayPort lanes to the QMP Combo
> lanes.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,35 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,static-lanes-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 4
> +    items:
> +      enum:
> +        - 0 # Unconnected (PHY_NONE)
> +        - 4 # USB3 (PHY_TYPE_USB3)
> +        - 6 # DisplayPort (PHY_TYPE_DP)
> +    description:
> +      Describes the static mapping of the Combo PHY lanes, when not used
> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> +      be connected to the DP PHY.
> +      The numbers corresponds to the PHY Type the lanes are connected to.
> +      The possible combinations are
> +        <0 0 0 0> when none are connected
> +        <4 4 0 6> USB3 and DP single lane
> +        <4 4 6 6> USB3 and DP
> +        <6 6 4 4> DP and USB3
> +        <6 0 4 4> DP and USB3 single lane

> +        <4 4 0 0> USB3 Only
> +        <0 0 4 4> USB3 Only

Why do you need to handle here and in few other places mirrored case?
Isn't enough to just say you only want USB3? Maybe my first question
(what is usecase for this) answers this, though.

This looks similar to rockchip,dp-lane-mux, from the objective point of
view. Please look there and if it is really similar concept this would
warrant having it as generic property in video-interfaces for example.

I also wonder if this should not be stored in the endpoint.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
