Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16900C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Uvf/3AxNj7emtuc/8h7RqTMwrKFBajGz2mhXDBYhls=; b=uNgYRZVjAm1/A0
	ExE7/7GST8DT49GbzNdDo5CLmwIH0Fdktsi7roLL+q6sq8O4CvwAM0gPD3FpbLhNzhm3o5Iio+Ga/
	pAkpkzfkFPx56jRc8fp2u9zSkSfkMl23c50gNn8SDdrWVJB28zl9TUhs9FgVc3FqnRR/Uaw71D9dE
	O4wCAEN1GQNLEXlD5C4CYXNboHd0c7bE2zKU8JVI13Ye/USsfMumEgp/UdfyGszCRm7cBGq7MQJS/
	9Hgtj1NffeQtR8/9+i/ObxRplWK6U8oAIFRytqjn9l1+X1JpT0QhRY/NK9D1t+1ege4vIZPNNKcTn
	uHcjD/TjXopk+2If12og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyUY-001EzQ-Vk; Thu, 29 Dec 2022 19:23:02 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAy62-000zEq-9i
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 18:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1672340256;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=og/5NweM9CpQZmCLz/mFb+oKie8+YSeYfWJcuhS3+Cc=;
    b=nfGk9s7G9qViIcRKLecFQyR38KGkA8V2nPSZtgtVA0OdctYm+LuT8lvsQSJmXthNZh
    1dQSJLLO1JgOAKIzMnvcfcT92adMv8YT+mqW7LcM0juyZTGZXx0mobeJreMM+9vLm5VR
    Uy6GongJZC7GwPwRXvAy1H5LXi4wOQcA2cH4CBZOYuij8MbGVn2iMW2UIDMK46a+63zR
    av6kzqtxl2Sg22hr2VBTPS9kjbVNJKhMdGrhfo4oxCIaKaszEecwBpwm6bwVbDM6mEiX
    OTTarXF2563KsiSqdi88QLW7sTxdx8fzhluEf5UwkP6kuMUxFrO2H9xMAMvEtkdte7n0
    XCCw==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWyvDI"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBTIvZXjA
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 29 Dec 2022 19:57:35 +0100 (CET)
Date: Thu, 29 Dec 2022 19:57:29 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add qcom,dp-manual-pullup
 description
Message-ID: <Y63jBu38L/5cQ75S@gerhold.net>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-2-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221229183410.683584-2-bryan.odonoghue@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_105742_887575_0C91B2D0 
X-CRM114-Status: GOOD (  22.29  )
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

On Thu, Dec 29, 2022 at 06:34:09PM +0000, Bryan O'Donoghue wrote:
> The original Qualcomm driver for the HighSpeed USB PHY contains a flag
> which tells the driver that the controller and PHY do not connect to VBUS.
> 
> In this case an external IC such as a Type-C port manager supplies VBUS and
> the VBUS signal is not routed to the SoC. This means we cannot detect the
> presence or absence of VBUS and cannot take action based on it.
> 
> Document the downstream boolean qcom,dp-manual-pullup to allow the HS PHY
> implement the necessary logic.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

AFAIK it is not possible to route VBUS directly to the controller on
these SoCs so this property would likely be added to the SoC dtsi
(i.e. msm8916.dtsi and msm8939.dtsi) and used by all boards.

This means we could just bind this behavior to the existing SoC-specific
compatible (i.e. of_device_is_compatible(..., "qcom,usb-hs-phy-msm8916"))
and avoid having an extra property.

Thoughts?

Thanks,
Stephan

> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index aa97478dd0161..c55a59df71ad0 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -80,6 +80,13 @@ properties:
>              the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
>          - description: value
>  
> +  qcom,dp-manual-pullup:
> +    type: boolean
> +    description: This flag indicates to the HS USB PHY driver that it should
> +                 enable or disable an internal pullup when powering on or
> +                 powering off the HS PHY instead of toggling the value when VBUS
> +                 is absent or present.
> +
>  required:
>    - clocks
>    - clock-names
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
