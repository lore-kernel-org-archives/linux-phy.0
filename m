Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8169DC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uf+wTX0tkwnhNUzrt/8nPLqLviu3trgI8BBtcH6bniw=; b=cOOvvxpaNSts8H
	XhPPCMRdm4SQt08E1iMWtWCK1M275qB9Rydf1dMAZAV/Mu2V0+/Xh47xl097ucQ/yxlkIblBNw3r9
	6yYM+TjxBtjhHWu2v6Ur1JnScjTTNLyBVZoklvtAQAFioDB9g1y4Q7jmIvck1M6uNLZr//I8yPQ/6
	qKPVPtiDnkVZSvaORyPf27tbbBVj4b9aGWb40QbnNaSX7UaXzmBW6UQ3D8WVUdWIa3At6RtUKmNY1
	oCZu6maHFRF+vhJz2dx9CyIxoe5QLa0LaoT5/JKSdcgTvkdp4GEV1poxVWsQDwUEyd7YW/qIUDIof
	nYQLDXpx8mTEoq4OKIgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWR2-00HRRp-Uo; Mon, 14 Nov 2022 10:11:24 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWR0-00HRPY-K0
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:11:23 +0000
Received: by mail-lf1-x12e.google.com with SMTP id l12so18421837lfp.6
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 02:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y6z4FK/tmZmxJSTyX8xf2+6fo2/xZV02PMM8eOejL4k=;
        b=UEjGOHxCzNXAvqgp8GEAnICmcorQAGwrxDndICLdMeWtInhSXoB+5uyg+kwoTaQx+C
         Cxo9bdug3F5S2uIWON0kPOeAd0CxZGZWkk/zLvCyBIs+m0Mggsz+fCh4yb8S747mXM9G
         qBdnUdyuFlYoAIhF4xd5Ak3U4fsY11tJkkfpYagJGHhxKh3WrU0OL5f1im3I81ehIHYi
         3651A6mWBfnGwKI32NExM9CSDdZNbc4Yrc6uIPLiY6RXOwdc/5RqQA4fVWCuO/7iUcXF
         VaLhKiHoqBamMt67x4DSmfq+1kNYcJBlSzNfXSa3ey6qpv0Yimu7ZFDjsYHr3GZuii5T
         5zyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y6z4FK/tmZmxJSTyX8xf2+6fo2/xZV02PMM8eOejL4k=;
        b=B+wFE1jZH2K11Lc2xmPFah0AwsO9+euik6btAx2J0odr9T0G7ir17ezJ8x4ij3KuFW
         txtK/dSli20P5qniGKZWIlNjcFz5ScnEVNizR5F5oW6WjaivzSFjTtl5p4kGpmCruQNm
         +UDNqwq3e7oK/3PBvLe7LC8nSzdr4vfXsIAn0+dHwTtdI4V28fBiTMQcTxzegGKbErBK
         J6jxPzzjZkePkPLXFFKAMf1ybFxQZBwegxKVDQzK/6Cbo8DWIc932r9eES7bc6pz3/26
         gc7w63OIJpg5MQyXha+7sSMlRMjQKmLiNBOcFDmJXEI5hU5dSqRUYCbKRkAEt7iDsxhZ
         QyaA==
X-Gm-Message-State: ANoB5pmAcLYC3lrMGcPjaqU+FAwIbHpsRYuk6M5oSTlyRLYyYbNgd25P
	RLslzxVVGpi8dCsh0W0C4NghXEC69Mfqcg==
X-Google-Smtp-Source: AA0mqf7f0YPzcEMffsGDIeyyjOtMAH0PqDhvfDdwGDno6CNFCRRE9eT8QHslMDNC5CQabWeuVH9G+g==
X-Received: by 2002:a05:6512:1296:b0:4ac:7d84:cb99 with SMTP id u22-20020a056512129600b004ac7d84cb99mr3716240lfs.412.1668420679229;
        Mon, 14 Nov 2022 02:11:19 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j21-20020a056512345500b004afd23cf7eesm1765627lfr.168.2022.11.14.02.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 02:11:18 -0800 (PST)
Message-ID: <18966b28-c993-f751-9834-1c06765f2d49@linaro.org>
Date: Mon, 14 Nov 2022 13:11:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP
 configurations
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-18-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_021122_695050_3F021161 
X-CRM114-Status: UNSURE (   8.87  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> It does not really make any sense to keep separate configuration
> structures for the USB and DP parts of the same PHY so merge them.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 182 +++++++---------------
>   1 file changed, 57 insertions(+), 125 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
