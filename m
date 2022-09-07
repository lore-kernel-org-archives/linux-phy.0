Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF76C54EE9
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 21:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxMLWW42rCLaFScV/8SnRVz1OVOXkhsOwDvl4Xt4C6E=; b=ZrceRha2BF6UX4
	R9i2G4gwx7UeWe6NVwFfLWsGQpLHknksR8alCSlchOkLV7piv9nJn+B8FjeyLMEeyUXqw5tRcfzxn
	RB5ioVqKXCTsFF885s87Kd9mDifQMePfzbq4W4KKkv3Z3tqu3LDRj94tFNb2NOqBmdcaIn4XBZ8xS
	NYUf25hyRcQUWP2OBZtGzNm0s/DlH+Rekpdm3kwL2kUDJjzuIqiEm6is3+W8wpi9pnDt3NPzsg5LM
	FFuZrhtsrtiWTmeWusURZ+HEjLiB9xq+Geb4vCT5afq21dOSvlNvKzcELwkVoJzNWtYu2nKh+Omsj
	B7rnoI7QK4ihCYrgsb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2DU-009tna-2I; Wed, 07 Sep 2022 21:04:12 +0000
Received: from mail-oa1-f41.google.com ([209.85.160.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2DR-009tih-LC
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 21:04:10 +0000
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-127dca21a7dso11847886fac.12
        for <linux-phy@lists.infradead.org>; Wed, 07 Sep 2022 14:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=aQSKe2CH6b9g5mXBEzOcX3asnf3UcbDFBQH+uLWaqLQ=;
        b=t6FWnBkL88CWBJ4QvS/9cXubXjK01pPlDvN3aeDzdSB9AHwQmpSd+DIEaNpYAyUvtd
         RrZYN3XClwlYe42wIAMbr1dJS8d7GvAy67whIMGk/BUhAL9W41gdQu/l0Y42gDlofma3
         J6Kl7KEFFfU24Lc6qtVvHyaY/ORM09t/RyLqVLhxPuSE7nxXVAMmvU0wWHMI4xPW198I
         92pQU2MKLyZ4W5Ob1Q0h0Wr8twbk/VYqVJvgsPXruSYmL3dotAfZiWBAXcjYOFugPLNV
         rWmqsmmJA2Dr/DMNAUCIQQEZaQi/YVUQ/r3yjMSEGzinYO2+VKM8G1g38IrJHQGBenRt
         hvqw==
X-Gm-Message-State: ACgBeo3dx6q+yBz2kJ/b0D90I2Cr8ZeEkhF9XGlruju5tEY0L8URKJ9T
	qyJBke0acatcnhnftGWYL5j2KhBphQ==
X-Google-Smtp-Source: AA6agR532XhH323tj7DaASBATDK/KgBu30H+uIFV8zPVW0kuu7V5FaKTfxRVXm0TEjBc7Q3+xeDuQw==
X-Received: by 2002:aca:b01:0:b0:345:4295:e9b2 with SMTP id 1-20020aca0b01000000b003454295e9b2mr158556oil.28.1662584646172;
        Wed, 07 Sep 2022 14:04:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l3-20020a056870f14300b0012752d3212fsm5165992oac.53.2022.09.07.14.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 14:04:05 -0700 (PDT)
Received: (nullmailer pid 342769 invoked by uid 1000);
	Wed, 07 Sep 2022 21:04:03 -0000
Date: Wed, 7 Sep 2022 16:04:03 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,qmp-usb3-dp: add missing
 power-domains property
Message-ID: <20220907210403.GA342688-robh@kernel.org>
References: <20220902080705.12050-1-johan+linaro@kernel.org>
 <20220902080705.12050-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902080705.12050-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_140409_790780_4D40C26D 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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

On Fri, 02 Sep 2022 10:07:05 +0200, Johan Hovold wrote:
> At least the "qcom,sc8280xp-qmp-usb43dp-phy" binding requires a power
> domain to be specified.
> 
> Fixes: aa27597e594c ("dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
