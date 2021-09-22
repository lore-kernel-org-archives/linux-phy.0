Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72EDDC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 19:25:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EF6360FE8
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 19:25:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3EF6360FE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtEHt/ywj+Edm63fcqMg6adj5Y5q7QAMgg2NkNn1vns=; b=MYdLG7m6QF2SA7
	kj5E8AMab0tJci+7ehiTLhq09Vb69lfsMQYykVkP6P3tanNYs7hCQYksTog/ss/lIXRwlGdtjzazE
	OuOCciFVwh7t9opKLLArREahEf0x1oZ6V83CAFyeyqAXGiI0MDunz0wo9Hs+qKG4LoXaxB+y1y7fW
	axjx1yhvy20XEsGhCNk8pNUEVukY6m5eLIca7buDCE2vLedDrUF0jgoqeS4pGloRFR1M9OgeThCqE
	M+VwQgTYWs/xoCZDv7LgM7wbNG9tMbdIS89muISySxh8fKEVOoQ9Xfsv5oNhK0NG/1tr6Z31E3Xfv
	w/UXWaoHbBYO/adtmxpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT7sG-009URm-PG; Wed, 22 Sep 2021 19:25:44 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT7sE-009UQj-0e; Wed, 22 Sep 2021 19:25:43 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 77-20020a9d0ed3000000b00546e10e6699so5106205otj.2; 
 Wed, 22 Sep 2021 12:25:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ROfX8dif1hOUK6DTEujZ26PCAYYwnvSwl8YAfygyhQw=;
 b=GgbnewtfbzEY8zL2psQtedSsfKv0vldb2IE8K3dLFn0TkByuSNg2o2y4jO5athVFXT
 DTB8q9CKrkCoJSRkHxBrZLr/loJt0V6z+wQ4pUy2KuOoFFuuJPZX5J87hLqxdIuTeW0Q
 fVn6Yn0TJA1lhob+/mABuNJZor+nEFHBhmMMttDxIxmPUI/R8PvRcVnar7tXnDeohH9n
 IqV/MNcEts3BfLtL2Z7RbG5PTCf+jXGGnO/ve+XaycB4WY7/dM3QTZIrbLo3fG9K6jkw
 G3mV7ZVS4Df043vp1zJE5dCZ3+KD5mIsXp/z2sDLusk84uasHvy+Xt9r62ljQ2nGDFfe
 s1VA==
X-Gm-Message-State: AOAM5328xZPTkJ6d/+UNFSjrl0DmN6ixBmkGtO5HlUmMOGkX0PPFcCS+
 BAt30thaE4vWZ38Cwlcrxw==
X-Google-Smtp-Source: ABdhPJwZcbzkZsQL7s7jpvYc1l7WP+b15tHJqpXusBvQkj9+ALginWqlD3++GJrT2Tc8lFf6Q003vw==
X-Received: by 2002:a9d:411e:: with SMTP id o30mr730096ote.97.1632338739773;
 Wed, 22 Sep 2021 12:25:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id j8sm737011ooc.21.2021.09.22.12.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 12:25:39 -0700 (PDT)
Received: (nullmailer pid 1143320 invoked by uid 1000);
 Wed, 22 Sep 2021 19:25:38 -0000
Date: Wed, 22 Sep 2021 14:25:38 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, kishon@ti.com, vkoul@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
 pad modes of imx8 pcie phy
Message-ID: <YUuDMjBGWfNsMf2n@robh.at.kernel.org>
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
 <1631845863-24249-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1631845863-24249-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_122542_109842_70121385 
X-CRM114-Status: GOOD (  15.48  )
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

On Fri, Sep 17, 2021 at 10:31:00AM +0800, Richard Zhu wrote:
> Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> new file mode 100644
> index 000000000000..fe198a0cc12c
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Perhaps this should match the dts files license...

> +/*
> + * This header provides constants for i.MX8 PCIe.
> + */
> +
> +#ifndef _DT_BINDINGS_IMX8_PCIE_H
> +#define _DT_BINDINGS_IMX8_PCIE_H
> +
> +/* Reference clock PAD mode */
> +#define IMX8_PCIE_REFCLK_PAD_NO_USED	0
> +#define IMX8_PCIE_REFCLK_PAD_INPUT	1
> +#define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
> +
> +#endif /* _DT_BINDINGS_IMX8_PCIE_H */
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
