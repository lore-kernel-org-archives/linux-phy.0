Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27446C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xg5n6yyjPS1a0t9/h10L09qmLdshtkwCWVOHuNLbJE=; b=yggUQj9ZsILEom
	28lcID1AEt41cxVqni2c5NOWeANhS3gB/44z2nXAh7JfK/vv94LrxQPRx+niAXeboH4KKcXw1QYQO
	C2RWVBLYAp8ex7CQeqm1XTroAD/14CxONhh25sT/TSabdHhUz4C4keWZ3tTiGjjlYwLfZ+1mfo05z
	Qij5DcYhnsNU6XnP5Bldlnb63x4dMmJPE/SUP3nImW/a6l6a1l1m16scXOTZrd24izcva3vAvy73l
	88E9Lw9z8gYCZLYSAD74s+VhhYLb/JzVv8FTfSTS8h3d0aQ4dDQVoAZpduoZqBDcg5F1ZyntNTnnL
	OLVYvRifrSlp3Ph7pAEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucO0-002k22-Io; Mon, 14 Nov 2022 16:32:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucNy-002k0m-5K
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:32:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AB86160F6E;
	Mon, 14 Nov 2022 16:32:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12299C433D6;
	Mon, 14 Nov 2022 16:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668443557;
	bh=FeL8hcVZ96Ig1ibWMn9cO+EXY2FFjExd+//b5d1iIc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jMYOPnLTplQBPVAHaO2nCtUSFDjwM/toHZ762LZLbRkMcs2XWfc5LjuAIIwLquvdK
	 1c2NNmpsthyGAq96yNSAS3PSg78vMdErfUQwHUhjXMX1PQG8xWD6MU+Pr8Ty6aYCXl
	 UthNmMyLVTOMN23c1IiAMvLR+8EUT1rDuWajW1NFGlQplQSS+Lksp5DWKoFcdGibX7
	 rSRvWrovNZ07+CUmYQ6hDShK1Wu7SVxpvFfZB3go24OC/whaqmhjIBrXU8WJ7UAyNE
	 Czm/91mSOG0RiLPyNkaLQrpYVufYhd+C0V3juJmxI+pCE8D0dgrL34ZP5fG1NbrS17
	 0CYvPRdQ1HiTw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oucNQ-00051w-BM; Mon, 14 Nov 2022 17:32:05 +0100
Date: Mon, 14 Nov 2022 17:32:04 +0100
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
Message-ID: <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_083238_304489_81FBD6F0 
X-CRM114-Status: GOOD (  24.58  )
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

On Mon, Nov 14, 2022 at 04:49:37PM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2022 15:18, Johan Hovold wrote:
> > On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
> >> On 14/11/2022 14:27, Johan Hovold wrote:
> >>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
> >>>> On 11/11/2022 10:24, Johan Hovold wrote:
> >>>>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
> >>>>> binding which provided multiple PHYs per IP block and these in turn were
> >>>>> described by child nodes.
> > 
> >>>>> +  "#clock-cells":
> >>>>> +    const: 1
> >>>>> +
> >>>>> +  clock-output-names:
> >>>>> +    items:
> >>>>> +      - const: usb3_pipe
> >>>>> +      - const: dp_link
> >>>>> +      - const: dp_vco_div
> >>>>
> >>>> Why defining here fixed names? The purpose of this field is to actually
> >>>> allow customizing these - at least in most cases. If these have to be
> >>>> fixed, then driver should just instantiate these clocks with such names,
> >>>> right?
> >>>
> >>> I'm only using these names as documentation of the indexes. The driver
> >>
> >> What do you mean by documentation of indexes? You require these specific
> >> entries and do not allow anything else.
> > 
> > I'm using this property as documentation of the valid indexes that can
> > be used when referring to clocks provided by this device.
> > 
> > There are currently three and the mapping is described by the
> > 'clock-output-names' property.
> 
> That's not the purpose of this property. Drop it then. The names do not
> define the ABI and do not document it, actually. You require now that
> every DTB, if providing clock-output-names, will have exactly such names
> instead of having fixed IDs. DTBs are not for defining the ABI.

Fair enough, I'll drop it. But there doesn't seem to be a good way to
describe the indexes currently and most bindings simply ignore to do so.

So what is the preference then? Just leave things undocumented, listing
indexes in a free-text 'description', or adding a free-text reference to
a binding header file and using those define names in a free-text
'description'?

And if going with the last option, does this mean that every SoC and PHY
type needs its own header for those three clocks or so to avoid having
a common dumping ground header file where indexes will not necessarily
be 0-based and consecutive.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
