Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F26EC43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5ZLaNhD7WhjtY/GH1noARXTYvSVIeC1IkoFDytoeAM=; b=e1XgfLhSpGhprD
	Xpnfv8e8cQ25pGH8ur2W7EEv/P6wVXgdYPUWWq3TmRerDRjvVRmwhxe05y752+x9JYQ3ohhNwajRM
	ZsDxe/nCT6KZJ9sJOJKIGubP6Yc/RqgRfef/t/q5ZjpgnGkJad4AiX9MHrdYJR2zho9pOHu3+QMIY
	dBGt3HNHuJM9QyDovakuiDOt0kgrr3m4edQMgQ68c1cYEweCGJ2JnFBtL+Ed++6jyL4pL1fZdQiek
	bgx7YgR/W7xAiS3+BKK68cMz8W2+79U+MDPJ3ogcTVDaI3BXWQsQ8L/1GkOID01mv6cph8XZt7tI2
	TwKuLCn1izyk4vuHSNRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LHS-00Eldi-SQ; Thu, 23 Jun 2022 11:45:50 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LHQ-00Elcf-Eg
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:45:49 +0000
Received: by mail-qv1-xf29.google.com with SMTP id n15so25462485qvh.12
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 04:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HRbfQ+fc1DYVLY6g+4vwWxQuk6rUPZT1TbLMZi5yV+w=;
        b=e0EAfqUzFTj9jvyBUyQ+swSrbqZDv3wJwWLcT3g2UrWjiWVkn+0p+8Q+WMVZ8lmQY1
         bLCbZBEDBEit5MvQk9s1rB48MUSXA+x1CXdOSb+DBzMYM86k09lk5ZQ9juqg7rJ+pmFz
         JtOtKCV2OqivcRk1HAjA5qtIEHT2IwHNtKE11j45ycspKLW/VyybbI7cCuN54wCEDkFQ
         kmjINPuFbIMQ6K55Mtt2K0h3hpPuvUcWrTNByz1nw2MiXEatxCc8DumZsk16oyHSiTvF
         h4ZNMYisfIHxrIEppM0mUdprLxYGvfDzFcMu912Rh6IOq3GNoKFW1X0sjw5VYZHavLbU
         YAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HRbfQ+fc1DYVLY6g+4vwWxQuk6rUPZT1TbLMZi5yV+w=;
        b=6fmYGU4LDgvMa/YABIFsHGDpEIOSX/VlJl0tuu/lqawFLoLmzpQaUs2Xk4n0GBG7HU
         jQSayCM8GucLoDu09wPP7w6va3cJG65+YuHrxxpSA1IAqErXVpi2D2I7uODxmr821ekf
         Yo+0QYfiqlyGJ0l2rM7fVgyysQC1CyPicsk/zaEDVOL0hL3Ui6V4XZJ8vF+HZm91MZVg
         JweP6GR+MNtwoc5tZpXIO2iSh4j5DGgznRUhs0gCv59F29g546c5GM4dSss6TKUJYYym
         spi8mpegYiXI4fcT+lsHeJ+7Imh5tu+EP7gS3kdAjitu04UdSVYuTv3aAwL5sydERrGk
         UD3g==
X-Gm-Message-State: AJIora8mcYg2IvMw61o7tqY9vk/d9AVXibtDNkJNDJElkyyeAga+aBYy
	sGWzS9WVQROzHoBQ4WnTKavnq941TvylozdzkdZRxA==
X-Google-Smtp-Source: AGRyM1vG+915xBfnnjmYq/lGJQ1IzVhHBCFJSMCuDhc5UgDd8Zp7+Ubl/80Odgaa8L45ZqmAYOHA+8FdE9u8gIdDuCU=
X-Received: by 2002:ad4:5b81:0:b0:465:ded8:780 with SMTP id
 1-20020ad45b81000000b00465ded80780mr31801261qvp.119.1655984745466; Thu, 23
 Jun 2022 04:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220623113314.29761-1-johan+linaro@kernel.org> <20220623113314.29761-4-johan+linaro@kernel.org>
In-Reply-To: <20220623113314.29761-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 Jun 2022 14:45:34 +0300
Message-ID: <CAA8EJprpED7Ap28YrXQ1MCub20DNLZ_MrXhHcej+V_SZqfBk-g@mail.gmail.com>
Subject: Re: [PATCH 3/3] phy: qcom-qmp-usb: clean up pipe clock handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044548_574789_AF322A37 
X-CRM114-Status: GOOD (  17.69  )
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

On Thu, 23 Jun 2022 at 14:33, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Clean up the pipe clock handling by using dev_err_probe() to handle
> probe deferral and dropping the obsolete comment that claimed that the
> pipe clock was optional for some other PHY types.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index aebe5ed4e4e3..40e87f75ec4a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2530,22 +2530,11 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
>         if (!qphy->pcs_misc)
>                 dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
>
> -       /*
> -        * Get PHY's Pipe clock, if any. USB3 and PCIe are PIPE3
> -        * based phys, so they essentially have pipe clock. So,
> -        * we return error in case phy is USB3 or PIPE type.
> -        * Otherwise, we initialize pipe clock to NULL for
> -        * all phys that don't need this.
> -        */
>         snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
>         qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
>         if (IS_ERR(qphy->pipe_clk)) {
> -               ret = PTR_ERR(qphy->pipe_clk);
> -               if (ret != -EPROBE_DEFER)
> -                       dev_err(dev,
> -                               "failed to get lane%d pipe_clk, %d\n",
> -                               id, ret);
> -               return ret;
> +               return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
> +                                    "failed to get lane%d pipe clock\n", id);
>         }

And here too. Afterwards:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>         generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_usb_ops);
> --
> 2.35.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
