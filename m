Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A057ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5tByyJzlpaKCsw4L+orzy6UNrQd4JgeyYODqn2q0yM=; b=bMrBlJg3U58Ua2
	snzRNSFvjKVjIxV51lryZdJoZSKhDlg7SnKlOGEprHxPnAViUhkv3BCPAnFVbiL1F9OAp8WcNjDJS
	5NykDycnUVFqbLlZBPXNlSz0sJtfUTRLwaOOfEjajl3N8WgF9Un+WeqErgpmjmr3zdnsUfN22fmc5
	tBVG9V7oO6yKQzeEjZABRgF3/C2SvSd4zRYvGTqE5HAEjr5y8dX6L3yCOQRCPr840Toj903TWxF0i
	WX5VY9xD5gJKYtg3a8UOjXnMOB+r8Qu0jNPCwnrUq74AaPBJQGnh8N8ZVy1w3vQc5GSfGXaLbuUgI
	K5ZPMUbmJ34Y4srIPMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWab5-00F8sA-0Z; Fri, 09 Sep 2022 09:46:51 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWab2-00F8rK-Da
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:46:49 +0000
Received: by mail-lj1-x230.google.com with SMTP id by6so1146231ljb.11
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=DGDMMFlp2cXLA+6nvav0juDIw0VAWWIPkxGgMWkhrs8=;
        b=U9D/tyGHFhYKOQqllYgDxD/cPmNI97KD/1FGnGghOupZUyFm22lgo6ysS9Whl/cIAB
         vvx6ZPSGGsf49EOR+I/jGX98JAPh5LJ35kf3M5rJtil7oa1DR3zBtLE0jKeR1o9gvyw1
         eedXwlZJpI6/yYJ2m4dVrPr24EikhlDP3IGH1TINrB6sGzd9gDLNz/T5IBRruzAcN2EY
         Hl2LvkI2cUSUHfccqQ3ND3O+yqWVCqkWq4NmX938TseYDILQdW1CreQZSYwDGHWdEDxX
         w66Q7IciiFN3luCp8J43xBb/cS//CTi9MAwYNIQ2zcFMO0KO8V+Nylr6bQn6sg0TNDF2
         DhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DGDMMFlp2cXLA+6nvav0juDIw0VAWWIPkxGgMWkhrs8=;
        b=v5RylShk5anzjcxuvOCZLpl6AgGfMUqpoOEMcMVqwlQOMe5Eu5CnUOTaMRBVwT1U12
         80YWLuLuhhP4Eg+QrTROu1nGRkq8Ht9Vct5mKJJEY/JkFRoLGSoxA7T1N1J0ks/RkAx4
         BlB/ayHuZBgS6ZNH6K2lgOT7oKj0PNcMoyx9BWLLWCxlp0UGDrA8pLx4ZpPhCMzmqI7W
         usq8msLGt5ch0v1O/ZoxKMUf4VHKPLI1sxh8BoYDSNsSgTHXLTM2ff8iH7LuATjG+pTM
         +ZEVa6W4acSvqMxi/XLfE02W+A7gXrLnWdFTcFe1gtLvqprfyd3hDIZtU8ruL0xYh3/5
         9PYw==
X-Gm-Message-State: ACgBeo2njePzMNPH3BsxK4ucG4N2nRliQI06+2LX+bLAVn8GEnNLngv7
	/CfDrnnmqmQcDcUARdHQlbUKyA==
X-Google-Smtp-Source: AA6agR4ZjSP7DOSDvfGaGz4vhadgQmK8cLl2/wG9Yp+AQXtpDwTl67X4TaUAhluqM198azW5oPpwkQ==
X-Received: by 2002:a2e:834b:0:b0:261:df5d:fd8b with SMTP id l11-20020a2e834b000000b00261df5dfd8bmr4049784ljh.110.1662716806857;
        Fri, 09 Sep 2022 02:46:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o13-20020ac25e2d000000b0048cf43c3a85sm7483lfg.238.2022.09.09.02.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:46:46 -0700 (PDT)
Message-ID: <cf61b495-a5fd-db22-5cd9-1bfea7eb0f39@linaro.org>
Date: Fri, 9 Sep 2022 12:46:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 12/16] phy: qcom-qmp-combo: shorten function prefixes
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024648_490468_B3B3BA9D 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

On 07/09/2022 14:07, Johan Hovold wrote:
> The driver function prefix has gotten unnecessarily long and hurts
> readability.
> 
> Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
> Multi PHY" or similar anyway).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 165 +++++++++++-----------
>   1 file changed, 79 insertions(+), 86 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
