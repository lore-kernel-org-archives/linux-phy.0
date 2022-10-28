Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73C1DECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoMWkCoEQEaF0h+P7HjnKlkVrFnIrX7FYACVbz/Aenk=; b=1RRJefi3YSy/Ae
	AP3+QrHXCFPyH1ePoDjREpp+iG110naFfkdhtpbPhtiV0EveZ5LlXAdzJhlOwl0RhFJ+rWgoJKVdT
	HVHbMj2XWuzWpenfUesW4mFpZyuCt7Q8+WiP16y7WYaqOWJ+7jWWljGC2JsvYSLC6xdbS73y7NeD3
	U9D1paMuOZ4lKcdDRHMNhErO8SzTL6lV+A0CwReoeDbgm5XJ5WwwJogCxzVbweHwz53kSzD60Jl+D
	Gw3M9FelrHAeVRmUgp1xLBIE/nsKsM/5X6tffZWTNX8C8we4WPg7hFI84aFKp113dxrpd1mHS1S5q
	lUloEuzHnWU1LOQQ7iTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP3Z-00HDqs-KS; Fri, 28 Oct 2022 13:05:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP3Q-00HDjn-NR
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:05:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3C08362841;
	Fri, 28 Oct 2022 13:05:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5C0FC433D6;
	Fri, 28 Oct 2022 13:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962343;
	bh=fWTLQkHg0kXZkdXLU2JEa23QeLvNM23OHgnTkuCfUdg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ww0pFcRilUvnjfM4W+Dgyi8JNYcnfF1lQkgbl81ew0dyq4gmRj2xnPrxxL/K50aH9
	 L/xgzIEAl/V5Z1BEBflHVwqUTdtnWigsD9dvLATqhpHDQy3cSRqnqjQfV2fevKD0Ah
	 4Y0yF+JgtdWNgb008x2szhQqlp/KmNFl35W1WYxnMyGaRP8Coy9CJcqpia+JQdmftu
	 +I9La6FTeU8Z0AD7UI37cHgPd8IU9Bzb+DsrkzjAjuE1ahqXdfUnsuI3mJ4Qm2fpIQ
	 2Q1wAOv33KTSASt/fIqgqTCyEER/x+R6M6WGPpuIrulNqF880NdzhSIrfPgoj2OYLT
	 3lIO6DRDOwdjw==
Date: Fri, 28 Oct 2022 18:35:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp
 binding
Message-ID: <Y1vTo1JG8ZxeDMCX@matsya>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-12-johan+linaro@kernel.org>
 <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
 <Y1tyBw2iQvV89+UB@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1tyBw2iQvV89+UB@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_060544_858312_0A7F1019 
X-CRM114-Status: GOOD (  18.49  )
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

On 28-10-22, 08:09, Johan Hovold wrote:
> On Thu, Oct 27, 2022 at 10:15:45PM -0400, Krzysztof Kozlowski wrote:
> > On 24/10/2022 06:06, Johan Hovold wrote:
> > > The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> > > PHY binding which provided multiple PHYs per IP block and these in turn
> > > were described by child nodes.
> > > 
> > > The QMP USB PHY block only provide a single PHY and the remnant child
> > > node does not really reflect the hardware.
> > > 
> > > The original MSM8996 binding also ended up describing the individual
> > > register blocks as belonging to either the wrapper node or the PHY child
> > > nodes.
> > > 
> > 
> > (...)
> > 
> > >      then:
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> > > new file mode 100644
> > > index 000000000000..95ee81d782f9
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> > 
> > Filename based on compatible, so in this case
> > "qcom,sc8280xp-qmp-usb3-uni-phy.yaml", unless it's like the PCI case?
> 
> Yes, you're right. Thanks for catching that. This should be the only
> sc8280xp USB PHY compatible so the file name should be updates as you
> suggested.
> 
> I'll wait a bit and see if Vinod has any comments before respinning this
> series.

lgtm, pls respin


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
