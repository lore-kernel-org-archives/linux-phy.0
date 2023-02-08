Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E85E0C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 17:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JQ4eafZvnZAw02nFYxdM85SNoHesJzy+xhe/1RJ5pQ=; b=sKu6AQQSwFbFEg
	RQECRiDPez6tVVnUkedFsn8yfbq7F4/HcUi9yML11U1ehfrE/G+S3X70awK5u1xvgpEb06gqmvCsj
	31kFrdsH6QVtYp9C1a71Ie3p+22AO5gVINALOH9SHY8N2tl0yeePb8B2OA9W6SsOBDTDrWOkXlywd
	NoJc0HaSsQhKnqJ5VE8ZGKkYROFV2iRK6CN3jJCf2jgRS3QxsRnVqiqoQkVLtiGlJWFR2BRrxhZLl
	kwjP4U+4fp4gCIhPE0AH1A2YRHRSKo/91cxNF0q7VBLo1zn9C0ZUP1nTc1i58/XjkLPjJXNk73b2Y
	5EOWKRqzCxzwHmjVKYXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnpk-00GOcN-Ao; Wed, 08 Feb 2023 17:02:12 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnph-00GObe-5E
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 17:02:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 842ACB81EFC;
	Wed,  8 Feb 2023 17:02:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34EF0C433D2;
	Wed,  8 Feb 2023 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675875726;
	bh=3ZyZSuxLgOVSbmsiuApSazgDfWS8B/5XcDR6ffVD+no=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HPiujLZmQNiWayDi2UAfZQZEuvbAZsbFUgzwLHCz+RBFiRymkyNTTFKpejhfpS2DM
	 TfxH6dVkPfxBxw+HeHaP3SIZOmwN/VwmY1Dv7kzuwDV2eIqEuXhFFzoCT70M5v0C0A
	 eErw/w+H9tl7D7BogvAB0BkDSaUKxbTgYF/6mAT1/fMCs/97Oft2jFE03AkKaXJuep
	 /ocp7c9ZxTmXAflVRD9GODrLq7RbYK++pX5iNmA1WyiAqCCiBnwfhaaJyZn9hHoS/i
	 66hxbgHXEiAW2/Rd4YvltlLhgOQmMZyQL45432mn80pZTIzAw8epu2pyGdtriK71Bk
	 g6Ua73fwFptCg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pPnqF-00064K-0i; Wed, 08 Feb 2023 18:02:43 +0100
Date: Wed, 8 Feb 2023 18:02:43 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 11/11] arm64: dts: qcom: sm8550: Fix PCIe PHYs and
 controllers nodes
Message-ID: <Y+PVs8JFKVslbELE@hovoldconsulting.com>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
 <20230206212619.3218741-12-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206212619.3218741-12-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_090209_362120_A30C2460 
X-CRM114-Status: GOOD (  14.29  )
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

On Mon, Feb 06, 2023 at 11:26:19PM +0200, Abel Vesa wrote:
> First, move the pinctrl related propeties out from SoC dtsi and into the
> board dts and add blank lines before status properties in the PHY nodes
> to be consistent with the rest of the nodes. Then drop the pipe clock
> from the controller nodes. Rename the aggre0 and aggre1 clocks to more
> generic noc_aggr. Add the cpu-pcie interconnects to both controller nodes.
> Rename the pcie1 second reset to link_down and drop the unnecessary
> enable-gpios. Switch the aux clock to GCC_PCIE_1_PHY_AUX_CLK for the pcie1
> PHY and drop the aux_phy from clock-names. Also rename the nocsr reset to
> phy_nocsr. With this changes we are now in line with the SC8280XP bindings.
> 
> Fixes: 98a4dc3a78fa ("arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> This time, this patch actually fixes the already merged PCIe related
> nodes. When compared to the earlier version of this patchset, this patch
> leads to the PCIe nodes looking the same. Sorry for all this mess.

Looks good now. 

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
