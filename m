Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34208C76196
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 14:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KF060cJCffZ6DDOcpYJgnmJ3RJ8uzZTeZgSS4lRvCrA=; b=PUBq0Zxb6+Q4fjE4OSkAmlXJki
	1owPIYsrtcZCCiNvv1wl/bJ/0VjbXN9yMho9cd1bnY6LhPnIp0nWTJ4fBceb42b0CzSKw6M+d1BaA
	wU22jzK86DnzS4cPFjweZ5J2vEa2NVa5hwzxm1ROksesrOm99Y54aa6xC+LVTh90EcJtLmW114dBK
	X7IDyOucbXWtpRj9ADadSiQ5XatraM6oL5URAkYSAtjrdwtZCT4p/w4Nv8jQL7CZpNrpYVhpaKzrX
	JGlaT44X5cPj78NdmrkCjX74qDEWvRqQOJhIYTfOf3xr8OrALo9caW3wCkA/PO/fscZBkjNwodkCn
	3qefaaSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfMM0-002Fpv-2j;
	Thu, 23 Mar 2023 14:55:48 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfMLx-002FnU-3C
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 14:55:47 +0000
Received: by mail-wm1-x32e.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso1302970wmo.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 07:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679583342;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=E4M/ocI2aBcPn7dk5asZ9gOO9Pu/P0ulfvgoCMj9PfY=;
        b=RmV1ULAgTJbfeUfTtYLc5lEFYTxluY6m2quGpt4+y7JYzrBrQKsWHJkv9Mj+wR+VAi
         ki8lj0Kuzg3yh36GG3+zi40V5Z0k68rKEd/m7aocaWqQn0s4JTveHBM+C/Ka2JEsi3E8
         gNjcCzo6TxvvFOJ28jbMS7ioX/PT+O4nCMsHtKCW2iZXIXOisz8kBaoWhMlkviVIU2sd
         fqviPYZioYlnSMqY4zBLtZtzGukuhuinmxWyF58Y3vS6TWhoiNcMK9z2zP9xq7qk04S2
         q/gDaz1m4FV69B2fRHaPmnILvQXbxyAZDNUGPUiOcSYkzyahrXjm4mYPhxTZCe6//kec
         DL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679583342;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E4M/ocI2aBcPn7dk5asZ9gOO9Pu/P0ulfvgoCMj9PfY=;
        b=S8Vzm5E6Ijdtm3lnVZqrKELfI2l4FNZNamJXl9HAzuEwe9CCRog9jW2O+Cf6yddTRd
         j5mNwEn61M+OS2dWpXKJDG/oDgcPn4mZEEC3PteBjXtJ1Uohqgt3K9s3HzkyR01RFt0C
         UGVVYoZm1Q5ljCBshk2ATBKH0kz8cOjdEdm7JLGyhGm9Cv/pl8KSSqQoN57J5Z+LeyqN
         3RP8OsbVII7i2rCqEWrRwQYLzbmAarfyOy1xnjyX8nrnbXNLTicHUVqZcWMPk8pAF2UZ
         1VsvuxCX3ChXSCgF4hZrxkrPRlyN1SlEPg5317yjP+2tz1bXl2eCSmHM5lMo+eMa7fXJ
         k3lA==
X-Gm-Message-State: AO0yUKV1P+81YJ8Ch8eO6Pxts1WMbyyMurWEljFFs2H/5+hGwHeHrM4H
	CevSUXcWrKJCyzqIQzYIv3eQBA==
X-Google-Smtp-Source: AK7set8LJt6KIjfhsLiEainbvIdVwncLRYQNGucOcCMZbcxLr+nXfx0+M8cDo2o1/t33Ffuzwi3nsQ==
X-Received: by 2002:a05:600c:21c7:b0:3ed:9ce3:4a39 with SMTP id x7-20020a05600c21c700b003ed9ce34a39mr2594952wmj.26.1679583341756;
        Thu, 23 Mar 2023 07:55:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e25a:65de:379a:3899? ([2a01:e0a:982:cbb0:e25a:65de:379a:3899])
        by smtp.gmail.com with ESMTPSA id c26-20020a7bc01a000000b003ee44b2effasm2114297wmb.12.2023.03.23.07.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 07:55:41 -0700 (PDT)
Message-ID: <058166cd-c5bd-7baf-6c1e-fa28f2a918b5@linaro.org>
Date: Thu, 23 Mar 2023 15:55:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: fix v3 offsets table
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_075546_030611_ECB00F67 
X-CRM114-Status: GOOD (  13.98  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/03/2023 15:47, Dmitry Baryshkov wrote:
> SM8350 and SM8450 use qmp_combo_offsets_v3 table, which doesn't have
> PCS_USB offset. Add the usb3_pcs_usb entry to program correct registers
> while setting up sm8350 and sm8450 USB+DP combo PHYs.
> 
> Fixes: 05bd18348b88 ("phy: qcom-qmp-combo: Add config for SM6350")
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index c1483e157af4..3b488d12c933 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1396,6 +1396,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
>   	.usb3_serdes	= 0x1000,
>   	.usb3_pcs_misc	= 0x1a00,
>   	.usb3_pcs	= 0x1c00,
> +	.usb3_pcs_usb	= 0x1f00,
>   	.dp_serdes	= 0x2000,
>   	.dp_txa		= 0x2200,
>   	.dp_txb		= 0x2600,

Thanks for the fix, I totally missed the legacy bindings pcs_usb_offset.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
