Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8996AC7115D
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 12:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yl2QGpp9R09HVGGMj0+3ZrKjnFRWtK7eT9OVgpYL8pI=; b=qp2SyqXkmmC07J
	BvL9OvlY0UF01Z2FV8Z1r96Oqc0XUHnP3MYocBU/VHLJFDbZrpWtHS1vkkVR9cGg9l68lDTLgeEZ1
	yQ/DwL59YTR9xVR4YdrhFT+1K7G7lvzu69hqj7bdBMNVermBRXbhwtZvJ10VW3pUD1Se4ATYVlhc0
	eT5NjU6bhFwOl7AwwPLB2O9Y0RT2QxdSO6QU1vzIYhv5+puD05SeBF66Hqw0Ogo5P38r+voCSqXtt
	o7nodEXCtubv3rcs7lfhNiOQDG+uzuh1HhZ064cs/M6L6LTCpNmL2+a1ZPYELNDVpU5QY5Xir0npM
	QvVuBWK0KiPS75i/XQTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbJZ-0000000Fc7N-0Tzn;
	Fri, 20 Jun 2025 12:57:53 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaUE-0000000FX2B-2HtL;
	Fri, 20 Jun 2025 12:04:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E59D106F;
	Fri, 20 Jun 2025 05:04:30 -0700 (PDT)
Received: from [192.168.1.102] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD2173F58B;
	Fri, 20 Jun 2025 05:04:47 -0700 (PDT)
Message-ID: <4c2c9a15-50bc-4a89-b5fe-d9014657fca7@arm.com>
Date: Fri, 20 Jun 2025 13:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v5 3/4] phy: rockchip-pcie: Enable all four lanes
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749833986.git.geraldogabriel@gmail.com>
 <ce661babb3e2f08c8b28554ccb5508da503db7ba.1749833987.git.geraldogabriel@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <ce661babb3e2f08c8b28554ccb5508da503db7ba.1749833987.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_050450_632035_BAD5A28A 
X-CRM114-Status: GOOD (  14.17  )
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

On 2025-06-13 6:03 pm, Geraldo Nascimento wrote:
> Current code enables only Lane 0 because pwr_cnt will be incremented
> on first call to the function. Use for-loop to enable all 4 lanes
> through GRF.

If this was really necessary, then surely it would also need the 
equivalent changes in rockchip_pcie_phy_power_off() too?

However, I'm not sure it *is* necessary - the NVMe on my RK3399 board 
happily claims to be using an x4 link, so I stuck a print of inst->index 
in this function, and sure enough I do see it being called for each 
instance already:

[    1.737479] phy phy-ff770000.syscon:pcie-phy.1: power_on 0
[    1.738810] phy phy-ff770000.syscon:pcie-phy.2: power_on 1
[    1.745193] phy phy-ff770000.syscon:pcie-phy.3: power_on 2
[    1.745196] phy phy-ff770000.syscon:pcie-phy.4: power_on 3

Thanks,
Robin.

> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-pcie.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index bd44af36c67a..48bcc7d2b33b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -176,11 +176,13 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
>   				   PHY_CFG_ADDR_MASK,
>   				   PHY_CFG_ADDR_SHIFT));
>   
> -	regmap_write(rk_phy->reg_base,
> -		     rk_phy->phy_data->pcie_laneoff,
> -		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
> -				   PHY_LANE_IDLE_MASK,
> -				   PHY_LANE_IDLE_A_SHIFT + inst->index));
> +	for (int i=0; i < PHY_MAX_LANE_NUM; i++) {
> +		regmap_write(rk_phy->reg_base,
> +			     rk_phy->phy_data->pcie_laneoff,
> +			     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
> +					   PHY_LANE_IDLE_MASK,
> +					   PHY_LANE_IDLE_A_SHIFT + i));
> +	}
>   
>   	/*
>   	 * No documented timeout value for phy operation below,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
