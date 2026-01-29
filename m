Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5718D61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJQq47P3AdziKFSCIhK9O3kQeXfbAC3V59/h8Q+XgLQ=; b=Eg8/i9bkNnDydz
	M5iobuFG1PtqWvqWuJUNcXE98BtV/8EUAmesLGHZ9Y9KDZfzL3AKKRnsKof4fJc1e+wkqZXkmGCSg
	ojb+4RjzoXdA+T006SJiiMBYMszv/vmoxT+HLHgmCfbR1TfLR3F/N/ZmiapMs6gc9fnLVCa5Yn4ki
	ZHU3AAbBs+LnI960mM2mRas7rrFsGkZKksifdYE+41GNFckawbMyWUp/j3XEFyKjXV7dS60Rclien
	Eg7c5oNCKBPuN+K+D4iTydClH+ew7KSCWKOYlssJAfC3EMVvh7BKqLTY7S6YXlnr39HweOmbGoaqQ
	oh92Vz/KYXbjm0jmKioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS0d-000000009a1-2ZZl;
	Thu, 29 Jan 2026 13:24:31 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS0b-000000009Z9-19zZ
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:24:30 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-64b9dfc146fso1830833a12.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:24:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693067; cv=none;
        d=google.com; s=arc-20240605;
        b=MGlJOD8xHr1OeqaK5nLzzFui3epAoX0B8gKrH1OpAUTOnHmjlrJHjIf93Eefr2zfRu
         VLIm6MbF5DAeInSXk5MPDkHLvILu93M+zC0d68IIQvZFnx2/Uxn/EWNhsNn/k8oFALb5
         8ihi4pyFmQT9hgK6xId5ShmgaHcgGxcCyMc7xwWPqthnEg8DTXQfWMtfrWXqUnghWeE2
         q7DTf5XXdTqXlWxbTK65mKA2KH+s0o5cvTCg1rZNcHazjH6r4MWkUS2ja83lxLfvQ6Ts
         /K1S0zThDxMuZJb97s8Nc8LkKwpt+LYDuhge8tRqCDhRt1yqwLvYJTnrScDCmvA8EFvu
         M1jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        fh=80W3kZzTxaf0b3QqgUnpW64KEyXABb3n+NcWlYNEyeU=;
        b=YjvFlvb2uG5gOOyIPjQqV+i14KsEpZK+SaUDrQijQVtxd+BNlQpIItN7IABjsdsO1q
         PuBopIve9yXhcQbG76OukIOZun8iKS9klY+httf6SrJBuOisYGJOqPgt+WUCMI6FxZDR
         5TokqP9En+0WcdJGWcRKbUznMroRv7T4OPj8MQ8vRhjulB+FrdvMpgLjTTsAQtllDC4R
         qyE7xd5dQmh4cVkWQSQdxs7iZKSa4kJ4tS2Ca0IqfsQdXPVzuqp8quQB2Bvy9dOeYR57
         wwRFvVJqLc1QP/sZyd7VU+ZRjFpYgvsSLiPwILgyUa+nefvv/vd/4HaL9YhKHag2/l6f
         JjsQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693067; x=1770297867; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        b=d1+dkvvqQfRY2xwLsVFZ+w0+ZEE4S1ZooM92wwkBRdv9UsHEAR+ktsPRHyHJmRJTBY
         +BoYnlapfAi7XRmuajsCZtzrkoHCil7hRj34QN0iyaemvJGqPr6Hf1MjZNt4zAY9N35+
         wgLIZ9tBeZom0MNfVR+88SswScnHyshBcD4qeL8lKuBYhPnC2BtHLdSjs+mhiG+lOKxt
         f26bSbsjSN8bbJa6wG/HJgOUk3KtHl5SBk42iuc+zFE+Hq0An3JSmX8o5kzsHtHemr3K
         l2jrseqeqILhChgJZ1qGMN4qi2i8AyiXSbPIQLNrCmTjeteSc6CMknzr4exD0fBuhwCX
         e8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693067; x=1770297867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        b=ORkN9+yBE638QsSr1cIIZIzc83U2WpcPSM9C1lbz5QS1zXF6qg4SU+h59EVt8Y534O
         nkYjIxt9a5jBI3RIKYypzBwt/rTA91gHuAFqYya2rNha1P0oVBEJkkcB8t0wkEBtEgWr
         WWcTCDeXErsfhb8Y7hmBut//Np5GKcwz3u9b5T5Q5RukBPHGM3wXwts05TDTu+h+tfhs
         XxCSHQ9dvh1m2neTBVR1rPYtNgw6OsMlCjOFrkj3aMuaTWucWgth5+a2Mt6czi+x4bGF
         oDBvEIJPPiFJKZeCzGMgY5EwInLwbEEmTYLmq2aHIZWgFAC++XLB24UyWDQ28G1oUlD/
         dYgg==
X-Forwarded-Encrypted: i=1; AJvYcCWEJiEsksJ4TR1WvIuC+NsqqitV7sDaXRB+sVMJMKW07TThC29i9DGhyf0qILENOiuOzoNiGRAIbIg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWsClWHzRbFOXSH/8tTxbxDguO5nSfCvjj3qkoF0Xg/P2ZrJAg
	knU9tHPRVO64iC8KGSD+qFPv8sr91pT64STl05Zckim9NdQKx21JM5gtKGANtTYymjDozTBHIEB
	GRf5VIXFXrrf8cX2KX8hWOKUr5sNKE6/SxA6SttvBzQ==
X-Gm-Gg: AZuq6aJ+xSfQjT04hvqHhv7zeOKncXUumopeY/ogSkuUor0ij4+mXxTrE3naACrBNd/
	yec9qKmRmaIwRS1m4+qL0plXRvtbSNIaKVd4bfBwJq/q/LCHP3QXXxn4dXPuVC5IUOSj/juDU8k
	WlzcX3ldTvfy1SwqMIMNz79G00Q4r+HBg0sP8wOj7dX+1YM6TJzqlVbNjtjPVsj9PzgXJdySEa1
	8LaGRJvwkpeKTddsuZTnm98FMsC9lRa6gJtXiW3m3098xVJUFnq17Xj2HKsuHHDX3oUi45tmsrh
	18XzNMldkQeY1AI4/k7KhQ2Pbc3RJolgHXw=
X-Received: by 2002:aa7:dad6:0:b0:658:ded:97c8 with SMTP id
 4fb4d7f45d1cf-658cb209a64mr1273909a12.9.1769693067077; Thu, 29 Jan 2026
 05:24:27 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-4-vincent.guittot@linaro.org> <aXtLsuOkMMryrUs4@horms.kernel.org>
In-Reply-To: <aXtLsuOkMMryrUs4@horms.kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:24:15 +0100
X-Gm-Features: AZwV_Qj34ALujTrAHxV7HbCKDsW1Vf0wOdcaUENF06tNDpMBNRYgeeOZo4BoYeU
Message-ID: <CAKfTPtB8xDB8qYUZwGnH+h94ww3+gSyOuZ+RL+zOh5tYGuu_HQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] phy: s32g: Add serdes xpcs subsystem
To: Simon Horman <horms@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_052429_465722_372643FB 
X-CRM114-Status: GOOD (  31.79  )
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

On Thu, 29 Jan 2026 at 12:59, Simon Horman <horms@kernel.org> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:58AM +0100, Vincent Guittot wrote:
>
> ...
>
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
>
> ...
>
> > +static void s32g_serdes_prepare_pma_mode5(struct s32g_serdes *serdes)
> > +{
> > +     u32 val;
> > +     /* Configure TX_VBOOST_LVL and TX_TERM_CTRL */
> > +     val = readl(serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
> > +     val &= ~(EXT_TX_VBOOST_LVL_MASK | EXT_TX_TERM_CTRL_MASK);
> > +     val |= FIELD_PREP(EXT_TX_VBOOST_LVL_MASK, 0x3) |
> > +             FIELD_PREP(EXT_TX_TERM_CTRL_MASK, 0x4);
> > +     writel(val, serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
>
> This is part of an AI Generated review.
> I have looked over it and I think it warrants investigation.
> For information on how to reproduce locally, as I did, please see [1].
>
>         The entire s32g_serdes_prepare_pma_mode5() function is ~70 lines of
>         magic numbers with zero explanation. These appear to be
>         hardware-specific PLL/PHY tuning parameters for 2.5G mode.

Unfortunately there is no additional information in the reference
manual other than
*step 4:
- Write 3h to EXT_TX_VBOOST_LVL.
- Write 4h to EXT_TX_TERM_CTRL

>
> Please consider using #defines, to give values names.
>
> ...
>
> > +static int s32g_serdes_init_clks(struct s32g_serdes *serdes)
> > +{
> > +     struct s32g_serdes_ctrl *ctrl = &serdes->ctrl;
> > +     struct s32g_xpcs_ctrl *xpcs = &serdes->xpcs;
> > +     int ret, order[2], xpcs_id;
> > +     size_t i;
> > +
> > +     switch (ctrl->ss_mode) {
> > +     case 0:
> > +             return 0;
> > +     case 1:
> > +             order[0] = 0;
> > +             order[1] = XPCS_DISABLED;
> > +             break;
> > +     case 2:
> > +     case 5:
> > +             order[0] = 1;
> > +             order[1] = XPCS_DISABLED;
> > +             break;
> > +     case 3:
> > +             order[0] = 1;
> > +             order[1] = 0;
> > +             break;
> > +     case 4:
> > +             order[0] = 0;
> > +             order[1] = 1;
> > +             break;
> > +     default:
> > +             return -EINVAL;
>
> AI review also flags that s32g_serdes_get_ctrl_resources() ensures that
> ss_mode is <= 5.  So this check is unnecessary.

okay but providing a default seems a good practice

>
> > +     }
> > +
> > +     for (i = 0; i < ARRAY_SIZE(order); i++) {
> > +             xpcs_id = order[i];
> > +
> > +             if (xpcs_id == XPCS_DISABLED)
> > +                     continue;
> > +
> > +             ret = s32g_xpcs_init_plls(xpcs->phys[xpcs_id]);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     if (ctrl->ss_mode == 5) {
> > +             s32g_serdes_prepare_pma_mode5(serdes);
> > +
> > +             ret = s32g_xpcs_pre_pcie_2g5(xpcs->phys[1]);
>
> Also from the AI review:
>
>         In mode 5, code directly accesses xpcs->phys[1] without checking if
>         it was created. If XPCS1 wasn't created for some reason (DT
>         misconfiguration, probe failure), this NULL dereferences.

I will add a check

>
> ...
>
> > @@ -460,6 +741,41 @@ static int s32g2_serdes_create_phy(struct s32g_serdes *serdes, struct device_nod
>
> ...
>
> > +             xpcs = devm_kmalloc(dev, sizeof(*xpcs), GFP_KERNEL);
> > +             if (IS_ERR(xpcs)) {
> > +                     dev_err(dev, "Failed to allocate xpcs\n");
> > +                     return -ENOMEM;
> > +             }
>
> AI review also flags:
>
>         devm_kmalloc() returns NULL on failure, not an error pointer.
>         This check will never trigger.

okay

>
> [1] https://netdev-ai.bots.linux.dev/ai-local.html
>
> > +
> > +             xpcs_ctrl->phys[port] = xpcs;
> > +
> > +             xpcs->an = of_property_read_bool(dev->of_node, "nxp,xpcs_an");
>
> AI review flags that nxp,xpcs_an is not part of the binding.

That's a leftover that should be removed

>
> ...
>
> > +struct phylink_pcs *s32g_serdes_pcs_create(struct device *dev, struct device_node *np)
> > +{
> > +     struct platform_device *pdev;
> > +     struct device_node *pcs_np;
> > +     struct s32g_serdes *serdes;
> > +     u32 port;
> > +
> > +     if (of_property_read_u32(np, "reg", &port))
> > +             return ERR_PTR(-EINVAL);
> > +
> > +     if (port > S32G_SERDES_XPCS_MAX)
> > +             return ERR_PTR(-EINVAL);
> > +
> > +     /* The PCS pdev is attached to the parent node */
> > +     pcs_np = of_get_parent(np);
> > +     if (!pcs_np)
> > +             return ERR_PTR(-ENODEV);
> > +
> > +     if (!of_device_is_available(pcs_np)) {
> > +             of_node_put(pcs_np);
> > +             return ERR_PTR(-ENODEV);
> > +     }
> > +
> > +     pdev = of_find_device_by_node(pcs_np);
> > +     of_node_put(pcs_np);
> > +     if (!pdev || !platform_get_drvdata(pdev)) {
> > +             if (pdev)
> > +                     put_device(&pdev->dev);
> > +             return ERR_PTR(-EPROBE_DEFER);
> > +     }
> > +
> > +     serdes = platform_get_drvdata(pdev);
>
> Also from the AI review:
>
>         On success, the function gets a reference to pdev but never
>         releases it. This leaks a device reference every time a MAC driver
>         calls s32g_serdes_pcs_create().

will fix it

>
> > +
> > +     return &serdes->xpcs.phys[port]->pcs;
>
> Also from the AI review:
>
>         The check port > S32G_SERDES_XPCS_MAX allows port=2,
>         but array only has indices 0 and 1.
>
> Also I'm not seeing bounds checking on port in s32g2_serdes_create_phy
> which uses port as an index for the same array both directly and indirectly
> via s32g_serdes_xpcs_init().

will add it

>
> ...
>
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-xpcs.c b/drivers/phy/freescale/phy-nxp-s32g-xpcs.c
>
> ...
>
> > +static int s32g_xpcs_regmap_reg_read(void *context, unsigned int reg,
> > +                                  unsigned int *result)
> > +{
> > +     struct s32g_xpcs *xpcs = context;
> > +     u16 ofsleft = (reg >> 8) & 0xffffU;
> > +     u16 ofsright = (reg & 0xffU);
> > +
> > +     writew(ofsleft, xpcs->base + ADDR1_OFS);
> > +     *result = readw(xpcs->base + (ofsright * 4));
> > +
> > +     return 0;
> > +}
> > +
> > +static int s32g_xpcs_regmap_reg_write(void *context, unsigned int reg,
> > +                                   unsigned int val)
> > +{
> > +     struct s32g_xpcs *xpcs = context;
> > +     u16 ofsleft = (reg >> 8) & 0xffffU;
> > +     u16 ofsright = (reg & 0xffU);
> > +
> > +     writew(ofsleft, xpcs->base + ADDR1_OFS);
> > +     writew(val, xpcs->base + (ofsright * 4));
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct regmap_config s32g_xpcs_regmap_config = {
> > +     .reg_bits = 16,
> > +     .val_bits = 16,
> > +     .reg_read = s32g_xpcs_regmap_reg_read,
> > +     .reg_write = s32g_xpcs_regmap_reg_write,
> > +     .wr_table = &s32g_xpcs_wr_table,
> > +     .rd_table = &s32g_xpcs_rd_table,
> > +     .max_register = 0x1F80E1,
> > +};
>
> AI review also flags that s32g_xpcs_regmap_reg_read and
> s32g_xpcs_regmap_reg_write do not protect against concurrent access.

but regmap framework should

>
> ...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
