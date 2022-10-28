Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B77ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 06:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGvAVDle9Jlkqq6X/vleUH3s23+RTPAFq6WfmiJ/Uis=; b=deYtiNYPB344VJ
	wlEBaZwo48t3VRO9iyrvHXhdW9P7GPYxEZj2O2uFabkUOB7E1j97Un+fZcA59IFMkDvpRjyL9Fv6V
	vcXvhSNbwNKl6aF9L3XTNLDW4X3dserR0jagYm0M4FlK8Q2iblMvAmV+9/tbJy8HBOTizZvWUFHH/
	mbmH2yt+wtACfXvM1ymf+4einYoBW1coIJNgk2hh96ofXLivXLAmkYKgqPHgoumIMvEMKOqe/kUcS
	yNcERmAtxm+HAEjpjLMUffwvW8/AHvFJlOw1PdsbASv2ORKm13ggxNMGs0zky5VAUsp2KGl3vKyXL
	KBGU2ugFwK8JnqCjWl+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooIYh-00Fsn3-91; Fri, 28 Oct 2022 06:09:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooIYe-00FsmO-88
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 06:09:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 206386262C;
	Fri, 28 Oct 2022 06:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEA9C433C1;
	Fri, 28 Oct 2022 06:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666937367;
	bh=UuiTRQk+7GReGbCZDOgtZ7lgyZlujMjbgmrzbepu8Xk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eHQUOqee88v8iCfjOZ2CPFb5YlM53mWWj5Ok0KL2pun8rat0+daypr40Y+y5MKpUq
	 ABX+HsUoonKyodFi2MUkpcrCLLL/dxFH3D6H7EyT+6KhjUcfqyEtgqBcLIdmbndQ1i
	 cM1Oy627YyW9jKVgoUgJnk1JjHL6u7s7SwTHOysyHkssa3q8P09+YvDsltQoJirquF
	 v5B3+GwqllIOHkqwl61iCmRb89GHWf8HsFHgOMNbY9bWruROAEFnQ3px2xqmMgvmJV
	 sFWUMQykws5bZADx5WATTucBRRV3uZqkZQKbvnOttf6Ioe8xNeKJf07zAGkdcvkYcA
	 9sSLVRLC43xtw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ooIYJ-0005Km-Uy; Fri, 28 Oct 2022 08:09:12 +0200
Date: Fri, 28 Oct 2022 08:09:11 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
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
Message-ID: <Y1tyBw2iQvV89+UB@hovoldconsulting.com>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-12-johan+linaro@kernel.org>
 <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9940701-8486-5a0c-4c7d-9c85b9460a7f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_230932_356228_435AA801 
X-CRM114-Status: GOOD (  16.57  )
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

On Thu, Oct 27, 2022 at 10:15:45PM -0400, Krzysztof Kozlowski wrote:
> On 24/10/2022 06:06, Johan Hovold wrote:
> > The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> > PHY binding which provided multiple PHYs per IP block and these in turn
> > were described by child nodes.
> > 
> > The QMP USB PHY block only provide a single PHY and the remnant child
> > node does not really reflect the hardware.
> > 
> > The original MSM8996 binding also ended up describing the individual
> > register blocks as belonging to either the wrapper node or the PHY child
> > nodes.
> > 
> 
> (...)
> 
> >      then:
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..95ee81d782f9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml
> 
> Filename based on compatible, so in this case
> "qcom,sc8280xp-qmp-usb3-uni-phy.yaml", unless it's like the PCI case?

Yes, you're right. Thanks for catching that. This should be the only
sc8280xp USB PHY compatible so the file name should be updates as you
suggested.

I'll wait a bit and see if Vinod has any comments before respinning this
series.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
