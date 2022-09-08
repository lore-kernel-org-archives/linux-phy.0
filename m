Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26566C38145
	for <linux-phy@archiver.kernel.org>; Thu,  8 Sep 2022 19:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnrNnFxj6s3lqvrZh1MCifky8IpQYttiC2sUqVEFCUU=; b=Q5BXetM9oVex08
	Z+NtEdbsnRwD9v/fvCsNIBIYvRKRwwWKBQ/coyKzYWFH/+BtI61OsJ6vja+yh1gqBd78A9v+uKbjq
	Kt+ANoGPbMpe5NrJs+k21SPArxrxZwgjE4G1PdsXxlPXFXr3Kvrj7xz0Dp678MHNBnD+3NlrBoDEf
	bl6FKtDCB+cvUqGgEZowHGl+rrKnhTJaEMNKezEBs5XGUu0lO5o+43n32SGtqLKxt2csV9yEUiiaN
	utFFe3c6hapQBTkdTcmwxbUoF1QP3LbIJayOxOYjnUCg85aSRJZxc6rNFvzlwIppBg886ieaS9MSf
	mobyAE3NpGOLQFBXTFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWNQX-007tYQ-Iw; Thu, 08 Sep 2022 19:43:05 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWNQV-007tTl-JC; Thu, 08 Sep 2022 19:43:04 +0000
Received: by mail-ot1-f54.google.com with SMTP id 6-20020a9d0106000000b0063963134d04so13046855otu.3;
        Thu, 08 Sep 2022 12:43:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=J5un3Ml+zWC6SWVRC43OmYblXMOgwS92Fnp68el50+8=;
        b=mM/LYvxpfFq5x5IcFL+RrQE7ZQzI0sYTX+50+UJLpabxBEQykaLWGDozWhR1V5XDMv
         ivPgdz/ayyfYZxmvOSpaR302KTyDyV8uvGInAheBCALQGOpqulS05bGmhkn/V3gn5qZF
         w5RXiaPNorimA8ukLJix0qtH4jXdlpll3H6kuCIY19+XgEfYYLBtnEMsG1ei+TMHSBdj
         nyxE9wd9v6HeVdp4qTJVUxYPWgQvKts5CwEaapCW92uxzzg9LwTI+tWn/8PHmO+aOk8h
         JYxowtWBwBuoJS+FaVok/6u92E3E7eOuZFWeB5Sq3GFaWg1+NLKJ/Dzqb1W8KG6UCTmQ
         nZDQ==
X-Gm-Message-State: ACgBeo1qa+OPJxSFGwvm9ED/eR2D1jr2oguwzAj/cHJt3ngD8PJNVavL
	Sihz7hmQK9r5msteFENo+w==
X-Google-Smtp-Source: AA6agR4DcNNkZrZjXxttUoiwlL8F8Vcud254YsoQYoquGXCB1fqYi6b5GSYcWx6p9gPu8DPGx4c3rA==
X-Received: by 2002:a05:6830:6999:b0:61d:26f8:94c1 with SMTP id cy25-20020a056830699900b0061d26f894c1mr4137073otb.278.1662666179874;
        Thu, 08 Sep 2022 12:42:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b11-20020a9d754b000000b0061d31170573sm8872283otl.20.2022.09.08.12.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 12:42:59 -0700 (PDT)
Received: (nullmailer pid 3217199 invoked by uid 1000);
	Thu, 08 Sep 2022 19:42:58 -0000
Date: Thu, 8 Sep 2022 14:42:58 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, richard.leitner@linux.dev, vkoul@kernel.org, shawnguo@kernel.org, bhelgaas@google.com, alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, kernel@pengutronix.de, devicetree@vger.kernel.org, linux-imx@nxp.com, p.zabel@pengutronix.de, lorenzo.pieralisi@arm.com, marex@denx.de, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 1/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
Message-ID: <20220908194258.GA3217149-robh@kernel.org>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
 <1662109086-15881-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662109086-15881-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_124303_651862_90018C08 
X-CRM114-Status: GOOD (  10.78  )
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

On Fri, 02 Sep 2022 16:58:00 +0800, Richard Zhu wrote:
> Add i.MX8MP PCIe PHY binding.
> On iMX8MM, the initialized default value of PERST bit(BIT3) of
> SRC_PCIEPHY_RCR is 1b'1.
> But i.MX8MP has one inversed default value 1b'0 of PERST bit.
> 
> And the PERST bit should be kept 1b'1 after power and clocks are stable.
> So add one more PERST explicitly for i.MX8MP PCIe PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml          | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
