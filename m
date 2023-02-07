Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C0BC636D3
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 18:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWoHkGMC5w+BHSBKsbFrcmhJFOqiTYKxIMTsulYyL/0=; b=L+aGWQRi2SqufQ
	AHz1xsglE1GHPTrnKqrjpcIj7qaV9PsODe7Y7BacKtTojsMJ9VupmsGXLYqDSlDaAYNRUHzXSNEot
	90KsFJm2xN/qlgC8YN7CXCbHBJPmfNTgYrpgL8G7DSxhB1ICMTSWJOrnZ1thMEuB42Uk9N3Qsh6tT
	asnTtsnph4+wQcjY8KuPJhU0pvNcgMp19xy0ithF/ZnEKIyNHyiGyBU5e07FoHSfFxaYMQq3hb0RA
	wrd4IFyGCRS/TN05G1gdIorv8d/L1W5m9paDaaML/Shhvzn3DrQ7OxUB5RUmQDX/bm/d6bYBYEnww
	PwTrx2KFyRh6QHbQbimA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPSx3-00D7k6-D9; Tue, 07 Feb 2023 18:44:21 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPSx0-00D7jg-EX
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 18:44:19 +0000
Received: by mail-oi1-f170.google.com with SMTP id dt8so13492798oib.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 10:44:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qF05XBm5StkoRZebgzW+5UFs5ZcFAhyv80kCZkRUAKk=;
        b=hFUwWIARRcnwKU6ifOpkcvuc6UgZU1FyWGXQ4XCDBJR67BHx1t9OnZb0Km4ekvAVat
         urHjT4n1thdaW/R+oQd6FJIBtu2Pbm1VGqDymDIMLg8x/10qAg/Mfl3eLZzdBPIoYBWM
         p9PJlQ8S+gVpWzZ+sQFLCWxVPmSByBhhZxMQsUusgNEeN04MM4zDlyKqJs2DF3gieLEV
         q1cmL9j7Nfa1bJAb0kY9ZsgDzOfA0xtmXuuO7mjbIVTJrTgsnyOp3Cui87yIgg03UD5j
         NFKSOHHGXwv+lWKxRZVN5/mObUBtHqlTtjevmY4RonP0SJ5e+fWF/vROLcL9A1cji/4g
         KKLw==
X-Gm-Message-State: AO0yUKX/y4yUq2Lpo4EPxiBajO8LdLNj0tRnK2n8W85VtrW4BKry69mk
	NjsRB60JIREdD9F3dga6ng==
X-Google-Smtp-Source: AK7set+AFJ9CMlKOl1fPlpTwwkum/A3wyh9BV9nr5T0Bia18RR2erkyWqWTpSnNcv8ypn9y4hENlAg==
X-Received: by 2002:aca:1918:0:b0:367:6fd9:408c with SMTP id l24-20020aca1918000000b003676fd9408cmr1795362oii.44.1675795457117;
        Tue, 07 Feb 2023 10:44:17 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q12-20020a05683022cc00b0068bcf7995aesm6821095otc.64.2023.02.07.10.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 10:44:16 -0800 (PST)
Received: (nullmailer pid 3956646 invoked by uid 1000);
	Tue, 07 Feb 2023 18:44:15 -0000
Date: Tue, 7 Feb 2023 12:44:15 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, vkoul@kernel.org, devicetree@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: Add qcom,snps-eusb2-phy schema
 file
Message-ID: <167579545552.3956607.9337813365247017487.robh@kernel.org>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
 <20230207114024.944314-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207114024.944314-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_104418_510133_47289280 
X-CRM114-Status: GOOD (  15.49  )
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


On Tue, 07 Feb 2023 13:40:19 +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> There will be a binding check warning from Rob's bot because of the tcsr
> clock bindings missing (dt-bindings/clock/qcom,sm8550-tcsr.h), but that
> is expected as the header is already merged through Bjorn's clocks tree.
> 
> The v4 version of this patch was here:
> https://lore.kernel.org/all/20230202132511.3983095-2-abel.vesa@linaro.org/
> 
> Changes since v4:
>  * none
> 
> Changes since v3:
>  * removed blank line, like Rob suggested
>  * dropped quotes and reset description, like Rob suggested
>  * dropped the RPMH_CXO_PAD_CLK clock and the ref_src clock name
>    to match the schema
>  * fixed filenames of the includes in the example (sm8550-gcc and
>    sm8550-tcsr)
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * dropped the "ref src" clock
>  * dropped the usb-repeater property
> 
> 
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
