Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C1ACD1292
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 06:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLflx+NbpqTXPJn20WojXqOOJbodPA5MZIxOOlSfIDA=; b=HjggDYhoaUSyCD
	uL7U1bOo21FVzNoojilkTXUBKgrDTUiVBTrZSSxZmadU/A4xK5D/N3HZ9MB3s3n+mKhobT53zfzJs
	Jebf4FmtWvnutstWoJw1+DZYRsqx/vKJh54my+knnqzSnLNaxW0ZkA8eMaOrZPgSCwojjCUU5vgd6
	vp5b+tmcIK3dHW2NP3J5AalR5foO7zuOBWFO+fhmDlCsU48+OprZW8/Sd4PY6RxWEPfa59ibcC4KZ
	QcpadEG0KEL6r3WJcD28w9vVmX3xcX6waBdzzffFtldsrRIMlDHbSyKm4bzguipEKOrSQMc/DpQ7U
	rS+tlhQoOWTipUB2Z2sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszOr-00000009n0z-2ZxE;
	Sat, 06 Apr 2024 06:19:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszOo-00000009n0X-13sU
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 06:19:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7D85BCE1D04;
	Sat,  6 Apr 2024 06:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00D77C433F1;
	Sat,  6 Apr 2024 06:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712384369;
	bh=BKVdiYErZ9XrHA0EsA8j2gej/sXqFkeM9j1uQgMrlqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vKwRaDhvqH+xk/9UPnskgcwDdWb66U8cd6zZLQB0t06d/NyNKcawE7zW5mPe3BI20
	 pNuSXcHAnOsEtkxqYAWu7Vm8jMBD/Oqwn9HH6MhKPlkgSIAoRhRbN4DoXLo3lTx2zv
	 1DSVoJbe0JH9i4G2j5zKBBBZrigjXYwskKf9Uz/c1ry9optvrb9nKlZz1dTtiAAr6/
	 8INpRBRNgrTUDcpkB814HBkdFFRVL7yVeZcomZPolkNigo0nPiDnxLIlwU9CXDAkAQ
	 9gX5gdNR91+70VslG5HgHzUkh+HzAHJv3rBHcFXezJmMARlfXvkifxg/byC7ux7lyA
	 sMtZOClIvHdgw==
Date: Sat, 6 Apr 2024 11:49:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	David Yang <mmyangfl@gmail.com>
Subject: Re: [PATCH v5 5/5] phy: hisilicon: hisi-inno-phy: add support for
 Hi3798MV200 INNO PHY
Message-ID: <ZhDpbaPOaqs0uln4@matsya>
References: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
 <20240305-inno-phy-v5-5-dc1cb130ea08@outlook.com>
 <ZhAsXUjifTD6HeKx@matsya>
 <SEZPR06MB695903034B7404FBEA750A9196032@SEZPR06MB6959.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SEZPR06MB695903034B7404FBEA750A9196032@SEZPR06MB6959.apcprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_231934_672326_BBB204C8 
X-CRM114-Status: GOOD (  40.64  )
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

On 06-04-24, 01:53, Yang Xiwen wrote:
> On 4/6/2024 12:52 AM, Vinod Koul wrote:
> > On 05-03-24, 21:32, Yang Xiwen via B4 Relay wrote:
> > > From: Yang Xiwen <forbidden405@outlook.com>
> > That is quite an email id!
> > 
> > > Direct MMIO resgiter access is used by Hi3798MV200. For other models,
> > > of_iomap() returns NULL due to insufficient length. So they are
> > so how is that fixed... Pls describe the change...
> 
> 
> The commit log will be rewritten in next revision. I'll try to emphasize the
> PHY and its configuration interface briefly. Though i don't have access to
> the datasheets and TRM so most things can not be verified.
> 
> 
> For CV200 and MV100 INNO PHY, the configuration interface is attached to
> PERICTRL(Peripheral Control Block). So we just use a register called
> PERI_USB3 to configure the PHY. The bus reset, clock are all controlled in
> PERI_USB3 register. To read/write to a register of the PHY, a special
> sequence of register writes and reads are needed, which was implemented in
> this driver.
> 
> 
> But for MV200 INNO PHY, the configuration interface is attached directly to
> system bus(MMIO). The bus clocks and resets are controlled via Clock Reset
> Generator(CRG). Now we have to control them with the help of linux clk and
> reset framework because they are provided by other modules.

Okay better log is welcome

> 
> 
> > > unaffected.
> > > 
> > > Also Hi3798MV200 INNO PHY has an extra reset required to be deasserted,
> > > switch to reset_control_array_*() APIs for that.
> 
> 
> The commit msg is misleading here. There is no extra reset actually. The
> reset also exist for existing users. The initial author just decided to
> manage it in the hisi_inno_phy_write_reg() routine(without using
> reset_control_* APIs) and omit it in the binding.
> 
> 
> > That probably should be a different patch
> 
> 
> I guess so. From my point of view, the whole patch is to introduce the
> support for Hi3798MV200 variant of the INNO PHY. So i've decided to squash
> the two changes into one single commit.

Not really you can build smaller reviewable changes leading up to adding
the Hi3798MV200 support

> 
> 
> > 
> > > Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> > > ---
> > >   drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 66 ++++++++++++++++++------------
> > >   1 file changed, 40 insertions(+), 26 deletions(-)
> > > 
> > > diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> > > index b7e740eb4752..df154cd99ed8 100644
> > > --- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> > > +++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> > > @@ -10,6 +10,7 @@
> > >   #include <linux/io.h>
> > >   #include <linux/module.h>
> > >   #include <linux/of.h>
> > > +#include <linux/of_address.h>
> > >   #include <linux/phy/phy.h>
> > >   #include <linux/platform_device.h>
> > >   #include <linux/reset.h>
> > > @@ -24,6 +25,7 @@
> > >   #define PHY_TYPE_0	0
> > >   #define PHY_TYPE_1	1
> > > +#define PHY_TYPE_MMIO	2
> > >   #define PHY_TEST_DATA		GENMASK(7, 0)
> > >   #define PHY_TEST_ADDR_OFFSET	8
> > > @@ -43,6 +45,7 @@
> > >   #define PHY_CLK_ENABLE		BIT(2)
> > >   struct hisi_inno_phy_port {
> > > +	void __iomem *base;
> > >   	struct reset_control *utmi_rst;
> > >   	struct hisi_inno_phy_priv *priv;
> > >   };
> > > @@ -50,7 +53,7 @@ struct hisi_inno_phy_port {
> > >   struct hisi_inno_phy_priv {
> > >   	void __iomem *mmio;
> > >   	struct clk *ref_clk;
> > > -	struct reset_control *por_rst;
> > > +	struct reset_control *rsts;
> > >   	unsigned int type;
> > >   	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
> > >   };
> > > @@ -62,26 +65,31 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
> > >   	u32 val;
> > >   	u32 value;
> > > -	if (priv->type == PHY_TYPE_0)
> > > -		val = (data & PHY_TEST_DATA) |
> > > -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
> > > -		      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
> > > -		      PHY0_TEST_WREN | PHY0_TEST_RST;
> > > -	else
> > > -		val = (data & PHY_TEST_DATA) |
> > > -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
> > > -		      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
> > > -		      PHY1_TEST_WREN | PHY1_TEST_RST;
> > > -	writel(val, reg);
> > > -
> > > -	value = val;
> > > -	if (priv->type == PHY_TYPE_0)
> > > -		value |= PHY0_TEST_CLK;
> > > -	else
> > > -		value |= PHY1_TEST_CLK;
> > > -	writel(value, reg);
> > > -
> > > -	writel(val, reg);
> > > +	if (priv->ports[port].base)
> > > +		/* FIXME: fill stride in priv */
> > when?
> 
> 
> I'm not sure. Maybe until some other users with stride other than 3? I don't
> have much knowledge about other SoCs.
> 
> 
> Maybe replace the FIXME here with some additional information.

Better

> 
> 
> > 
> > > +		writel(data, (u32 *)priv->ports[port].base + addr);
> > > +	else {
> > > +		if (priv->type == PHY_TYPE_0)
> > > +			val = (data & PHY_TEST_DATA) |
> > > +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
> > > +			      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
> > > +			      PHY0_TEST_WREN | PHY0_TEST_RST;
> > > +		else
> > > +			val = (data & PHY_TEST_DATA) |
> > > +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
> > > +			      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
> > > +			      PHY1_TEST_WREN | PHY1_TEST_RST;
> > > +		writel(val, reg);
> > > +
> > > +		value = val;
> > > +		if (priv->type == PHY_TYPE_0)
> > > +			value |= PHY0_TEST_CLK;
> > > +		else
> > > +			value |= PHY1_TEST_CLK;
> > > +		writel(value, reg);
> > > +
> > > +		writel(val, reg);
> > val and value are very helpful variables, do consider naming them
> > better!
> 
> 
> I'll consider renaming them in the next revision. Maybe val and val2? They
> are just some temp vars to store register values.

Yeah, that might be better

> 
> 
> > 
> > > +	}
> > >   }
> > >   static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
> > > @@ -104,7 +112,7 @@ static int hisi_inno_phy_init(struct phy *phy)
> > >   		return ret;
> > >   	udelay(REF_CLK_STABLE_TIME);
> > > -	reset_control_deassert(priv->por_rst);
> > > +	reset_control_deassert(priv->rsts);
> > >   	udelay(POR_RST_COMPLETE_TIME);
> > >   	/* Set up phy registers */
> > > @@ -122,7 +130,7 @@ static int hisi_inno_phy_exit(struct phy *phy)
> > >   	struct hisi_inno_phy_priv *priv = port->priv;
> > >   	reset_control_assert(port->utmi_rst);
> > > -	reset_control_assert(priv->por_rst);
> > > +	reset_control_assert(priv->rsts);
> > >   	clk_disable_unprepare(priv->ref_clk);
> > >   	return 0;
> > > @@ -158,15 +166,16 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
> > >   	if (IS_ERR(priv->ref_clk))
> > >   		return PTR_ERR(priv->ref_clk);
> > > -	priv->por_rst = devm_reset_control_get_exclusive(dev, NULL);
> > > -	if (IS_ERR(priv->por_rst))
> > > -		return PTR_ERR(priv->por_rst);
> > > +	priv->rsts = devm_reset_control_array_get_exclusive(dev);
> > > +	if (IS_ERR(priv->rsts))
> > > +		return PTR_ERR(priv->rsts);
> > >   	priv->type = (uintptr_t) of_device_get_match_data(dev);
> > >   	for_each_child_of_node(np, child) {
> > >   		struct reset_control *rst;
> > >   		struct phy *phy;
> > > +		void __iomem *base;
> > >   		rst = of_reset_control_get_exclusive(child, NULL);
> > >   		if (IS_ERR(rst)) {
> > > @@ -174,7 +183,10 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
> > >   			return PTR_ERR(rst);
> > >   		}
> > > +		base = of_iomap(child, 0);
> > > +
> > >   		priv->ports[i].utmi_rst = rst;
> > > +		priv->ports[i].base = base;
> > >   		priv->ports[i].priv = priv;
> > >   		phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
> > > @@ -205,6 +217,8 @@ static const struct of_device_id hisi_inno_phy_of_match[] = {
> > >   	  .data = (void *) PHY_TYPE_0 },
> > >   	{ .compatible = "hisilicon,hi3798mv100-usb2-phy",
> > >   	  .data = (void *) PHY_TYPE_1 },
> > > +	{ .compatible = "hisilicon,hi3798mv200-usb2-phy",
> > > +	  .data = (void *) PHY_TYPE_MMIO },
> > >   	{ },
> > >   };
> > >   MODULE_DEVICE_TABLE(of, hisi_inno_phy_of_match);
> > > 
> > > -- 
> > > 2.43.0
> 
> 
> -- 
> Regards,
> Yang Xiwen

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
