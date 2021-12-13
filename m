Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D0E7C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 22:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJiH6bOxPv+HOMfyROdt47wc0XIpA9vnuNgdwWYV2Kc=; b=rGTCgjrvz53EkM
	K0sLqhyx+/8YBEg31mX63wiFJPU+z72HjUbeuPIRr0nZ8WNw6UEWVnDzClYKXDxzaZlrcAW0IOmm9
	Nybe1ag/SfVOzylP1Jen3it1AzanCIMefjZA+kr2w4+GMeq2zpQfrtLhEnQz70cI5JYwFVasa+DKs
	WgLCJJ4VbQtoi3tfVGUHsrXhZsBL7MLskXScWi9KTws9QuPTAQWH5ksC2YJK77ufyA31jOoJUrXXw
	tqgdTR6hvlIpgOeGt6eGM93tscAQVfPqTLA1aogJIMATZbZIJ/S7GZ22nmNNqm8g6b2agbD2Uc35Z
	Hh7dc73NG2PAOxNTbCJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwuBb-00BsCi-Nl; Mon, 13 Dec 2021 22:52:47 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwu4s-00BqFB-HG
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 22:45:51 +0000
Received: by mail-oi1-x232.google.com with SMTP id bf8so25131538oib.6
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 14:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4oGFXYmh6Jbw90ZFgNxjbZIzzl0iLtM+OcafP4Vavxg=;
 b=SCDDmx9l2S444HDT3R6mPqIk37JUT6G/MATUDMNWhJhAOijEK/TShP2dx2iTfwl9Lx
 FrxR+abiZUQAVcnDLKAmwqk8Y4Uh3OULV+g4wUgbe4SW7trpGGsT+4VfvNEmYOtpEilf
 nop+CO9uopWFeOr5A+gz4hOKwoREyqqK+01Zvws8PwNeyuXRnV9S9TAXSBbGIl1E7aGG
 y6phbKTAtu7VSW5VzKCPCuVkWjPsevck9OE+OgB8R4LRE5CeEE2Rrr4od5zuGPbaAFV3
 1sYHkVzYtuO/8OeQzZUz0WKyd9affKRtCEtVxIVS3xZCcJm3BpGBL76IgW/DZqVhrUpk
 sVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4oGFXYmh6Jbw90ZFgNxjbZIzzl0iLtM+OcafP4Vavxg=;
 b=Z/fT5tCuir0CeX4idyhNuy/d6jf7K619o12UKUjkiDYpizPEwIPnW9inZ03WmTLowh
 s2cdBk+OecV2Ac/PsaFBMbSflpSpfFKefTG25+RVUmAeuFXLqWG3IAtSSOaBIyHItngF
 cRgO44Ct2LlliYRMO3UR/KNZivnQJmyWHXr/ZpnrOS2udLqkHOhTVzMawvpPYwV8HRdu
 8x41cnSDK5DEMAQFtxxyx39mun/W1UXgNo1r+pXJ+9npFNK6FnofYPbf3KU20k6xqRU7
 bckHOiBjvS2Eog7wkIj7eAlesq1rLvYPfre61YFVSeMS1cvu74jFp/1TQXToTDb8//lu
 Vkpg==
X-Gm-Message-State: AOAM531ZjhhKhjwRfCnc0tn8LHtjwgKY9l4etH6t9JIHPgtrENr2WLM6
 dHHs6Xty3RYMEkDGoD4hm4mHJg==
X-Google-Smtp-Source: ABdhPJyyHrUjlJku2arlsBiiTSFRGXNctI86S7Qx4Y5Xbi6fuOvx6TZHmxRTkflT5OmWmBe6kNIalA==
X-Received: by 2002:aca:ab86:: with SMTP id u128mr1301830oie.41.1639435548463; 
 Mon, 13 Dec 2021 14:45:48 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id r3sm2394109oti.51.2021.12.13.14.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 14:45:48 -0800 (PST)
Date: Mon, 13 Dec 2021 16:45:43 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,qmp: Add SM8450 USB3 PHY
Message-ID: <YbfNF+CtucLaYnDT@builder.lan>
References: <20211213131450.535775-1-vkoul@kernel.org>
 <20211213131450.535775-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_144550_622797_04F0879A 
X-CRM114-Status: GOOD (  11.41  )
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

On Mon 13 Dec 07:14 CST 2021, Vinod Koul wrote:

> Add compatible string for USB QMP phy in Qualcomm SM8450 SoC
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c59bbca9a900..d625a6fe0205 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -51,6 +51,7 @@ properties:
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
>        - qcom,sm8450-qmp-ufs-phy
> +      - qcom,sm8450-qmp-usb3-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>  
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
