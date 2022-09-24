Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC73BC07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 23:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2tskDc32l+Gr5Qia/yUIMcD9IDCHghLtxPJmTkWzdA=; b=oIlcJobBWIsWfg
	oWsTBvU7wIBwH5iiWZbT+pAnyZ1cg5WmLKaWoWyYiPUldGV6Q0fsECnzef+MYjKm27rbi5ytNQD+k
	5yIYPvz2r0GEjILKvoBkvgyFU2sCWYRxQU3LKg/6yhaY3n/Rsg+4Hw78dgk8pg+6xTFI/9ohk+nLt
	RVO8Q2diGxTVsTe0O/xucf0pivUbF9o5sWkhmaxTRmAnX3xB+YcwrF4UNgSiw2sv6kW1DIDr3eF82
	rXDLEWBEm3EkohiLO+wrM/1XaTEgY9e0Fust8CbvmFKjAwD5E2vrpkuY4uB3y35FUcgOEbLCNGjT/
	RU0l+9HLzn188EDWFPKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocEyl-009nmp-9A; Sat, 24 Sep 2022 23:54:39 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocEyj-009nmA-47
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 23:54:38 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x21so4610017edd.11
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 16:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0mXSnMfeVNjQFneHqdFGJj+6w+iiBhs9Bkdu6sDiEQU=;
        b=iANnP74LAxyQVethWZnfDgODX+5dE6fq6QMs8mGDI5l6cw1c9cQFOWc3JxxmP+Mc5s
         PdmhByIyW/v1Zk4B94dKTRkIN4dBBtB2YkqLUUepJbVjU+hYtQ8DnU2E8KNgLGjfHwTl
         Le6NS8A99xbFnxoCyPc8az5lKTtL3vzypaeV6eDDQbWnnDtnNsClk7dQPyoV69TdpR4o
         8hMDkM9/S4kuwBakYu1/1L6mxI5mCKMVv2nyS3ZJSThy/w8uDzWdu9kgINXYxyjbA6JV
         HUGW79vNM8AuRJiIQOZQX0gsA2ugpEv4DD+rZyPXkokaj+zwqx8MWUJv4Vw3t2ghKp1X
         XAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0mXSnMfeVNjQFneHqdFGJj+6w+iiBhs9Bkdu6sDiEQU=;
        b=0OFq2Qr/xgnItGKOIbaMRGRkP2OtcPOAQcZ50XCgpQ/Scuanh1j0Zrvo2rHJ7+QRrH
         p72BlpJEeY5JO9FiFQSt79pNIaYhVO036YnR4oT2UuR0093peEfziEWIlUnZIAd6UTPz
         izOmmx+6z/9C1GJqK6UujPYfntV4+JuDdB08ZWJprzY/DI+0PjkquHNtqwhCyVD0wRRN
         i32r70fFTveV3fW99EGoPL75TMAt7gWMpP1BgxabnSOAFqQNLW3NMlD8n5XkyXSCLn3t
         tYARudZ3h6SNVG/MuVf7IgAE7SHtnv7LWt1YEFYYVgv1ZPLLETci45jdrU8/FdR3QWS7
         jneQ==
X-Gm-Message-State: ACrzQf22p5sI0ZE5rzZjRi9RF8LNHR2REtHS+QAihbYE/ftab33PQMX/
	HUIxSmdpNHuTTiDIXWF/tO+z1unfvG3MjcXFjtM=
X-Google-Smtp-Source: AMsMyM6DcJJAMrnBKem6sLEoV26hkG+23rCJbpzoUviy2u5rEfnQA9dAQNQz90nzB4wrJjLnfjObxoZMJr7Y3S6fTW8=
X-Received: by 2002:a05:6402:1e8c:b0:44f:f70:e75e with SMTP id
 f12-20020a0564021e8c00b0044f0f70e75emr15227460edf.405.1664063674960; Sat, 24
 Sep 2022 16:54:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org> <20220924160302.285875-6-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220924160302.285875-6-dmitry.baryshkov@linaro.org>
From: Han Jingoo <jingoohan1@gmail.com>
Date: Sat, 24 Sep 2022 16:54:23 -0700
Message-ID: <CAPOBaE548e669mbg5vM+ZoAgOz+g4eKRRODcRXRX-r+cdMf1yQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] PCI: qcom: Setup PHY to work in RC mode
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_165437_183868_8B6EDE71 
X-CRM114-Status: GOOD (  14.91  )
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

On Sat, Sep 24, 2022 Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
>
> Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> used in the RC mode.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Jingoo Han <jingoohan1@gmail.com>

Best regards,
Jingoo Han


> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 66886dc6e777..1027281bd6ff 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -22,6 +22,7 @@
>  #include <linux/pci.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/platform_device.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -1494,6 +1495,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>         if (ret)
>                 return ret;
>
> +       ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
> +       if (ret)
> +               goto err_deinit;
> +
>         ret = phy_power_on(pcie->phy);
>         if (ret)
>                 goto err_deinit;
> --
> 2.35.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
