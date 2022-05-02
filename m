Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4372EC433FE
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 22:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KY6U20SAlunIHcoIdkuX8jQP6rubvjHU0oYIPHGuSNA=; b=wgU0nsHCpf6Y2D
	zHvpVGWBWXfatESxYwfus3wRXW6KCHUKZ52yyGn0KCHI50H4vazxnvas8Bo3/M0apiWCfz0mEdtrm
	j6CvD7z/vYjunsxO0IZN9KXnpC49jDX+wtm1nGZhcJtzAmGj+cjrWLYwN/Mj68nkFL0vnkRYVfvR4
	cSZSwEaEAzNCt4gv6VYFmIGRY0MepGFd8kWlDRfQdU2ledjQYqWTQM2tCBwWlQk71oxob1c9MauH9
	Ux+EeOV6eL+eKsLmiRsIzprQBU5p2iggLe7n0nnJQcStEEFOGLGq+EHw6TVBFIKm+zxGr6AekxQI2
	P2+kRhgyodwNl8f/T7Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleWc-002vbK-Gv; Mon, 02 May 2022 22:28:14 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleWa-002vaO-4o
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 22:28:13 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 z15-20020a9d65cf000000b00605f064482cso7816637oth.6
 for <linux-phy@lists.infradead.org>; Mon, 02 May 2022 15:28:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AiUtMghJJu4VQTdQvZz9IOUZgagJkbQTTmej6MXeemE=;
 b=ykLQ6Zl7e4DszJdHqWIiBG4T4+5IOna+FMTTssrQF42w2hqu8bqNPrVBy0Wgobcfjx
 Ljrm9gq0UTDHBZlXCtXTMjSwcskDfAOWjQUxlO0hMR0viR2vY2pLx5Mdcc1hi65sbe08
 /891jRz9aD+BlMDdstm6nyhd14uor5QXxykXPZrOhSVVSfErflPNcUUa1rosFcAGzUxI
 SA8IFdH1rG37Ie5Smq1hU3CVhj/cwpwsy06ftEcqTBwXu4Iu2BSiFY0+nKikwjA/gWiW
 433UH8nTbqQc9HT6sP/O+ngOxPPMiY3gPlGg/E7VKShxS+ONUOPLNCykngXqLH4iVQgD
 Eexw==
X-Gm-Message-State: AOAM531nkq/GYwvui95ejUziIQ4+99JrqW2K1t0WmcugnlJpIex6+ybk
 4G49XnS/joV/OFN9YDvFNw==
X-Google-Smtp-Source: ABdhPJwOIV024X6NuWnmN5TD2GGMj37f7RXZ4V/jnn+IrfIC/dd9kAKtGJAe5eSOuCRTgrLmIvtxtA==
X-Received: by 2002:a9d:6442:0:b0:5b2:3851:597 with SMTP id
 m2-20020a9d6442000000b005b238510597mr4848051otl.247.1651530490037; 
 Mon, 02 May 2022 15:28:10 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 q17-20020a9d6651000000b006060322127dsm3314132otm.77.2022.05.02.15.28.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 15:28:09 -0700 (PDT)
Received: (nullmailer pid 1909309 invoked by uid 1000);
 Mon, 02 May 2022 22:28:08 -0000
Date: Mon, 2 May 2022 17:28:08 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 krzk@kernel.org, p.zabel@pengutronix.de, mperttunen@nvidia.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com, mmaddireddy@nvidia.com,
 sagar.tv@gmail.com
Subject: Re: [PATCH V2 2/8] dt-bindings: PCI: tegra: Add device tree support
 for Tegra234
Message-ID: <YnBa+I/PjQJXhACK@robh.at.kernel.org>
References: <20220423124858.25946-1-vidyas@nvidia.com>
 <20220423124858.25946-3-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220423124858.25946-3-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152812_222727_9DA087D6 
X-CRM114-Status: UNSURE (   9.41  )
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

On Sat, Apr 23, 2022 at 06:18:52PM +0530, Vidya Sagar wrote:
> Add support for Tegra234 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed review comment from Rob
> 
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 104 +++++++++++++++++-
>  1 file changed, 101 insertions(+), 3 deletions(-)

That's a large change, please convert to schema first.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
