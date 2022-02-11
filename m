Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05885C43219
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 14:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieaz+5WFFyNWbRel9RylZ8WLJxCzAQwQR+ROU2coiGM=; b=nqcagTWPFsymYx
	VG9zLkRMIrVhkAR7xKxzCWaobYgQvjXdm/DzRg474OChaENcnRev841shTS3DvaMSVanREaH2gTa6
	U8H260kpxNwT7NukRpV3qAOLNqyUE0K2bIXSaewen/mpYuAf4THhixINMiiwjdU+8opQZnxOAv/AY
	u8A9PcngAGB2DMPNmRpqULU0Ylg7f5Y/YE+lLwiPc1lFMawYo2rgNrETHUyn55EfsWcu3Qru5k0Rm
	BS0nZUdiOw0Da9HQScgIkRLzycUtgEAHUWWimSi0XMuaoMuhBO3jwshGCdTxGZdbzte6ijX6wAj/o
	erk5HSsia2Kj0xIbihew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXI7-007fRM-DK; Fri, 11 Feb 2022 14:52:55 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXI5-007fQY-2D
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 14:52:54 +0000
Received: by mail-oi1-f180.google.com with SMTP id q8so9786317oiw.7
 for <linux-phy@lists.infradead.org>; Fri, 11 Feb 2022 06:52:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=46nJd9VYthdKI2/dTQgQ5KJwSvr+W0mSUj90tGsID1w=;
 b=BagWQAwGVb9Q4cmgt9Ys9mnaOBevM1khHuJuiyA6jws3ZpgYuIsBVg+ROToujW5OnS
 oLoCJdHDL6QOlVEPq/vGxxNRkNM1qYh0eCthzaClHfqxP6K8xd+3+cj0T/jChZ1Yy1dA
 YB92uN0AzHawGDT16m5WdAJ8U5niYWYsQGOb69eWUz6YYHVtl3tgheZxydQvazkzMVOY
 CSpFLpiHikPL+vRealBLZ8+Pj4bbL7E/uP+0sURk3C+czNXD8enNfW5Fw22XXjFIzw2e
 DiY3hTdeFWu8LIvngeDHyoybgYLFxAcJvzEUw/I1XM9ppwOi0NDzK4+FbszJ6Lh6za3c
 G6eQ==
X-Gm-Message-State: AOAM530xr/nVEpcTerPk4hEBGkq2Fw3Wjo8SNiKzoraJyaulg+J8rpVF
 xbbrmhUGSZqTFnSqpuYUvQ==
X-Google-Smtp-Source: ABdhPJzjLt/nrOkIStmrf8fYfRIpHNQE7BswQGiucXY+k/ocnhmOjbldY/S0KRiqFtQgwkNuf/Haeg==
X-Received: by 2002:a05:6808:1b0a:: with SMTP id
 bx10mr344230oib.292.1644591171744; 
 Fri, 11 Feb 2022 06:52:51 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 w7sm9509991oou.13.2022.02.11.06.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 06:52:50 -0800 (PST)
Received: (nullmailer pid 348965 invoked by uid 1000);
 Fri, 11 Feb 2022 14:52:48 -0000
Date: Fri, 11 Feb 2022 08:52:48 -0600
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: vkoul@kernel.org, linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
 kthota@nvidia.com, mperttunen@nvidia.com, bhelgaas@google.com,
 linux-phy@lists.infradead.org, krzysztof.kozlowski@canonical.com,
 sagar.tv@gmail.com, mmaddireddy@nvidia.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, jonathanh@nvidia.com, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org, kw@linux.com,
 thierry.reding@gmail.com, p.zabel@pengutronix.de
Subject: Re: [PATCH V1 02/10] dt-bindings: power: Add Tegra234 PCIe power
 domains
Message-ID: <YgZ4QGokqbUbm2o7@robh.at.kernel.org>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-3-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-3-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_065253_124091_2B5217D5 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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

On Sat, 05 Feb 2022 21:51:36 +0530, Vidya Sagar wrote:
> Add power domain IDs for the four PCIe power partitions found on
> Tegra234.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../dt-bindings/power/tegra234-powergate.h    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 include/dt-bindings/power/tegra234-powergate.h
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
