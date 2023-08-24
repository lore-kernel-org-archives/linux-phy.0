Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DFFC3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 20:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKfvk++TNzq/TSxi1R84sKImxHNJkw937zBGeiyKDCg=; b=icNInycvWdQK+A
	uAvEXdMB0M7xZJcuHKxOI5PcA3DGda31nss/oMSXl4JzNU7jBjCkvyv9dyYHUPIZ/k01AZfNoR0mR
	MdEaIY84UYuWcODtk8MrWn9ECLFg4oZtCjyfcMGMjKyF7UdUcsD1R6b581980q2xnSBYfqCFBhH4z
	LRLb2oEsUxCX25ugLQCOSDLvDP/zx/QktUy2NlAVsQ6ZanxKUXplSvSybol4mJdI6nufq9yYd2ere
	DcfEc+LCfyrbzc1GAab/+RtCReg07pxk+Bf9jnAEyj4kyYfZsCFukjkJuwirIuhGBWPeGPivYx+j2
	eszLX4OzMpKpTM/aTYNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHPJ-003mjR-0y;
	Thu, 24 Aug 2023 20:58:21 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHPG-003mic-0G
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 20:58:19 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d7485d37283so268432276.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 13:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692910695; x=1693515495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6SC9PrQbNiMYcNG0IokF3Oc/20YLCYRWG7NXvHzRdgs=;
        b=ZlQoQ0BjePNgc6ILIOalIuRlNp+7cJzgMB3+P9lKEA1rzkZQLK/b4+w4dHpXKvUkoi
         uV2wy+225oxECbKcnIbbvTegxDiJNs6DhfiMlE6xzaPCILTtvi7A+MjsGwV/8tg5FND1
         NtUmu3H+aGKwaMJnLh0ZyI9+p3JgX8kG1QNCfZA1CDk0MrNompso9S2N3lYKs22ycNwn
         rFzjaEg6UxAbpG2qYQukSdwMZZo0Z5ew7g/8TD+k1jvNasfh2PPUmX3it3GGDj1k9ZTd
         XddfjnLXh7qnvC05tVrI5y9x35YW2GcvzfLWQCyXunw05fd2YWFJujPdvZ7bkHclfp+s
         NzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692910695; x=1693515495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6SC9PrQbNiMYcNG0IokF3Oc/20YLCYRWG7NXvHzRdgs=;
        b=eeBZKPSjUZdEXFcM3f0Ugxg1sHH7OD5rgqsjrCprffi18+r1gcwbBP4600iCZX3e8i
         m/5Zu5ObZAaGl7UiBIwAm8n7/yAeOUqOUhN72K2yygVWxXvS2qsBOEbFqlSpMKNOtsys
         1wJ2bAYEcG2ZDMlXeuizjxAbDkTooJ2Huu4ifx811T1k+yKN33TgZmdOJemf791uyQQC
         vdUvUvT0KDfXii+8OcUPILni4cZOr7icXilT0J+fLb64poJGkGu88H2l/AX1D9ZjFW3c
         m6pY3+RRE5ctID4ODn5pjNBe2/qgVKIgyeWnsIMjjJBzZ7humBilAmz6wlpNokpIPk/p
         ViKA==
X-Gm-Message-State: AOJu0Yz2zDSZImBLudPbRpKcTHDgNBVZGcRK0kGRVUW11+hjc7BieCJh
	vebyw+uwHs8HtTDQaoDqx3DFFbzwNTVZkIVraoTqQg==
X-Google-Smtp-Source: AGHT+IEcKfE0x5VK/frMlxUrqmOPqsTO740MkftKBxAGMP5PXuXXJRpSYhg0Izfj2F6SJXCCyXTbpRUEZTUkpGZ30XY=
X-Received: by 2002:a25:dfcf:0:b0:d78:133e:9ab4 with SMTP id
 w198-20020a25dfcf000000b00d78133e9ab4mr2194039ybg.58.1692910694878; Thu, 24
 Aug 2023 13:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230823171208.18382-1-athierry@redhat.com> <20230823171208.18382-2-athierry@redhat.com>
In-Reply-To: <20230823171208.18382-2-athierry@redhat.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 24 Aug 2023 23:58:03 +0300
Message-ID: <CAA8EJpp0YTREszG_VdEQouvn+_qYLFX8ZmUbC1xya9Snmcji0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-usb: initialize PCS_USB registers
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_135818_147659_DCE66D12 
X-CRM114-Status: GOOD (  14.40  )
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

On Wed, 23 Aug 2023 at 20:12, Adrien Thierry <athierry@redhat.com> wrote:
>
> Currently, PCS_USB registers that have their initialization data in a
> pcs_usb_tbl table are never initialized. Fix that.
>
> Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 466f0a56c82e..ccbe64f7897e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2233,6 +2233,7 @@ static int qmp_usb_power_on(struct phy *phy)
>         void __iomem *tx = qmp->tx;
>         void __iomem *rx = qmp->rx;
>         void __iomem *pcs = qmp->pcs;
> +       void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
>         void __iomem *status;
>         unsigned int val;
>         int ret;
> @@ -2255,6 +2256,7 @@ static int qmp_usb_power_on(struct phy *phy)
>         }
>
>         qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
> +       qmp_usb_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);

I think we don't need to fallback to pcs here: if there is a separate
pcs_usb_tbl, we need a separate pcs_usb region. Just pass qmp->pcs_usb
here.

>
>         if (cfg->has_pwrdn_delay)
>                 usleep_range(10, 20);
> --
> 2.41.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
