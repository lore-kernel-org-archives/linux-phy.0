Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6851C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:46:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7609E6112D
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:46:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7609E6112D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIX3mTELIgmb20MagovWQyBLO+MROhD4q3FrNWDFtZo=; b=E053jDcK4z0iFE
	xIg821vtHfWvwoiLQa5kqIL96YBNGaXvU7/Q09/zR+7i9uUghfEcIzOF4alJO+aAJLY106u0GvTOd
	U9X2yyq4qTguso9T79yq45cI+qLQOJLfkTbBeszcRA26Bw8yPvupq5ghUYZ5ki4revbuw5U2M2DK+
	bbVKdHyYCCswmZm5TOXAPFAvrmzssvMS9u2RXVSI6vxP2bhPgFDwmr7ZcuIWUaM5menANAxcbS2d8
	78r1gEiFtS4tC9QJsXXz2mg9ByWOG/4YVhEDjDJA6WHhzJIMVnaXo3rB20YgPRHO2IpwIfvngq2xD
	Qrj1Smdwf29gFcH2Xqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcYa7-00H6YP-R9; Mon, 18 Oct 2021 19:45:59 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcYFa-00Gxxj-Ii; Mon, 18 Oct 2021 19:24:48 +0000
Received: by mail-oi1-f182.google.com with SMTP id t4so1234917oie.5;
 Mon, 18 Oct 2021 12:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bt90VyLc6tV9HrByFLUwNOwZWxF8o3tcqxJtoTeeT4c=;
 b=bsrUF95nbdOVUOPisjkkWbMhZyz9jlZl6cPVjJz2VN3EQMwpr5YgBg0cOnvNiEzftj
 WvHQlsOLaz/55cG88CluGSoMrahm7zKL+pScy95j1JKGl/A3CuqDsiE26qLxOnMFnSWT
 z4p/aT9q9uJrU0lNFOnnqzF//0IMlJg/Vc7lcvQYkhf3KwXKDuSLMKhoreH6pHEuQgV1
 J57TDDh45wGAjlJi60ZuJWMgQoM5D8rp/2furWuQqmRI+rzRtRtChHWJHEU1n8QtPSZK
 O4HPK15Bg51X5bC5S70vWza5E0JPL4aUwWZW8cidNcuW8eq4Pc0zig7Dh07X1o3HO0Nf
 rKxA==
X-Gm-Message-State: AOAM530Vyo9bjQchTGMXUnTRfNNvHSJDbAXCRDf9HuKsvdY8pjsgbk/m
 +6xu1uvW6odTY5x9ETdgcDY6RbdMNg==
X-Google-Smtp-Source: ABdhPJyZEqV1avqCfkUrHC67E7MCfPVFDi4bd9rsxQN5tV/OzzjLhlX1HsHCIW605xDgj3sEaXrbyQ==
X-Received: by 2002:aca:5b56:: with SMTP id p83mr605204oib.119.1634584696145; 
 Mon, 18 Oct 2021 12:18:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id h91sm3137144otb.38.2021.10.18.12.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 12:18:15 -0700 (PDT)
Received: (nullmailer pid 2787169 invoked by uid 1000);
 Mon, 18 Oct 2021 19:18:14 -0000
Date: Mon, 18 Oct 2021 14:18:14 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v3 6/9] dt-bindings: imx6q-pcie: Add PHY phandles and
 name properties
Message-ID: <YW3IdoS+zHa4x70Z@robh.at.kernel.org>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-7-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1634028078-2387-7-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_122446_638771_ED7DC790 
X-CRM114-Status: GOOD (  14.62  )
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

On Tue, Oct 12, 2021 at 04:41:15PM +0800, Richard Zhu wrote:
> i.MX8MM PCIe has the PHY. Add a PHY phandle and name properties
> in the binding document.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 2911e565b260..99d9863a69cd 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -128,6 +128,12 @@ properties:
>      enum: [1, 2, 3, 4]
>      default: 1
>  
> +  phys:
> +    description: Phandle of the Generic PHY to the PCIe PHY.

maxItems: 1

And drop 'description'

> +
> +  phy-names:
> +    const: pcie-phy
> +
>    reset-gpio:
>      description: Should specify the GPIO for controlling the PCI bus device
>        reset signal. It's not polarity aware and defaults to active-low reset
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
