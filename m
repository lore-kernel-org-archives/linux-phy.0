Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FFDEC48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 10:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h8Mk18MfCaNTjJfROgOQBaNHSgfQU/lT6ixVbdtW3I=; b=uDpP6esg2wsFBw
	4sCztZUEyR1vy4CPh/eN0R/VcZnuuDlMvXsvV5EYztG7uRi8nJew05+U+LnHNTYz4RTdn9MjM+DCj
	YDW0Fxa8KeIUWClKXt58uScknQsJHDl9/NXX8us5h+lDUpFX5mZD3eOtXQBd3pEt0zX+X9OqDPqRl
	K7QRDJXsW3JH0/dO6kuz9yKVxMDRqAwfqIQJ1U+5DGpuAwuBUBjTqh0lHScLHBxorzZkaMoOShkeo
	vC1tde8ZcMjFNDheTlFvABstQugKUjh6WSIfB12sRR6kAQR/nVdE8Ax1Gc9LU/tNcvmpebZU6e00L
	CIumyBIrZ0Ak3Qs5qqUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckHX-00000000awo-47Ww;
	Wed, 21 Feb 2024 10:56:55 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckHU-00000000awN-3Gi8
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 10:56:54 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so5810121276.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Feb 2024 02:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708513011; x=1709117811; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i+ncsQZDtkxlo5wIjHq/CdTQpHc5QZi5GaNWKD+dMSg=;
        b=XPr1Xjo3qmN0iL0JUf/S7BKnuO1uwuzQDbKCQARdOdDD12ZmG2fOPJLbPywIAjsevF
         ipelunCSxJFx66M/lvGoGBrTCRHmlFLXpC3ldac5+sXS0cY4/0scXU6WZu/Gk8WriiGH
         7W2TAoENGzqC30ISDdNj2wV5ZktVy+ZZLKNG97oPpSMcsP9bR0zFpPOw8DVQV8VNrnD6
         Pm4NC4UZigAcY82jb606Xk0/LpFl7OTR8C/mkx9rFBnbNC7flLsouhSxxnqOs1OPW0oF
         F81GrScrjUgJbI5GZNRzcJXh/rhogUa/611NTVneNLGHH09Y8V4dX95eT9Gm168jMJDo
         j5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708513011; x=1709117811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i+ncsQZDtkxlo5wIjHq/CdTQpHc5QZi5GaNWKD+dMSg=;
        b=p8h962zwuzOdOU388xuZmEkNIeSJT2dpJiyP5FJwT8EBmQUsY+zaoQFcPlyu9pS9R+
         Uthpseo9Bs0oyNGm3djECeYizbecLfmMUxvT8oknbEYfqh7/9AKBW4BsdG2wCSVZN9TI
         CF7YdTXJuYgwiidrQOtifvFUG2IYIEDjiUUgZyo1iAnCZ/A2XpoCsmr0pe9CpRkrYh51
         BTD6ROfg7VQj/KlCpSL3pgBCpbCUDeTJCPnBIzK6/wcYKgtQnVyy940QJrcXwHNYhwaW
         zeQdaz00LswY4toO1hm17nmP/FbuE8lUTG/79pdV3IpOyBa/5YI77I0qTvstP0opC/qO
         g5FA==
X-Forwarded-Encrypted: i=1; AJvYcCUO/ZVbbLQ/iIBVDrXC/G0IIOapzgVfPMk8JS2zXQabBF7mWvQR7TMeezWr6AGV04xo+lFOAAJ5wXDB5GevA58NFuxt9VNsrjQT/cXvcQ==
X-Gm-Message-State: AOJu0YysykiJBL1wyD7HktgYufV4HSuNww+Jx3K4M+0Kllc3vLiybhDt
	hXupjeRjvPGv76k7Tnglp0rHRFDk9/m7Adm/GOt6RNWEAE+w/H5oCiDzWGuAt/hkCUssGRDJScG
	EIdsuvvabsgxHNcUUy69mQMlPRL4Mu3VP5LUmmh37aylaCHH8
X-Google-Smtp-Source: AGHT+IEAHnosrh2HKr+vWyBNOZNSN17fCMu1+F8oggttg0/XQH/nIN/mS6ozHi+E8ndqPb5619KYo2+L25hzHEBSDrU=
X-Received: by 2002:a25:b347:0:b0:dcc:5a25:ae88 with SMTP id
 k7-20020a25b347000000b00dcc5a25ae88mr15176976ybg.19.1708513011384; Wed, 21
 Feb 2024 02:56:51 -0800 (PST)
MIME-Version: 1.0
References: <20240221103202.3628142-1-quic_kriskura@quicinc.com>
In-Reply-To: <20240221103202.3628142-1-quic_kriskura@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 12:56:40 +0200
Message-ID: <CAA8EJprMd5tr91gm99GyP1oefO_=tNQzxKA6hmB-xtBNVTbeeQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-snps: Fixed order of enabling regulators
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_025652_870141_DCBC56D6 
X-CRM114-Status: GOOD (  20.84  )
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

On Wed, 21 Feb 2024 at 12:32, Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> The SNPS Femto phy has 3 supplies, vdda-pll (0.88V), vdd18 (1.8V),
> vdd33 (3.3V). The driver enables these in order of 0.88 -> 3.3 -> 1.88.
> But on phy instances which have EUD attached, it is seen that not enabling
> the regulators in the order of (0.88 -> 1.8V -> 3.3V) is causing the EUD to
> reset the phy (issue seen rarely) thereby disturbing enumeration.
>
> This change doesn't disturb operation of phy's where EUD is not present.
> According to the some of the applicable power-supply ramp scenarios present
> in data book: (DVDD is 0.88V, VDDH is 1.8V)
>
> a) VDDH<#> and VDD33<#> held to 0 V (cannot be left floating) with DVDD
> ramped to a valid level
> b) VDD33<#> held to 0 V (cannot be left floating) with DVDD and VDDH<#>
> ramped to their respective, valid levels
>
> Modify the driver to power up the phy regulators in order of:
> 0.88 -> 1.8 -> 3.3 respectively.
>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>
> Downstream kernels on QC targets use this sequence to power up
> the phy and this has been tested extensively on multiple targets.
> This change has been tested with upstream kernel on QCM6490-IDP
> without EUD to ensure there is no loss or breakage of functionality.
>
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index eb0b0f61d98e..e86d221b7397 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -79,7 +79,7 @@
>  #define LS_FS_OUTPUT_IMPEDANCE_MASK            GENMASK(3, 0)
>
>  static const char * const qcom_snps_hsphy_vreg_names[] = {
> -       "vdda-pll", "vdda33", "vdda18",
> +       "vdda-pll", "vdda18", "vdda33",

NAK.
The driver uses regulator_bulk_enable, which enables all three
regulators simultaneously via async calls, thus your change doesn't
have any effect.

Also note, that these regulators are frequently shared between
different consumers. As such, even if you have tight control of
regulator ordering in the driver, other drivers might enable
corresponding regulators on their own, breaking the ordering.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
