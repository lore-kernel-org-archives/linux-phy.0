Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5422FC6FA83
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 23:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mgONUorKGTIPuKl689hPP3CkMogJ/CgZ3H+4twHPRk=; b=allaVH5MCwjZh5
	aqlKcNHSpsrz/w5gRRXIkx3ZenO5fD8WMy2nrwQBn1wjLvU+/xf8wJQQqMDO9odTOUIXhgfv18AoY
	/4KPoHg/iRU81TH+h5unz59rMI5XEhleFYg9iJqkylKkvrdOySFhYDopnmCTQI46/b2J4E7KfcyTt
	HiPiIYFqAcQAc6cc1bRGJ/PCRFShzv/TOt3+2TIa1GxsIq7Jn7+edWWTbXlU+Hvv0tn0EhPbSDoeD
	/FHbMkcvoUcQM149sdr1cDG8PtKQXvLNqTpCscTfmAl/jb9lLiaclodAMfR1/qwgnRujQ+tedo+Ro
	CHcLZ30nUFfFDRsnConA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocEyL-009nk4-Jf; Sat, 24 Sep 2022 23:54:13 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocEyI-009njd-KF
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 23:54:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id m3so4604071eda.12
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 16:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=CBRSPkWO3j4tbi/g0ng0NFipbSw0aK/tx8sgTF9xYdU=;
        b=kaQ0umG/iyuJTdaE8gvYt91R+0HAZiBJew74tjADm0tF37tACwptqO0jBCxJauu6Fk
         BmPGUKAn5tlipHYxvfw0apIkZPhmReWFtY1ghEFzcXBrwclSYRBVcd7oGCxGUvwiHQgh
         oyu2UyLwE9iJLEsOJrTMjBzvoQuw0jEO/MPwvf6nk005b6R1dOYHrJM7EpSv0Cyd9OwO
         Eh1pEbLtImKAC5tFpVXy5eqi1fBCkYK2w6kF/yGH3XTRi7pS52fV/y2RVaSxYkUsryo1
         UFEFpAkgbxVRWKyja5ru8WKAdZvdVkAZKcA9Sk2UNYMUjBV8xHJzwC/piurDPtntD0r1
         yC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=CBRSPkWO3j4tbi/g0ng0NFipbSw0aK/tx8sgTF9xYdU=;
        b=a6Yr4n9P0mDE/+XPxVieMu+OuYBBPb880WUTGxWTFy8vPTUbkjoP9fmy8tLBaAAiZ2
         qUOAEy3BwlntKp6LBaXGIB1dNAF5XDMNOACSJuLU9+dB/1FVDKuN8uJePxtE8dD8FKdP
         OtPgWCfTZ3OOrFb++76Zh9gvlb3pW1igdQwX7I7sn0Gf26ipF05WqljvFLlEi3EEUxOx
         bi8FUOa1eA9cwXoA0v9FxyYfycVMi1+BqJbawQQDEZcKK8m8WU3x5Y/VEt5GW6vIIf00
         PfX7hyjCJQuxdFzwMXCWml4KwPPjUSBJYRglbyIyo29ORfDNEJdhMSEBW0EJFr5x4mo7
         MuYw==
X-Gm-Message-State: ACrzQf2ibLVH8QU4ytiJSz5MsNw8WX5dLtawwBsop57rZg599HMpK/rC
	pNFxJZ9r/NbfPjbS1WwpzGajN++r24XR72HLHBc=
X-Google-Smtp-Source: AMsMyM4WRG/u0/uSPvSkxdC92l4S/9EliQuDYaHsV7mW8jNluQmpGysYZyHdtYUMP03H9qDLXF3lJ1Tn6itP+pX4Hog=
X-Received: by 2002:a50:fa8c:0:b0:456:cf8e:40fd with SMTP id
 w12-20020a50fa8c000000b00456cf8e40fdmr9249955edr.365.1664063647851; Sat, 24
 Sep 2022 16:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org> <20220924160302.285875-7-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220924160302.285875-7-dmitry.baryshkov@linaro.org>
From: Han Jingoo <jingoohan1@gmail.com>
Date: Sat, 24 Sep 2022 16:53:55 -0700
Message-ID: <CAPOBaE5Psf3NehAM+5nQe2=rEC-wdF=zSrLXAnagEnt1ft2f5Q@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] PCI: qcom-ep: Setup PHY to work in EP mode
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_165410_705196_6A5E44EF 
X-CRM114-Status: GOOD (  14.92  )
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
> used in the EP mode.
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Jingoo Han <jingoohan1@gmail.com>

Best regards,
Jingoo Han



> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index ec99116ad05c..8dcfeed24424 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -13,6 +13,7 @@
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/mfd/syscon.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> @@ -240,6 +241,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
>         if (ret)
>                 goto err_disable_clk;
>
> +       ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_EP);
> +       if (ret)
> +               goto err_phy_exit;
> +
>         ret = phy_power_on(pcie_ep->phy);
>         if (ret)
>                 goto err_phy_exit;
> --
> 2.35.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
