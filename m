Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B22FC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha8Etx0xLV5kBbwYD2g9MGTGaqaW2JNh3ELcwwv+YVU=; b=eT79LNv8c9PAxU
	S6WVYA0JkgeSbZIcPlEtkTCVQ7pPIW694BaS4j1SL/oYuJMotmrF1PFQvedkaQdKoJe7D3+mVAMyO
	GVIhTofUdgjfAyBv8q1hllNyUbI9eVSiymZjw8GgEIau4/hhwinS8Gr7meNYRidY0kVdN0MTooC2B
	1dfnz+fLSij4FN6VSGKOsjflumv+FnLN6/njVWXIy1zjA39QdTKY+712HVVrctCOihl/Zvtjh8NZM
	CVtucWnCgix3kxbhqpiJS8ucgGTwsBhN+mXyIgstglylKjQXS6iNOxdJ4fqXrbGHd3c+ZbXayvl/Z
	bsNzQ7lxRmfKms4HEK4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubYJ-002JHV-JR; Mon, 14 Nov 2022 15:39:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubYG-002JFL-IJ
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:39:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D20B061252;
	Mon, 14 Nov 2022 15:39:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D6E3C433C1;
	Mon, 14 Nov 2022 15:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668440351;
	bh=mA1KjzPbfAQAfbaA1//CTR8f6auD5NBTZPXJkdjuph0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e+GIgsB99NI6a1guMLfwim6sPGuWTbYWG70mGVUecec1A59sE+3Jf8PZBYQl3p35h
	 tAOnLGlAiZbkV2ZeXsCeN6hsZJcZtr5ON6okWWjQufi+dk5sehYm90VYknr6kOeFnQ
	 emiGZdIzwl71nmeMc5ReFFJp3iRpSthweREHPzVymNmuXzPq/SKIAQV0LLN5BAjG5F
	 cGUs6WEOsHFZKQ65c26ZYKAlbvlfXwkcm4wZJO+aM6p7QL2h03HcejFyfgK1pee75N
	 kNELUZlZ9ZteHmeAbk11n5hl27ZhZ47/I7ZSdqDjdp75xVkq4TRcgGOxaCP/Ukzwd4
	 lqaDT/CdV7viA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oubXi-0004Jr-IE; Mon, 14 Nov 2022 16:38:39 +0100
Date: Mon, 14 Nov 2022 16:38:38 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3Jg/qmMW3rC5Okc@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <78cda6f8-849c-219a-8dbb-966c283c1a92@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78cda6f8-849c-219a-8dbb-966c283c1a92@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_073912_695238_95AFCB2A 
X-CRM114-Status: GOOD (  22.42  )
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

On Mon, Nov 14, 2022 at 06:19:25PM +0300, Dmitry Baryshkov wrote:
> On 14/11/2022 17:18, Johan Hovold wrote:
> > On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
> >> On 14/11/2022 14:27, Johan Hovold wrote:
> >>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
> >>>> On 11/11/2022 10:24, Johan Hovold wrote:

> >>> I noticed that several bindings leave the clock indexes unspecified, or
> >>> have header files defining some or all of them. I first added a QMP
> >>> header but that seemed like overkill, especially if we'd end up with
> >>> one header per SoC (cf. the GCC headers) due to (known and potential)
> >>> platform differences.

> >>> Shall I add back a shared header for all PHYs handled by this driver
> >>> (another implementation detail) even if this could eventually lead to
> >>> describing clocks not supported by a particular SoC (so such constraints
> >>> would still need to be described by the binding somehow):
> >>>
> >>> 	/* QMP clocks */
> >>> 	#define QMP_USB3_PIPE_CLK	0
> >>> 	#define QMP_DP_LINK_CLK		1
> >>> 	#define QMP_DP_VCO_DIV_CLK	2
> 
> Maybe QMP_COMBO_USB3_PIPE_CLK, QMP_COMBO_DP_LINK_CLK, 
> QMP_COMBO_DP_VCO_DIV_CLK?

"COMBO" is just the name of the Linux driver and does not belong in the
binding.
 
> I'll then extend this header with QMP_UFS_RX_SYMBOL_0_CLK 
> QMP_UFS_RX_SYMBOL_1_CLK and QMP_UFS_TX_SYMBOL_0_CLK.

Yeah, I had those in mind when creating the header and using a generic
QMP prefix (even if I didn't end up using the header in v1).

This could just be mapping of (arbitrary) QMP indexes to clocks and we
use it for USB3, DP, UFS and later also USB4.

This will however mean that the indexes are not necessarily zero-based
and consecutive for a specific SoC and PHY. But that's perhaps a
non-issue (cf. the PHY_TYPE defines).

We'd still need to describe which clocks are available on a particular
SoC and PHY, and that's partly why I used 'clock-output-names' to fix
the mapping in the binding. Guess we can just list the valid defines in
the property description as I did for #phy-cells.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
