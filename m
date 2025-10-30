Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8867CCCF9FC
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 14:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwJSGSgLcIv25Zm61n2VQGQ5Ur7HaRA9U7ft9tMhw7o=; b=0VJ7+Ieg0XsVWW
	8a7Uq4Z9QFu2B4tHny9O1zMuCmjNHGoYo19b5liPFMO7zqY0O9jbWcXbPs51RO4EeEg2umR9N1aA3
	WohAMlH7mYD4hrcGOp4VaFyKs5DUGEIawLrge9m4X1k9ri05dt5gEh2S4ASxcv9wH9aRvntxe5Atv
	bSl9RYTegnvv2CRfr+JLBgeLddC5PiT1VwxpiLDU0ErkgFCr2GcF4f5hSY40ESDspDw4IIKJXrhlJ
	AuvvDJodZD4MFJT8C38V1Vbjg94K4mdz/AznIAC19N8G6+Havqj7m+5i3kNtjOxlm9AXbmAVKoJdZ
	uxaKMW5XutlbIaYCwPPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETa7-00000004Igs-0uGs;
	Thu, 30 Oct 2025 14:24:51 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETa4-00000004IgE-1RTm
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 14:24:50 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-475dc6029b6so12793175e9.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 07:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761834286; x=1762439086; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c3pjjXRLzxOERlgauXUFdVB9N4SMWOueTsxW5ITuFlc=;
        b=VZTMgqHnmV9ZdFJ9Hqrwdajrk96CAJ0XVQmnUmz8OSnNp4dnBCfo0TBvAHaXuHTm6p
         nvMlAMqf/6VpdYqQgeptpw0/exYVIGZNiMxNgS4zg5CF3gttFbwI6WELdYwPjklYcK/4
         S8JwhOCLVsqGbSexl+Ms/YrW/8n7sTCv+jnfMF458cNHJCz0aGLmdSn6eovNoXNqYUur
         kS3Jl4khwMeKaGiRVjXhhXMHAvEmmncoBOgxoVS4LpDYQ0IDKbxM6I/pHmY4fXbS6UIE
         Ol9r0pMyVBOInzQScp9pwT1nmaaIlVbJEdYvjjcZ2boZBZdu46vwyVv0h3qIbABL0u6O
         jFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761834286; x=1762439086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3pjjXRLzxOERlgauXUFdVB9N4SMWOueTsxW5ITuFlc=;
        b=JB9L7gEaeJgbSfIj0ViN5e+A8a4qXJxzCFG3CAH2LxYJHETdpkzGaFeM8nMMAmHHEN
         5Z/060jWGfCJhvMvnlQ510ZszHCJTpmF/LwpCqAYz5teS9m1BygywmRX7QFCGheflJRP
         pwuTKOEjIp2s/IfJodJn1x0vRIlF9aLC/B6X7XDPW7jxXCVGaFX/eTNSjbzEQMcEurq3
         fX7ZriL8othlST/5qjaTuUHZFcvljsOZLtY1W1w0t681lFZWg4htMJxervh3FglmRpW0
         k3iznf1fc1rNP5P5ofvzcNK7WhyZLQYtJSFVrDCg6KsleE4kV8Z6LUAVFdkLxaOLILqc
         v1fw==
X-Forwarded-Encrypted: i=1; AJvYcCW2wjOh7lqgyIB+QsNcW2sB9ugzVsQrXXJvOr+we15rTYG+IMBgmgOvcKTR31GecEGv3nfoMXxROeE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+StQ4Yxs121yKwP9b+6loEtBaDFjGlSo+T5JjdV7p0kJJXOwp
	6GWgOudNNE2iS27Q4DV3iQNehntSypOpmUDP2/JGlJNgIzb5PCCeikswWVz5IEVARmU=
X-Gm-Gg: ASbGnct6Ze39c9/tnsph115wA8LVNQO7yDKWNe6eCpvfgG1GBLd3ZPAoi6CVJj8JB8f
	wcVd6TP8+lUkY3NAQCRVYoMZ45PDj39H8NH/U3rOmZ4gtNuGfHlLtaY8CaZ9hDT8Cx+VxCanRgA
	54HcZMEyDAziXo0Vk50vS0h8zEkg+Hewo6sqpWf/x03JXU1R3IaO9SaXJRZcDpWWYRsviW9pLFh
	16qdHWMK+HQVvfoPEkP7s6AGL3HNbY3Ba4VaSOsmzbGRS4Hfy+08OZSHlasYd59PgvRO05NdG+4
	F6ydWsFUvJs7f7MTnyw5xStP8cwAtRdqYZh5lgYXh2oAM6rKfE8P7J9K6+baT49NLY0rqO/klYO
	u7oM9knOEiokmR4keNivVKaFwHciwzM5HvEBfxyAw+X8wA6lDBPwCuMLneJKeoH0b4ycrTMMk
X-Google-Smtp-Source: AGHT+IEvOGorIdXH2ej+0qCIr5+s9oVPz6skbtMVgapGmijQdH6C6LacDuKEfmcYhGhBiKWz2mBTqQ==
X-Received: by 2002:a05:600c:8b8b:b0:477:cb6:805e with SMTP id 5b1f17b1804b1-4772cdf71c0mr14297875e9.18.1761834286434;
        Thu, 30 Oct 2025 07:24:46 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7b43sm32493987f8f.6.2025.10.30.07.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:24:45 -0700 (PDT)
Date: Thu, 30 Oct 2025 16:24:43 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <v2leqaegp5xtzadcrksxfp5sv5oeeegsakwv6a5w3tj4zxsa5o@uuvn34rjygqg>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-1-adb7f5c54fe4@linaro.org>
 <bncdkcnbqnlz4rj5yhtgeey5d2ksuwpz7ms7kvkjci3p4gdtt4@e54svrukfobu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bncdkcnbqnlz4rj5yhtgeey5d2ksuwpz7ms7kvkjci3p4gdtt4@e54svrukfobu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_072448_409816_A400BB01 
X-CRM114-Status: GOOD (  23.89  )
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

On 25-10-29 11:38:53, Bjorn Andersson wrote:
> On Wed, Oct 29, 2025 at 03:31:30PM +0200, Abel Vesa wrote:
> > On X Elite platform, the eDP PHY uses one more clock called ref.
> > 
> > The current X Elite devices supported upstream work fine without this
> > clock, because the boot firmware leaves this clock enabled. But we should
> > not rely on that. Also, even though this change breaks the ABI, it is
> > needed in order to make the driver disables this clock along with the
> > other ones, for a proper bring-down of the entire PHY.
> > 
> > So attach the this ref clock to the PHY.
> > 
> > Cc: stable@vger.kernel.org # v6.10
> > Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Thanks.

> 
> > ---
> >  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >  1 file changed, 27 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > index eb97181cbb9579893b4ee26a39c3559ad87b2fba..bfc4d75f50ff9e31981fe602478f28320545e52b 100644
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
> > +      - const: ref
> >  
> >    "#clock-cells":
> >      const: 1
> > @@ -64,6 +67,29 @@ required:
> >    - "#clock-cells"
> >    - "#phy-cells"
> >  
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - qcom,x1e80100-dp-phy
> 
> Don't we have the refclk on all the other targets as well?
> I think we should proceed as you propose here, and if this is the case,
> revisit the other targets.

So a quick grep suggests that the msm8996 and sc7280 do have and are provided
by the GCC, but they aren't attached to any consumers.

Will check and try to come back with a different patch for those.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
