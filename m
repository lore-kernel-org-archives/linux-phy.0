Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C937C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcLm2wWu1HjSfysB0eQ9X1a895dCmMG9akrcFODdwgY=; b=RyT/DhB2zYRHFc
	tw0aCG7PbSRQ3H3oCCqmcN/a+Alz5AtVf1O9ndG81atANGKNNGDvwQ5ODX0nO3Ehq1blYOPHI0R8f
	Zi513BBr2+WPgDai91QLa4JEgZt43CiSwx7EMTEO0sgU5tXb/4LEf21664YN3F+T2DdHuYjj1r6PY
	pcCZ31T61/eRyZalmc+BSCOHZEvrt/0cSmRIWGKuGKIlGk74e/emXfxPUBMygV+LN/1ssBtjfy0ZM
	7hwDhyziHZewAoy035uSHZqlDxgcvihD5nAKXZHTrv1Z7Q/IpdJgvWjdhG7/XDrGe2W2WS+GOi10P
	/GLlMKUyVTzrgGzp113w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8htR-000FaQ-9d; Tue, 05 Jul 2022 12:43:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8htO-000FZk-JR
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 12:43:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1D4696066C;
	Tue,  5 Jul 2022 12:43:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 750D3C341C7;
	Tue,  5 Jul 2022 12:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657024981;
	bh=R3LFkiD0sDZpLAm8EjSt1H2PdJiaXoZldhKa+Ii5tH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fi5Wu9DOGA5Elh+LCgd1aNY4sGDvKNuJ439ZQ04PvCl9vmypJwPyle3JeU3Jekrws
	 S0NOSKH783XgjHTfmwltbMHqZC/Zw7NxqH8CSWlseTp5eiHrtoUGvic3L1aLYV+yJE
	 jvBDZ92N8QklsbqKEaqeEpOEKvais/o6HS9z/nafKhqRDDLwk99ITE9DdGd8+92W3l
	 FGng+cdGGRFuJDP75YlyWDnTrFGaUheX3qJx5XYPMBH65r+Qh1CZjIhYdWSH1wZrNj
	 KWDakkfHyZE3y+LVkFtgvXhoGKXXHt2Iz4X+d9Znt5/ToSMhYio5bkQyts7eORuEXS
	 jBYXGhwsT+dzg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8htN-0006q0-GA; Tue, 05 Jul 2022 14:43:02 +0200
Date: Tue, 5 Jul 2022 14:43:01 +0200
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
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Message-ID: <YsQx1SMEsMnmoQ2d@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
 <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
 <YsQkmUVla9+CDYly@hovoldconsulting.com>
 <8d739c84-ba61-a030-ea8a-63a3f45c642c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d739c84-ba61-a030-ea8a-63a3f45c642c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_054302_714654_266AF6EA 
X-CRM114-Status: GOOD (  21.27  )
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

On Tue, Jul 05, 2022 at 01:59:26PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 13:46, Johan Hovold wrote:
> >> It's okay to copy existing bindings which are applicable and then in
> >> separate patch deprecate things or remove pieces which are not correct.
> >> But all this in assumption that the first copy already selected only
> >> applicable parts.
> > 
> > But how would you be able to tell what parts I left out from the
> > original copy 
> 
> They are obvious and immediately visible. I see old bindings and new
> bindings - no troubles to compare. I review new bindings - everything in
> place.

Heh, with all these conditionals in place that may be harder than it
sounds.

> I don't want to review old code, inapplicable code. The patch I am
> reviewing (the one doing the split) must bring correct bindings, except
> these few differences like deprecated stuff.

Sure, I get that. But this very patch is an example of why I tried to
remove things explicitly instead folding this into the original patch
and risking it not being noticed.

It's not always obvious what is applicable and what is not, especially
when the old schema is in the state it is.

> > unless I first do the split and then explicitly remove
> > things that were presumably *never* applicable and just happened to be
> > added because all bindings where combined in one large mess of a schema?

So you suggest we keep this regulator for all PHY variants even though
it was probably only needed for UFS on some older SoCs?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
