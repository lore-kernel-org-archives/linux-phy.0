Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB9CC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:51:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76B7C6115A
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:51:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76B7C6115A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S69lOAnr9RTXcW3669diBbP8cEhWgaZlInBtFfkb+E=; b=j5IWbfIUUsNAM5
	1lPuoyzkNfvQXSCt5/Tq/qpNPYtBotYEipeqQ1mb3HK2J91ep0o5Waep1IckPYoOmJrJDZ+MUNQD1
	wvbny5xReiauj5r9vXnrQM+c5W8HGG71FIdKYfNI1Bxafa10bPrOjqLaPXo6DvfTURKBT8znSHI0l
	B+VgXf4atjMcLDCzaPR2fOnz95NO4lB0wLMaFf05Bm5Sh0wbJmTDtO2IPHMCgfiVNyjNo3TNxWnWa
	c/8XknJ410rKbiIZPGkjPi3zs6ham9dHFtKAfU4/RMyhKrq2wsGy7xFn6kDQ75Rsj7RrtkcAnGlqW
	WDKfw9ve1G5W7AadQOJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcYf3-00H8jZ-Rg; Mon, 18 Oct 2021 19:51:05 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcYd2-00H7rY-GO
 for linux-phy@lists.infradead.org; Mon, 18 Oct 2021 19:49:02 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 l10-20020a056830154a00b00552b74d629aso1224161otp.5
 for <linux-phy@lists.infradead.org>; Mon, 18 Oct 2021 12:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AAoBj4y4weGMfJE/H2YUzE461Zo+UYbwtItvsEO1Bq0=;
 b=V9XNUWP0LEN5KqikdLcROGPAxGn+LX1LJLGtV8gdOYHswfGA9ocdyO11B0l27fynCO
 KEg/9/NlTNi2AIca/aTfAyEHu9BYPFJZDho2TAF2+DKnPWkLF+RffmiO22caw19rC6R8
 rQXwHm3ZZ7R535ix76s2djo/82bnoQQbkZVzWzsLkbZol3U+vKE8mpMaCJpxZjzoRRHW
 69NHrmVIUmePq3XdERkpCoYTX5YCTVlJWTjOnw+AD/yIoIOwpbEU2P18gNp1/HYl9kNQ
 +/Inwf9Bfg2KGqJt7X+EpzeY3thmYouXSp77EdryNnq/I0ERaQB5oAsBXIF2m23APtip
 z5DA==
X-Gm-Message-State: AOAM531H8xmBwnL5Qx2fePhjrj4QSUWZ/Niw2TH/PtwrjB8mPwjfFOj/
 zsPMYKopVsk3rBCDM2ZoGQ==
X-Google-Smtp-Source: ABdhPJzO339HRKj4AW98yudKu8l33V+dVFUqkR3/vATJbubDlMODK604QfCtHQumP/dOc5zpMWb41g==
X-Received: by 2002:a05:6830:1e08:: with SMTP id
 s8mr1515560otr.305.1634586539491; 
 Mon, 18 Oct 2021 12:48:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e59sm3222734ote.14.2021.10.18.12.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 12:48:59 -0700 (PDT)
Received: (nullmailer pid 2836064 invoked by uid 1000);
 Mon, 18 Oct 2021 19:48:58 -0000
Date: Mon, 18 Oct 2021 14:48:58 -0500
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, abhinavk@codeaurora.org,
 Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY
 binding
Message-ID: <YW3PqhQHauDYRlwN@robh.at.kernel.org>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_124900_591876_39AC1A62 
X-CRM114-Status: GOOD (  18.27  )
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

On Sat, Oct 16, 2021 at 04:21:27PM -0700, Bjorn Andersson wrote:
> Introduce a binding for the eDP/DP PHY hardware block found in several
> different Qualcomm platforms.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v2:
> - None
> 
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> new file mode 100644
> index 000000000000..c258e4f7e332
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm DP/eDP PHY
> +
> +maintainers:
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +description:
> +  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
> +  provides the physical interface for DisplayPort and Embedded Display Port.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc8180x-dp-phy
> +      - qcom,sc8180x-edp-phy

Is there a difference between DP and eDP?

Perhaps note what that is if so.

> +
> +  reg:
> +    items:
> +      - description: PHY base register block
> +      - description: tx0 register block
> +      - description: tx1 register block
> +      - description: PLL register block
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg_ahb
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#clock-cells"
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    phy@aec2a00 {
> +      compatible = "qcom,sc8180x-edp-phy";
> +      reg = <0x0aec2a00 0x1c0>,
> +            <0x0aec2200 0xa0>,
> +            <0x0aec2600 0xa0>,
> +            <0x0aec2000 0x19c>;
> +
> +      clocks = <&dispcc 0>, <&dispcc 1>;
> +      clock-names = "aux", "cfg_ahb";
> +
> +      #clock-cells = <1>;
> +      #phy-cells = <0>;
> +    };
> +...
> -- 
> 2.29.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
