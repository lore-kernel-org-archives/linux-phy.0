Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 350FDC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 07:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/zIzj3zdScKmtzkGDdGoFDJf3Sv6N2ZGJQadA8vo8U=; b=hkbuD5MmCF4el2
	RLEgTAtrvLby2HrAQxbk7dFuWWjqFk6A0yOV1sZvvrRb1pEWjhQjlEiJ3zQ5BLqZRn2cHnVRssD4n
	DJRnqohspdMsx/x9cny/VQoiv2HkWuuueXklLTwgmjg56bRu5hxVR9t1E1MU3efodcXx+G6GTgGrX
	3ALqi1eOp/aUg5CAMwmhOG6GUruKFiQqlySHSsMJqbJhPku2GYSd6/f2pYXznuyLDY+snggy2gukJ
	Clv8T8t8e19DxSw4/7NpVQboMBC/NPcxAsJ1fhtnhD+p+lRT8dldUwQgSE+RwnIEy9DKxtWBqxuqP
	/dXRP38WVe8Aa4nuPsEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDg1n-00H4tG-2j;
	Thu, 14 Dec 2023 07:21:03 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDg1l-00H4sw-0F
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 07:21:02 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3b9fd22bb1aso3643416b6e.2
        for <linux-phy@lists.infradead.org>; Wed, 13 Dec 2023 23:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702538459; x=1703143259; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E+lTsJeZ0gUOBqbzzRtKzTHzKA4q+fi1iIj8a7QvU6U=;
        b=Pmee29CMvxbxjbmCq9tas2SCEVHIMlRrB4x2E+uBdSjk6E2Rol6meUtcB3/w6u/BbH
         Ei763tLewJLcrDyG2FV8VDuSJ1IPn9kYhaYoVQ87AK7EFXMB2okgGMHyQQmTzREZdNyH
         9+EbNrA33iemtiZbflQkd6RJth4NhHKLBm5KwL/fstUnqFWcnvAEnX5DLt5v45Pu5aVC
         kwdkekiwT8+2To2govPE1a88LgjLZ9ERTqkH93pitjsL9XLF/sTaN/A5QH4D+mbLMkUR
         1RuUAZn7SS5slqV5slFHXl5CiDO7a+u3IsbzVDc4Wwj7ifXre7zJOpQ5J0nT8v4m92wC
         xniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702538459; x=1703143259;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+lTsJeZ0gUOBqbzzRtKzTHzKA4q+fi1iIj8a7QvU6U=;
        b=qvvYEJVqzEQ8CdMLiFB4oFo6/pnK5ghKJ0GuJWaGf7WbhuScpfLMKhI75nSAv7vGtO
         Y/8eS4SoUGdmG19cknj6w1I4ilWqcY4+Qc+WDIf0Ayum24vniCbbs7FVdC8QwjEXT23n
         fb38v86/KHzadD4uCo1NSnbRWUvcIbGadKN7ITOx9wma32o+nlPEnhWwoOc7n4Yp+EX9
         TnSS4TgZKW9Q+uW7qLM9tou8UfADS3n/FNhYE5UebhvQqUUd7BNLZ/53VFE6rrE2M0TP
         uS10nlgmhsVsnnMtRsospRHl5bn9W1yfVsQUM3TTnBYMn1N0Io92GDlc5Oe8gKeQcRPX
         LUPA==
X-Gm-Message-State: AOJu0YyMIp9Cp6QgRKLtBBhNjltbL3ap9kgZDkId9cOclKKZLzem74Ni
	zX1wk9Gk6AOpsjVW2p9jH1Fwr4fTW5VNuvEqfLUCQA==
X-Google-Smtp-Source: AGHT+IG+rJCUqFxD37rX/E7u2uLcsa0i45ReRUeOSB/aPceCAS76sfm4WJSdI1aYG+X+Hv7jFYOqLLCYgOhAJjE+HqI=
X-Received: by 2002:a05:6808:320a:b0:3ba:1e0:f1df with SMTP id
 cb10-20020a056808320a00b003ba01e0f1dfmr11721187oib.70.1702538459745; Wed, 13
 Dec 2023 23:20:59 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com> <20231214062847.2215542-9-quic_ipkumar@quicinc.com>
In-Reply-To: <20231214062847.2215542-9-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Dec 2023 09:20:49 +0200
Message-ID: <CAA8EJprxUxK5tkWPShuJu8nqz_frDC_5p-b4x7KRZsOxJ=EsjA@mail.gmail.com>
Subject: Re: [PATCH 08/10] pci: qcom: Add support for IPQ5332
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, vkoul@kernel.org, kishon@kernel.org, 
	mani@kernel.org, quic_nsekar@quicinc.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_varada@quicinc.com, quic_devipriy@quicinc.com, quic_kathirav@quicinc.com, 
	quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_232101_138003_43F2A110 
X-CRM114-Status: GOOD (  15.71  )
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

On Thu, 14 Dec 2023 at 08:30, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> The Qualcomm IPQ5332 PCIe controller instances are based on
> SNPS core 5.90a with Gen3 Single-lane and Dual-lane support.
> The Qualcomm IP rev is 1.27.0 and hence using the 1_27_0 ops.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds PCIe support in
> Qualcomm IPQ9574
> https://lore.kernel.org/all/20230519090219.15925-1-quic_devipriy@quicinc.com/

The series did not receive updates since the end of May. Should we
expect the next iteration of that series? Otherwise depending on it
sounds like a dead end.

>
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 109df587234e..3d54de1a71df 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1642,6 +1642,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>         { .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>         { .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
>         { .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
> +       { .compatible = "qcom,pcie-ipq5332", .data = &cfg_1_27_0 },
>         { .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
>         { .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
>         { .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
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
