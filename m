Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E6FCA1010
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 02:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JtSvu/f9/9eQco39DwimjjqesYJVKR57qMzkBpCodg=; b=NWrERbHnbohjPU
	nnqapDeJfVJur8PLPR776aLeL0c4Uelq3pjMSwLb9Y8a1sDZbjTV7ZTNLIN5Ui06EGLxnryHnRJLG
	b2+iiLZvzU6Wm8xwuHW6RJ9uukEWJ1FhiMr/r6O8+tayIINgwV73YowTgt1ZlgIKWpnCbkw2SAps8
	C0TdRen6PzQ5D1WGPR5hU9y+dnuAofAsH4b3Bh8xTnY2yV4Z6eOXK7L6cjMbzB8s77KTq7xVdz1Kh
	hAdLdgckiQPH99ERxtaMJINmHl62AFzpN2U/7WbQYlEH3Hnvlog5cxDIb05UvmsCpfRCy2sW0xPGP
	SerNOh/9XJZ5ehSW6Xsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utzRp-00000008Gs2-0lYc;
	Thu, 04 Sep 2025 02:11:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utxGQ-00000007w5Q-0jNF
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 23:51:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5F1CA60200;
	Wed,  3 Sep 2025 23:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 672BBC4CEF4;
	Wed,  3 Sep 2025 23:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756943501;
	bh=jIL8HMWY74/M006Uey55mR2tjICrYWUq/L0Z06cYtog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=djuAXn5VMQ2y8yvgwfyLrjCfR0TOF/VhEJFie2YmnDBAgTJfdhGOjeuRbcxYx904B
	 u8Tc2QDnzzxNnEVjJQJGw33t1B8PaE6UrAdHpk1Q6msSjjQi2+pbCEPx23xZ/dvQVl
	 xcBUC3z51wgl7Zt3W2618KrCm0pzg4s/QIlfh2lazmDsBvci0kTlQ4lIqX43ipS2Rd
	 A8A8vZHxFSUQTShZrZuZ3g0k9HTmxjPzO6xfcAJHOPXZsK0kYyfhhNnnoLidGnpG2A
	 csByR51yJjs4O/EaFr4JeOHOX+Y4WgHN4oSFXZWLVg4aKURLRvnwC1gkYSGygApklV
	 8HI4j6rXSdTSA==
Date: Wed, 3 Sep 2025 18:51:38 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <20250903235138.GA3348310-robh@kernel.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
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

On Wed, Sep 03, 2025 at 03:37:25PM +0200, Konrad Dybcio wrote:
> On 9/3/25 2:37 PM, Abel Vesa wrote:
> > On X Elite platform, the eDP PHY uses one more clock called
> > refclk. Add it to the schema.
> > 
> > Cc: stable@vger.kernel.org # v6.10
> > Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >  1 file changed, 27 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > @@ -37,12 +37,15 @@ properties:
> >        - description: PLL register block
> >  
> >    clocks:
> > -    maxItems: 2
> > +    minItems: 2
> > +    maxItems: 3
> >  
> >    clock-names:
> > +    minItems: 2
> >      items:
> >        - const: aux
> >        - const: cfg_ahb
> > +      - const: refclk
> 
> "ref"?

Certainly more consistent with other QCom phy bindings.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
