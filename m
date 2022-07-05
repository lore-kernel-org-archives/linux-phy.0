Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 306EEC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0l+BJ9BT44qVW0CNAT72BYjioYUodLS71RIpFqbiHA=; b=PuiyOb3tQgSkhK
	TIDzknWv66Uieyq3ntHL60JUPciPx/Vy7c6xMmZmjDELb9R5QG/s4D7j13DfXnY97A8TGwFtr3Gbp
	YVBPWxRTO6VQZqq4NwBBngydEKkqKL7lw2/BtyUld7kcO1GsR//nx2OebbhrIjG2CZxHhsXphTa2F
	N/KbUWRlWt3UUb9h7r3P2ji4hbbyz7x4Yu1M1eX8blqP+cMxLSZ7NZIyQc3nkLXZLq+3MTumCf7Z3
	LByk3hKbi9DLdt+ejjs8fNv8zVqVjtZeS2UifkgTAnsopGKfHl4OEWFmxoIhEuflO4PoPkMwkyDX/
	HwVy8lJgx/z2N3xh7F4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hP2-0003yS-KR; Tue, 05 Jul 2022 12:11:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hOs-0003vR-DG
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 12:11:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C9273619C2;
	Tue,  5 Jul 2022 12:11:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDEA4C341C7;
	Tue,  5 Jul 2022 12:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657023088;
	bh=d4W1a6yKks27hWUFb8vUV+fbOsxCFXl1gXeGcs5UT+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TLvfnIQt/Lo/RAV1zKTy+515zB/hDWMgWYocElE7E7mkxmfgUKCbDvEDxKMjGlDjZ
	 Hf3dGNS42Spuy7zq1ERPGdc0+Mp044ree/3q9wfloz3IjHa5jTASK0Rx39VQp71b30
	 XQz4/25knoQUYWV33tTZzWOLUownGgNcIhhjbZsPC/Vt3AYUnwUh0XuH93zOyy1VGE
	 y0m9MU0W3KVerrYOL1ptnsCI6+QODTyqnmzwUKiQwDfYWF8AWqrpp7r3zPyxUensr0
	 eLoDqH7yQjAyLer6NiO3OcpLwp9qJ/UGtptIdfzA0yOlcGO3INuJp2uCdZEKYZkGj9
	 fzGaDv7H+hWIg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8hOq-0006C7-SU; Tue, 05 Jul 2022 14:11:29 +0200
Date: Tue, 5 Jul 2022 14:11:28 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child
 node schema
Message-ID: <YsQqcKZAs1xAB9+S@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-18-johan+linaro@kernel.org>
 <4bc79a1c-66b1-225d-5026-ddf3e6f7d22c@linaro.org>
 <YsQlzr6nyvz761Kz@hovoldconsulting.com>
 <963917cf-0f9d-600f-564e-9e687270b1af@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <963917cf-0f9d-600f-564e-9e687270b1af@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_051130_547459_0E3B90EF 
X-CRM114-Status: GOOD (  22.53  )
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

On Tue, Jul 05, 2022 at 01:56:32PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 13:51, Johan Hovold wrote:
> > On Tue, Jul 05, 2022 at 12:18:37PM +0200, Krzysztof Kozlowski wrote:
> >> On 05/07/2022 11:42, Johan Hovold wrote:
> >>> Add the missing the description of the PHY-provider child node which was
> >>> ignored when converting to DT schema.
> >>>
> >>> Also fix up the incorrect description that claimed that one child node
> >>> per lane was required.
> >>>
> >>> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> ---
> >>>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
> >>>  1 file changed, 85 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> >>> index ff1577f68a00..5a1ebf874559 100644
> >>> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> >>> @@ -69,9 +69,37 @@ properties:
> > 
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - qcom,sm8250-qmp-gen3x2-pcie-phy
> >>> +              - qcom,sm8250-qmp-modem-pcie-phy
> >>> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
> >>> +    then:
> >>> +      patternProperties:
> >>> +        "^phy@[0-9a-f]+$":
> >>> +          properties:
> >>> +            reg:
> >>> +              items:
> >>> +                - description: TX lane 1
> >>> +                - description: RX lane 1
> >>> +                - description: PCS
> >>> +                - description: TX lane 2
> >>> +                - description: RX lane 2
> >>> +                - description: PCS_MISC
> >>> +    else:
> >>> +      patternProperties:
> >>> +        "^phy@[0-9a-f]+$":
> >>> +          properties:
> >>> +            reg:
> >>> +              minItems: 3
> >>> +              maxItems: 4
> >>> +              items:
> >>> +                - description: TX
> >>> +                - description: RX
> >>> +                - description: PCS
> >>> +                - description: PCS_MISC
> >>> +      if:
> >>
> >> Do not include if within other if. Just split the entire section to its
> >> own if:.
> > 
> > That sounds like it would just obfuscate the logic. The else clause
> > specified 3-4 registers and the nested if determines which compatibles
> > use which by further narrowing the range.
> > 
> > If you move it out to the else: this would be really hard understand and
> > verify.
> 
> Every bindings are expected to do that way and most of them are doing
> it: define broad constraints in properties:, then define strict
> constraints per each variant. Easy to follow code. This binding is not
> particularly special to make it different than other ones. Doing
> semi-strict constraints in if: and then additional constrain in nested
> if: is not easy to understand and verify.

Ok, so you want to flatten this by repeating also the register
descriptions?

That wouldn't hurt readability as much, but doing so would be more error
prone as it's easy to miss adding a new compatible in every group of
conditionals and there's no else clause to catch the mistake.

Right know the logic is

	if dual-lane
		items = 6
	else
		items = 3 or 4
		if single-lane-exception
			items = 3
		else
			items = 4

Flattening this gives

	if dual-lane
		items = 6
	if single-lane-normal
		items = 4
	if single-lane-exception
		items = 3

Which means that every compatible must now be listed in one of the
conditionals.

Fine with me, but please confirm that I understood you correctly.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
