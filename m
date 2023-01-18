Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF4DBC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 21:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkwuLzIaFquNvF04kfGCKyz6BD9bPFiRx3eMmAUQ/M8=; b=ic1DQXSvfUtJbn
	xj6k4Fe20uXBTyHkkyi7wGRvirg9et2/5Ye25xC1YRIdG6+3YNAR351WHqt6+c9pbd6lKs5CQkbz3
	ThJ73ajhqpDRdNGjwLWfKsOla5MTzQgacAbAU8TNl+k+hHh/YdLgqbhdtjKjNDnWNgAbZka/b08db
	vgAQ1T3777xjQK4Dvt0R7bzNSf6Ne2Mg4UAgPFNyofq57lc1G+EkzfcC0/PYTiPETfOqogQi1egR7
	tDY5bjcaC28U4rLgFGrAQxLg/nYNbFVY3pEKdVLVCBN9fTnKVpPwZJpC19sOH1yoaFDk9Ew+PkhtX
	ndvkI2gvVR7SbOpo26fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFwE-002j1E-44; Wed, 18 Jan 2023 21:25:42 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFwA-002ixi-JW
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 21:25:40 +0000
Received: by mail-wm1-x335.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so2324654wmb.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Jan 2023 13:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z02Zvvp9rnIkTMvPcvojjoIGvGA32x4pRLqSn0d/D5Q=;
        b=WuH8yHOnPzQoxp37uCaoXhkR8AFCaoD9ntbQBJvKk8ZtPIeEcYZVR5qT6UAp5aRPot
         mlbY4K3BqNnsCZ97fG90dQkBZlN6outU5tX37EGrBjWLGl7uywKzK8/XHMZoEY0BfHVx
         F2KcRJe1D8ufmhm8335igfOfvrRKA+1l9rAwa/XoU1FyTU5HtO+M+9Ml0aFGCJqt/FYf
         h6Rxl6/02buJf40lSCX1T0SfHP3zs4/MtBbK7yYjyRz0IeEQAkpeRe/62ghQ303CxBUD
         DhA5bvQWwfbr5mX5VwBj9jrYy2wtOS43fgXSe+353LHS1rn3DW5kYwepZ6k3lOHak6DG
         6ZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z02Zvvp9rnIkTMvPcvojjoIGvGA32x4pRLqSn0d/D5Q=;
        b=8DYyOINj743ntpXfB+zeRQL97IjViIBDB1IB/ByyhGybfODjePm5veDj7WlB3MXEFg
         UHLqkAlIrmiXW8NVn1tMdyoKxbJtj4LNOcgX1nhj5Zjr3hi9/pzq24D6goXJTfW32OpT
         Oq4jH9ZIj0r5mWyq3TCUYvPENqDZ/YW0FljZ2xa7On35I2TaPQerEd6UH30dZ5d/BjwD
         SBqIxG25b61c0CwpurQeX5m40bdNCg8bwmFHBZtS+L8b8FkuMkBubO4M1pvn5TBJMutZ
         pVPPsTJ/i094fspwslieG0nIv7EK5rRUbesQmKth2jN1K6z7YA3UzGCXrIohK8lBjpG6
         Pbhg==
X-Gm-Message-State: AFqh2kp5cIBpQR9GeQMdxnXctzDkjvMCugJ+Hhg7huUmXfvn/Kmno2KA
	frS89rfb4y9r+r6143UT8Fy7kQ==
X-Google-Smtp-Source: AMrXdXuuRUr63ls7wGR56IMAO/i/q4UibvwoBS2SM+hobzTQCYLskiXJ88gBrX2HslVcG5iGqJLhcQ==
X-Received: by 2002:a05:600c:b90:b0:3d8:e0d3:ee24 with SMTP id fl16-20020a05600c0b9000b003d8e0d3ee24mr8339211wmb.37.1674077134046;
        Wed, 18 Jan 2023 13:25:34 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n19-20020a05600c4f9300b003d1d5a83b2esm3349230wmq.35.2023.01.18.13.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 13:25:32 -0800 (PST)
Date: Wed, 18 Jan 2023 23:25:31 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Message-ID: <Y8hjy8WRpPh8DVvG@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-2-abel.vesa@linaro.org>
 <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_132538_687505_A68411A8 
X-CRM114-Status: GOOD (  19.79  )
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

On 23-01-18 17:45:16, Johan Hovold wrote:
> On Wed, Jan 18, 2023 at 02:53:21AM +0200, Abel Vesa wrote:
> > Document the QMP PCIe PHY compatible for SM8550.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > index 8a85318d9c92..65f26cfff3fb 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > @@ -20,6 +20,8 @@ properties:
> >        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> >        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> >        - qcom,sm8350-qmp-gen3x1-pcie-phy
> > +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> > +      - qcom,sm8550-qmp-gen4x2-pcie-phy
> >  
> >    reg:
> >      minItems: 1
> 
> I don't think I'll have time to look at this week, but I did notice that
> you fail do describe the clocks, regulators, and resets (as you also
> did for the UFS PHY binding) which are currently different from
> sc8280xp.

Hmm, sorry about that. I will double check against the pcie phy nodes I
have for sm8550.

As for the UFS, if your are referring to the following patchset [1], the phy
node looks exactly the same as on sc8280xp, therefore no other binding
update, other than compatible, was needed.

[1] https://lore.kernel.org/all/20230117224148.1914627-2-abel.vesa@linaro.org/

> 
> Please be more careful when adding compatible strings so we get this
> right. You should also double check that the differences are really
> warranted and not just due the vendor using different names for the same
> resource.
> 
> At least the reset must be renamed ("pcie_1_nocsr_com_phy_reset", e.g.
> drop 'pcie' and 'reset', maybe more).
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
