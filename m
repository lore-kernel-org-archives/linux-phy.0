Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE85C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 15:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tReoy/RiVBHeHEM4b+JTzsht7gWDm7cN54XhWGby9k=; b=1sVLRYXJWF8HMN
	IdUEbtq9uIdfMu56LLmCmF1zPdNhZlVAobHs1MWj3xoWMJWCvGMc84KSikXqWbBYDipzEfe6BSU9B
	K8xiSTESwsmm52os+x37bgH10YBomTpjrPRZlIvbRUEozd/QlnBnfM6cy5840NZtTbRvKPa1EsMQt
	fECtVokMFsaDWbT6V4cIt7H4lCAQw6aNPLBylDHFM/vSCJG+OSKg/gIKASrwa0L19pVqNMtDOIoDv
	iFg7XEzPDBSv32gTpf1eErh7HbdTB6iPLzt3dwgkZzWKUmWbjsHlPz/Fru4g801+KWMFYkWQ/xTEc
	3X9Z8145Y6e8asxWtWIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSpY-0000000HOkP-3yaN;
	Fri, 09 Feb 2024 15:30:20 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSpW-0000000HOjQ-0Tsp
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 15:30:19 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-604966eaf6eso10897157b3.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Feb 2024 07:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707492615; x=1708097415; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DwPyne/Srr/E0bqYu1xMZ7k+F7q7JB1awfFG2iwj5SM=;
        b=thVPpBPFJOFpCJf9QLANmTRpNULPwgXubOXalbkFpb9ZKyzKs1dSJI/sg1ro191pcc
         Jx3IWFhB52H/wNShQUN8JmPls2rm51Yi9wo0oeNNnfhYpqqziWEuoy2KzlsrF5cbovyT
         xWY624m+wXoT26Kqv0+GMAC8zPLiwRE4Z/D9cVdOJFt9Diey59HAfAAZsJdX9mjG9PxO
         BXeVxf/DLBwiPijDgQhfG1UnAzXejMZoVc3pG4zJzVpIs/NDUYOEvw+2yPgyV6mZsip/
         3qpG4E56h+6uy4LUU+mXeXLNgBF53Js7xJUWY8yt6KPPF6rVZX35Cy3MJswLV7RGQfyd
         fZTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707492615; x=1708097415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DwPyne/Srr/E0bqYu1xMZ7k+F7q7JB1awfFG2iwj5SM=;
        b=qCFdf8MIZBV3D2sFq6CYZ1XfnpxMsLy/xNNuLOmhpaNDVwLFrMGsFjKC70IDy+CKO3
         oRrUZsyClyjudsB9R5nBk+q/rK71YwAddAKUzpnmv3LExfLh2Q7C2ezu9bN74pzbk7Yt
         hfAwNmCxbU/EhdoW63pSufUlXDhaP+d9oUJ6CSIgms6jV5/U0IXUbqFyyGuMEEtMIsta
         acfZQ0vKkaKZCWJVKyTBUT/M3Ud4P8zcwigde4ScRwsm8ji/GTEgDOlq3nDJu/5A5evp
         iqAaq8ebbAsBhbGgt9LzbkKo2At/ZwqDcj7zF6JDjuKiSEfOUUcOm/VQvNH+i2wuRr66
         Oz0g==
X-Gm-Message-State: AOJu0YwtyiDjezhBzWz08kNsEGR/lQQWdrU8zFj+6+ii2nyuFYJ3JF6u
	BRBJkaIUNd2R/3tbpGIXreQCr7E5KqgLb6PceQT0gMSlyST80wYKXvO1KOGS73Mrq15QIY4IOdc
	ta+h8l8O6lfYeO5FEK43fMxxahwlebYxmbGkrbA==
X-Google-Smtp-Source: AGHT+IHKpJlDohaMbxRWC+5/t8hSxuj+YTX27ZF5QMSJPTcosnKN65Lc9QOWzjA950A7MwAeqivc87GvLixD28RNDbI=
X-Received: by 2002:a05:690c:2711:b0:604:cb07:b37 with SMTP id
 dy17-20020a05690c271100b00604cb070b37mr958456ywb.33.1707492613963; Fri, 09
 Feb 2024 07:30:13 -0800 (PST)
MIME-Version: 1.0
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
 <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-2-af2ca4d95a67@linaro.org>
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-2-af2ca4d95a67@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 9 Feb 2024 17:30:02 +0200
Message-ID: <CAA8EJppwOjKaRJXj2Re0mugcguAcTZnvEqp_6x-FANrJ__PRTw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for SMB2360
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_073018_180464_9676E6D1 
X-CRM114-Status: GOOD (  14.89  )
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

On Fri, 9 Feb 2024 at 17:14, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The SMB2360 PMICs contain the same eUSB2 repeater as the PM8550B,
> so add dedicated compatible for SMB82360.

"...same repeater as the PM8550B, but requiring different settings..."

With that fixed:
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index a43e20abb10d..68cc8e24f383 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -88,6 +88,12 @@ static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
>         [TUNE_USB2_PREEM] = 0x5,
>  };
>
> +static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> +       [TUNE_IUSB2] = 0x5,
> +       [TUNE_SQUELCH_U] = 0x3,
> +       [TUNE_USB2_PREEM] = 0x2,
> +};
> +
>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>         .init_tbl       = pm8550b_init_tbl,
>         .init_tbl_num   = ARRAY_SIZE(pm8550b_init_tbl),
> @@ -95,6 +101,13 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>         .num_vregs      = ARRAY_SIZE(pm8550b_vreg_l),
>  };
>
> +static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
> +       .init_tbl       = smb2360_init_tbl,
> +       .init_tbl_num   = ARRAY_SIZE(smb2360_init_tbl),
> +       .vreg_list      = pm8550b_vreg_l,
> +       .num_vregs      = ARRAY_SIZE(pm8550b_vreg_l),
> +};
> +
>  static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
>  {
>         int num = rptr->cfg->num_vregs;
> @@ -271,6 +284,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
>                 .compatible = "qcom,pm8550b-eusb2-repeater",
>                 .data = &pm8550b_eusb2_cfg,
>         },
> +       {
> +               .compatible = "qcom,smb2360-eusb2-repeater",
> +               .data = &smb2360_eusb2_cfg,
> +       },
>         { },
>  };
>  MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
