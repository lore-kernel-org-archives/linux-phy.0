Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E33DC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 08:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3745INscGxrZQdW+ozOeCj28EAUYUJNMQjTI7L57mn4=; b=QTXtPECS5R0sfq
	uLR0XyMfclQzL1MlQxiT+WHq5P7yUd8WZwzn5/h81NopqytY+EkR3BW4OZjkYN7UaBKy5hFQ9pDt3
	dFrY35xAjJivxONltN0WBrOw67aF/202eNgOxewQaqpVj+BCxzxLyul8G3gnYM1S9B+2IosUrItuD
	EIGs83cI2I1tBMy9hhKC23H5+0Cdf2zi7rUsmxp4f0rTnvn1l2MgXplK/fwP+WkUIS+92E0khyucq
	Lxl3ogXe6uRcOWnitvvIU1VHA/tt7HOeh4tfRPlsgvuoCwp8+rppxIWjxSVqyVs3Si4+XjHNNxMYA
	2RSYa9o9BeY9fM8EHd9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxONN-0066Xw-Vw; Tue, 22 Nov 2022 08:11:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxONL-0066Vs-6v
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 08:11:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D0D3A61576;
	Tue, 22 Nov 2022 08:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34386C433D7;
	Tue, 22 Nov 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669104685;
	bh=EPQQOwK7ri32REuTW/k8a/b1T3JLvCaSgiYITbKyPfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gg+GYSG/xWG6ymJX3J6bsCAexrMP0ko0dZ017PEuZ/2xXqqWCkrutCaX9qd7kR612
	 nFF7dXrkTUrDau1huCUyF+btCNRkvpdSCyejzBVpIgzVoTExQI1moRQcT+JA0+ztzB
	 O4MJe+A3N4lqogCefnk5gCxlO156adbYK0P0yi14r+UJnASmFLfoYso5ovpVoRg4+u
	 nuGMqpkqe24NDJ2xXcirfUkXbK+W8WuVkZstlXod6fVK8q0dmH66iJI7c3o+efMQBA
	 P95ZnTWgvkOf7pUb5VFEiO1Py7/BEOmkZQp/6G6+J3cBzXerjV3GFuCTIe8DRuys6W
	 aSC12Ip5/CELg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oxOMp-0005jB-0M; Tue, 22 Nov 2022 09:10:55 +0100
Date: Tue, 22 Nov 2022 09:10:55 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350
 compatible
Message-ID: <Y3yED5jXn7/AwTS5@hovoldconsulting.com>
References: <20221121075358.76582-1-luca.weiss@fairphone.com>
 <Y3sxqUu0dnaQfdFY@hovoldconsulting.com>
 <COINW4PF8OS8.2QJZZKVL58FJG@otso>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <COINW4PF8OS8.2QJZZKVL58FJG@otso>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_001127_332787_C4088B6B 
X-CRM114-Status: GOOD (  21.28  )
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

On Tue, Nov 22, 2022 at 08:55:31AM +0100, Luca Weiss wrote:
> Hi Johan,
> 
> On Mon Nov 21, 2022 at 9:07 AM CET, Johan Hovold wrote:
> > On Mon, Nov 21, 2022 at 08:53:55AM +0100, Luca Weiss wrote:
> > > Add the compatible describing the combo phy found on SM6350.
> > > 
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > ---
> > >  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > > index 97a7ecafbf85..68aecb638870 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > > @@ -18,6 +18,7 @@ properties:
> > >        - qcom,sc8180x-qmp-usb3-dp-phy
> > >        - qcom,sc8280xp-qmp-usb43dp-phy
> > >        - qcom,sdm845-qmp-usb3-dp-phy
> > > +      - qcom,sm6350-qmp-usb3-dp-phy
> > >        - qcom,sm8250-qmp-usb3-dp-phy
> > >    reg:
> > >      items:
> >
> > The current USB3-DP bindings are broken and we should no be adding
> > further compatibles here. Please consider rebasing on:
> >
> > 	https://lore.kernel.org/all/20221115144005.2478-1-johan+linaro@kernel.org/
> 
> I'm not quite clear what you want me to do. Just rebase this change on
> top of your patchset and resend or something else?

Yes, you should rebase this series on top of the above, add
qcom,sm6350-qmp-usb3-dp-phy to the new (sc8280xp) schema, add a
register offset table for QMP v3 to the PHY driver, and update the dts.

Note that the USB/DP configuration structures have been merged (and some
config fields have already been removed in linux-next).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
