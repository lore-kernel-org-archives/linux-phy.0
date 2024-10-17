Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB08D3C526
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 18:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlHtmEWD6WvNuv+JKuIt+4Rowm4Qyn9fxsPbloNj5U4=; b=FYG5Q2gZC8KTkn
	YjnwGwTmY5qj56hDa9g5SS1LhQ8+2DP4XkXCdXOFZzU5DuTyhUUzU/43RKy8VNEWwhVkzloDkrdRD
	sjlZxclR+0xDWx27Fpu/AYUVNTyc+z6KF6jGAcvqotAsQA25ya0StbFxdWQBJ7atYW2lHU5mE7tXn
	qFmZXagExpypK9NcOTIxKsgWJhsF7UfX5rZdh/vZUPWFZ8sZrfCaKwZ26QrbNmfv0fqGjS+0H70k9
	KXFGwEiC3TCixocZK8Zfq5euIgwoqlCHl9aSiJGNVay/gt+SNWyYsy7Ga0Q9prklxVYuQEccPZzwn
	fTUc6Lb4IHkeQlIrsvWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1VDT-0000000FsWm-1jtb;
	Thu, 17 Oct 2024 18:27:19 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1VDN-0000000FsUd-1CFe
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 18:27:17 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2e31af47681so1018237a91.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Oct 2024 11:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729189632; x=1729794432; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lcOVFkyx88H+mC/bq0EZCpI9upDma/Jw5+qbBpyx8bU=;
        b=BlbK09F2osAsNKKzZLKhoosuEezmg2iTXaZcZXasEY0rBRUDaK5iuM4Yx/q+xl20sP
         EZ6kd5qCvqhy2xnksJhPf9DQn7IeFF8QuvIxn6BoRuba+p/mjtHJLeCwGhKiGnF9Kg65
         l16cW81jeNgMtpS0sPKwNxPmO8FK4aC6gkVJxBCrBo9ToB/Qp0BGUkRDpcuJr9YD3LbI
         ZQwDaJuEWRdGIQWmNI9rVW3CjbiSwg81I0/Q75NDw/yTlmZbOxZkigcmospsmw/9q6R9
         XId4MSTJQmWry0YGeHyE15yKP0LSI2SVpWEDMTohlenN7lZ/omMXxNX7QHNNr7MhgCFd
         EUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729189632; x=1729794432;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lcOVFkyx88H+mC/bq0EZCpI9upDma/Jw5+qbBpyx8bU=;
        b=h6/wjPgyOu0Hn2yyQtCQaEkCCJodE650cZZbRQajyJw7POtKQd0OWQaRg7N6iR1e7Z
         6jcefx2uskolpOYKU82/ZJ20Y3KEsHDoTx6IDloL3SEBGLMbmr6PvJ7i2Cnr6ThJrda2
         FmtzGg2b+2zIdj4iBrAwAJ5STciQ+kJqugbc5kxuBdFPegenODsTDmznaCeiJXo3sauT
         BlS+Pl0njG8OBlm4TkjzQ3og6wm+MwHhtiVrowEug8BfgYFqIJ1urHs8A6XcdyyOqXCb
         hDNcEsQip/rog5c0txXl8fLI6cmy+KA8V3a3Tb4uuLBVCmfXz7C93S3dCNOqSkqfWUxN
         fs9g==
X-Forwarded-Encrypted: i=1; AJvYcCVM0VUYV5ynM/nfPcvOn6oPimAzVjiu0w9umpOAHwOB5ZwpEfGd+s+PhGH5qPmjkNV/gBWO8EQzd2o=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywux4K6D7dFsXr4R5LlYFDrzqBZlXBLZiBVg7aTfKyQPNaxo/Vm
	IdyTa5PQGzZj2gwFxuc/8Alp1vywJTSL2XLHGDH4quuqrj549MtMNehxK6HIQBssAWoD6qs/geQ
	4AeUJgaFKS2Ee79bMklht2d940HtOQWeTt2WUdw==
X-Google-Smtp-Source: AGHT+IHq42uS45Aa2zsUDZ2QLKAl8iW2NZgItryZE9nh9Tm5rzwutObVfbkmZNaI/67kuCJcXJFjr+dtin3hgfaxKyk=
X-Received: by 2002:a17:90b:1241:b0:2e2:857e:fcfb with SMTP id
 98e67ed59e1d1-2e2f0b09d89mr24643105a91.19.1729189632162; Thu, 17 Oct 2024
 11:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com> <20241017130701.3301785-6-quic_kriskura@quicinc.com>
In-Reply-To: <20241017130701.3301785-6-quic_kriskura@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:27:00 +0300
Message-ID: <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_112713_355348_405F7909 
X-CRM114-Status: GOOD (  13.44  )
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

On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

After checking platform details,

Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index d4fa1063ea61..c56ba8468538 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -1123,6 +1123,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,qcm2290-qmp-usb3-phy",
>                 .data = &qcm2290_usb3phy_cfg,
> +       }, {
> +               .compatible = "qcom,qcs615-qmp-usb3-phy",
> +               .data = &qcm2290_usb3phy_cfg,
>         }, {
>                 .compatible = "qcom,sdm660-qmp-usb3-phy",
>                 .data = &sdm660_usb3phy_cfg,
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
