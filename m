Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF18AC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 17:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyZtdlXgqrnxWrzcNgG41ZOltorme/8128AcKFZ1KKs=; b=ROe5iGVerMLCg/
	a90CI6oaWnd1XGboWMiB4iDzIzkC/TiAxkLHTmcWV8vBdpWUjWgso+u54CYWK4RoSI2c5BcKc/39H
	GPo4qyV+QO6XLKrnECkO7yu3oj3Z0TuwmDzL1X4Ek56G99j8bbNroSmmq6an0TCav53ovx25O0ytk
	Uvs6l2NlKcShlbsONKWBic62Q9Q9DV2Ao3pj2YQu0KPELnzww8SXvgjWQht/bM1E1ShlCfs9Wx01W
	IqTfSHlJpT6vZAckG5CNQ5oD5hPMhzbX5gTyirvDdX/pi6ojkByfCpbNsWRK50PguYjWcz0Nc0YAT
	vIS9TIkF8JiB5/grHrtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3hfS-006YeU-AR; Tue, 21 Jun 2022 17:27:58 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3hdn-006XtT-Fv
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 17:26:16 +0000
Received: by mail-qk1-x730.google.com with SMTP id c83so10647938qke.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 10:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rX/peAHmhyZwy77vQ2JcNhxgJXXBgZnIyQj7eweojrA=;
        b=fwypcRYdV1D8yWcf3IT9AiP9ODRtAGU+W+qLoiQFpNS34IWuY4vYKa1mjkpHQOFt8J
         pc7ymvs97JBiS2T5w4KusAoQ0s78r5pshZ0Nao/vhrzmzZRFeZqMn4xld9ZBr/5LbUlH
         pF62bCdEY1ttEbY5WjbhM2J5HRQ9ncfKyxkFjMdOgDzq9zLkvmqKObnrxNRuVZ11H5tH
         hJgJPss08/uELByIHex4h2I3QiGIvrrIMAMxFuM6wbaDJDp7CFOWXeXlUTWxO+vRdT49
         CEZEPYEk7RhOIb2xpkC2wnpwN6SjUe2PzdakfC236eczhf0NuZ3OP0vb/Z1zdByI7HtV
         x4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rX/peAHmhyZwy77vQ2JcNhxgJXXBgZnIyQj7eweojrA=;
        b=QZrjLMnPdm3kBOyUcOeWTe+SV81UI+OhNGZHaJ2HzSdoZqrzUPy/1cC+OlMrNDvBLj
         MPWYBKq71aSvXG/hShu3VUdBDpEXFOFixORwixSdryS0Fzq98XYOshDDdQ3gY+Iwi899
         DeDueUQLBH7K7eoh8lwtjgyMDhHeOxrvGdPObl8zULbPkw0i2B/bP0RZzHY89qA4OGJl
         LfocrajViAA6M1xrIbv7yzkT9Zb9q7vk88qrj18zGPCu8BkST+By+HBgNmwRt5icv1im
         E3PmsoRk1EnrmyA4FIlPtuhHq0qI3sszjtJy341CHhNi2jAevBB2/Zc9ZkHqiP8IJ8gb
         n87g==
X-Gm-Message-State: AJIora/hPNMGQVYAzwDwGsPvZHT0YrdwVW++bK51lbXhbzFdC0q8ON1+
	tlJCXYJZDB/wb8jOP7t5SVZ2+Jwr7QOmIslEXGfmXw==
X-Google-Smtp-Source: AGRyM1tBlLWy/IzZYwrazH4Rk/tiu8x4mgf+qRApIeKdfuVwyySYOqQDFSnqtGWbl6uTf14jc0HkDInSpl6gsgXe+xQ=
X-Received: by 2002:a05:620a:4156:b0:6a6:f8d2:6d9e with SMTP id
 k22-20020a05620a415600b006a6f8d26d9emr21197020qko.30.1655832371507; Tue, 21
 Jun 2022 10:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220621111818.447452-1-robimarko@gmail.com> <20220621111818.447452-2-robimarko@gmail.com>
In-Reply-To: <20220621111818.447452-2-robimarko@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jun 2022 20:26:00 +0300
Message-ID: <CAA8EJposq4796b33jkovDDQdzQsrp733kN5tQYAhFow4G8hvow@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com, 
	vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_102615_558345_714839AE 
X-CRM114-Status: GOOD (  20.27  )
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

On Tue, 21 Jun 2022 at 14:18, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> Gen2 one is already supported, so add the support for the Gen3 one.
> It uses the same register layout as IPQ6018.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
> Changes in v2:
> * Rebase onto next-20220621 to apply on the refactored driver
> * Remove non existant has_phy_com_ctrl and has_lane_rst
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 171 ++++++++++++++++++++++-
>  1 file changed, 169 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index b2cd0cf965d8..b4836417b2c0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

[skipped]

> @@ -2121,8 +2277,16 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>
>         init.ops = &clk_fixed_rate_ops;
>
> -       /* controllers using QMP phys use 125MHz pipe clock interface */
> -       fixed->fixed_rate = 125000000;
> +       /*
> +        * Controllers using QMP PHY-s use 125MHz pipe clock interface
> +        * unless other frequency is specified in the DTS.
> +        */
> +       ret = of_property_read_u32(np, "clock-output-rate", &rate);

The clock-output-rate is a new property, which doesn't exist yet. If
the rate is peculiar to your platform/PHY, I'd suggest adding a field
to the qmp configuration instead.

> +       if (ret)
> +               fixed->fixed_rate = 125000000;
> +       else
> +               fixed->fixed_rate = rate;
> +
>         fixed->hw.init = &init;
>
>         ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> @@ -2255,6 +2419,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,ipq8074-qmp-pcie-phy",
>                 .data = &ipq8074_pciephy_cfg,
> +       }, {
> +               .compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
> +               .data = &ipq8074_pciephy_gen3_cfg,
>         }, {
>                 .compatible = "qcom,ipq6018-qmp-pcie-phy",
>                 .data = &ipq6018_pciephy_cfg,
> --
> 2.36.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
