Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CEEC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvymQMNGgQ/Ct1ceRkoYbvBYGVFnYdnK9QIhv11XzL8=; b=eC+q18q8+5lNZL
	G+JM5ug6swo7JS0ELCCzN6MaVSxHjudhtWNDwK702pLYF7fjGyBm8fD7LnJ7y4wWDhG7U28i0VU4k
	KvFL3Xnq8rFBSxr/aTIiqdFQEqhJarzg+cm2SzCwId7uJef6b+YICRGgeW5Cr0l2xJfbHyj/03gfZ
	8KLvQhvEXfCbYPrAQwZ82ztUjMAcRsNuh0K0yCBXxt9RF/uzxg2eObips943xWguCi63DP0x02cQu
	BSVYIjYqrYD7D5k5WSTRJEdz/MR++bEjnEr/Kbpq2fs7a9qDbpEzQM0c5uvvkjBfc7r+2c/veW6Iy
	FCrWU68s/36vrzYj0gJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouce5-002r2O-Vu; Mon, 14 Nov 2022 16:49:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouce3-002r16-6U
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:49:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A9115B8109D;
	Mon, 14 Nov 2022 16:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E2CCC433D6;
	Mon, 14 Nov 2022 16:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668444552;
	bh=LuJxQ9ZanWwnw6gRktwMAxkqB/xkzJBmxo3YkByYA9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ceHRkkVHhXHdYIA5qM3TOM53J0yknkuAm0/hqLxZTaEEg7wILiap84KIy08zO+IqN
	 WRpfRlwc23A7NxuimodBlrgbL58XAk/YjRN269HxMKl0Ekg7iXs1efW1GSd7qZXYSd
	 5jdg6nthpl+hAAyykmMdUAaPzE/mOI5KV8wKLXwW4MeBWo1F2MD3kjM+dik+l5df2F
	 bFQ/EmKVmd/rTDSXTAUenNoOGaq4TiOPFVs4/7UAjw7n4HPfu2ZyGqsAO9agkvAESY
	 PNp1nW1iVj3mHemhWa3sMLmQtoAQNQs3r+2QpOMxh2A1+z002TmPI+MlUc/Q740YZ3
	 FgEOVC0+2fPfQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oucdT-0005EO-Oy; Mon, 14 Nov 2022 17:48:40 +0100
Date: Mon, 14 Nov 2022 17:48:39 +0100
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
Message-ID: <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
 <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_084915_399414_8F317706 
X-CRM114-Status: GOOD (  18.11  )
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

On Mon, Nov 14, 2022 at 05:39:26PM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2022 17:32, Johan Hovold wrote:

> > Fair enough, I'll drop it. But there doesn't seem to be a good way to
> > describe the indexes currently and most bindings simply ignore to do so.
> > 
> > So what is the preference then? Just leave things undocumented, listing
> > indexes in a free-text 'description', or adding a free-text reference to
> > a binding header file and using those define names in a free-text
> > 'description'?
> 
> Either 2 or 3. Several bindings for small number of constants choose
> option 2.

Ok, we have three now, but USB4 will bump this to ten or so.
 
> > And if going with the last option, does this mean that every SoC and PHY
> > type needs its own header for those three clocks or so to avoid having
> > a common dumping ground header file where indexes will not necessarily
> > be 0-based and consecutive.
> 
> phy-qcom-qmp-combo.c has one qcom_qmp_dp_clks_hw_get(), so why would you
> have many of header files?

We don't know what kind of clock outputs later revisions of these PHYs
will have. The only way to guarantee 0-based consecutive indexes appears
to be to use per-SoC defines (e.g. as for the GCC bindings).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
