Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C68B4C38142
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 07:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8spZvUlE0r6HOdiHSEilhGjeR4cTbpKNlSdJ5zBEXiQ=; b=iZ4vZ3Nu/eFkAa
	Mb/c2zZuTJ2Z4MO3kMCdFRCYuIbfIQD7D0jV/YiN6KBOEevhCv7unxLGI/cObA1u93Un/ZyP0C6Pn
	i24X9uCiAXQpSvYV4DSpYt3CBkMI4RnjEpXYJaihe7F9BBFlrLYH5gdiyALpoM/e+lfWEn20RnJ+v
	XZ0GQTuDJepxwIQWA9YPSyp9iipyIIRPkT1JvxhARBCG+js2nIQ2yeD0CIpWDybn/uPrmzhTxadUI
	h6Oggul/TfWEPjcgszIVMlvnaFuxyLl3bhZj2bbYWUh/eRSpnb4VcJugq19USqsEDUsNhmKnZCP23
	e/H6UP05wjKPpFEcQkSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIPXL-003szU-7j; Thu, 19 Jan 2023 07:40:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIPXF-003sxp-SI
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 07:40:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3121561B94;
	Thu, 19 Jan 2023 07:40:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE71DC433EF;
	Thu, 19 Jan 2023 07:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674114033;
	bh=HBcgxXlu9/ZACXw7g8KqVJy5ZYWiB2l1H7RYFxeC6fQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aikj+Tm0mxQSXuCWYiKIXLRj14UnB+nMSQhIyK8mH6yJLzfHKQc/rtTRBMy9Ln1CL
	 /ujxFOzacdbq8flTz7jBikUzUlx544jn/cTroWsxyZP7ksClAwTQOqyEG41doEER2j
	 JpOTbf4cl7dWwfUuyykuKegKtmz6nKKhsAOhBWrnqhCYkLMgoY3JEVnxAJ7Ku5ailD
	 IqTU+V+vR5s8YmnxQ/rTfNZh89o3XXv6vK4eFwzuSjiUGR4k05X2NpathNGO3xXhH3
	 FMumtZ3Xe8sATx8oksRCgca7KvmKLiDgRY2OE4dCzoD5ZyfgMu+JjEmuQDUzkFA1rK
	 aNHOe80fu4ImQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pIPXf-00055C-B3; Thu, 19 Jan 2023 08:41:00 +0100
Date: Thu, 19 Jan 2023 08:40:59 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Message-ID: <Y8j0C+rnUOMG6hLi@hovoldconsulting.com>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-2-abel.vesa@linaro.org>
 <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
 <Y8hjy8WRpPh8DVvG@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8hjy8WRpPh8DVvG@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_234034_028672_40A9AE2D 
X-CRM114-Status: GOOD (  27.08  )
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

On Wed, Jan 18, 2023 at 11:25:31PM +0200, Abel Vesa wrote:
> On 23-01-18 17:45:16, Johan Hovold wrote:
> > On Wed, Jan 18, 2023 at 02:53:21AM +0200, Abel Vesa wrote:
> > > Document the QMP PCIe PHY compatible for SM8550.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > index 8a85318d9c92..65f26cfff3fb 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > @@ -20,6 +20,8 @@ properties:
> > >        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> > >        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> > >        - qcom,sm8350-qmp-gen3x1-pcie-phy
> > > +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> > > +      - qcom,sm8550-qmp-gen4x2-pcie-phy
> > >  
> > >    reg:
> > >      minItems: 1
> > 
> > I don't think I'll have time to look at this week, but I did notice that
> > you fail do describe the clocks, regulators, and resets (as you also
> > did for the UFS PHY binding) which are currently different from
> > sc8280xp.
> 
> Hmm, sorry about that. I will double check against the pcie phy nodes I
> have for sm8550.
> 
> As for the UFS, if your are referring to the following patchset [1], the phy
> node looks exactly the same as on sc8280xp, therefore no other binding
> update, other than compatible, was needed.
> 
> [1] https://lore.kernel.org/all/20230117224148.1914627-2-abel.vesa@linaro.org/

Yes, but I was referring to your original submission which added
different names for the clocks without updating the binding. In that
case, those clocks were really the same ones as the ones on sc8280xp so
it was only the driver and dts changes that were wrong:

	https://lore.kernel.org/all/Y8And9VVvpnSInlj@hovoldconsulting.com/

> > Please be more careful when adding compatible strings so we get this
> > right. You should also double check that the differences are really
> > warranted and not just due the vendor using different names for the same
> > resource.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
