Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8051C43217
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 21:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1+ADlpbwMCozyT16o38vndB2GXQUvRQJc6FiccRzrE=; b=eH5Zq6ruU9vBy6
	2IeAr+t7FQDMpwYdGug6GyBFj4eOcXwEYOtAZ78NGtYG4pxo+cSxsmk4JTHY1Ky6xDN7m3RdTGkIG
	v9LfXQ26criKTDFx8nqG6ZATdvS0+/Vjes1h8vzoxXLi8nUt6WkGG838h2AeMIjWWTJxNmGp9dBqP
	nmAfwF4pw33L1wjshtB7zeNMD2063D7my01vnaRcjFm7exB5pbs+tChlBuUQ1meMJcZGSp//8eZyk
	bxRoZIMzMRVzpizSpwrfieoGajHa80xD30wnP1kZeeduGzH/2SbQ3J61Rc1aB+zQPIzNwZcZco9io
	BxzJBt+sM+OVsm+TcI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4Qd-005FAw-5N; Fri, 04 Nov 2022 21:40:43 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4Qa-005FAA-9E
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 21:40:41 +0000
Received: by mail-oi1-f172.google.com with SMTP id p127so6487420oih.9
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 14:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jh4TZpx/fUejHGdSgYJPb2bOIrkhGmJ4yxw/EXpmSSk=;
        b=LekCtMCl+zpYSzIrzEdmAWSh0h9vJ94Z67qCH0tC3+IJ1S0vSVG/ovCBLo5APwMAqp
         CYkFBjoOq4Zgvrv7jSH1fj33rnKe1aIT3DvZkvrjqe9y/Xry1HkKIPTAr02hiO+qdiXQ
         x1XCLD96XVXJ8Sq0RLr/iJnLzcvXN34X7CqkHx1kq8V4ha515O2AXuylL707GriDVZ1d
         055oFsvE5lCZ3YfMcVcIUhPDM0b0FViW3v9jD2Wb09q4p1aVf4CmUF89s5VOjMCMkBqZ
         hQlyIzOd9CmNUBey4FUwURgF5r/r7RePmJ/SjK5ZKhIZ7K4w2m92UVW9yYZ3/3tPBmDQ
         kfXw==
X-Gm-Message-State: ACrzQf1RAJtz4wASJ+D6l8Zo4zAo4aKlCNlmEJzs5NIc9h1PLwGu2T5G
	G8gRi/eoVD87bTTzGhqGhnn62PjNHw==
X-Google-Smtp-Source: AMsMyM4AIauGU9ELLG9wadYHkA3jCPpaknwCvdEYTBT+HNyDIyo9igsDWHLRAB0W7CXeL0RgIYFYcg==
X-Received: by 2002:a05:6808:1288:b0:35a:5a4b:812a with SMTP id a8-20020a056808128800b0035a5a4b812amr2989133oiw.117.1667598038238;
        Fri, 04 Nov 2022 14:40:38 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r7-20020a4acb07000000b0047ed75e4d61sm135059ooq.7.2022.11.04.14.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 14:40:37 -0700 (PDT)
Received: (nullmailer pid 2878196 invoked by uid 1000);
	Fri, 04 Nov 2022 21:40:39 -0000
Date: Fri, 4 Nov 2022 16:40:39 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Vinod Koul <vkoul@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v2 11/13] dt-bindings: phy: qcom,qmp-usb: fix
 sc8280xp binding
Message-ID: <166759803901.2878139.5371601797957864706.robh@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
 <20221028160435.26948-12-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028160435.26948-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_144040_342822_B776FFA5 
X-CRM114-Status: GOOD (  22.23  )
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


On Fri, 28 Oct 2022 18:04:33 +0200, Johan Hovold wrote:
> The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP USB PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> Note that PCS_USB region is also not described by the current bindings
> despite being used by the driver and this has led to people increasing
> the size of the PCS region in the devicetree so that it includes PCS_USB
> registers even though other regions like TX and RX may lie in between.
> 
> Add a new binding for the QMP USB PHYs found on SC8280XP which further
> bindings can be based on.
> 
> Note that this also fixes the SC8280XP "phy_phy" reset name.
> 
> Also note that the current binding is simply removed instead of being
> deprecated as it was only recently merged and support for SC8280XP is
> still under development. And, specifically, there is no support in
> mainline for the multiport controller that uses these PHYs.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |  13 ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 105 ++++++++++++++++++
>  2 files changed, 105 insertions(+), 13 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
