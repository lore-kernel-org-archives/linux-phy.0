Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FBBC43219
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWgxh6k6gwvvM0qhmBiRha0DNrre0nD38WJmDVrUtNc=; b=hRzvOOMtqhwpYU
	ELZGM0akDeUk6G8Z6wkDqw2e/amcnHXSrOst7lAbI31vUzEJwqJxByjImpLCamIYQdv2YO97wbwl0
	6Qc2Pr1BknG0cdCqsjpHfQ/CmmoURV8k+qms+MxqWywwt/o69lPmD8JfyKeJ5lIul71p0UWeXvOK6
	1v0NDIOBRVtEuNOBI/66MtRzaXe1nTosRt2cIYsElfzFF7kl7yVfSD6WnGYiOofeurO8yYVHWyKb1
	U+Vk7Yb0ftip0zz6SK8Dir0iI42ttqf5BC3G6qwooOeCsT4kAENmn8TrwYjYM+9F8f/HaX0pL88pm
	5MZs6lWRTNT+xjdH6k3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1fk-003jqi-Fu; Thu, 10 Nov 2022 07:08:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1fi-003jph-39
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:08:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B872BB820E3;
	Thu, 10 Nov 2022 07:08:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88273C433C1;
	Thu, 10 Nov 2022 07:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064099;
	bh=KlgwPbPJdZlbA8h/JRcQCOsToBsF/L88achaEzvG5/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fo4bQ/F4Ws1IPuNAtjxXf5aZUSsjkOUm3DhuNsBXthMvIw0DcaBd1L37Fbu6RgjAa
	 IfSuHbY9tw0V3Of65prbZV/uZIEetT2QeFDbGo5ZU2CghUcIZ76sLbR5z0bPv7xf1P
	 tRFEyBNEUNxKp315eDz9+Ms2a0aW9HQaqA8vpOX4Pv7MiBw0cGWNtsPpGU07vnB02/
	 xVLXb9BiCiDuvQOAAnNDVnt2kO9+Kx8AONLB0HVGOX3GtH7GAHr+8bwGgHN3zX9sEm
	 sgI2oWAvxESSBYEHjmxR3TokLpboyiuzYIzRm3322X961si8XMgwcTH0oCC1OIU8rN
	 h9SwevURL7ZYQ==
Date: Thu, 10 Nov 2022 12:38:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Robert Marko <robimarko@gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-pcie: split pcs_misc init cfg for
 ipq8074 pcs table
Message-ID: <Y2yjX+iVbE0CRE6n@matsya>
References: <20221103212125.17156-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221103212125.17156-1-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_230822_291246_2E07B8FB 
X-CRM114-Status: GOOD (  10.39  )
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

On 03-11-22, 22:21, Christian Marangi wrote:
> Commit af6643242d3a ("phy: qcom-qmp-pcie: split pcs_misc region for ipq6018
> pcie gen3") reworked the pcs regs values and removed the 0x400 offset
> for each pcs_misc regs.
> 
> This change caused the malfunction of ipq8074 downstream since it still
> has the legacy pcs table where pcs_misc are not placed on a different
> table and instead put together assuming the offset of 0x400 for the
> related pcs_misc regs.
> 
> Split pcs_misc init cfg from the ipq8074 pcs init table to be handled
> correctly to prepare for actual support for gen3 pcie for ipq8074.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
