Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB09CCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 08:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrmfgOboeiFb5kBhZee5NQFZxqnYgUlkUIVRsp7UJuY=; b=C06rTO+bq4Eh9s
	TsWwY2cfkWJiRbj7HIQ72CDFzl/LUCmkbWW/AIIb61+oQzHOG753Y2SokPqZn+CcVEBv1cNaH/M6X
	VU7Nr+/6PqKItzfAfrlqWT5rqxeRgA4aECNhdlz+EIojsPYItOCG/cy8ErMmHgDduTCEt53nz44WJ
	gUqKDNDecUJUFHgVb8U/zArhrle2ZXH0QOxougCGfw3i6fcAepDssv712f/Gc6F5PznwvHgZ651gL
	89DFAyTbeZOepj6THnflDVwmzLOY8N6YSY8baPdUNazSdULUxz3k3hZ2FjrTHgRuxsKfXf4DdAaUq
	Jb7yW0NTBYDC0nJ3xUgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtxw-00CETW-I1; Thu, 14 Jul 2022 08:12:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtxs-00CEPS-JI
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 08:12:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6F3DDB823BE;
	Thu, 14 Jul 2022 08:12:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01EF6C34115;
	Thu, 14 Jul 2022 08:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657786369;
	bh=Ta1vn2x5HVKuOgcfwWuXxEO6fu8hsyoTtGuIzVqCGVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pZBnkvI26oawo/yamxGpGKg5YjDbIrkv/So6Jx6C3QXiQxCeQqny/o2DMAjo2mtgp
	 Xg7vuGcREtW8Ye2dbqmWuHSPo156X6S2QqfHpxcH96Da6+Sk8V7nL9xJyG4MXdYM96
	 PJhPysDIcOhOK86wAK/bPJVqf2wl9xJ9UusaQKWlZGHgWZhggo1SxpBgI1NgzTLF91
	 wzENR4I+VbEqOtNXJm3CJ8GvbFhM6aaGi55lyeeFVLoIWkrIOlZvTVjddSzpUyM5Jq
	 OdjLLne4ZD67QQVHAMO2b4aXJMPsG+0XY2dmkNTMOtIe/GIimaWjVIvRzl0sSbTpXh
	 XBjXDWNpo4HAw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oBtxs-0004Iw-Qa; Thu, 14 Jul 2022 10:12:53 +0200
Date: Thu, 14 Jul 2022 10:12:52 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Ys/QBPJmkWO6O3Fw@hovoldconsulting.com>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_011252_992703_701389D2 
X-CRM114-Status: GOOD (  23.65  )
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

On Thu, Jul 07, 2022 at 03:46:55PM +0200, Johan Hovold wrote:
> When adding support for SC8280XP to the QMP PHY driver I noticed that
> the PHY provider child node was not described by the current DT schema.
> 
> The SC8280XP PHYs also need a second fixed-divider PIPE clock
> ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> the clock name just to match the current "pipe0" name so I decided to
> deprecate the unnecessary suffix in the current binding instead.
> 
> To be able to add the missing child-node schema and handle device
> specifics like additional PIPE clocks, it quickly became obvious that
> the binding needs to be split up.
> 
> This series clean up and fixes some issue with the current schema before
> splitting it up in separate schemas for PCIe, UFS and USB and adding
> missing parts like the child PHY provider nodes.
> 
> The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> PHY that actually provides more than one PHY per IP block. Note that the
> "lane" suffix is still unnecessary and misleading.
> 
> The final patches add support for the updated binding to the (recently
> split up) PHY drivers. Included is also a related combo PHY cleanup.
> 
> Johan
> 
> 
> Changes in v2
>  - squash split + cleanup + example patches (Krzysztof)
>  - deprecate clock-names instead of dropping suffix (Krzysztof)
>  - deprecate reset-names instead of dropping suffix (Krzysztof)
>  - flatten child reg if/then schemas (Krzysztof)
>  - add back optional vddp-ref-clk to all bindings even though it likely
>    only applies to MSM8996/98 UFS (Krzysztof)
>  - add missing sc7180 schema to USB binding
>  - misc clean ups
>    - shorten or drop descriptions
>    - drop quotes around $id and $schema (Krzysztof)
>    - use maxItems with clock-output-names
>    - combine two USB clock+reset schemas
>  - add Reviewed-by/Acked-by tags

Any further comments to this series?

Vinod, I noticed there was a conflict when rebasing on linux-next due to
commit 85d43a69db2d ("dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3
PHY binding").

I'll send a v3 so you don't have to do the resolution, but I figured I'd
wait a bit in case there are any other changes that need to be made.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
