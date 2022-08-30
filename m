Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5D5C0502C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axWZX+omSKFJvBD852cT4DF0pD0wo6X3SZ4h7tf4MsI=; b=lrTz7imRzGr0ai
	80Z0QYgwUERqSg2sHu3VckDILCfa9GxlMmv3wjianqoOjJuEDJl5+Vi2Hw+71h+X/53k8nCDDZ7BP
	aULwg5HMuQEC4IyxAb+h1ol/zFOKs7zIGmDQ7hC1qWOhQUGTLtYy2vRDJ0OXrN4JdkkLC+t0+WDJF
	QpoHXf/onnc9z/CL5yVG0p7JgrT8TYKATWXiK2BKUG26zqt+HjaP2t/7OUk2FowSiu3bX4Slj+EPG
	SLkw5PZfDPYidLnuk39wN3qVWXqkxGXXVX79NNogQMdqmFX1IQN/uW+htSax7XjsFpLE38PqlestA
	DDbPMUcaG+VD/7xEIC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStSf-00E8JX-3K; Tue, 30 Aug 2022 05:06:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStSc-00E8IK-BF
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 05:06:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 86569612A5;
	Tue, 30 Aug 2022 05:06:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6312AC433C1;
	Tue, 30 Aug 2022 05:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661836006;
	bh=ASOn7IQszNk+VN/K8F4lja21kCAiyz6HLrdzvHYkXRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aSpMOTAF50Jycfw9ef+jyokGRBpmTKhDyuHeLrDoh3zBwoALkUoMMBJxIq0mqlc0U
	 zjmFO96lUoFAP1sC2wN3pFKnmP3JJ47QbNaLuwrnTzd/N5cZ8GmPl9VfDyLmsZ/mnp
	 LUX/3xoCdvltbTsT7oM2Lpg8aAEiagvkCW7EU3Lhysj+gM0L0Y3XGIPQlLDCZRwcAm
	 g6jfuf51gR48rOu0dU31K65mYNo4kzi82NwjnlerErNO+KT5PKiVAfaY4YnC6MeXtP
	 B6YJYWzVZ0xqPklWnO+8cGrVHDJISzg6zcMVebBt4x2bfODyem6SjlD4uL1aWAXtEH
	 pHtKdL+YzS6ug==
Date: Tue, 30 Aug 2022 10:36:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Yw2a44l9a6zz5qTJ@matsya>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_220650_492928_0244EFE3 
X-CRM114-Status: GOOD (  16.27  )
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

On 14-07-22, 14:43, Johan Hovold wrote:
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

This fails at patch 2 for me on v6.0-rc1, please rebase and resend

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
