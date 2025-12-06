Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E78FD3B7D1
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 11:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snztN3Vpt3tSmcLDY+iEgOP6tVVw37l8+yMOF8MZLmQ=; b=Y4AE3Lfrf5qhfY
	tCy0TCUb2YcmamDQ5PA1R02xe0qLIO8uxc6lqu2jjiBkhjEFrvQU+G7be105bGztRDCSSuSDKItz0
	xeEErx9djZPTJQOxesM1Z5vdJIt2eGifnw31SBQFtb8wnbGx+PXiaZv9ZbqW6Jjjp0+AoE+0Xa72T
	l83bK5RvC8ykJTWCm3kih+IdTAOabiMsrSRWKLlY7fKNJ0lPKQA/Akleo03afoFFt1sy7ncJXwJWj
	Y7RKbCPKZ8cAOkgxIMHZt+IGXtUn/LMI0hNHGMRCaHMxxOuNL+WUvUTXRZLmvjGCtX4thVM0ZIWxS
	lH6E9OpT/yCWzuz5tmJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRq3z-0000000AqTN-48FU;
	Sat, 06 Dec 2025 11:02:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRq3x-0000000AqSy-4A3V
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 11:02:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 41DFE43C8B;
	Sat,  6 Dec 2025 11:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C0BC4CEF5;
	Sat,  6 Dec 2025 11:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765018973;
	bh=aiIm2ihKF9KH0Ql0TXM+ChbNjKe5WJGE6SmNEuY845s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aYkWNJldsrnNv81VMX6+rzdSL0NiO8sepwEMOy+Mgp9Gj2AjQwS7RIU6tKzznMOeI
	 OkMNNxhmo0bDyAm2ShN3UWpKQoPhHo3F0hBATpBFxvMbz0fSFyO/qwqFsQ9MdvGQ1l
	 QRMUkZGeNKSXF5ZSCOic64wggdvCqFTX/eS32s0d8VsGv6jxFitJvkDBbJewm7Xh3b
	 VgH6e3LxRlXAcwxkzMJiJW282dpI+kuFjrYwm/1oxtfXfwpNaQEdNRPzrq4Ho0si2g
	 8v0e+40nU8U+Wft/Dv5eTy48jhZsyTpXnBBrNYIhQGfOKHb5ON31Mb3f0NGxG2nPBC
	 xKk0ni2HMyyUg==
Date: Sat, 6 Dec 2025 12:02:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_030254_049428_950873A8 
X-CRM114-Status: GOOD (  11.43  )
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

On Fri, Dec 05, 2025 at 10:55:36PM +0200, Dmitry Baryshkov wrote:
> On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
> > Add squelch detect parameter update for synopsys eusb2 repeater.
> > 
> > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > index 5bf0d6c9c025..f2afcf0e986a 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > @@ -59,6 +59,14 @@ properties:
> >      minimum: 0
> >      maximum: 7
> >  
> > +  qcom,squelch-detector-bp:
> 
> -uV? -mV?

If thi sis adjustment in ratio, then bp is correct. Some sort of
explanation in commit msg would be nice, but I don't want to stall the
patchset for that.

Assuming this is indeed ratio without actual SI units:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
