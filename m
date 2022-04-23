Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3AB9C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 15:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r08eWp1TJ7ggglvTV56Gimedd5s4Rm7nQSWxuXlDMI4=; b=KW9GjVtm9xEcje
	ijurbmghmJ1OJu9lgPmw9OiGfz4G3Kr/nxQMlVYXrQnNjWbvL9IFzzghP5YHqVl1dLM9JCIvWg9SA
	9iOmOrngCiOSCiMF1eLr2+I6qtMQb3/GytRLhZplVxjH4m3cvJw2PUN66HpzSy6I4zvRLQf7K5uwz
	e1NYkUNI9sFEonhWUmBHcWXqn+bfDgE8d3Ft+y1Dd9Jq5yCegInirJJeZApx5BJXdHh2xIQjC+c8D
	v1o659sd54vWkoMpOK58ot9cPtIP7IHSnGOLE+tQlUTOquFW0Z5uyt1wlO+o+REN868DhHbgYqCYN
	ttUPj1jQxv7K+ASGFjCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niI12-004aZD-2I; Sat, 23 Apr 2022 15:49:44 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niI0z-004aYp-Gq
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 15:49:42 +0000
Received: by mail-oi1-x232.google.com with SMTP id e189so12326094oia.8
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 08:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=v0ylInl64i1hrDqBe9LG4snd53LOWIsND9Zo4cq727k=;
 b=oVqzYjyQU1wu4npBfpRZe+pc8DzrfKOPAh/ztdLQcN1LoLZrTAsC227FUJ6cNEMI/Y
 Z9THlv266Q+z+3IQD3gM0EDhas6CZU5FUX0nXKMXL9PAbDlYM95lx3IHQkPUEQ7bB3u1
 eQLoXJU8PCBd7HMIFftoCoIXzPjUlcvTDS+EuMBbflgaEH+b98SR7Zc+nFl38QrYt5lI
 t2CH0LEBdP7BRRSIetG5gmWLOqZe1fThnDoFQz+ky5jBtEuF4cRKmL//lFBYfligWAei
 CUaU43SWG7A0kWoD/koKwNjoKUZCtOdtPQCHKL6Rd8wDPG1/yfMk0AfKVfClUOtHPoRr
 +t6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v0ylInl64i1hrDqBe9LG4snd53LOWIsND9Zo4cq727k=;
 b=Lp54VZMezHP4TCk3rw+Qhl3GK+jltNUDCQ7gF/3qhU8P+a/Dp1ueoqmiKTVWNB27uh
 d9RrnXY1oSo2zgQEvB3hUr+9kDsFlqPsKtDSIZtBFMTej3FZ7W1+SiNWae162e1VkQtW
 4hsLi5d2S69joQi6LJEzsGtfPTIly7HddJQHAuSAXBaYZEYCarSdx9XGchKw6dL59r4W
 yTZS6HDl4fvaTOI64/KMgrQebY50zxU5SIN228aXLgD1j+iSCzTLyd24DsasSBljhvVr
 zZ5iqgOortAo9WBuCxXMT9lVrF7QIpmexxnh9yEdMjXPGvNfCfD7t7eaOljsgqX8gFcq
 8Z2g==
X-Gm-Message-State: AOAM5308dB3okWMo+frlnbpjiZtB9ZWlc29+Ds3LGgpiuJro19lJUe7C
 Ol8plyvFL8bnleL2BSHq112KXg==
X-Google-Smtp-Source: ABdhPJx8fCal4anqgjvarWztx1n3sowp/1yUkWS9TO0WIVk/1YCyKPGDiPvo6UGPkRylM+OeJ69yzQ==
X-Received: by 2002:aca:919:0:b0:324:eab4:748d with SMTP id
 25-20020aca0919000000b00324eab4748dmr3471818oij.123.1650728979741; 
 Sat, 23 Apr 2022 08:49:39 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 88-20020a9d0361000000b006056fd81aacsm1980494otv.40.2022.04.23.08.49.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:49:39 -0700 (PDT)
Date: Sat, 23 Apr 2022 08:51:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 3/4] dt-bindings: phy: qcom, qmp: Describe phy@ subnode
 properly
Message-ID: <YmQgi0i9PDCVqrGz@ripper>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-4-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220418205509.1102109-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_084941_599280_21F2DBD8 
X-CRM114-Status: GOOD (  14.17  )
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

> Currently the qcom,qmp-phy dt-binding doesn't describe
> the 'reg' and '#phy-cells' properties for the phy@ subnode.
> 
> Fix the same.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml       | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 411c79dbfa15..c553c8ad0d1a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -118,6 +118,19 @@ patternProperties:
>        Each device node of QMP phy is required to have as many child nodes as
>        the number of lanes the PHY has.
>      properties:
> +      reg:
> +        minItems: 1
> +        maxItems: 6
> +        items:
> +          description: |
> +            List of offset and length pairs of register sets for PHY blocks.
> +            common block control registers, such as - SW_RESET, START_CTRL.
> +            pcs registers, such as - PCS_STATUS, POWER_DOWN_CONTROL,
> +            pcs misc registers, such as - PCS_MISC_TYPEC_CTRL.

The two cases we have is:

  tx
  rx
  pcs
  pcs_misc

and:

  tx
  rx
  pcs
  tx2
  rx2
  pcs_misc

So I think we should express that explicitly here.

Regards,
Bjorn

> +
> +      "#phy-cells":
> +        const: 0
> +
>        "#clock-cells":
>          enum: [ 0, 1, 2 ]
>  
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
