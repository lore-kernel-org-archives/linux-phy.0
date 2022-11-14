Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC07C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 14:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhsW0ivcLSoFiJHnKKPErxdjDj7Fp4QkdEJX9qipwiY=; b=wkdcMjYKieiAE8
	M+5uMYZ2MuMu5L3HZvMpyLuJXcHVbQu5lsnmhF6yCKjez4degMyn/hnsDztn0jzpAZAkTIZE/NaHy
	PoIa7zHKwN7HUE6k9T4RmQyGAVA0Y+1iGCmFsDpEyQLweStEsTWaU5tL94hANQ14385cStzTVXq/A
	prD7klShBFCbliAeqQNDKLUYNDWf30IWyywbmFOdrU9a2Bwn4EWJr9hBBFPPpNvpFjXksGtWm5fvP
	gSf9JYVYB2tczHGnotuGg+dxetf9B+fxAkilLOcRoSfQJoFlYnE+V/j1jB8DkfUEtz4HSPRThWCg0
	jHAgeeV4DcfiMJc9Hofw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouaIr-001eDM-W7; Mon, 14 Nov 2022 14:19:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouaIp-001eCH-3v
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 14:19:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5F40E60F90;
	Mon, 14 Nov 2022 14:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA8FCC433C1;
	Mon, 14 Nov 2022 14:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668435548;
	bh=2aKLftbQ7d7X94QwhHlY7BeiBnwhGJBLiqbExnanIN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nnQcKOceHdszQBHmXt4YpVtWaHfZiYkZkfDpnusEGZrY4Vv9uQgnbVZQ/RGiPkgiZ
	 sFOzB9BZX66U2KnZBLMqcDHY29kn9iiWTe3h3PVkFaNL/Xs6uDKYoYOgNUIkB0iiJ8
	 mo7N1hmq6AH0lGstWNpaqYM+9z0rP3iil4q7QHpM5/XWyNf3y3AjecelEIYeIkN27N
	 YMOPJJP5miD+l9liUN5NBVknix+kLUq0KgMmDkvNK82Pi3HHIylg4Z0n7faO0Zuijp
	 RYzMFak/kf+i4ZMvtx7+ECmFlVwg7iNr7NaNmNJW73p6+OowEEEECZrwOISZVp5Q/h
	 q+8fOPLy6rA4A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouaIG-0003WR-00; Mon, 14 Nov 2022 15:18:36 +0100
Date: Mon, 14 Nov 2022 15:18:35 +0100
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
Message-ID: <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_061911_259466_F8917EFA 
X-CRM114-Status: GOOD (  33.11  )
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

On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2022 14:27, Johan Hovold wrote:
> > On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
> >> On 11/11/2022 10:24, Johan Hovold wrote:
> >>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
> >>> binding which provided multiple PHYs per IP block and these in turn were
> >>> described by child nodes.

> >>> +  "#clock-cells":
> >>> +    const: 1
> >>> +
> >>> +  clock-output-names:
> >>> +    items:
> >>> +      - const: usb3_pipe
> >>> +      - const: dp_link
> >>> +      - const: dp_vco_div
> >>
> >> Why defining here fixed names? The purpose of this field is to actually
> >> allow customizing these - at least in most cases. If these have to be
> >> fixed, then driver should just instantiate these clocks with such names,
> >> right?
> > 
> > I'm only using these names as documentation of the indexes. The driver
> 
> What do you mean by documentation of indexes? You require these specific
> entries and do not allow anything else.

I'm using this property as documentation of the valid indexes that can
be used when referring to clocks provided by this device.

There are currently three and the mapping is described by the
'clock-output-names' property.
 
> > doesn't use these names, but that's a Linux-specific implementation
> > detail.
> > 
> > I noticed that several bindings leave the clock indexes unspecified, or
> > have header files defining some or all of them. I first added a QMP
> > header but that seemed like overkill, especially if we'd end up with
> > one header per SoC (cf. the GCC headers) due to (known and potential)
> > platform differences.
> 
> Headers for the names? I do not recall such but that does not seem right.

Headers for the indexes.

> > 
> > On the other hand reproducing this list in each node is admittedly a bit
> > redundant.
> > 
> > Shall I add back a shared header for all PHYs handled by this driver
> > (another implementation detail) even if this could eventually lead to
> > describing clocks not supported by a particular SoC (so such constraints
> > would still need to be described by the binding somehow):
> > 
> > 	/* QMP clocks */
> > 	#define QMP_USB3_PIPE_CLK	0
> > 	#define QMP_DP_LINK_CLK		1
> > 	#define QMP_DP_VCO_DIV_CLK	2
> 
> What are these about? To remind - we talk about names of clocks this
> device creates. The output names. Whatever IDs you have are not related
> to the names.

As I mentioned above, this is not about the names that Linux gives to
its representation of these clocks. Its just about defining the valid
indexes in the binding.

If you think that that using 'clock-output-names' for this is a bit too
unconventional, I can add back the header with defines like the above
instead.

Note that the clock schema has:

  clock-output-names:
    description: |
      Recommended to be a list of strings of clock output signal
      names indexed by the first cell in the clock specifier.
      However, the meaning of clock-output-names is domain
      specific to the clock provider, ...

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
