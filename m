Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C43ACC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGXB5stCzcgPOn3NBZiSRHxhSAoMbKFnmUw5zwESukk=; b=tMRs8UpbHSTf30
	qgcUZteeMcRMc/Y+PVT02iAjuizRci0xRk8ix9zW8p6PId065MIvF4Bvhf5e2xIaAGAxsR6hUp9jY
	2y9dRaI0wcFX2Jfp9mPEdlK/1HtgFbKTYbYbTDA/rqRbS6n8g7WvDbwH5tTx84oc5xMmIcLWJfG8u
	9Ei/Kn358+XHKeUAhvrI5knVrq6kIXQvSXqUqQk7oNKCx7yqnBO483J5xjs7iRTHrVl0ep44hFakt
	iWd5UvhU22SKSfUS66xI94AjLnfi5kt4WCu2hnJ3/rGr7B23nSvDz5xl73oOsSjwlBTZLD3t+Bc2N
	VixNceOynpCNfJCA8/KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvT5-0000000F583-0CQh;
	Wed, 14 Oct 2026 09:40:15 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvT3-0000000F57C-0kFz
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:40:14 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6a374bea882so5570869a12.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791970811; x=1792575611; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GJTdB+tkmfzXQ0j0gtaqlX8LAfgF2qu6ASSbm0x0pyA=;
        b=eH2IeDJ7Li5VI6EZSv/9cnz/Y3EXsGy0qNaeRX29J9azpE1LP2sqzkk9W6Sb8Awx/8
         +HFs0Qb5QwgV3wr8txVvmL7XQXeil/iza4YG2B/of+mdk113qrWCEjpTSK0tZBYwb5s0
         d/TMu64FP510abBablXQMRZJFAUJvBiKKQLVh8Vyr9zFpAdu8PkTN/QFELBD1WTYRmBv
         YMoKcFuobfcrGhy7nWNdE4+3rM1OVlln7vSViA03uoPgF8yYmw/BKwSF9BZ4ColMIpFT
         9zIrXZzV+PdtkBXV1hEgEVfLwbjBG4Dk3EJxIArkD+avvxTB9ubxlkAP4Y+C10DLhA3l
         KvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791970811; x=1792575611;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GJTdB+tkmfzXQ0j0gtaqlX8LAfgF2qu6ASSbm0x0pyA=;
        b=srBgJ7uqxvSKup7op9WphKqztQ0/NnebMduhpIUO6JHhsQKgx+Rp7xPp5il408tI4R
         0ynANwS8AFm5oMANOl1GaUfxtNQobUZtN9MFUO9UwO2gYPM72wIbu7HeDBmqa7s401PH
         Lxn8sI7wWbI0iE/At2KiqVJU9agdhGREV0B4LQQthOydd9ucYBR7tls32/wYdTEWqWmm
         c9qwXdbEfUX8VNeM5IJI7HSjW/7XxXYzh5pI5rbP1kb+KIa71wKv4/skxgCYxM0lJKqf
         ++x+2l8kf1KP6vrrksYqtR+jmFqDCnB73/M08pm85IHXpO+1q93zeBU9AqPNnAREDy5P
         PFNw==
X-Forwarded-Encrypted: i=1; AKwUvBy9TUbkNNIlIx2lHaD+HCmGZGm6pZGjBpb/l0ywvt9YwbF7zHl2u2DsfpG5kVh8dQImKmIO5jDLLmE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIgjL8FPb2xhH2H/aXM2oR3plvE+LkeLhTx/giSQZC17Vz3eBQh
	vHOYukMfyvUJZvtzzinvfHPWeorYQdD/If9Z3UFi36dOZZbYwY1FGkIpDuifrXHXnZU=
X-Gm-Gg: AYBFou143s7f1311oMOt7rsSnneJbhw3bArcaxym0y/6r2LAnAoE8mxJ7paGV8tD7Y8
	yEDVE+KbEvu1JBh2J0iE42Rq5SrxWB/YvJYVLX3mqIlKByLfH6gzU534nuS6KDMpUn/iqi/Of+z
	H0CR1xuCIYG5sE58Ul/jIU47gJqdODDTRPjHmOajjDC6pEtsxeN4vDf0S6Awu5d7Bv+eVlnRApR
	2wAaYo3lPKQ17xbhpqArxB+OTlleW4p1SqAP1wcBnZGNLYLfOS4d3fxEnI9dBFXmfr0zPXSZ5LV
	hl6WPANj/qAOSi8uwMsgLnsxsOKNTm6PPzEUo1b92eggxd7EfpMwAL6SlbGCn+9HiW+haMX31j7
	j+iEEBWruvQaHh0fd7UaF64Bvt/rWnEJ0LRduq338ZT00E89bRhDTqTjCVPJlTb/awHTjaJCUfa
	KGV1w7wnaRcsOcO1lVs811aCAS2PAZmlY55DW4spgbg045qAOzsqCqk2NxOW4PbKQ61CL09NviH
	f39aLDsBeUC
X-Received: by 2002:a17:906:f586:b0:c2e:4742:4c91 with SMTP id a640c23a62f3a-c31aa08e8a5mr1307707966b.35.1791970810963;
        Wed, 14 Oct 2026 02:40:10 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9ae6f8asm691140366b.85.2026.10.14.02.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:40:10 -0700 (PDT)
Message-ID: <570f378f-3798-4a20-947c-d97d946f94cb@linaro.org>
Date: Wed, 14 Oct 2026 10:40:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] media: qcom: camss: Add Hawi compatible camss
 driver
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_024013_257862_7BDAE7BC 
X-CRM114-Status: GOOD (  16.30  )
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

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add support for Hawi in the camss driver. Hawi reuses the CSIPHY
> resource table from Kaanapali and the TPG resource table from
> X1E80100.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 25 +++++++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h |  1 +
>   2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 5db7e12a6f86973df372c0428c15c286d9f7e60a..664237ad5ce60be64806c5386ce88ed2133f0552 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4381,6 +4381,19 @@ static const struct resources_icc icc_res_sa8775p[] = {
>   	},
>   };
>   
> +static const struct resources_icc icc_res_hawi[] = {
> +	{
> +		.name = "ahb",
> +		.icc_bw_tbl.avg = 38400,
> +		.icc_bw_tbl.peak = 76800,
> +	},
> +	{
> +		.name = "hf_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 2097152,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -6086,6 +6099,17 @@ static const struct camss_resources sm8650_resources = {
>   	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
>   };
>   
> +static const struct camss_resources hawi_resources = {
> +	.version = CAMSS_HAWI,
> +	.pd_name = "top",
> +	.csiphy_res = csiphy_res_kaanapali,
> +	.tpg_res = tpg_res_x1e80100,
> +	.icc_res = icc_res_hawi,
> +	.icc_path_num = ARRAY_SIZE(icc_res_hawi),
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
> +	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
> +};
> +
>   static const struct camss_resources x1e80100_resources = {
>   	.version = CAMSS_X1E80100,
>   	.pd_name = "top",
> @@ -6121,6 +6145,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
>   	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>   	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
> +	{ .compatible = "qcom,hawi-camss", .data = &hawi_resources },
>   	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
>   	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
>   	{ }
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 0551211f7948190a7cc2a2e7971e6c549f92ff60..2b0990b95a1fbca8cbc06628223437c24bceb792 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -96,6 +96,7 @@ enum camss_version {
>   	CAMSS_8550,
>   	CAMSS_8650,
>   	CAMSS_8775P,
> +	CAMSS_HAWI,
>   	CAMSS_KAANAPALI,
>   	CAMSS_X1E80100,
>   };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
