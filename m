Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C2CC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApVk6E8xvH2b+Q4krZ+7Jsbz0SZKSwaGtw9IHIoMXbM=; b=H3bZU/0pAgLvbx
	K2rlCtuVPiGTIgvN6a51dG+mKy9dHDWlwyBLAWUmclcAJG7sJ7Emp4Zto1ujU5KOWnWa2NjwNx47V
	awgKIH+m0U1Ne+CVjI3LUDgwPLPvDo68n08b6ijO5of9dCQL3WUi4U+xIGx+AZf+yMnkRoQBpIAYI
	MArcBZcHyMla8TSDm3/19c/i6hm0dNlVsEjfhrNiuvo3S3bQxdOxx+ILvtSmP6mSt+zcjAf7CwdB3
	AsibFAd9ykCUanSpi73C3cLS/FJbJuBFWxnhF4YWNAPgqP3y+cOTEGvqfoMksoC2g5u4exXgCnfDt
	B7fHgVADNR5LFcE2QTlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW7q-00HK2w-R5; Mon, 14 Nov 2022 09:51:34 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW7n-00HK0v-Om
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:51:33 +0000
Received: by mail-lf1-x132.google.com with SMTP id j4so18427784lfk.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 01:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VvT8h/E8TkxdBRxEghX2zT3tz4XnVQnc/AkJAIw+E/o=;
        b=U4iX21QQXhXM5KMU1u5LA8FJ7CtQNv/8PssoggNNxu6oPNXsvmJXG003Qo0mOw3X01
         VYdMt0BgeVqKG956J1lVdtr2huYDkkZ8yQqc2U/9Yn1/zVTjyeKm5lzcv/9SGOnhWJXL
         Hj+ok9i0WIN20dNtGxjN2vyEeehFIdKFnR5FkUJAiZNq8xCyibnCcHaToEk1N7dCZ5B0
         h4Ol3lSxr0mWHMiLVh3SeEyqO6anbrMEVexnD3xHf1Rgxdn27cBwSpaBhyO7JUraMd47
         V8b2EwEAPKahFa92GeYU4VO/O6x6DnpDC7Cz8AjFX/JVx9FBVMvDvffvlxNMXlmjOBRq
         ELgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VvT8h/E8TkxdBRxEghX2zT3tz4XnVQnc/AkJAIw+E/o=;
        b=AGEPM0jmHhsF3pIr8/gs0Zre11Df5/iDmR0fPtxag1erKzC+yKTuObNNI7+IaaYF/J
         Vl6A3WBdBztUo/ufBvfrhBYzCQy2fCypulxGFX69FR22NYVOVB1BTO9jTaBWpTqKjS+D
         hCyQFqeP/V9DZSdxiDbs9AWarU6qixXj4PL5DmEsoU+Xd0FYbXYPOGDXg7rHb0lO9mTw
         IHgN6nKYX+XUcE+8tEfgMVxtlSmnxdHNK6rzQX2wuUbfGpQYWwREUxndeM7Diq7YCSOf
         /bE/Z8lAt1gl3NA58yq7DBcWRms0lf80JXL7vXqlbwUlS4xcJenciSgOKzc77G/U2RDY
         jJTA==
X-Gm-Message-State: ANoB5pk5jayi/mkffDgBQZdZYX5axHEFdheXYdKewZYBiJQImhrAdjyT
	yenViwzoaZyir4l5ZIK4iGAyHw==
X-Google-Smtp-Source: AA0mqf5ejQfSqV728SIzQoTYjXNwN5CFalOYDT8JzKbcQESNDFhHBkFyc//2Zu+UHVRYC5NpquCyFw==
X-Received: by 2002:a05:6512:32a6:b0:4b1:4933:d0de with SMTP id q6-20020a05651232a600b004b14933d0demr3590777lfe.10.1668419488123;
        Mon, 14 Nov 2022 01:51:28 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b004a03eb21c4fsm1748437lfz.288.2022.11.14.01.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 01:51:27 -0800 (PST)
Message-ID: <5170fdac-41f8-b532-38cb-eac0db634bac@linaro.org>
Date: Mon, 14 Nov 2022 12:51:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 3/3] phy: qcom-qmp-pcie: drop redundant clock allocation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111094239.11547-1-johan+linaro@kernel.org>
 <20221111094239.11547-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111094239.11547-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_015131_841918_EA0C931E 
X-CRM114-Status: UNSURE (   9.48  )
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

On 11/11/2022 12:42, Johan Hovold wrote:
> Since the QMP driver split, there is no reason to allocate the
> fixed-rate pipe clock structure separately from the driver data.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
