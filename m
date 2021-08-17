Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EF47C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:42:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2D1760FA0
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:42:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D2D1760FA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XArZbqCjCDrKTN64TgOBHa+KhAnmb0gnZiDckULKk7c=; b=1Q36Oj0BvoMUg0
	Dsv469WYaYnSAiFOVrg5xbCCB+cy2Qyj60S371Y4Jn7/gN4c5MUW7miatNybsJEgZt9izy2J1+52r
	KU0WPpc+BULedZZzvKI9gjMeV2LvwAng+O+lAtpNO01E3dEZjf6lzDu8IrZC0P+zbskh7J18TeAxn
	dE14kgwdSjcK3ux45vynxO0gYCFrYvHAH+e0B3CE1z/dPMGSXC/S0Kx8T9/3r1JwAyIfkw7tzusaB
	0hkwYXHMXYK/NHkV4xXmofpt3j24Vtu2NAuZTz8vlRsKg2LDw5H2qv1jmbrBCopiLF3lDtc2nQy9B
	6Q2+E25TT8po7a+qGIqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFwYO-0029pL-BR; Tue, 17 Aug 2021 10:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFwYM-0029oY-75
 for linux-phy@lists.infradead.org; Tue, 17 Aug 2021 10:42:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8F4560F5C;
 Tue, 17 Aug 2021 10:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629196961;
 bh=qyvu3o7ZJY+LvfAyrXDyaik1HESpr7qHGm8p/EBGR+g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A4MKPkK++ZqbO136kmb8g5CAVT/lfqiHgU8NFLSvQjyeYh4h4n9Gamgs+qHMFjVuJ
 rqMESPWZc9aNYE6p81+a5RZvVGTCpgWfbNPkBSvoRzvF1DQqybaRFclgmxQU0sKMwg
 MLQWW9dQ9jxzqKIF4DLBQI/IWNCJ6m4H1QoMTidgWVsyf97qUgLEX4XpHNRl7dkNaV
 YDoQSg7PNEQb5xYsBFw4Nwc8i037hZyMWrL97iNBqC8NJWC8QR84LHu8AhIvftSyVC
 bKN2ugxjtM6koAAx6XtuWsgJq4eC4cUiwqFPFybk3u2GeV1aqyJc9MVRSFoPATGPTd
 hNKUmNw6lqTDA==
Date: Tue, 17 Aug 2021 16:12:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe
 PHY
Message-ID: <YRuSnXHSZHhBC40r@matsya>
References: <cover.1628755058.git.mchehab+huawei@kernel.org>
 <7788c5ead6d6f5a6f9e5faaee4460eb2149967c4.1628755058.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7788c5ead6d6f5a6f9e5faaee4460eb2149967c4.1628755058.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_034242_356361_058CBC12 
X-CRM114-Status: GOOD (  12.16  )
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

On 12-08-21, 10:02, Mauro Carvalho Chehab wrote:

> +static void hi3670_pcie_set_eyeparam(struct hi3670_pcie_phy *phy)
> +{
> +	u32 val;
> +
> +	val = kirin_apb_natural_phy_readl(phy,
> +					  RAWLANEN_DIG_PCS_XF_TX_OVRD_IN_1);

Maybe use one line for this (hint: we can go beyong 80 now)

> +static void hi3670_pcie_natural_cfg(struct hi3670_pcie_phy *phy)
> +{
> +	u32 val;
> +
> +	/* change 2p mem_ctrl */
> +	regmap_write(phy->apb, SOC_PCIECTRL_CTRL20_ADDR,
> +		     SOC_PCIECTRL_CTRL20_2P_MEM_CTRL);
> +
> +	regmap_read(phy->apb, SOC_PCIECTRL_CTRL7_ADDR, &val);
> +	val |= PCIE_PULL_UP_SYS_AUX_PWR_DET;
> +	regmap_write(phy->apb, SOC_PCIECTRL_CTRL7_ADDR, val);
> +
> +	/* output, pull down */
> +	regmap_read(phy->apb, SOC_PCIECTRL_CTRL12_ADDR, &val);
> +	val &= ~PCIE_OUTPUT_PULL_BITS;
> +	val |= PCIE_OUTPUT_PULL_DOWN;
> +	regmap_write(phy->apb, SOC_PCIECTRL_CTRL12_ADDR, val);
> +
> +	/* Handle phy_reset and lane0_reset to HW */
> +	val = hi3670_apb_phy_readl(phy, SOC_PCIEPHY_CTRL1_ADDR);
> +	val |= PCIEPHY_RESET_BIT;
> +	val &= ~PCIEPHY_PIPE_LINE0_RESET_BIT;
> +	hi3670_apb_phy_writel(phy, val, SOC_PCIEPHY_CTRL1_ADDR);
> +
> +	/* fix chip bug: TxDetectRx fail */
> +	val = hi3670_apb_phy_readl(phy, SOC_PCIEPHY_CTRL38_ADDR);
> +	val |= PCIE_TXDETECT_RX_FAIL;
> +	hi3670_apb_phy_writel(phy, val, SOC_PCIEPHY_CTRL38_ADDR);

maybe add a hi3670_apb_phy_updatel() so that above would become:

        hi3670_apb_phy_updatel(phy, val, mask);

> +static int hi3670_pcie_pll_ctrl(struct hi3670_pcie_phy *phy, bool enable)
> +{
> +	struct device *dev = phy->dev;
> +	u32 val;
> +	int time = PLL_CTRL_WAIT_TIME;
> +
> +	if (enable) {
> +		/* pd = 0 */
> +		val = hi3670_apb_phy_readl(phy, SOC_PCIEPHY_MMC1PLL_CTRL16);
> +		val &= ~PCIE_PHY_MMC1PLL_DISABLE;
> +		hi3670_apb_phy_writel(phy, val, SOC_PCIEPHY_MMC1PLL_CTRL16);
> +
> +		val = hi3670_apb_phy_readl(phy, SOC_PCIEPHY_MMC1PLL_STAT0);
> +
> +		/* choose FNPLL */
> +		while (!(val & FNPLL_HAS_LOCKED)) {
> +			if (!time) {
> +				dev_err(dev, "wait for pll_lock timeout\n");
> +				return -EINVAL;
> +			}
> +			time--;
> +			udelay(1);
> +			val = hi3670_apb_phy_readl(phy,
> +						   SOC_PCIEPHY_MMC1PLL_STAT0);

single line here too

> +static void hi3670_pcie_phyref_gt(struct hi3670_pcie_phy *phy, bool open)
> +{
> +	unsigned int val;
> +
> +	regmap_read(phy->crgctrl, CRGPERIPH_PCIECTRL0, &val);
> +
> +	if (open)
> +		val &= ~IO_OE_HARD_GT_MODE; // enable hard gt mode
> +	else
> +		val |= IO_OE_HARD_GT_MODE; // disable hard gt mode

pls change the comment style here and above, we dont use c99 style!

> +static int hi3670_pcie_phy_power_off(struct phy *generic_phy)
> +{
> +	struct hi3670_pcie_phy *phy = phy_get_drvdata(generic_phy);
> +
> +	hi3670_pcie_phy_oe_enable(phy, false);
> +
> +	hi3670_pcie_allclk_ctrl(phy, false);
> +
> +	/* Drop power supply for Host */
> +	regmap_write(phy->sysctrl, SCTRL_PCIE_CMOS_OFFSET, 0);
> +
> +	/* FIXME: calling it causes an Asynchronous SError interrupt */
> +//	kirin_pcie_clk_ctrl(phy, false);

when will you fix the fixme and pls remove the deadcode
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
