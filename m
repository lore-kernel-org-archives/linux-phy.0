Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46ABC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 10:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znMgrBXl8PeoG0Gi2w874qogtT8eoq0QJ+h3H4+osfI=; b=Sye6vQTbFbAF34
	T1tCTwPMMRextwvD9XitTweIYCSR1UfdRaScYKRMc5FvL3e6AW2LKnLzcNjlbrjOFEICVA8yaPaQl
	mvOtuw6WzvjtWc6aBIE4UfbUsUsMXwJZoB1Hsepg+gv49oVU+5FQzbw28ILTiEKITRgS33wdJ6+li
	V8+CKe3l4AldNWRfHgweE+VZQfnZIrjgO5dYL2glYBQZCWLb/3OsS+hMWnzW72jAYZHmFrBf9C1p9
	OsESmGxFsZQV9X1qoomRXDi8lPvpcG4mkpYveP8QYfDHozhpF/TeKif4Jbf2rZF6xHrhxd126wfYk
	DtACHmWwoE/w6d2NMwgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDikq-00HRFW-1v;
	Thu, 14 Dec 2023 10:15:44 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDiko-00HREf-0M
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 10:15:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7E80DCE2346;
	Thu, 14 Dec 2023 10:15:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7537C433C7;
	Thu, 14 Dec 2023 10:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702548938;
	bh=spD0AcUmHxYeiPYt/c3JhN1YM2jl2kjLtal2py7KBa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d+HvtCwnirQYqb0XbaZZISMF+cDLc/3vjA3UQTYQWPiM7Z67oMaX0TSMyybRQUwo3
	 VoH80XOrwpYpM+tma/YD2DjOzL/RnPF419qSrGIM82tSHG+nRcI7xozewZKviSs9Mz
	 RviVxNHT93s54OVcbGMkNUd+iiZUqIHuENqCtp6poC8CenDJLteveEAlVHawyyIctM
	 hnaWuLkLsiVCRH4oYptbvCWKi0GoRzUO9UQglIKK4wl0Z41N4h8U2umipGVKOiHQAp
	 wsqaBvgwqL/97KOepDh8TFUqA1+V8DLB8sRkUMQNDpQLrO8O98TyEqXdH9XFg/BvwY
	 quC3+8ZE6Sdew==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rDikg-0007zX-34;
	Thu, 14 Dec 2023 11:15:35 +0100
Date: Thu, 14 Dec 2023 11:15:34 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 00/16] Fix Qcom UFS PHY clocks
Message-ID: <ZXrVxmxY6wZprbBa@hovoldconsulting.com>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_021542_340590_8C41D916 
X-CRM114-Status: UNSURE (   9.90  )
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

On Thu, Dec 14, 2023 at 02:40:45PM +0530, Manivannan Sadhasivam wrote:

> This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
> of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:
> 
> * ref - 19.2MHz reference clock from RPM/RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (TCSR since SM8550)
> 
> MSM8996 only requires 'ref' and 'qref' clocks.
> 
> Hence, this series fixes the binding, DT and GCC driver to reflect the
> actual clock topology.

Is this based on documentation for all the SoCs or on inference from the
current (upstream and downstream) devicetrees?

Are you sure that you should not just describe that some of these UFS
reference clocks are sourced from CXO in the clock driver instead?

Take a look at commits

	f446022b932a ("arm64: dts: qcom: sc8280xp: fix UFS reference clocks")
	f6abcc21d943 ("clk: qcom: gcc-sc8280xp: add cxo as parent for three ufs ref clks")

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
