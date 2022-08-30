Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E2AECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1cWvZ7IMehAuGkppz5jxRTGIYZdZZamkRdmvX/OxCY=; b=uhwkFkOtJMs1Tf
	PJZXtt1QYRcbCGUaS3Dr5dqy1IpxXcG7EThLM0c3MPdffD+oI64Nfrgy54E5BWA2DBSYFppSj7spC
	NvUhsG2ovfrHqxHa9ZpuWVRnHIRM1J7jUobYzdETrT9U6kifI0PcvqCi6JxK92JyQMpkJ1VIR/2rs
	3MV2J+NivhTTgxCzmNihrHipKNgg9yFkNNQNSGJAnI+UHJddz9chM+zUTX4ByAG2/nlgYNRAM6Yev
	uyuRL5gVYfIatFLAum47T/nPncoBcG+KOZF9QQmHXKFSEGAtjaCuInxXqyQpSuA36rJHT52+JjL40
	RBi3tgY7VzvRtya3Mhow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT1Ha-00HND1-C8; Tue, 30 Aug 2022 13:27:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT1HX-00HNBm-0K
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 13:27:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id D79F8CE1B6B;
	Tue, 30 Aug 2022 13:27:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3847AC433D6;
	Tue, 30 Aug 2022 13:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661866067;
	bh=TXqpwipXrCFOXYs0SO/ATLTbv3osWwnARbMr/g5ctNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SNdpqT1IdHN1TLHTOO196v77WO1akxWlNCXfJzbBJpYfHDDoyu2dzvf211+4gRAX1
	 0XZjUR+w9GRpqAJBu516p9ytYp6sJ/cP6q9oJqUvMm1Z2RYBP4/h31E7Iai3zITRB1
	 sAlTeA+9/LIh3K02Z3s1PyhlpR2Ci/W0c8gOMd8MTMpHy+oVyN950kzCzMyrtRzF3Q
	 Q8c4O7FiILy3d6xNUm9lOakdQ3VVRVDOrPX3dMAVu2K+NqkZgnw7Ay7Jt/20fFp5y9
	 4Rzls+9aoS9Cjkeeh1u9YxOohkBvWyufgyDPjueuRtEQpwxGaSE6wOypqCpxMuWbWG
	 yDgctJRueQ0Cg==
Date: Tue, 30 Aug 2022 18:57:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Yw4QTrLDmTaoaYJ5@matsya>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_062755_565865_CD35C0E6 
X-CRM114-Status: GOOD (  15.80  )
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

On 30-08-22, 13:28, Johan Hovold wrote:
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

This applied fine, will push after tests run

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
