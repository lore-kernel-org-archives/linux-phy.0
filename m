Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD49C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 10:00:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A71460F6D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 10:00:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7A71460F6D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQIDegLtWGtHYHyYG6h38A3dgFhe5mZX0lSv4eDVGoY=; b=yOa5xjWRcu3xQv
	0Zk6cppD1ycg/Q+I6GII1JV3yFzVGxpypXfCIgBlLQ0vwjbE6tx6ACwMcjX67NUT7gW3uLajD8N49
	FJoEn5M2yGKy2EbDZx4zKmp/6npDMY+1OwDwIgmEHyFizuFtfBAdgEhSiM/7Dc32EW+xT07wwOge0
	fKoEWXtzLTLDg61OeKeLhzqhhZw7vY/IBCXdwqD8nhskT5w8Hi8Oxxy+YGeInvfxPseStdM3eLSR2
	Fsc7Nf58c92gMoe2gLDdHanERkTv7QZEiPJSqOXuk3T9VGwvYmhT482fJXJTLeQrpMzVm/HTqJKtK
	K2IZad+5tDxcnNfwDiXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSG6B-001CmZ-0R; Mon, 20 Sep 2021 10:00:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSG66-001Clo-Ep
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 10:00:29 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 829542000B;
 Mon, 20 Sep 2021 10:00:19 +0000 (UTC)
Date: Mon, 20 Sep 2021 12:00:19 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 andrew@lunn.ch, linux@armlinux.org.uk, f.fainelli@gmail.com,
 vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 02/12] net: phy: mchp: Add support for
 LAN8804 PHY
Message-ID: <YUhbs4P9jHKBYpYK@piout.net>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_030026_820547_08FC21DA 
X-CRM114-Status: GOOD (  20.91  )
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

Hi,

On 20/09/2021 11:52:08+0200, Horatiu Vultur wrote:
> The LAN8804 SKY has same features as that of LAN8804 SKY except that it

On of those part name should be different ;)

> doesn't support 1588, SyncE or Q-USGMII.
> 
> This PHY is found inside the LAN966X switches.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  drivers/net/phy/micrel.c   | 73 ++++++++++++++++++++++++++++++++++++++
>  include/linux/micrel_phy.h |  1 +
>  2 files changed, 74 insertions(+)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index 5c928f827173..34800b547004 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -1537,6 +1537,65 @@ static int ksz886x_cable_test_get_status(struct phy_device *phydev,
>  	return ret;
>  }
>  
> +#define LAN_EXT_PAGE_ACCESS_CONTROL			0x16
> +#define LAN_EXT_PAGE_ACCESS_ADDRESS_DATA		0x17
> +#define LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC		0x4000
> +
> +#define LAN8804_ALIGN_SWAP				0x4a
> +#define LAN8804_ALIGN_TX_A_B_SWAP			0x1
> +#define LAN8804_ALIGN_TX_A_B_SWAP_MASK			GENMASK(2, 0)
> +#define LAN8814_CLOCK_MANAGEMENT			0xd
> +#define LAN8814_LINK_QUALITY				0x8e
> +
> +static int lanphy_read_page_reg(struct phy_device *phydev, int page, u32 addr)
> +{
> +	u32 data;
> +
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL, page);
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, addr);
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL,
> +		  (page | LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC));
> +	data = phy_read(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA);
> +
> +	return data;
> +}
> +
> +static int lanphy_write_page_reg(struct phy_device *phydev, int page, u16 addr,
> +				 u16 val)
> +{
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL, page);
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, addr);
> +	phy_write(phydev, LAN_EXT_PAGE_ACCESS_CONTROL,
> +		  (page | LAN_EXT_PAGE_ACCESS_CTRL_EP_FUNC));
> +
> +	val = phy_write(phydev, LAN_EXT_PAGE_ACCESS_ADDRESS_DATA, val);
> +	if (val) {
> +		phydev_err(phydev, "Error: phy_write has returned error %d\n",
> +			   val);
> +		return val;
> +	}
> +	return 0;
> +}
> +
> +static int lan8804_config_init(struct phy_device *phydev)
> +{
> +	int val;
> +
> +	/* MDI-X setting for swap A,B transmit */
> +	val = lanphy_read_page_reg(phydev, 2, LAN8804_ALIGN_SWAP);
> +	val &= ~LAN8804_ALIGN_TX_A_B_SWAP_MASK;
> +	val |= LAN8804_ALIGN_TX_A_B_SWAP;
> +	lanphy_write_page_reg(phydev, 2, LAN8804_ALIGN_SWAP, val);
> +
> +	/* Make sure that the PHY will not stop generating the clock when the
> +	 * link partner goes down
> +	 */
> +	lanphy_write_page_reg(phydev, 31, LAN8814_CLOCK_MANAGEMENT, 0x27e);
> +	lanphy_read_page_reg(phydev, 1, LAN8814_LINK_QUALITY);
> +
> +	return 0;
> +}
> +
>  static struct phy_driver ksphy_driver[] = {
>  {
>  	.phy_id		= PHY_ID_KS8737,
> @@ -1718,6 +1777,20 @@ static struct phy_driver ksphy_driver[] = {
>  	.get_stats	= kszphy_get_stats,
>  	.suspend	= genphy_suspend,
>  	.resume		= kszphy_resume,
> +}, {
> +	.phy_id		= PHY_ID_LAN8804,
> +	.phy_id_mask	= MICREL_PHY_ID_MASK,
> +	.name		= "Microchip LAN966X Gigabit PHY",
> +	.config_init	= lan8804_config_init,
> +	.driver_data	= &ksz9021_type,
> +	.probe		= kszphy_probe,
> +	.soft_reset	= genphy_soft_reset,
> +	.read_status	= ksz9031_read_status,
> +	.get_sset_count	= kszphy_get_sset_count,
> +	.get_strings	= kszphy_get_strings,
> +	.get_stats	= kszphy_get_stats,
> +	.suspend	= genphy_suspend,
> +	.resume		= kszphy_resume,
>  }, {
>  	.phy_id		= PHY_ID_KSZ9131,
>  	.phy_id_mask	= MICREL_PHY_ID_MASK,
> diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
> index 3d43c60b49fa..1f7c33b2f5a3 100644
> --- a/include/linux/micrel_phy.h
> +++ b/include/linux/micrel_phy.h
> @@ -28,6 +28,7 @@
>  #define PHY_ID_KSZ9031		0x00221620
>  #define PHY_ID_KSZ9131		0x00221640
>  #define PHY_ID_LAN8814		0x00221660
> +#define PHY_ID_LAN8804		0x00221670
>  
>  #define PHY_ID_KSZ886X		0x00221430
>  #define PHY_ID_KSZ8863		0x00221435
> -- 
> 2.31.1
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
