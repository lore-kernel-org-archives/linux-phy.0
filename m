Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0388CECAAA1
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMjjM9ygm4eW98yju7cqN3hKa/uM/p1m/asxPmMZ1CQ=; b=Vigua8HTIi+XKL
	SyCyi8U3rVILE6XjfLHMVE8iR8VK2ZKx4+8LO3SP31k6JJ+JqPD97MYVPNitizGZlW9Y3w22WxJx/
	X4+wYb+Z8gnG2EBttCCQegkM6FaHDbaPTyAGKOeGk633WsuLixtvOBpnL97fvNZVoU8RYFs0hBZh+
	/jAiv9oRhTjmUNPj6VaCcBRkiKXLIqJTJa24wd6ZibrzRlJ9UI+dfP8+gBtsdaeAcHKBwCzt9gVvy
	iHY9ZP17xCB8FkZa64dE3bXf3zRZ2OkXs4j1yWazwDWn1l8QbPDw0wFcSq2SSQAmGtrXKh8Qc1VLb
	+5qwnbGRiHv9oC+FsElg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootSA-009TFa-BW; Sat, 29 Oct 2022 21:33:18 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootS7-009TDq-6D
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:33:16 +0000
Received: by mail-lf1-x12c.google.com with SMTP id j4so13683874lfk.0
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlA3lfnBFUe7zUSYqzwlpye+KZk0wc68LybbGx49CSM=;
        b=Xyio5PkqeQwF6/G9hdKqHd9izuvMnT5vcxQVLTbdneNY+Sh8spk9jOnA1Q5Lv1Zg3p
         cE0c5eHJRBLAnCddXqf+kgnUflCm1v8ZJh53fQPF8W157teWz3J4OLBDqOdKMfqFfVLd
         54YjU6uDzv3IXAnH0j3E/SjRbYaRmex0/Uc5FuDWTd8/eCXjd+BMAml7la3RtzXTaVCp
         pCv2ErKHUJtbQm1/T89g7faQ41ySkhUnOceaSLIs7R4vK1uaJTpWgl0wXOqWXX/I6A8W
         iw3ESowWy1XWYE3fJs/g6AmnK8GQlccLVh7b3Cm6+Gw7G1L8TT+ui4fVjwivbYkJgj9O
         i+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VlA3lfnBFUe7zUSYqzwlpye+KZk0wc68LybbGx49CSM=;
        b=OQBAjoARUkPDO26VwCs6VxAO/uRpM8/jfHxRlwnoJp7/nVYlN+mm2Wu9SjsUo8nMNO
         T2UZHcGFdJYelIyNl2HVcrh1TDT37AjmT4YzG6nNho94FrWzXFox2QQiPPV+uSZN000O
         OaPNGMSrNc0Qt+AmMYbsjjYI4/h67dOFsCKJedoZNJ0m1KJRjRVYfN3Ft25nD1ojLRIK
         2Dafg8byeplao4p64RM+w18awEcz3Wz/nUfRKiMfRQUTqai1ToxDHgNyqlBC2F+c5fF9
         PmXyMGZdFEu7V80Ba/6IVd7duWtamF8nckOISV+0pnLTWVOlpIp3Manx0Nyz7pHTviiZ
         UNKQ==
X-Gm-Message-State: ACrzQf1IUwNmaQIAblUtAzjy4dZNBw3P/o9YWzIs0B7q/JgWoKhPqvJr
	j7h3nRKB5IDPulZqtk/bL+ait27+3muqMQ==
X-Google-Smtp-Source: AMsMyM5yzFV+cKbxFKhSVYT0XAwgce+pQZMkUuypKY220FXOH2xLZ2g8n48DtJPDqQi3b1xitQe3oQ==
X-Received: by 2002:a05:6512:1281:b0:4a2:cbfc:d6a8 with SMTP id u1-20020a056512128100b004a2cbfcd6a8mr2347349lfs.514.1667079193179;
        Sat, 29 Oct 2022 14:33:13 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id q8-20020a19f208000000b0049771081b10sm453307lfh.31.2022.10.29.14.33.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:33:12 -0700 (PDT)
Message-ID: <b048e0fa-a2c8-d8f6-2382-4c43658c41de@linaro.org>
Date: Sun, 30 Oct 2022 00:33:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 11/15] scsi: ufs: ufs-qcom: Use dev_err_probe() for
 printing probe error
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-12-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-12-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_143315_285546_B9D4EA7F 
X-CRM114-Status: GOOD (  14.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Make use of dev_err_probe() for printing the probe error.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 8bb0f4415f1a..28ac5f0ab2bc 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -1441,7 +1441,7 @@ static int ufs_qcom_probe(struct platform_device *pdev)
>   	/* Perform generic probe */
>   	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
>   	if (err)
> -		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
> +		dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");

What about:

if (err)
    return dev_err_probe(....);

return 0;

>   
>   	return err;
>   }

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
