Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F639C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 14:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SyaUEtNPML0l6e7xfYYlNNY6lsT+71IVwD+wZcWpnM=; b=Z+sAdwFfuey1UA
	kI18CoLhTyGczNq8OWho6hgvFqNscW5yBNhHXwivIz4tOyzKC+gW/30g0dwccTpwPkSbk0qyf8PrM
	/wx6vcbVlvkK+6P3dqwMy+HPAes16Y+wz2Kl9VSHZYJxmqxawGGy1a6okoWQMtqgquKHBC+1dSAG3
	nOymxd8e3jFaitATMRWVTqLtS25e82wZwqXnW1EeEC2sTFATlDIWYkQ4oEYD9dvzhlh2/C6HazhMm
	WGpIPHHMQpFpT1GSST9bJgcKHYg9Ug+fGd4bx1/BrsFLgjMxqYndpKW3HstjBjmO7zgZAVO0sn6ya
	Oje2ciQfEEBxxA8ahjjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouwqb-00BrUa-RI; Tue, 15 Nov 2022 14:23:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouwqZ-00BrTG-0F
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 14:23:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D6981B81923;
	Tue, 15 Nov 2022 14:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 612C4C433C1;
	Tue, 15 Nov 2022 14:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668522207;
	bh=6MybgYS++YBsa14WSMeMsE+CurMBOnWwTePlaWVNdAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bXBhJuDfqCrmRoK3Wouw3dWT4IdtX2aEnsUF+G9YfKy/vi1bX/0NIMCCOoy4IF08Z
	 UBA3zFlrHBfXg4Rosxr2K3VI525n+8TNv5rxqvMdMA2fU9gRBjtrc8FIYHFMTd4kx/
	 kpcqRz8Py7MK8/k/CIajiPSqGmrS/ihoh0OZvDQxbVhFHxadK9hG8VhcTPRNehOvoz
	 bSnJSdAoQ2vcGfbZIR5IcBNPkjCwvsp9kVjPecFnVtHF1ffFQsxCI3iGn3ljrcO3Y9
	 y/qebzR3/zDueIByh8KYxb+TlP3L6JZWsjGnU3hrrUOHo8ombknmlyoo3WsuRck3kp
	 g2SdLMD4Kkg/g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouwq0-0000Nf-NH; Tue, 15 Nov 2022 15:22:57 +0100
Date: Tue, 15 Nov 2022 15:22:56 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3OgwLlNaqcd5SwW@hovoldconsulting.com>
References: <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
 <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
 <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
 <8420c342-9dce-aea7-8d1e-f141e0c1ebb5@linaro.org>
 <Y3J2AjjjsybI9mKd@hovoldconsulting.com>
 <61df3c4f-f41c-9525-606d-1b8261163080@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61df3c4f-f41c-9525-606d-1b8261163080@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_062331_386512_0523C31F 
X-CRM114-Status: GOOD (  28.89  )
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

On Tue, Nov 15, 2022 at 09:12:54AM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2022 18:08, Johan Hovold wrote:
> >>
> >> Which is also fine. I don't understand still why it is a problem - even
> >> if you have multiple files, one for each SoC/phy. If USB4 brings here 10
> >> more clocks and other SoCs/phys might bring many more options, then what
> >> else can you do? Grow the binding file with big text-based mapping of
> >> IDs? It's not a viable solution. Header or headers is the only
> >> maintainable way for such cases.
> > 
> > So then we must add per-SoC (and PHY type) headers even if we can
> > possibly reuse defines from one platform for another as long as they
> > appear to be similar enough?
> 
> No, you don't have to. I just got impression that future devices will
> bring so many changes that anyway you will end up with per-SoC defines.
> 
> > For example, using a "SC7180_USB3_DP" infix
> > for the current platforms and add a new series of indexes for SC8280XP:
> > 
> > 	QMP_SC7180_USB3_DP_USB3_PIPE			0
> > 	QMP_SC7180_USB3_DP_DP_LINK			1
> > 	QMP_SC7180_USB3_DP_DP_VCO_DIV			2
> > 
> > 	QMP_SC8280XP_USB4_USB3_DP_USB3_PIPE		0
> > 	QMP_SC8280XP_USB4_USB3_DP_DP_LINK		1
> > 	QMP_SC8280XP_USB4_USB3_DP_DP_VCO_DIV		2
> > 	QMP_SC8280XP_USB4_USB3_DP_USB4_PCIE_PIPE	3
> > 	...
> > 	QMP_SC8280XP_USB4_USB3_DP_USB4_RX1		9
> 
> The names are just a names, you can even use QMP_SC7180_* on SC8280XP.
> You can skip the SoC part and have something shared. We already have
> such patterns - although maybe more often for outside components (like
> PMICs). The differences are:
> 1. For per-SoC name it's quite obvious which clock is supported on fiven
> SoC,
> 2. With shared names, you should document somewhere mapping between
> supported clocks and SoCs. Also what to do if new device comes with 10
> new clocks entirely different - re-use/map existing defines or add
> completely new set of 10 of them?

Ok, thanks. I'll go with a common prefix per PHY type for now, and we
can worry about hypothetical hardware revisions later.

I'll use a "QMP_USB43DP_" prefix for the new SC8280XP binding, which can
be reused also for the older SoCs with USB3-DP PHYs if/when we convert
them as their indexes will be a subset of the SC8280XP ones:

	/* QMP USB4-USB3-DP clocks */
	#define QMP_USB43DP_USB3_PIPE_CLK	0
	#define QMP_USB43DP_DP_LINK_CLK		1
	#define QMP_USB43DP_DP_VCO_DIV_CLK	2

Since I'm adding a new header anyway, I decided to go with dedicated
indexes also for the PHY selection (instead of using the PHY_TYPE
defines):

	/* QMP USB4-USB3-DP PHYs */
	#define QMP_USB43DP_USB3_PHY		0
	#define QMP_USB43DP_DP_PHY		1

I'll add these to a common dt-bindings/phy/phy-qcom-qmp.h header so that
it can be used also for the UFS clocks (with a "QMP_UFS_" prefix).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
