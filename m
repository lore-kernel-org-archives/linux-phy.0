Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9E1C27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 06:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CHK2VQLoF1Mp+KHI2f91AjvCy9hOVZ1rDDgz6QDDUs=; b=3uHEd6dY0epK9O
	qeyDMpGpa5T6YtIC4Eo00yD/av6tQK4Njw2HefmTpXFxA1HfMJcJqpWfEZqdM5RgKKZKpLuZrf8MM
	X2sEx6uRvCQy9z/7p+H5lZCfOJ1J1dk2onqjcwa7bzswti0ejiALoq89qemBlUna0etYhlZ+jN5l9
	H9vdMyJ87DJoelE+kN6EXzymzmwvygYLLObhohfAfZjSSbecKT6Lgu8L91U2MICBKHQ/5JwdxYx7O
	f6rrpW6LCxi2CpKnAdkgtxDVuJSe10rlcVsWq7fK19y9cj0u25aLnk9sKJ0qhObX6Xq6GjN5b9085
	IUQ8g0t9eoHRTTU3Uiuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWon-005flB-0l;
	Thu, 17 Aug 2023 06:49:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWok-005fkg-1m
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 06:49:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9805762003;
	Thu, 17 Aug 2023 06:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3674CC433C7;
	Thu, 17 Aug 2023 06:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692254953;
	bh=IXkYdBLbsI0GT2XCBMpjBzrs3RyZNpqPqwpMedObAkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aavae2FT9YcL1IbLaajyDjX9dc2XMi7AbcRA8DxGdOppq9U4HV/NYwweRXQgi8b9r
	 rWK4rTLYdigupkioEo+u2uwQp2EDr5uMff8LvPkhWY66xoo+4OZjIu5Vikk2EyI9Is
	 KEK42u8YBCGDz7ZF9wlZtcqVH73sqOzF/xAN2VyOKPCqb5dZ+dt5XmO0mJRj5cQWuG
	 Kkwo5Oqt/EKCFWaJB5PuMaOkYQkMcurK4leafPqYNLi7o1R2WkBBMegEdYBGAkehoQ
	 fJ475Hkq5BG3E8F3kEfm/plJHEWk4oWJ4Yc4IhTrAgVwxqNcE6Ugta8hWwEJ1ugmLT
	 /NOtd37ku8kTg==
Date: Thu, 17 Aug 2023 12:19:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, andersson@kernel.org,
	konrad.dybcio@linaro.org, agross@kernel.org, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V1 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SC7280
Message-ID: <ZN3C5EFFyT5ewdtS@matsya>
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
 <20230816154841.2183-2-quic_nitirawa@quicinc.com>
 <CAA8EJpoMFCbHuZcEN3-cxFN94QTG6wfNb52vfwuw6qLOfmdFyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpoMFCbHuZcEN3-cxFN94QTG6wfNb52vfwuw6qLOfmdFyg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_234914_643491_2DCBCB79 
X-CRM114-Status: GOOD (  12.82  )
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

On 16-08-23, 23:31, Dmitry Baryshkov wrote:
> On Wed, 16 Aug 2023 at 18:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> >
> > Document the QMP UFS PHY compatible for SC7280.
> >
> > Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > index d981d77e82e4..ad78da9c2c1a 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > @@ -31,6 +31,7 @@ properties:
> >        - qcom,sm8350-qmp-ufs-phy
> >        - qcom,sm8450-qmp-ufs-phy
> >        - qcom,sm8550-qmp-ufs-phy
> > +      - qcom,sc7280-qmp-ufs-phy
> >
> >    reg:
> >      maxItems: 1
> > @@ -110,6 +111,7 @@ allOf:
> >                - qcom,sm8250-qmp-ufs-phy
> >                - qcom,sm8350-qmp-ufs-phy
> >                - qcom,sm8550-qmp-ufs-phy
> > +              - qcom,sc7280-qmp-ufs-phy
> 
> Please keep both lists sorted.

Yes please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
