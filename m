Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72DF8C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmujSnda4CilHjwtZBhPndkM2OygtFfZMIW0JziMdOA=; b=b5pJNgjdoC4DKe
	uRgIIy8mKmxj42qmxI71upl21Qfd4Fn2yVT8n4x1OzVQDGsZrSKmWvF4bTe5DjrXecVIOQV9B2wCM
	5myr5WZdtyiJDeALqw4/7rC3T7FAwlTeaXRsT/frzbrUxzBlm0Kpo1dHeUxP9q5t/R+itqq5CUDoz
	lPsbVb4WIgBJASlzniYSt8HTCXADNsUBZPgzqvR6R75+2WxHkyzkfUG3ZEl8v4TH/m+vb8Y74rEFB
	ToqeEt4qdiJbYzqK59mlm0NX+iPdDEdmVNQIiwtZPPIPw3fQDFD00GP3ti99KcTMTxcJZ2QwZAsxx
	9/on4UvorRwOv1lK5TRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHwK-004aIC-S5; Sat, 23 Apr 2022 15:44:52 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHwH-004aHe-P1
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 15:44:51 +0000
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-d39f741ba0so11693398fac.13
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 08:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WI4v9jTbsIcKFzbTFV4CkXCBay54N1Oo0tLcKG2okuk=;
 b=GuCc7g12xSirTqULiexO/HNajNdmFb2nq0eVlcaz0hWMdnxOMIk5AeBAMqPyL0rYVl
 MyvXwBc0tDxT1g1wi/Na74VHs+MMpCLVOCNuBRnNQYccRZvr/MHAzIyK7mu7VWVpRxnS
 2zWuzRZCM9bVznfcRL1kSJRE+M+CxxTBdcY92OfyTcIYJBFBWe4C0NRAKHjdSUIVENHC
 Xy4MWQrTivSTA6Ul6V8DvmPaHa+OhENFObjP1VJjSASeTRgGypP/0vY2zI0L8UwjUDoG
 GUiSkSQlPu2plfvN4ZygVwuRULWkCX/AT5k4dMY1vakwjk16RPIUsOeK/9prQjRUtz9q
 LvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WI4v9jTbsIcKFzbTFV4CkXCBay54N1Oo0tLcKG2okuk=;
 b=7QpHPInNWUsDOrXCNXm1FA5IpPNAhCxQjP7QwW/ilx+aC8MpXC8l45iiEW+aBUkmKX
 w2hF6Twcnj5FwDrjMazKz9BJlfXIfremHusQ5wUyB2X1/u/5M7J0UyMPGDE75M7odXPF
 bccDWyzlYo8CuElfWFbm/aLteg4ZKsW/bIcWe1jnt2nQnhvmNyuuNTJtv5kLQSouJE/1
 3FQ58xGuANb4YdArGM4IWBbyjpNcLsfwQYyfRbFiWH16dl/oZ8jtbrUAqYmOf8xbUm9q
 O2KR1/0NtmpFnnpdnUNo3e+fUdWM/+fEYeQykgnU+Z6L29MoKc9kChdnnQ5ljXtjmDNN
 +KEw==
X-Gm-Message-State: AOAM5323Rep4h5MjVodQn4HoGjvaLGU8fuQb1uGqktDWqKv/F6H/xcpa
 72IvMkEcsMjk/ldLB61wK/IscA==
X-Google-Smtp-Source: ABdhPJwhzqzGCODM05j5yChA14I3TniITfBb/T0zYrHKD6GGVSxGnliKR/rMO0K34IDB5CGKJF3asg==
X-Received: by 2002:a05:6870:4414:b0:e6:244f:78ba with SMTP id
 u20-20020a056870441400b000e6244f78bamr7984019oah.201.1650728687284; 
 Sat, 23 Apr 2022 08:44:47 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 g25-20020a544f99000000b002da70c710b8sm1933901oiy.54.2022.04.23.08.44.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:44:46 -0700 (PDT)
Date: Sat, 23 Apr 2022 08:46:47 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom,qmp: Mark '#clock-cells'
 as a 'optional' property
Message-ID: <YmQfZ+h5tD6KbMID@ripper>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-2-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220418205509.1102109-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_084449_868502_FA741929 
X-CRM114-Status: GOOD (  19.10  )
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

On Mon 18 Apr 13:55 PDT 2022, Bhupesh Sharma wrote:

> '#clock-cells' is not a required property for qmp-phy(s) in the
> '/' node, but it should be is used in 'phy@' subnode (where it is
> actually a 'required' property). Fix the same.
> 

It's not that #clock-cells is "not a required property", it's that the
clock comes out of the phy (the child node), so there is no clocks
provided by the parent device.


Please rewrite the commit message.

> This also fixes the following 'make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   '#clock-cells' is a required property
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 8b850c5ab116..c39ead81ecd7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -66,9 +66,6 @@ properties:
>        - description: Address and length of PHY's common serdes block.
>        - description: Address and length of PHY's DP_COM control block.
>  
> -  "#clock-cells":
> -    enum: [ 1, 2 ]
> -
>    "#address-cells":
>      enum: [ 1, 2 ]
>  
> @@ -112,11 +109,13 @@ patternProperties:
>      description:
>        Each device node of QMP phy is required to have as many child nodes as
>        the number of lanes the PHY has.
> +    properties:
> +      "#clock-cells":
> +        enum: [ 0, 1, 2 ]

The commit message doesn't mention the fact that 0 is also a valid
value. Perhaps just keep it [1, 2] in this patch?

Regards,
Bjorn

>  
>  required:
>    - compatible
>    - reg
> -  - "#clock-cells"
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> @@ -468,7 +467,6 @@ examples:
>      usb_2_qmpphy: phy-wrapper@88eb000 {
>          compatible = "qcom,sdm845-qmp-usb3-uni-phy";
>          reg = <0x088eb000 0x18c>;
> -        #clock-cells = <1>;
>          #address-cells = <1>;
>          #size-cells = <1>;
>          ranges = <0x0 0x088eb000 0x2000>;
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
