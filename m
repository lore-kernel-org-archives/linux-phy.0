Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BD5C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 13:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZAFS8lRiHI8YO/ChTA5DTh+4wVoNcuNmnw1bZMpX7w=; b=yOMD6OQCsWpGSg
	OIFTEf5jk4bW1+j8xWT6J03Yb/fdJQ18lzqx2hVsb/83+i/Ab+UUAr9onpvGR1WRJz+V4s63GlqUz
	U2klTrSOv/d4ds8pEktuwamvZL2HBgos+ZVlp5AjFJvooL8LcrGmFs3KI/S8gpfMtqakLLleXxATe
	NDN9NspBHyN96o6LnkXQbkGoptil5MRXgJ4HFtWPOXiL0JE5/nFSpr29b6+NnUv0AY5/hS9U6gNoA
	4Traxyq6SH4DL9QssNTrCGkMvU42yyecN9O3Le1TGmlckSufcmNqNMkOcAjvQ7ofkI3VPedE6WxFh
	bZ5ELgl9OUuLBKn6lhIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU75-00FuUA-Ig; Fri, 11 Nov 2022 13:30:31 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU72-00FuR6-Qi
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 13:30:30 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-13b6c1c89bdso5374741fac.13
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 05:30:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oN/OJ/Hi5zpbBCRFQ/GdYDUjCbgG4tvmpft/DiCNH/Y=;
        b=KbYODqv94Azp7DLTw2SpMDaZK83x/joSGDFFHsynCsnrpI0QybZPzUxsM8eqVS9h6v
         rX4ILXBViHPdHCjETlyM0W1WaPKiysNtdUa6RXqPc0vvxekgm3rjIB2/YyNQhOAboxo+
         9Js/SFH83iQaVFNnWBD9TIitk2iSg9U8GD7Ez6q8Hy0++kL05Hl8fddYlq7Bpox0wIzq
         KDfTJrtZn0opCN5epLRPkmk2jLQBWUIBD2pYM20W8W1ZGBLqJBZUTSkeznhLoaShrC9S
         Whg1ltNMw+CRZlm+EUC75NaCBWW/2znuxmuJClHfNd8mxzLr2yp43Jy95mUY5erYQTwt
         +zmg==
X-Gm-Message-State: ANoB5pk8WMdoMf2FUYssR4OrpJv1JIqsSrKC7VydeTUlfpyLSNNZTNye
	wcjZBaJZ2JNqryadQyIMWg==
X-Google-Smtp-Source: AA0mqf6lMRZgX0pEcYG9YMsnrIHWktD7j72B9DQqtMKpSchtIooro6x+NpPfiOK3qEo/URWNngPDFw==
X-Received: by 2002:a05:6870:3e0b:b0:13a:eee0:199a with SMTP id lk11-20020a0568703e0b00b0013aeee0199amr854823oab.61.1668173422972;
        Fri, 11 Nov 2022 05:30:22 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t127-20020a4a5485000000b0049b17794d19sm794048ooa.20.2022.11.11.05.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 05:30:22 -0800 (PST)
Received: (nullmailer pid 3073765 invoked by uid 1000);
	Fri, 11 Nov 2022 13:30:24 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>
In-Reply-To: <20221111092457.10546-3-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
Message-Id: <166817308692.3060117.13177587252682485028.robh@kernel.org>
Subject:  Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp bindings
Date: Fri, 11 Nov 2022 07:30:24 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_053028_902354_5A5D47B5 
X-CRM114-Status: GOOD (  28.04  )
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


On Fri, 11 Nov 2022 10:24:45 +0100, Johan Hovold wrote:
> The current QMP USB3-DP PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> The QMP USB3-DP PHY block provides a single multi-protocol PHY and even
> if some resources are only used by either the USB or DP part of the
> device there is no real benefit in describing these resources in child
> nodes.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the PCS LANE
> registers).
> 
> This is specifically true for later USB4-USB3-DP QMP PHYs where the TX
> registers are used by both the USB3 and DP parts of the PHY (and where
> the USB4 part of the PHY was not covered by the binding at all). Notably
> there are also no DP "RX" (sic) registers as described by the current
> bindings and the DP "PCS" region is really a set of DP_PHY registers.
> 
> Add a new binding for the USB4-USB3-DP QMP PHYs found on SC8280XP which
> further bindings can be based on.
> 
> Note that the binding uses a PHY type index to access either the USB3 or
> DP part of the PHY and that this can later be used also for the USB4
> part if needed.
> 
> Similarly, the clock inputs and outputs can later be extended to support
> USB4.
> 
> Also note that the current binding is simply removed instead of being
> deprecated as it was only recently merged and would not allow for
> supporting DP mode.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      |  12 --
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 111 ++++++++++++++++++
>  2 files changed, 111 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:16:11: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.example.dts'
Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:16:11: mapping values are not allowed here
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:16:11: mapping values are not allowed here
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml: ignoring, error parsing file
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
