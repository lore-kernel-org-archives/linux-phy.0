Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05BFC2B9F4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 15:29:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7353D601FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 15:29:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7353D601FE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGzgMB25wDjxIpuH7ZNI+GNdOFCp82RYenOp/HARz9E=; b=gw4iAwZyxV6ItP
	87acEBT529hLTtdeuLtBct6m2NogiWHQQma9BiwmT9vpw4ZT5rCm+OmnFyQxq6om+aQzy4t62DhM4
	uHlmnr2ZS+K/sPb6YoRy3kG7Y/zicROX4EjWKGpLjNTncctm0cPiFybzI9pk7B9WTZbUPRqUN+KPR
	mj024ioKn3QBUReE5bJJ1K2GeMZTjtnRdzK5rdSGxCXmK2NlcN+XU58A+HjLcKmOdibFHwgP5V8Ip
	qb6U+9TbDStz10MOgSO1otljl0tsdc+buQYzJxvMXIlwDl50AhAv7sGiqNkenW6n3rawucpMSlIy3
	5kwtVR0DYXoRj0OrCFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lviLC-007hjR-Tq; Tue, 22 Jun 2021 15:29:30 +0000
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lviL9-007hhv-VP
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 15:29:29 +0000
Received: by mail-vs1-f47.google.com with SMTP id x13so11449607vsf.11
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 08:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oR+1qeM4yz7ph3in4Jquwe9LUDQzHsO3jz9ugdHNBCw=;
 b=otIJjd8atGtBBskIXhYy6w9wRZfBPydVoptaYubc8gUWrt1ZllfuzFusN/JzWBeVNt
 Q9P0MZAMcJjHEv1ATsLdKCsGzK7LtAvDYbeOMl2C8Vc0b0KTOKw5g6qZl02k+ge322rE
 Fimu8OB9yuA9ucQBTsQNnATiap6CVFYOP2TYFKwbHGeyZjLudkmpTkSPe46NhhI+HmTU
 R2MfaKUThw3K0Rs0Fcw00G96SOIszDdWsAa0yamybbE6cJpfjUgPyd2XOMp0NTWP+sk5
 dU329XrmkuFBHv5oxVkzp4wZcMi06XpRIXznUISspAGQ5Zjkfx/PxHdIPqhll1MmMrWU
 taTQ==
X-Gm-Message-State: AOAM532ttq7RlKzltBXk71BaXxaszTc3esqZN72AHz1li9/m8byJYhRk
 4nu9fvPMzf59OMPz+lKbMmyOYB10vIY4+JJB3u8=
X-Google-Smtp-Source: ABdhPJxovc3MSMTFO9B7wNWHgdk24OK3b3PqHEQTaFud5hGpMHrs/G+v3UNehI1zUzxKGbybo+p4Uxox2Au39zS80xc=
X-Received: by 2002:a67:3c2:: with SMTP id 185mr23400349vsd.42.1624375766450; 
 Tue, 22 Jun 2021 08:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
In-Reply-To: <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 22 Jun 2021 17:29:15 +0200
Message-ID: <CAMuHMdVHFaM+SAEBLyV0HOoFLpZgJ5PrJXx4vxQ8fsaopEAm9g@mail.gmail.com>
Subject: Re: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG
 support for RZ/G2L
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_082928_037605_A90C17AE 
X-CRM114-Status: GOOD (  28.49  )
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

Hi Biju,

Thanks for your patch!

On Mon, Jun 21, 2021 at 11:40 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> This patch adds OTG support for RZ/G2L SoC.
>
> RZ/G2L USB2.0 phy is compatible with rcar gen3, but it uses
> line ctrl register for OTG_ID pin changes. Apart from this
> it uses a different OTG-BC interrupt bit for device recognition.

So it is not compatible? ;-)

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -535,6 +555,11 @@ static const struct phy_ops rz_g1c_phy_usb2_ops = {
>         .owner          = THIS_MODULE,
>  };
>
> +static const struct soc_device_attribute soc_no_adp_ctrl[] = {
> +       { .soc_id = "r9a07g044", .data = (void *)true },
> +       { /* Sentinel */ }
> +};
> +
>  static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
>         {
>                 .compatible = "renesas,usb2-phy-r8a77470",
> @@ -613,6 +638,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>         struct phy_provider *provider;
>         const struct phy_ops *phy_usb2_ops;
>         int ret = 0, i;
> +       const struct soc_device_attribute *attr;
>
>         if (!dev->of_node) {
>                 dev_err(dev, "This driver needs device tree\n");
> @@ -627,6 +653,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>         if (IS_ERR(channel->base))
>                 return PTR_ERR(channel->base);
>
> +       channel->obint_enable_bits = USB2_OBINT_SESSVLDCHG | USB2_OBINT_IDDIGCHG;
>         /* get irq number here and request_irq for OTG in phy_init */
>         channel->irq = platform_get_irq_optional(pdev, 0);
>         channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
> @@ -634,6 +661,12 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>                 int ret;
>
>                 channel->is_otg_channel = true;
> +               attr = soc_device_match(soc_no_adp_ctrl);
> +               if (attr) {
> +                       channel->soc_no_adp_ctrl = attr->data;
> +                       channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
> +               }

Please don't abuse soc_device_match() for matching with a different
variant that uses a different compatible value.  Just add an entry
to rcar_gen3_phy_usb2_match_table[] instead.
I don't know if you can handle RZ/G2L just using a different phy_ops,
or need to extend rcar_gen3_phy_usb2_match_table[].data.

> +
>                 channel->uses_otg_pins = !of_property_read_bool(dev->of_node,
>                                                         "renesas,no-otg-pins");
>                 channel->extcon = devm_extcon_dev_allocate(dev,

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
