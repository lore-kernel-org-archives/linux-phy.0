Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6073C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 22:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kvoL26BGcDvlws8ybzr0tcTFt1kSizl6HUGwm6WTlw=; b=EmNkRIPEcIc2GU
	20xkG7XbvSgsy5eVbTsZLYnvWjRbp+9jFLnm3lbToWp4+TU9sEmRzgiXOdp4aQsyq9rpBSRhjtDXR
	EpNn93xQJSPxh2puyDxcIP3fTT/1eKzHdIdx8O1+Grkgq0AFdZXqG+svaxLs6MBmrAMRKs7FXNvtx
	mgB6ayRVwwbneHS54B4p7kIZeNs/GGw2CpfzC+qzPNod9M3bBRgbQ+rhsLK2pb47izUuB6Uv0sknE
	CDEbfPFWK6/b5dzwgN5VFTAPrvFr/7bzzdVDkrt6aKm3KlstVN+M0ZhsQc+Ymaq9tBIR/6x+KHqVE
	dXLa7bLjYQGk7oorrXdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootyE-009ndB-16; Sat, 29 Oct 2022 22:06:26 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootyC-009ncA-B8
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 22:06:25 +0000
Received: by mail-lj1-x236.google.com with SMTP id h12so5766174ljg.9
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJDjGMm6I8hjAfftqkiQTNt09c2+c9FwSviLe2yp5iw=;
        b=Py3MJJV/HlB9DftTqPNbSYJAxhgyf2Yodm2Sp8+XtgQAUPmeWMGLwXFkFGBayvEG1N
         WWUEfzDXN7t4D3XYRcHB5Sxai/wjj/ZaZrxjmNTPqZTJufO3yFJcgQCWd/1bngDXGXl7
         ylEmWYQdqtsX2sc3HjlCbe4X2luPbz6MtnukExb/n7XnzE0syraNgoiAUBMGZZUEBG/A
         J0//BwTYlxBp8rTvYMms7+KGpNnKycxzTbOYzXZUtsJO9Ezpc1D7LFMdZcTuWyWO70ZE
         Klw7OpX+ln5/+54DVWUEIDm8cXwEolQfUkAW7Vd5i7zKOyVwKaXW6eqSdlRtoMPvOUTh
         jXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UJDjGMm6I8hjAfftqkiQTNt09c2+c9FwSviLe2yp5iw=;
        b=vH6KcAh5Q6+js2ILUXtDGY7Q9ZxEtQYB6bg5SxS/iPfhQvIeCcsMXB1UhCkTehBZQn
         /EBmL/53kuCwRUvXLtAjnU8kvmgOvD2Ad+PncanxTc/C/myIjcoAIQu4NKqxjnX6M8qV
         Rva2qOt8ikYFBH9rhtCdlQj2x5SyUVhMCIXaqgq8qp9r2C7fddElsijwUS3R2fP+ZFf/
         f5wSX2yVA9PA+4rIVzwjN8eGEUIxa4cT9phXZvoVHP6HhfwUiW+5q9b01dgg5sQH4E9d
         zJzvGzndKrwlX09O3x4On93QvnNTvlmiom8DufrBbmhOZgM0xkvf3F5LKeTa1Re3gW5E
         0D7A==
X-Gm-Message-State: ACrzQf37q2vTv4O4WZD6jNHi8UKMpJubvAUbyA/KeIbwBdefLa5G73SH
	LvIMJuQUbIzrm0alJL7E8LGPOQ==
X-Google-Smtp-Source: AMsMyM6d9zFikwHgFIh6rMjFnXd95IUDGB9ReOdNF6pduE42CdBpB+h3NUOeN+s9d+Sh4pEsV9GjGQ==
X-Received: by 2002:a05:651c:1a0e:b0:26f:e008:a29c with SMTP id by14-20020a05651c1a0e00b0026fe008a29cmr2417615ljb.365.1667081182585;
        Sat, 29 Oct 2022 15:06:22 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id v14-20020a2ea44e000000b0026e8b82eba6sm442460ljn.34.2022.10.29.15.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 15:06:22 -0700 (PDT)
Message-ID: <9c1ca51d-2202-8279-cecb-12792385b18d@linaro.org>
Date: Sun, 30 Oct 2022 01:06:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 12/15] scsi: ufs: ufs-qcom: Fix the Qcom register name for
 offset 0xD0
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-13-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-13-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_150624_448485_D5D47948 
X-CRM114-Status: GOOD (  13.80  )
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
> Fix the register name used for offset 0xD0. The correct name is
> REG_UFS_PARAM0.

The vendor kernels starting from 3.10 define this register as 
RETRY_TIMER_REG (but it is unused). I'd suggest adding a comment about 
the older register name.

> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
> index 6cb0776456b3..214ea50acab9 100644
> --- a/drivers/ufs/host/ufs-qcom.h
> +++ b/drivers/ufs/host/ufs-qcom.h
> @@ -33,7 +33,7 @@ enum {
>   	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
>   	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
>   	REG_UFS_PA_ERR_CODE                 = 0xCC,
> -	REG_UFS_RETRY_TIMER_REG             = 0xD0,
> +	REG_UFS_PARAM0                      = 0xD0,
>   	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
>   	REG_UFS_CFG1                        = 0xDC,
>   	REG_UFS_CFG2                        = 0xE0,

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
