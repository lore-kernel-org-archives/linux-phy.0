Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 912AFCFB440
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8tlGx1eBv04mU5a6WrGV1DXCW9oj6JIXw3kFbYQkkk=; b=McmVvtHsA4URz0
	d7OkUZDoCNahguboYcdkfc64yyqSOObeQ+E0ddHIl8jx8av3NPRJ2csEKeF+ezZC5y77vkM6hZzfN
	lQfh95lEJaJ9ixI/0Tw6KJI280ECNyXeUcZecVDiShl4qzCBjnkM8XkuP85KWrU5DuG7F7QmXWvEW
	9Q8yRAf1ceggu/vikyqDltg/dS4w/wNkQH2UhW1pM6bj0IGRzAjI6XHn/ykawvTLlxCVTdAGdXAO5
	NYwqm1SVniptcMbE/NoQAqBiKGKD05Knda461tLQKA2ajBd+VrVEXnVN2Zu8w+tAg9qD5BpZtbna5
	lH9bDpzIhJZrZe4d84/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtY3-00000003dOM-1EiM;
	Mon, 07 Oct 2024 19:37:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtT5-00000003cXN-41K4
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 19:32:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B8F35C3FD9;
	Mon,  7 Oct 2024 19:32:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 263AEC4CEC6;
	Mon,  7 Oct 2024 19:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728329551;
	bh=l0344lb7sAKzU6FbK07cgn2OXfhsUAKrXGypXk3kE3k=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=qtkAyUtzgvbziGHenrsSF9ZcydsnIhS9iSNgWmAIaJ7/g0CUMSddIwhTm25YWqOvK
	 ZeBnlFDLmWFy2FRXUxRQ+MMMgCISrJZJrf7UBOxGJzsM8FFqmchHhG5BNIM+7dWPyi
	 SSsgdDASLo+hO29gBDeecieb05+XL6Z79xh0e/Gw9T1ABfDrVJ+gHaHzbt5/i7+Mxm
	 ef+AH/jN0DtG/MG2mmlgXUPNrWVnH4sk72kzCaNUvmQrmry/12oHfOaLrjPeRsxzuq
	 GPtWpQJMRSPfRG1OIwY3pvAs8lVor0NAzNrX6bumZL8JjcWxxdVIfFkVYq+2RRIieQ
	 N4EsbnIvflJRA==
Message-ID: <e4ab7c7f-b5a1-4507-add7-862c18b09995@kernel.org>
Date: Mon, 7 Oct 2024 21:32:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: Realtek Otto SerDes driver
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
 linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
 devicetree@vger.kernel.org
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-3-markus.stockhausen@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241007163623.3274510-3-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_123232_133818_B6E92675 
X-CRM114-Status: GOOD (  19.64  )
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

On 07/10/2024 18:36, Markus Stockhausen wrote:
> The Realtek Otto platform is a series of 4 different MIPS32 based network
> switch SoCs. They consist of:
> 
> - RTL838x: 500MHz single core, up to 28 ports 20GBps switching capacity
> - RTL839x: 700MHz single core, up to 52 ports 100GBps switching capacity
> - RTL930x: 700MHz single core, up to 28 ports 120GBps switching capacity
> - RTL931x: 1.4GHz dual core, up to 52 ports 170GBps switching capacity
> 

...

> +
> +static int rtsds_phy_power_on(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	if (rtsds_readonly(ctrl, sid))
> +		return 0;
> +
> +	mutex_lock(&ctrl->lock);
> +//	ret = rtsds_run_event(ctrl, sid, RTSDS_EVENT_POWER_ON);


Dead code? What is the point of this?

> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +


...

> +
> +static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
> +				size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, hwmode, phymode, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 16, &hwmode);
> +	if (ret)
> +		return ret;
> +	/*
> +	 * Allow to set arbitrary modes into the SerDes to improve error analysis. Accept that
> +	 * this might confuse the internal state tracking.
> +	 */
> +	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
> +	rtsds_phy_set_mode_int(ctrl, sid, phymode, hwmode);

Interfasce which confuses internal state is a bad interface. Drop.

> +
> +	return count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
> +
> +static ssize_t rtsds_dbg_reset_show(struct seq_file *seqf, void *unused)
> +{
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_reset_write(struct file *file, const char __user *userbuf,
> +				size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, reset, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 10, &reset);
> +	if (ret || reset != 1)
> +		return ret;
> +
> +	rtsds_phy_reset_int(ctrl, sid);
> +
> +	return count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);

That's not a debugfs interface. Drop reset.

> +
> +static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 page = 0, reg, sid = macro->sid;
> +
> +	seq_printf(seqf, "%*s", 12, "");
> +	for (int i = 0; i < 32; i++)
> +		seq_printf(seqf, "   %02X", i);
> +
> +	while (page < ctrl->conf->page_cnt) {
> +		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
> +			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
> +		else if (page == 64 || page == 128)
> +			seq_printf(seqf, "\n\nXGMII_%d    : ", page >> 8);
> +		else
> +			seq_printf(seqf, "\nPAGE_%03d   : ", page);
> +		for (reg = 0; reg < 32; reg++)
> +			seq_printf(seqf, "%04X ", ctrl->conf->read(ctrl, sid, page, reg));
> +
> +		page++;
> +	}
> +	seq_puts(seqf, "\n");
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_registers);
> +
> +static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 reg, sid = macro->sid;
> +
> +	reg = ctrl->conf->read(ctrl, sid, RTSDS_PAGE_SDS, 0);
> +
> +	seq_puts(seqf, "tx polarity: ");
> +	seq_puts(seqf, reg & RTSDS_BITS_INV_HSO ? "inverse" : "normal");
> +	seq_puts(seqf, "\nrx polarity: ");
> +	seq_puts(seqf, reg & RTSDS_BITS_INV_HSI ? "inverse" : "normal");
> +	seq_puts(seqf, "\n");
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> +
> +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> +
> +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_reset_fops);
> +
> +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_polarity_fops);
> +
> +	debugfs_create_file("registers", 0400, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_registers_fops);
> +}
> +#endif /* CONFIG_DEBUG_FS */
> +


> +
> +static int rtsds_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *provider;
> +	struct rtsds_ctrl *ctrl;
> +	int ret;
> +
> +	if (!np)
> +		return -EINVAL;

How is this possible? Drop.

> +
> +	ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
> +	if (!ctrl)
> +		return -ENOMEM;
> +
> +	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(ctrl->base)) {
> +		dev_err(dev, "failed to map SerDes memory\n");
> +		return PTR_ERR(ctrl->base);
> +	}
> +
> +	ctrl->dev = dev;
> +	ctrl->conf = (struct rtsds_conf *)of_device_get_match_data(dev);
> +
> +	ret = of_property_read_u32(np, "realtek,controlled-ports", &ctrl->sds_mask);
> +	if (ret)
> +		ctrl->sds_mask = GENMASK(ctrl->conf->sds_cnt, 0);
> +
> +	for (u32 sid = 0; sid < ctrl->conf->sds_cnt; sid++) {
> +		ret = rtsds_phy_create(ctrl, sid);
> +		if (ret) {
> +			dev_err(dev, "failed to create PHY for SerDes %d\n", sid);
> +			return ret;
> +		}
> +	}
> +
> +	mutex_init(&ctrl->lock);
> +	dev_set_drvdata(dev, ctrl);
> +	provider = devm_of_phy_provider_register(dev, rtsds_simple_xlate);
> +	rtsds_setup(ctrl);
> +	dev_info(dev, "initialized (%d SerDes, %d pages, 32 registers, mask 0x%04x)",
> +		 ctrl->conf->sds_cnt, ctrl->conf->page_cnt, ctrl->sds_mask);
> +
> +	return PTR_ERR_OR_ZERO(provider);
> +}
> +

...

> +static const struct of_device_id rtsds_compatible_ids[] = {
> +	{ .compatible = "realtek,rtl8380-serdes",
> +	  .data = &rtsds_838x_conf,
> +	},
> +	{ .compatible = "realtek,rtl8390-serdes",
> +	  .data = &rtsds_839x_conf,
> +	},
> +	{ .compatible = "realtek,rtl9300-serdes",
> +	  .data = &rtsds_930x_conf,
> +	},
> +	{ .compatible = "realtek,rtl9310-serdes",
> +	  .data = &rtsds_931x_conf,
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, rtsds_compatible_ids);
> +
> +static struct platform_driver rtsds_platform_driver = {
> +	.probe		= rtsds_probe,
> +	.driver		= {
> +		.name	= "realtek,otto-serdes",
> +		.of_match_table = of_match_ptr(rtsds_compatible_ids),

Drop of_match_ptr, you have warning because of it.

> +	},
> +};
> +
> +module_platform_driver(rtsds_platform_driver);
> +
> +MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
> +MODULE_DESCRIPTION("SerDes driver for Realtek RTL83xx, RTL93xx switch SoCs");
> +MODULE_LICENSE("GPL");

...

> +
> +struct rtsds_macro {
> +	struct rtsds_ctrl *ctrl;
> +	u32 sid;
> +};
> +
> +struct rtsds_conf {
> +	u32 sds_cnt;
> +	u32 page_cnt;
> +	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
> +	int (*mask)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u32 val, u32 mask);
> +	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int (*set_mode)(struct rtsds_ctrl *ctrl, u32 idx, int mode);
> +	int (*get_mode)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int mode_map[PHY_INTERFACE_MODE_MAX];
> +	struct rtsds_seq *sequence[RTSDS_EVENT_CNT];
> +};
> +
> +/*
> + * This SerDes module should be written in quite a clean way so that direct calls are
> + * not needed. The following functions are provided just in case ...
> + */

Drop code "just in case".



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
