Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBAF1C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 16:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d2FKmKqnkI18bsIRLmlLm7odp0FfcAyM+49/2Z1hxc=; b=Jy8NvGTyBc21ou
	7QasjXmcnadquH5I8byBy4s590GX+Kn0/4wIofBM1l/Kn9C1dzROGuVC25a1Xwlgw4ginUZyHSQXd
	RPlA3FJCuH1akMSK094g7l7lNjd5IeuwhcgzEfH6P2DtQQsUwd13VKK5zXlCP6gq/ndR7O4XtCLwA
	uZ2n6s9cV2lKFaDShOhlqV5foyTDHoSC01rFShGvXVQp4oYL+fGxUjbXicZvRp9DvNMn8I+vNpYv4
	9GTdwdalyW9rz8j5URy2aBk5jHpjJFdgi3jb5nY32WCj8u9LyLJgH/JVgbicIQK9Ys6CjQ4gZ0FJT
	ZkrHeJaLa8sKviHlrDkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvAX-000000000eW-1JI2;
	Mon, 03 Aug 2026 16:05:37 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvAU-000000000dW-2gwL
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 16:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785773133;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=357lP/N3j9Pe8409LQo6pgh/hm23lTt1qCsWKe9kpVU=;
	b=IvCuQrHNqAxukO5AaQ6Avure5gpxAfZk4Bnvrkk357CPjv0zG25eC9/nGQVSt+ZVwFAkGe
	slxHSKTZqtf9ZcDcUJ5KJrZprfPtO7NpbyhMWHkWPnAtx3wsvj+cGjd3uZhIMZhenD8zwh
	DxCRKQiNeLHalW9lDU+4NiExkcEhi50=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-113-pgapXo8dM-CRNPUYqs9jnA-1; Mon, 03 Aug 2026 12:05:31 -0400
X-MC-Unique: pgapXo8dM-CRNPUYqs9jnA-1
X-Mimecast-MFC-AGG-ID: pgapXo8dM-CRNPUYqs9jnA_1785773131
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-81e6ae12b42so51331867b3.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773131; x=1786377931;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=357lP/N3j9Pe8409LQo6pgh/hm23lTt1qCsWKe9kpVU=;
        b=QhcqJR1Ucdw8v8kVD+NvFkw3HvDIogOeGQhv0mC8gCo4W5dEbmuDIdtg6KGXNkoLqY
         +xdgl85JcmYazIqXKblPEosHXyU03MxHOw6SMhcdV5tCzvVHxCracycyxO6aZuu345aZ
         E5PVKp+7WROmfYe3kFRtoLUENj9H4lnUB+hwNeQMqa//CZjx8C/3HFK9nJNCFPSYWyKi
         DqYhznx63o0e52Tum4JNUxjRwuYITAY9+YVvOdkyZofr1YQHC3hVExidmcqcfKbdve3e
         ViGg9EIuvU0ZEkkQHSOhAGhByfFx2nTAkZFnEcS8ac4rhHRk7i8ulnyTOOav/hblOPQo
         1RAA==
X-Forwarded-Encrypted: i=1; AHgh+RoO2QIX3+mGZx06P+niekWfUTYYXQjkdpm49KoDk7qTB+h3R56F6xyzH1m91ydPxFXhTzn6sZYREZs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkZlZe+M/F0RKC/RRU5h8/XBecERo9STDDwtH0yGE1zhuiIoUa
	s5AEwdReODEiRYluWRubjB8zPlgDLZIR6pS0ok0ViOkWYNJJbEiNGKJqL6MxenuSl2VbhIxIDde
	W9VmJuISWcquITTGyAstADr7iW8KZtkhzZv8mj4+2Xrt49SP5XaYvSlsP6Cr2UjtML54=
X-Gm-Gg: AR+sD10VIWP3pCBk3sasu3ZzNFdskQyYtv/2cny+uhiSszZ4KjI7g11gqzA+oUkJHpG
	qxfEMEf2sARCCuB/TMUEp57e4ICzM4qcIeVBE5D5c/PNrxfaTc0c9rELAO5lp6zeRsGy8KAD7Qp
	DmdMsUOn6KNHj9v+4hivx9WXspL1bVI/+t+FGtgqovrk2M4FW5NIo6zgPg4PH3vyTqInEXInM5M
	JpBgSRFUOb/QU5JpFQ/D5FIbl/oIX62hOMTxkPVC5JDABJmv1dYeFP/2DDZW0tKIXaszdaHz5jp
	Z8H9wFzfgrmnWap+jddySa1X+0NqM58wx00b9RwML3yUyTgDxBAxahTQzCSKFCKSJCQoe2HvP/H
	9mCQdMCrR0l/1ACzla/KKw9wSkSTKlgtFBEU=
X-Received: by 2002:a05:690c:6f04:b0:80c:ebd4:762 with SMTP id 00721157ae682-81fd49b4b80mr130783367b3.7.1785773130734;
        Mon, 03 Aug 2026 09:05:30 -0700 (PDT)
X-Received: by 2002:a05:690c:6f04:b0:80c:ebd4:762 with SMTP id 00721157ae682-81fd49b4b80mr130782967b3.7.1785773130388;
        Mon, 03 Aug 2026 09:05:30 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81fccf30319sm57712047b3.6.2026.08.03.09.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 09:05:29 -0700 (PDT)
Date: Mon, 3 Aug 2026 12:05:27 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration infrastructure
Message-ID: <anC8R2Nxgv_w7Ahp@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: p5jnqv1fBfSCwXcrxigGuay24X4MrW4zp3Lo4g91asM_1785773131
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_090534_743251_B4EFC08E 
X-CRM114-Status: GOOD (  15.70  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sun, Aug 02, 2026 at 11:33:37PM +0300, Stefan D=F6singer wrote:
> diff --git a/drivers/clk/zte/clk-zx.h b/drivers/clk/zte/clk-zx.h
> new file mode 100644
> index 000000000000..175fbba3e0b3
> --- /dev/null
> +++ b/drivers/clk/zte/clk-zx.h
> @@ -0,0 +1,142 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2026 Stefan D=F6singer
> + */
> +
> +#ifndef __DRV_CLK_ZX_H
> +#define __DRV_CLK_ZX_H
> +
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/types.h>
> +
> +#define CLK_ZX_PLL_PREPARE_IS_ENABLE	1
> +#define CLK_ZX_MAX_PARENTS		8
> +
> +enum zx_parent_type {
> +	ZX_PARENT_FW,
> +	ZX_PARENT_ID,
> +};
> +
> +struct zx_parent_desc {
> +	enum zx_parent_type		type;
> +	union {
> +		const char		*fw_name;
> +		unsigned int		id;
> +	};
> +};
> +
> +#define PARENT_FW(_name) { .type =3D ZX_PARENT_FW, .fw_name =3D (_name) }
> +
> +#define PARENT_ID(_id) { .type =3D ZX_PARENT_ID, .id =3D (_id) }
> +
> +static inline struct clk_parent_data zx_get_parent(const struct zx_paren=
t_desc *p,
> +						   struct clk_hw * const *clocks)
> +{
> +	struct clk_parent_data ret =3D {};
> +
> +	switch (p->type) {
> +	case ZX_PARENT_FW:
> +		ret.fw_name =3D p->fw_name;
> +		ret.index =3D -1;
> +		return ret;
> +
> +	case ZX_PARENT_ID:
> +		ret.hw =3D clocks[p->id];
> +		ret.index =3D -1;
> +		return ret;
> +	};

Stray semicolon

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
