Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8614C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  3 Dec 2021 03:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d6aQgDJ+ArQDVm5pIrZ1+ML3qt8M9Jf2oEM3I2weQI=; b=xAGvVPOg7J1Dnt
	WhYb3EV0314AWh4YH/HAKRxlWqhWSlwHRz2ezyWsITqNACITn38hVWLT265jyWNxkj9nqI05Snqvi
	mrKMQHxgZYhjvEpmcN27YZo6WFt2rjxgEXFmk7dlsPYSge3MWzaA1LBuUIHoJFNaAG7HPPx3EH9FO
	dXKPWy06Nu71PZb1PbTdqhYhJae73gTwmZ0sl0ORg/w6zBbaJR+RL0Lt2m3Ch2pZqetP+dphFKPxS
	MYpFpaJ+CvZL1/kgYC1r+8q1IvASEm99krHdDopv8KhtwcRjoihe+1fcFM1fzeWeCndsq0mmAf9C9
	M77/8mNJnJwPWQUxHeSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msz74-00EAbB-6h; Fri, 03 Dec 2021 03:19:54 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msz70-00EAZW-KI
 for linux-phy@lists.infradead.org; Fri, 03 Dec 2021 03:19:52 +0000
Received: by mail-oo1-xc32.google.com with SMTP id
 d1-20020a4a3c01000000b002c2612c8e1eso635123ooa.6
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 19:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HDps2h2SWpU4Y94NDG4hPcR7AZPRkd1wfAyLJyas85E=;
 b=iqgpLT8egn4PIMWsEDOkPYE+RgYdrE6libBZXgFiThm4cinKjw7geQDuINCFfWn09A
 tIGLKTiGej1fB9A9oqta/iqAVKevU4g0Phacs2pjKP+4igkQzqvZAe1VsII8qFiQSR1I
 YXIvlweVfBAbmJS8fDPZhYjhraL/YCEku3vCYPT3eO6rn7k0G8+J2MAFn2i6Hbc3yhbc
 7Oq7ymRfxBprWwo6duLAEB/nO8VYoiL9XbkOhGHL0cvPxa7wfPWAVgFIQPMP8pt6UXY/
 wYQVtlT/9h0Ps0zbDW7WiTswJh4yvhb4GRSYQ6j+EotrsNQNkPEx3M1GSFpludCOrarG
 9BQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HDps2h2SWpU4Y94NDG4hPcR7AZPRkd1wfAyLJyas85E=;
 b=HX9+/yZpjCV7Rh8XYnE//yAmUVlzGTXD3hKmeLVJzV0pyDZjNnSQ84ZUHVtbYcaOTT
 dyItORSr+OxOH8khA0694/qFVJJ4+ZNK8YK4ZMbU/Cz/5YaJ36C0TicQiNU9IBBUbGfL
 smPDC/8DO8LjBdcU0T837EeF7X3f0jSAaN3d24BQcKNpfRIOl/mgmUCL914UFg9GDT9z
 6X/S74jl2t5stTm3h0JynOcUaRsoUS6aDo+IE1xFFFkEbcd3vjCgqQhLrl02Pa0oXYei
 tcHLPAVkixcjpNefWuN00vliuBdFXLiRa23FPKX0wBEcIJ3tQAWQCwFwhV4tjxPnmu+X
 BcEw==
X-Gm-Message-State: AOAM533qag3WIYee0uV4wo9O6belJW+vD/MsIu17Uv1gCtpSZqiYndHS
 cSo2QZgeofxdI/ODM5oeGFgYAA==
X-Google-Smtp-Source: ABdhPJyysufsZZCbU1g7sOlT62sjkNFODXgIPH+tINlFxiO0KOVS5s/AJ0HJthESGvOmoWsrPbnv3g==
X-Received: by 2002:a4a:d486:: with SMTP id o6mr11038405oos.49.1638501588648; 
 Thu, 02 Dec 2021 19:19:48 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id s9sm440136otg.42.2021.12.02.19.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 19:19:48 -0800 (PST)
Date: Thu, 2 Dec 2021 21:19:43 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy
 compatible
Message-ID: <YamMz3JYoyDh8O4B@yoga>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <20211201074456.3969849-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201074456.3969849-3-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_191950_752742_17EDF134 
X-CRM114-Status: GOOD (  12.00  )
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

On Wed 01 Dec 01:44 CST 2021, Vinod Koul wrote:

> Document the UFS phy compatible for QMP UFS phy found in SM8450 SoC.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 630ceaf915e2..c59bbca9a900 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -50,6 +50,7 @@ properties:
>        - qcom,sm8350-qmp-ufs-phy
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
> +      - qcom,sm8450-qmp-ufs-phy
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
