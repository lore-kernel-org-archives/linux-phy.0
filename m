Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE71C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 12:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jo1h3p9zv4dqCjWBLoYsXjMNF3Ktyme+SyYJjG8+XHM=; b=aw7kactTI0m8q6
	jhUrjlSYEeRoP4DH/M8lrMBqwI1E78yhgUml3GlVoE/6t5o7BViPMl7PYP22IYeerQR7uG91Yu4Yk
	13mHUX+4q6pGjD5kpubN/nDFAf0MR6aKTMlpalrHKSvkR2oKQrBsmt1zTr5Ua6H5KDWKuDT9ztJl2
	TvQxHoQpZLfTAD7lNmjZBvAs+iuZPaJqBS37YkoSBgm341hUI2KEogPgdxFrTPzYVRPKzLvLMB1D+
	54+PJ8J/bpsJKCbFuF/XAs5hF4OIsyW+e2Ea+8SFlV601PVUozwaOn73ZKp0kAzkns17pD01vxqim
	+v6+OpcExjFJKYpxQA6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8C8-001UAT-Uq; Wed, 19 Oct 2022 12:29:12 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8C5-001U9H-Q6
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 12:29:11 +0000
Received: by mail-lj1-x22f.google.com with SMTP id h8so21944978lja.11
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 05:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L8E8gyXUD2KEx90N6AcvvkieEvFzwXq3d4Azsc6puEA=;
        b=q/IWmWM1tJF9Sxvzi7WUuwFyXDtQ6zTcGg0AiB0rqy+x6NEfGkJkAAAskyM3a4v9u+
         7ttoX7i45MBk+rJt1b84MKtFXSKINFD1LjLiMrxIfJMBuFFhgUMid2IY57CUrxMvI/ba
         FTzWa30gegvtu5VBBaJspw0l2BWL4aWTc0YbSi8x7Dn2j5KAsEZHJ57PuaVow28DAcaD
         DT7F/+RZ1tMH7ih2/r+VaFU8rj6opvNstl45bARoS2Sg4AZg2kGALG44HADNEduPKUWj
         PeU4/OeJ5wNuHu/zusCWN2xonPtbOL2IFMDZbxUPInpTGELJg7gYLIDPJUxzFR875z4V
         NoNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L8E8gyXUD2KEx90N6AcvvkieEvFzwXq3d4Azsc6puEA=;
        b=q+7foBrOkmTSDU4iVb5HpuovTNE8VlsXt0WxUYhaHS90UQEpTTEgu+DWB1qLx3WO1Q
         fFH4DLAwXZHCyc6B0dKTrO1x6MfmevBsOo6yR+g8g8cTVwiDcqJqyxHm5WdUQ0JyvvDP
         pd/JmgcBj1bWZbCe6KoyfFcPKFI7a3WfDJ6MAfcv8PiT7aYkhhk51f0wYDHgaHEikjJc
         vOfmqhR9q/WZq4vIidhegADBNHmnA0BANR3Jzm3/9gGQIvZdc81m9ROrBIQKHjYtU1S1
         KdKW/DXLOHd7y9C4j8PHU1WJnjrtD1xJ4WvQUQWKNdyuggFlUsayeeH6pdmqPAfm5Rg5
         ciWQ==
X-Gm-Message-State: ACrzQf1mI0yytjOdCb2+rBqheaIPamwXlZk16+cKnEoOcsQ+fHzGqRvI
	bsZC7mo1PE2pkTSrVhn/ZCelQoRTvPFyXw==
X-Google-Smtp-Source: AMsMyM6R8uG1DPCTE/NbEB3JR7+VUI8N1pA82Yk2tAD7hvZ5NMqT5I5v9ALWk4IbX/1TjehYlBibxw==
X-Received: by 2002:a2e:bf0f:0:b0:26d:e258:9ff6 with SMTP id c15-20020a2ebf0f000000b0026de2589ff6mr3037080ljr.356.1666182547159;
        Wed, 19 Oct 2022 05:29:07 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f18-20020ac25cd2000000b004a01105eea2sm2266332lfq.150.2022.10.19.05.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:29:06 -0700 (PDT)
Message-ID: <1fa2f38f-34b2-7902-0157-b483c913f885@linaro.org>
Date: Wed, 19 Oct 2022 15:29:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 02/15] phy: qcom-qmp-pcie: move device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_052909_872426_686C6E1C 
X-CRM114-Status: GOOD (  10.05  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Move the device-id table below probe() and next to the driver structure
> to keep the driver callback functions grouped together.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 90 ++++++++++++------------
>   1 file changed, 45 insertions(+), 45 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
