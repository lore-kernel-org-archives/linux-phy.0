Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F37FAC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Mar 2022 01:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guv0HOCBTNkywkofq1PGJwZJOkwnUWd+p9rohfYdIN4=; b=dn5V4clKgcp7u1
	+jdzMyHIXXXWwi1Qel65d1Z8ie3sMPvTHyvBdW6EC/bHgS86gdd3nDPuGII6LdjRJFGmHHkNyoBkd
	hbf3mkh4P5s+jrMYbD9EddcW02uxtl5fJ7Ih4T3pN+kR0DE+BoBgVRjjIyn0bxneQGW9IqEFbbLyP
	gKioPDyh5OvJUtJNLcx6tXo+mslilhpZ7SBTYdGY9XcvUU/g8eembifKvIW82jlWL9tU9fYU98Lh2
	rXMZHXNNlT4WNky2EFt/N0IY9iMXJBKD/CY8NgdqH5KCcUspkafQBoiqZH6ffOwI72rqe86tCG7St
	zaFLnfo9cnaIhmwa59Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nROKl-002HR9-EF; Tue, 08 Mar 2022 01:08:15 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nROKP-002HIf-Rq; Tue, 08 Mar 2022 01:07:55 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 x26-20020a4a621a000000b00320d7d4af22so6943305ooc.4; 
 Mon, 07 Mar 2022 17:07:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=rxea/dYu/ELTNOWQBZ1ss1F6Twz4ycLAC2ZHEe2uUro=;
 b=XZewHwx90aPkYX+S2NQ+6QwFeUquRNZi/vLWUFxHnUAT5drJPWQ6SJvP6vw2yrIwtD
 BSqafVp0KbNK5ELFLIi5fNmpMpJSjB3NqVpjtLxN7gJhQXUWIUbOLoE8w4+6b7EFZ/WF
 bIr4VkM/IIJGq99H0tVJXrsYouapgm3omVNNeRcIT+tsR3VlaSyTxNF98NNTXn6vUEt7
 YuuBNc22OVlANPiNJl665MRp4R8eHSh8VSv1SxOcdBZwO8uKruIdqbxHa5bKFQU6LUVY
 CcT9rz+o8mDf+kOAwPcmPOzlDCKCR21bHXACUQGYRrFCOLZqhlB1dD2Ed+PRVycpc1ld
 3aQA==
X-Gm-Message-State: AOAM533Ae5koAkT9h7ISTHsPlRy2OEAyOgFyMgCrG7gC6TCUnfkXU/q2
 Dj3dAfYXTmUdkp0VDP91HQ==
X-Google-Smtp-Source: ABdhPJwuxBaYxiksU+rwdZLeIIANxi6L3vYW7ckdeo06O7RfTIGcy0DoTwNbwJESrg/gvsNx+NDLhA==
X-Received: by 2002:a05:6870:60a0:b0:d3:a3f7:8b59 with SMTP id
 t32-20020a05687060a000b000d3a3f78b59mr1004731oae.94.1646701672984; 
 Mon, 07 Mar 2022 17:07:52 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 p21-20020a4a2f15000000b00320fca09b74sm1377596oop.1.2022.03.07.17.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 17:07:51 -0800 (PST)
Received: (nullmailer pid 3624778 invoked by uid 1000);
 Tue, 08 Mar 2022 01:07:40 -0000
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kernel@pengutronix.de, linux-phy@lists.infradead.org, shawnguo@kernel.org,
 linux-pci@vger.kernel.org, alexander.stein@ew.tq-group.com,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org,
 p.zabel@pengutronix.de, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, l.stach@pengutronix.de, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org
In-Reply-To: <1646644054-24421-3-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-3-git-send-email-hongxing.zhu@nxp.com>
Subject: Re: [PATCH v2 2/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
Date: Mon, 07 Mar 2022 19:07:40 -0600
Message-Id: <1646701660.888371.3624774.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_170753_928853_674DE036 
X-CRM114-Status: GOOD (  10.20  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 07 Mar 2022 17:07:29 +0800, Richard Zhu wrote:
> Add i.MX8MP PCIe PHY binding.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dt.yaml: pcie-phy@32f00000: resets: [[4294967295, 26]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dt.yaml: pcie-phy@32f00000: reset-names: ['pciephy'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1601963

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
