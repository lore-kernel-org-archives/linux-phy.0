Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CD8C54EB4
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 10:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBqViSYiGisD4+roxALhRhuJLL8+iUF7acBnua0kUC8=; b=MBeb0y5D7GznG2
	v7oJRR3f0PVZXef1xYmGcOjB0Tl62CGr9WxgtdiNLip4QQkZxbg+sGU+84pRITAlIFS5w3F6o7MP+
	ofwI2+C22y0GJzCUEo/VbMDrepRnlh2IBI1TZqTiW8JKi9OkT9a177JxLScM9gRcrUNTF5gbOB/sn
	iy66C8ZF46UBwd1VurDkw9mFdx6xr/NBh+pJI95T+a+plzoK7Oe/1WnblFTLUXFaZqNAsZHFGLURj
	y+bOpeBySltzY/JoXcHirYDxwpTxA0PgTpRnNTW9lugkI6aMLQ5w3Tu3VsHEOhYw+LmX4HIKRAog5
	2Q/UY2GFwf/6DTgihdKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuJl-00Gshz-PY; Mon, 23 Jan 2023 10:44:49 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuJd-00Gsg7-G3
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 10:44:44 +0000
Received: by mail-wm1-x333.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso8767927wmn.5
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 02:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2PRs0X+3aZkUyAyZNInl6XM4TEd14eiJLS0plPeBy28=;
        b=K88Go0c9RwpYrCjd8bPLO6/yvB177d2ERGGqVyjrBtJ9Opnop6J7vSn8s/U2vk6XVn
         DKQRsPLphOjXmo+4O6Xf6J/AwvIM8Hw+9mrA0s4gXs8L/Cu8icK2ei4FJgqP0QHd2lwm
         OXna9tNDOkThjGrHlLYolglciahMV3QqY6i33rWAugKCUJYjfgOU4JIyKwnpXXmiDBgL
         Ex7Cw/DFsPEVJ3IoTrJPpq5+ceTj/wUEOf5HA5jM4U4/Nl7q2TK3XLM5fyTumzMQD7nH
         dnh7Wk8vrbvt4os3AlADxQHlUjrTD74altfFZCn+98LHTlUKNv/cV14Hc6LuvyOR2ouH
         Fp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PRs0X+3aZkUyAyZNInl6XM4TEd14eiJLS0plPeBy28=;
        b=Z52O5UkaZEQK3Qz4Mlii0lgAnphVSEIvLng/4ZSXSlvnD3m5Le6lLCRgKWh5LIiz+9
         5Ev9ii/bFugE9MZi69dFula2kYdd6fEpbbkgt68Z4A6oyUS9Kg7WYYJ2BJUEIGoBllun
         mxO0cg67c/63XUmKcLZKmoZJVWGeJzRdN2HHjqrPEBNwNLJ1Pls/7w7fEXQOstsYq2q6
         1AWw+LbEuGfyj7GPYj7FMbE1q1Xnk3S5wbrOJKsGSDXyJk+/61RSp2C5u48vf+gRahX+
         WtsrUchnYzgX5/4TTJk8pMgEhiwfmxIkkcpy82nfI6v/r5MDNVyQJ5fU/jUo47h/09cK
         Cs+Q==
X-Gm-Message-State: AFqh2kp/AT3GOW9Vsf6LKItcPC1jG+EB+oYnPh40k1EEgSA9OKSGXFyB
	DIkkbHBVripqtX7ItpjXf0xCJw==
X-Google-Smtp-Source: AMrXdXtYXhgiuVMLRok6DEndR280kFs7XZ1T15tjO8fChaM2EuvZ84f0IK3TKrrf3jQLDOppc2V2uw==
X-Received: by 2002:a05:600c:24ce:b0:3da:18c5:e48b with SMTP id 14-20020a05600c24ce00b003da18c5e48bmr31515548wmu.18.1674470678999;
        Mon, 23 Jan 2023 02:44:38 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d6d49000000b002bc8130cca7sm34107744wri.23.2023.01.23.02.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:44:38 -0800 (PST)
Date: Mon, 23 Jan 2023 12:44:36 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Message-ID: <Y85lFD3m5pdpNtdR@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-10-abel.vesa@linaro.org>
 <7af21247-a44e-cb46-7461-204fa6b4fcab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7af21247-a44e-cb46-7461-204fa6b4fcab@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_024441_579417_37C723DB 
X-CRM114-Status: GOOD (  26.31  )
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

On 23-01-22 15:10:59, Krzysztof Kozlowski wrote:
> On 19/01/2023 15:04, Abel Vesa wrote:
> > Add the SM8550 platform to the binding.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > The v3 of this patchset is:
> > https://lore.kernel.org/all/20230119112453.3393911-1-abel.vesa@linaro.org/
> > 
> > Changes since v3:
> >  * renamed noc_aggr to noc_aggr_4, as found in the driver
> > 
> > Changes since v2:
> >  * dropped the pipe from clock-names
> >  * removed the pcie instance number from aggre clock-names comment
> >  * renamed aggre clock-names to noc_aggr
> >  * dropped the _pcie infix from cnoc_pcie_sf_axi
> >  * renamed pcie_1_link_down_reset to simply link_down
> >  * added enable-gpios back, since pcie1 node will use it
> > 
> > Changes since v1:
> >  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
> >  * dropped enable-gpios property
> >  * dropped interconnects related properties, the power-domains
> >  * properties
> >    and resets related properties the sm8550 specific allOf:if:then
> >  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
> >    allOf:if:then clock-names array and decreased the minItems and
> >    maxItems for clocks property accordingly
> >  * added "minItems: 1" to interconnects, since sm8550 pcie uses just
> >  * one,
> >    same for interconnect-names
> > 
> > 
> >  .../devicetree/bindings/pci/qcom,pcie.yaml    | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index a5859bb3dc28..58f926666332 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -34,6 +34,7 @@ properties:
> >        - qcom,pcie-sm8250
> >        - qcom,pcie-sm8450-pcie0
> >        - qcom,pcie-sm8450-pcie1
> > +      - qcom,pcie-sm8550
> >        - qcom,pcie-ipq6018
> >  
> >    reg:
> > @@ -65,9 +66,11 @@ properties:
> >    dma-coherent: true
> >  
> >    interconnects:
> > +    minItems: 1
> >      maxItems: 2
> >  
> 
> I don't see my concerns from v3 answered.

Check the dates for v4 and your reply to v3.

v4 was sent a day before you sent your v3 comments. :)

> 
> This is a friendly reminder during the review process.
> 
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.

Will address your comments in next version.

> 
> Thank you.
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
