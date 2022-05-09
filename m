Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E344C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  9 May 2022 02:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+sIRTgALca20vyDUmp7yQJYykDa5YPfzsvvBehZq18=; b=aJ0eaPNeCGrM7x
	UnGLCtkBjJOC4F2eIYxoiCn77358ZL4ZDLdJb7bB+oCvZ6IgK02tESSUnWPPZDb/wNA4kr4wMAfh6
	fGMTS60tMeDSmuVBFYwJzGLix3OZSZaNLv1tOPy+2uJ4j/PHQr5/4qa7PfSSI6vq/uTQc7HmvzVJM
	cbFTCy4iE2m2wVNsIy5S3qdB++cXiwgP77CUmIezkIcY0ykK24QPm1SeTGX1sY8+DWRnAAy1L60d7
	jjgtVqWuKZI/Xq2bZ7ORI7g6UlyWSFtHGTZ9Fb+48CRPA/zbCN4OUNOu9LPlc2FtL6N9HpzDFUisk
	Y91pMD++MeNjdhliw28A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nntWP-00C6C4-L5; Mon, 09 May 2022 02:53:17 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nntWM-00C6BR-Jd
 for linux-phy@lists.infradead.org; Mon, 09 May 2022 02:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652064794; x=1683600794;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6Wxg3fLn0A0xQwJ99WIYxTRHGTymqsdyy7BxyjO6OG8=;
 b=FeIVCH1bae0vfiL+0IyiE/DgboeVKquD+wCjOVKynmBzhiWb3RoFrp/h
 wHlYHUDivw7QShQYInPcqz6mqsSL01Q8gsAip6thl0AIsahcR2KOYsk+Q
 qeZ1r+C2RQoI+XTHMTYdbTN28HCeknPp+4BEI7PZZtNUdjxE16oYCWEms 0=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 08 May 2022 19:53:09 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 19:53:08 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 19:53:08 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 19:53:02 -0700
Date: Mon, 9 May 2022 08:22:58 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <wcheng@codeaurora.org>, <devicetree@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>,
 <quic_vpulyala@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: Re: [v3 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Message-ID: <20220509025258.GH4640@hu-pkondeti-hyd.qualcomm.com>
References: <1652011947-18575-1-git-send-email-quic_kriskura@quicinc.com>
 <1652011947-18575-2-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652011947-18575-2-git-send-email-quic_kriskura@quicinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_195314_717036_D44D76F7 
X-CRM114-Status: GOOD (  17.37  )
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

Hi Krishna,

On Sun, May 08, 2022 at 05:42:25PM +0530, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 87 ++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 1ce251d..6c2ecdd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,93 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  

<snip>

> +
> +  qcom,hs-rise-fall-time-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the rise/fall times of the high-speed waveform.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,hs-crossover-voltage:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage at which the DP<#> and DM<#>
> +      signals cross while transmitting in HS mode.
> +      The values defined are in milli volts. The hardware accepts only
> +      discrete values. The value closest to the provided input will be
> +      chosen as the override value for this param.
> +
> +  qcom,hs-output-impedance:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      In some applications, there can be significant series resistance
> +      on the D+ and D- paths between the transceiver and cable. This adjusts
> +      the driver source impedance to compensate for added series
> +      resistance on the USB. The values defined are in milliohms.

%s/milliohms/mill ohms

> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +

What are the units for HS crossover voltage and output impedence? can you add
units as a suffix like other parameters?

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
