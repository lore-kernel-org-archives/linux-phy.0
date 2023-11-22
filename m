Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21C01C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 11:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pHeaflzrY+2TLQMBmNUhh7M98gJO4Fal6O4f37Rrvw=; b=DKaCFDD0lx2ua6
	PHuqFup/zSKgVUqgPmvmUtH/5QLvt9S7yJ+kI7GAl4ByGCqeuGb0XgSPmSgo8e+Lu7nLK/fHnyMzw
	9Qm3pJ1f+7EU7PHy7942cu52YqBLheymfGKClaoMVrghmrVTUBUSeLUQdLa2ZCxCnESId7t84BSdo
	bJms1m0FOuSaxUAx9x2MIBg4GAPwpOGThF9uMEvfnLRfImnpgGXVcHkcvVQZ4Z3g63NBRBeHSWINn
	03kTxWBYNtwlvFDD7Gb5zTIB0ZmHXEWNsCzstpBPRZw1wjxa2X8UnYBnhx2chDPB1nXFtl2DDC9Ho
	5PYDo9zK/leszSV52xiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kza-001VEu-2p;
	Wed, 22 Nov 2023 11:02:02 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kzX-001VCF-2r
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 11:02:01 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1ea98ad294cso3100171fac.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 03:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650915; x=1701255715; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PFE8V0akmDhV9uHSFYH1mN8FnS2rSR9n1F1LBeYJA20=;
        b=AqxU4oFj0DfSu890klfNNFHPF2DpjmIJ3NIzMuOhSTxtqe6lRSU+gn12ENXpVibaHC
         QL5IbBJ0Zpo1jS1P7uRod27KysU3YR9WLEIwaJqyLzsqKA+CYwPW/XOKZAfo9fef6KcP
         bkA51qEc2KtTmzKg8eVJYzkLdaCENaBtO9ajkz7dWBsSYbFU0KhF7TW4UDS/vOB9nH3Y
         nwjquJyWuHrOpxEBTURR2zQo9nZaC7MFZQXtcn3GiFImVtbY0u0u4vKjqeVzdY2R2JHJ
         LXwJRjiIO4/Ip/jlgaDSOlkuspEpw5waVYGvu9np765cj2heWI7cCJ/fOyVro6RvbpTQ
         1aBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650915; x=1701255715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFE8V0akmDhV9uHSFYH1mN8FnS2rSR9n1F1LBeYJA20=;
        b=RNHlA8Zg+sJqd/zgTYp2dkqsvnpkymqONioZ27R5qKjy6L6j2jLuca3b/9Fmz8qmV1
         iXYK0sHy5vt58wygWfKVmb4dh6QvmIvF8vVMWdAtW+9GTiUnT9slFRZez0vOpynklHns
         +E0S1t9LVI3v351HmiT0VOR6eeOubE+0fs3V/7eGkioDIclvOhsTVLICfhtJjRqeWKHs
         wSN504c2qGZiAbkU/SCYC/Q0iTnK2JmctpxDep3Z6GGJFl6vDOFJv0woWgCNAsCBJtN6
         1WvieKDOsbZUQ9m2ZoIsTG88YcFWgs9UjWd3RxajiTNF2ufg4fLBJWeXQYEQrLuoOaSw
         L+gg==
X-Gm-Message-State: AOJu0Yyrw5Un/xlprZd69jZ4NEz01KJdv7xcv6qzn/6yq5dPbw1UPNaf
	eqIATxAhKCORksxncQ86BFoohQorVtwKg7WAZWrlzw==
X-Google-Smtp-Source: AGHT+IFxH7sdOzJBY6zKxWc8FlDU8QSdgfsWOQ/oCSLnXUeoKO4tIZGuybTYw8pZH0Y0CYMbDI2kbVOkLaxffa86JNU=
X-Received: by 2002:a05:6870:7e13:b0:1f4:ecdb:fb2 with SMTP id
 wx19-20020a0568707e1300b001f4ecdb0fb2mr2651247oab.54.1700650914865; Wed, 22
 Nov 2023 03:01:54 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
 <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:01:44 +0200
Message-ID: <CAA8EJpoKEd8B7KTwVb0TEk+Yk3kRXfhvtcdk0QUirOOV4wnUYA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom: snps-eusb2: Add X1E80100 Compatible
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_030159_929762_45D3914C 
X-CRM114-Status: GOOD (  16.58  )
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

On Wed, 22 Nov 2023 at 12:28, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 to the list of supported PHYs for eUSB2
> SNPS driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> index 1484691a41d5..6420f342dc85 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> @@ -425,6 +425,7 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>
>  static const struct of_device_id qcom_snps_eusb2_hsphy_of_match_table[] = {
>         { .compatible = "qcom,sm8550-snps-eusb2-phy", },
> +       { .compatible = "qcom,x1e80100-snps-eusb2-phy", },

Do we need a separate compatible string or is it fully compatible with
sm8550? If it is the same IP block, maybe you can use a fallback
compatible instead?

>         { },
>  };
>  MODULE_DEVICE_TABLE(of, qcom_snps_eusb2_hsphy_of_match_table);
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
