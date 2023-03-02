Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24AC7C6FA8E
	for <linux-phy@archiver.kernel.org>; Thu,  2 Mar 2023 16:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=estUIdYeF2TXqUVmc7TH7tIUxDUU+7UiVsqLfqzhTO8=; b=QgRs6gC4CyCMOg
	2uOefl8IAHNpQnJygmmN74Ag+YhOL/9zvllIkZxg+r+Iyqv0cAaxPFcM2Cwbdl6oSoULofNjF9VoU
	mEhY1FzuvJKJAeK+pVvLTG4psSjwfFwgouyefsIZgmwO4f2DOW9eDRZcmOQEpywJoz6MsgLXVTMG9
	NUbsskIFOXXWG7mYkDZuJAJux2MyyBNYSmUgMYUDMnnYykTMs4JB5qSFusyO5ucNRIOZa3+zzX/U/
	8moUznnBZUlMsFTxrz/J6Z4psi/ikboWEP/zfk55Ig/wTTDm1Ey8ElP4mt3vZ7K7i1XL23P/eRiK7
	DmycGPqDqYlR0Fnxf4kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlcd-002nVn-HE; Thu, 02 Mar 2023 16:17:35 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXlca-002nUn-B0
	for linux-phy@lists.infradead.org; Thu, 02 Mar 2023 16:17:33 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id e194so4076622ybf.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Mar 2023 08:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NI0M23snSIlgG0WB5X2PNxAxhc5m0Un7hrDW0ghCa80=;
        b=PTdLDVC2te44CKlxyoUIJr1Tf5LUFqgnjuh2ICOBH6DN95EnmZ7tlSIGlHOM7WLni4
         erjAQCUS32nHlzuEgalmNxo+9TENi8HmIGol6VNKv8zT62nPlUzBhZLexSDnb2qp6XDR
         3L6+dJchw7Z+4+Y0BglmIbMZNpVoO6XtgHOHpJy/BNp2hlVjIgAORw6ChiL+0Wogw8rt
         66OIR7lXthImjRC441/C3M05HZiT+P/QqHHEl4jdlD/7n4C0kqU/mHHRKHe9xiT2uyFx
         6PTeOLT5gZ/X5+cSZ+CrlxOEyKjFC6t8nscJnK11BG6dKL3/ZnMA8IHb/9G5TAD/Tamf
         QNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NI0M23snSIlgG0WB5X2PNxAxhc5m0Un7hrDW0ghCa80=;
        b=zShFIC6i1v8tTePIN/f4T9zek3GUDNzvO9Xl23LuixYTyHXu6ZJ+4C9OF6iepku/ol
         PywQxJtzO5bfp579AimM8vLlVb/wrvXfpA7blBVl6+CvvCh62Au38JwsljMZ1ki7lLyY
         Sxwn7EVONRpO75jjVbUz4yXC2PmR4/3NshM8lJ4RuED+q6h9wa+vBKEjKxkXTo5IoAnz
         FKgE/zY/mO2/rkaBp0eBS7yN6hn2AvQ4XQrwqWSGT3TIYyRgqIMfQKLRaadVKlruyvho
         gllKBkABfZ+Mgyk1DDAzDAxZXMNE+UES/Lkc7+xrg0hOij+jvQwlOn0DniSHFsEWyfvh
         ldEA==
X-Gm-Message-State: AO0yUKX9/GRra0jG9j2gVychpOVeituHzJ+kLtuhepFQzVw/NySV/a+L
	y3DUNtqb5dJ2iZNk8sStde+IGSOJywTKxnsIjq5jJA==
X-Google-Smtp-Source: AK7set//Hf/uYZ6qY7gZ+y+C9vLjqGy41mZdgp9xBSwR+UQU8Q6plH3+dR/rhbu2vqltwmfL6OV8E+1WBVIFuRPVctM=
X-Received: by 2002:a05:6902:10d:b0:a4a:a708:2411 with SMTP id
 o13-20020a056902010d00b00a4aa7082411mr5711651ybh.10.1677773850767; Thu, 02
 Mar 2023 08:17:30 -0800 (PST)
MIME-Version: 1.0
References: <cover.1677749625.git.quic_varada@quicinc.com> <8f62ea9941fdb425f63f8389e10a370d2ce0d117.1677749625.git.quic_varada@quicinc.com>
In-Reply-To: <8f62ea9941fdb425f63f8389e10a370d2ce0d117.1677749625.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 2 Mar 2023 18:17:20 +0200
Message-ID: <CAA8EJppArws0PO1XQKsYB1H9OjpsHDRPwKgHtTGUkvDe=mdq_Q@mail.gmail.com>
Subject: Re: [PATCH 5/8] phy: qcom-qusb2: add QUSB2 support for IPQ9574
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Sivaprakash Murugesan <sivaprak@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_081732_413469_8D73C848 
X-CRM114-Status: GOOD (  13.85  )
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

On Thu, 2 Mar 2023 at 11:57, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add the phy init sequence for the Super Speed ports found
> on IPQ9574.
>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 2ef638b..c59413b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -915,6 +915,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>                 .compatible     = "qcom,msm8953-qusb2-phy",
>                 .data           = &msm8996_phy_cfg,
>         }, {
> +               .compatible     = "qcom,ipq9574-qusb2-phy",
> +               .data           = &ipq6018_phy_cfg,
> +       }, {

The table is sorted. Please keep it this way.

>                 .compatible     = "qcom,msm8996-qusb2-phy",
>                 .data           = &msm8996_phy_cfg,
>         }, {
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
