Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D62E7491E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYW79tj2enhyXAlPuyrZc1LBTTLMIrG/yTyq7tVR7RA=; b=5Baf0VCem9ueX+
	rzbU7UOY90a3ucQHkWL7LTteESvRM6L6fI5d3Mbss9UYa/ftpvCmjw9d/ofWcCXhAqz7X9Lx1DZGN
	bKdHeaoJrnNip6rO7jA/woqhJdRYTKDLGAktp4EzEGTXCXDxg3m52pWFnXOlSn7yXlVKudEyMyqNe
	w+XwTmu+wEtSSlEVjeDbr95sXF+v4vE6EvYRlLj5m5rLTp7UJHx1206oh3IM1WbSj+d0nl6sUFi7q
	S7NESdM1SXsJY3Xz/HmkElorghJDh96jFkypXJ95q5NuqikBscqVb6S5gDXbld1jcm1yRHBgNbJQM
	cA812o999Cfj3QpExTpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJHM-0000000GXIL-1CAZ;
	Wed, 24 Dec 2025 07:27:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJHK-0000000GXHy-20iu
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 07:27:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4AEC843ABD;
	Wed, 24 Dec 2025 07:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 727DFC116B1;
	Wed, 24 Dec 2025 07:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561245;
	bh=JY2lcXxoeMbJufbIaJQJRdhuPVac3qiyPS8DddeWjJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cktWmzZ1FFP566/R2jDRETYoEABvEMR5YTW0m/eh+bZHMdgFnSfabSHT9Z5txNB53
	 J85BjTbYEAiCEErtcCwrKTVaYG+KoabiDIE0MatbzFIALlWSwEIrNCyurMR6oUz93Q
	 Qvby/ZC+GYWK3T3BJE88JuCJTgEEzx1vMolQraCV9fNE4sqOj7SV/4ZhycpMlvNeG+
	 FOW8ZFTOY3njimbxo4vPfXSJw65Z5J0Tnk7DCxY3O+MHT2G/mbP7spbesZDUk9nn8J
	 zI3prJ2FpmSFrpQ17R+ZbGFv4mgDHizGI1UctY+2bM+4+3qlaqsEsGGOEl6WPGzLSQ
	 3pLl5kVNvanvQ==
Date: Wed, 24 Dec 2025 12:57:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] phy: tegra: xusb: Fix USB2 port regulator disable
 logic
Message-ID: <aUuV2ZYKmM_aYgTv@vaman>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-2-51a2016d0be8@tecnico.ulisboa.pt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251204-diogo-tegra_phy-v1-2-51a2016d0be8@tecnico.ulisboa.pt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_232726_637578_C1008B8A 
X-CRM114-Status: GOOD (  25.21  )
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

On 04-12-25, 21:27, Diogo Ivo wrote:
> The USB2 PHY mode handling on Tegra210 incorrectly relied on
> regulator_is_enabled() when determining whether the VBUS supply should
> be disabled during role changes. This is because regulator_is_enabled()
> reports exactly what is states and not if there is an unbalanced number
> of calls between regulator_enable() and regulator_disable(). For
> example, regulator_is_enabled() always reports true on a fixed-regulator
> with no enable gpio, which is the case on the Pixel C.
> 
> This then leads to the PHY driver wrongfully calling regulator_disable()
> when transitioning from USB_ROLE_DEVICE to USB_ROLE_NONE since the driver
> did not previously call the corresponding regulator_enable().
> 
> Fix this by keeping track of the current role and updating the logic to
> disable the regulator only when the previous role was USB_ROLE_HOST.
> 
> While at it fix a small typo in a comment.

Never mix a patch with something else please. More imp if it is fix
which will go to rcX. Please send a different patch for typo

> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
>  drivers/phy/tegra/xusb-tegra210.c | 5 +++--
>  drivers/phy/tegra/xusb.h          | 1 +
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
> index 3409924498e9..63ad57d95514 100644
> --- a/drivers/phy/tegra/xusb-tegra210.c
> +++ b/drivers/phy/tegra/xusb-tegra210.c
> @@ -1934,9 +1934,9 @@ static int tegra210_usb2_phy_set_mode(struct phy *phy, enum phy_mode mode,
>  			/*
>  			 * When port is peripheral only or role transitions to
>  			 * USB_ROLE_NONE from USB_ROLE_DEVICE, regulator is not
> -			 * be enabled.
> +			 * enabled.
>  			 */
> -			if (regulator_is_enabled(port->supply))
> +			if (port->role == USB_ROLE_HOST)
>  				regulator_disable(port->supply);
>  
>  			tegra210_xusb_padctl_id_override(padctl, false);
> @@ -1944,6 +1944,7 @@ static int tegra210_usb2_phy_set_mode(struct phy *phy, enum phy_mode mode,
>  		}
>  	}
>  
> +	port->role = submode;
>  	mutex_unlock(&padctl->lock);
>  
>  	return err;
> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
> index d2b5f9565132..273af147dfd3 100644
> --- a/drivers/phy/tegra/xusb.h
> +++ b/drivers/phy/tegra/xusb.h
> @@ -317,6 +317,7 @@ struct tegra_xusb_usb2_port {
>  	enum usb_dr_mode mode;
>  	bool internal;
>  	int usb3_port_fake;
> +	enum usb_role role;
>  };

Jonathan can we get some t-b for these two patches

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
