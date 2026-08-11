Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533AFC5CFC1
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 11:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sk0SEms9DYltGqGMLaqpcHMnp//ZKwA1hhwiEI6GAg=; b=zHWgMqouH8efJv
	fwdilvFuyj84ZZMkPy/oNCtavjYu1KultYmEVTt77R/KaMOnfiO75LYGsljTfa80N+u6EH7HdRLm5
	cn1+mOSW87QeBS+Hoc+Xm7aSTEEiI64WsoNyn6sNFfcYX04kWIbX1MjxhWYsJJ4+ijs/UKE2qFeOu
	E2J0DvZddQH055sRX80iVwScIqbU2GkqsfF7aUG8s6uQeSQM0RNaoAVvfRiahGXTtKvF+zBS7LjzC
	/cKalQovZjrTC2isJmoo+hUPmOw2NZTj51bcUPwSuwJ/pxsqn5ugisP5Qef0zfJ0XTt4yf0JgPM5h
	DaU2yCgxtxX/LEVqzpIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtkfI-0000000DvxW-0IME;
	Tue, 11 Aug 2026 11:29:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtkfG-0000000DvxO-1ARN
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 11:29:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AD77C43A31;
	Tue, 11 Aug 2026 11:29:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8B371F00A3D;
	Tue, 11 Aug 2026 11:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786447741;
	bh=+ReldJ+REYWGNupKfeUWl5cKXnWwXpHp3Exfh7zUEhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eCsUSuF9fG9DHiEW/J4WSRSaKMwo4oFhVcQdalX10eEgRCEdMVbjWTFxIUbYRbqky
	 CviPL+udHDfqP9PRRXQMZdUYFH5Xagzmb+nXkhefIhoZoIm9hfu1MZVLWU55hX5drW
	 Nbz6VbLWNZitWykJBv+BPL0pMMb8YJ+I1MPYpDUIwbWKByvjALng10Xajjmb75N5qQ
	 DHDe/Msm6OirBE97dMCDwEowzkVKHBN3Tq2i7zJp3rD2C72bWiActWKa0wVg17K18+
	 MDmjVa+f9WpHa0xc0BfXbGqiF5dKp/M+pOoVmf6Lbt0MAO0o0tLXNuAvM54jmOUVYy
	 S4y2FA1puVZUA==
Date: Tue, 11 Aug 2026 16:58:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	usb4-upstream@oss.qualcomm.com,
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
	Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] phy: core: Define TBT phy_mode
Message-ID: <ansHeYjQASWGiAfT@vaman>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-2-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-topic-usb4phy-v3-2-ccf0f7ea98b5@oss.qualcomm.com>
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

On 30-07-26, 16:19, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There exist OS-accessible USB4 and Thunderbolt PHYs that need specific
> configuration. Define a new phy_mode for them.
> 
> Currently, USB4 and TBT3 are defined as submodes, because they're quite
> distinct, most visibly in the electrical/analog aspects (slightly
> different frequencies, timings, etc.). This results in a need to make
> the PHY aware of the actual mode needed (at least in the Qualcomm
> implementation, but I believe that'll be a general need).
> 
> Newer versions of TBT are basically supersets of USB4 with higher
> host-side requirements, so these are not defined. This can always be
> changed as necessary.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  include/linux/phy/phy-tbt.h | 14 ++++++++++++++

can the file be phy-thunderbolt.h please.

>  include/linux/phy/phy.h     |  2 ++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
> new file mode 100644
> index 000000000000..5f48059814e1
> --- /dev/null
> +++ b/include/linux/phy/phy-tbt.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __PHY_TBT_H_
> +#define __PHY_TBT_H_
> +
> +enum tbt_phy_submode {
> +	PHY_SUBMODE_TBT3,
> +	PHY_SUBMODE_USB4,
> +};

tbt here is just fine

> +
> +#endif
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..26a91c070f8c 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -20,6 +20,7 @@
>  #include <linux/phy/phy-hdmi.h>
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
> +#include <linux/phy/phy-tbt.h>
>  
>  struct phy;
>  
> @@ -45,6 +46,7 @@ enum phy_mode {
>  	PHY_MODE_LVDS,
>  	PHY_MODE_DP,
>  	PHY_MODE_HDMI,
> +	PHY_MODE_TBT,
>  };
>  
>  enum phy_media {
> 
> -- 
> 2.55.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
