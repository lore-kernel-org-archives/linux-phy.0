Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A20BCA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9VPNtDt/0WUf+vpFOiw5rswzaVLEe4JNR+3uABve+g=; b=YkqY7M8kIlC1d0
	bA1dBIjE5PPMQtGK2CoF9qKCkGP+pWmAITUMsFIAUE3KWVh87cKRyHDGhl6CSfmT1zidMxBef9o5f
	RiI8XBUmJSBsu9gkAOP/7yq2rICYlDtwtjllcM514aPO/rXQkENGhlEf7oZNiLGKYgUkucUIdkxba
	qxrjeydIUMxGGd8WiL+lqubvd3EeNcFt9ZkK2SEnZyhmnIfmFbXys6O7tC3YKgt5TUraqMTfp43xb
	2K9eWyuf2hPFqyzdwVYlky4igVUxYq7O0JYS0MGQ+vy89XTZ/nlI42BAK9Y/CC4OuBmUhTseHiPSv
	5qYar8wsCB4IVVqugWXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDeJk-0000000FuaU-3M6q;
	Mon, 05 Oct 2026 08:45:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDeJj-0000000FuaL-2onw
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 08:45:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BEE876022B;
	Mon,  5 Oct 2026 08:45:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C75C71F000FF;
	Mon,  5 Oct 2026 08:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791189902;
	bh=yu0jeX6WAJv4JtgUQ7WdlwZ7yT+kLcw/DK3wWTM8lF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ATksT9qcj606k9JWregl4eW5+phJ39KeCgq22MOa38VA5rhOTUdfYGpS/NXMkVrr1
	 NbwsUxVMQSQ1Yl1F2UkTYY1r+io9jqfAHQw6uQjuVrUSCS13AQsjp7VsRfENZaQEb1
	 XjNaieHCRvp5OQwuHxuUdowfrsO3MotjvwBmVk22w9zWwsVOwmIurTFdteBjZCR3K3
	 6i8bCwta0V5GhFYRHVWxljx1H1SzNvv41FCEklW1JaaZjC3YjZp2VhJhiWTQ68J4d9
	 4hUL0Ng/BVdUarII1B9Qms10p2M9CnmmHwqsYwTXJMhyHsRTRY/6lb6bDWKSuEUA90
	 9Ny2sKzI5vzVA==
Date: Mon, 5 Oct 2026 10:44:59 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Message-ID: <asNji2_GUda8x245@parshuram>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
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

On 13-09-26, 20:10, Krishna Kurapati wrote:
> In cases like USB High-speed phys which can be either USB2 or EUSB2, it is
> required to know the type of phy (rather than the operating mode) because
> DP and DM interrupt lines need to be configured differently for each of
> them.

Does the controller care? In preceding patch you defined the EUSB2 in dt
type, so this describes the hardware. So phy knows it is usb or eusb...
> 
> Add support to cache the PHY_TYPE and add the following helpers:
> 
> - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
> declare what type of PHY they are (in this case PHY_TYPE_EUSB2).
> 
> - phy_get_type() for the consumers (like USB controllers) to query the
> type of phy connected to them.

I am not convinced that this is the way to go... Driver already knows
the type and should use it...
we alreayd have mode, i am inclined to not say yes to adding type here

> 
> Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  include/linux/phy/phy.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..038c2b58bbe1 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -21,6 +21,8 @@
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  
> +#include <dt-bindings/phy/phy.h>
> +
>  struct phy;
>  
>  enum phy_mode {
> @@ -152,11 +154,13 @@ struct phy_ops {
>   * @bus_width: Data path width implemented by PHY
>   * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)
>   * @mode: PHY mode
> + * @type: PHY type
>   */
>  struct phy_attrs {
>  	u32			bus_width;
>  	u32			max_link_rate;
>  	enum phy_mode		mode;
> +	int			type;
>  };
>  
>  /**
> @@ -262,6 +266,20 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>  {
>  	return phy->attrs.mode;
>  }
> +
> +static inline int phy_get_type(struct phy *phy)
> +{
> +	if (phy)
> +		return phy->attrs.type;
> +
> +	return PHY_NONE;
> +}
> +
> +static inline void phy_set_type(struct phy *phy, int type)
> +{
> +	phy->attrs.type = type;
> +}
> +
>  int phy_reset(struct phy *phy);
>  int phy_calibrate(struct phy *phy);
>  int phy_notify_connect(struct phy *phy, int port);
> @@ -393,6 +411,15 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>  	return PHY_MODE_INVALID;
>  }
>  
> +static inline int phy_get_type(struct phy *phy)
> +{
> +	return PHY_NONE;
> +}
> +
> +static inline void phy_set_type(struct phy *phy, int type)
> +{
> +}
> +
>  static inline int phy_reset(struct phy *phy)
>  {
>  	if (!phy)
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
