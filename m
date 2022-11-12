Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C83A2C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeLiTlO7Bc7rrCx0CJj5ldcH1ctSCO91N67VtSbUs/g=; b=vE0Yi0M6SE9bxV
	kUwWd6F7ubmyt7PC3OKFJ8l6NVVYJ+35TReZoIQJmeftcmVO81Tdx+4mvD51R5zEmNX2Fl08zVv8A
	FH4yse811+KWV2fIdEdlc6F9kGBBgs8ZKk/CzUa4x+nUri8vyI+ebqAUaww2HfqGo2qTeMWuLgdAZ
	V2nCX8vGy0c7M67qaEL4Xq3vxPKKxEwinKvQ3RShBwlLQdR+zHNi5SBqLe6Mdt00ioawy2hPKI58O
	Ksy8O1YBbStPzGzstnjWYAQACkmeqYRbPt3ppuFbmYrSJOYitYzjPHw9FKQH2uLckt+H30nd6se17
	0K/KLVAuBSFTZelHO1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrJ-003eU9-7P; Sat, 12 Nov 2022 06:19:17 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjrH-003eSv-4l
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:19:16 +0000
Received: by mail-lj1-x22d.google.com with SMTP id d20so6696344ljc.12
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eKvsSc4rxfP6uP1G2yC7UY6Wk+VnQ3+TFfU4MXJqozs=;
        b=gQILM5G24aQArIhNwyPb9mvZqE20fAg3ThlwOOxWrSShnsEe+S0nQXRTSgCgIyIOPB
         Ki3zWg6AViDUYhqOiV+AkSTB08QzkeUNrnu3aYT1fCG1G+6wpzStTUi3DCOdLoenD5AK
         MrUS7UnQeN2GMvHIKHcA87XEECuFr60dDQqhxN2lsZRHvoTad92h5wvhQNBx14awnux5
         bKAGGUu15wG5UBlABYVOm/mDqtKBl8kkW2Ndgj13DI565gH0TsPg7uWjjpjYe84gGT7b
         iCOfmOZGdvx8K39FakF3VekYfHcGwASy5JEuOyAyldymla1oEd+Nw/VOPNI5jVFjzxNM
         asTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eKvsSc4rxfP6uP1G2yC7UY6Wk+VnQ3+TFfU4MXJqozs=;
        b=v82/3NmdRw7r9b4zGDTEsc6F8vzQRTw6vxiWzwWB6Vw/E4WDZEVN4Nj1WcCgJ3Hqm8
         oHJxfMiu9bv/X+gWudOuUjKc6V/5Od0C6LbRJ95C7S7LZWW2iOaEaTo0HWEm6gUSuc2r
         dmzbjdq95gRD1HkzVGov0UiWyV7lo9iOfUpRxR10rXq8DT6yh4XONJieidpzZG9MBxje
         DCKVq+qL7h5/1MHuaqIYeiJfYXkv1RN0C2UfI72u4E9Ch8aVoaFw78mORxRxqO5kT03k
         2Ik5KbeagTNbE0X8Qo7ShHSQnrrIMVJvDJ0c5btmzwjsS3jmfcBCSwBtxdYWmshejqDH
         ehgw==
X-Gm-Message-State: ANoB5plFInQq8ISmUSo5asWEdOXgp2fhlVR6HXDX3o/tDVHm2YLTfE5x
	i+IMYaSW2J/+K/uicxmXaVc6bA==
X-Google-Smtp-Source: AA0mqf4ooqTVhf2Zh5Tzsyi5kSEHZuKZ7t1Dx21WZF9D+CekCkzylKocDhLrsDe5HC2Ut+HyBG/iIw==
X-Received: by 2002:a2e:300f:0:b0:277:7eef:1d97 with SMTP id w15-20020a2e300f000000b002777eef1d97mr1652392ljw.516.1668233953804;
        Fri, 11 Nov 2022 22:19:13 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p5-20020ac24ec5000000b004acd6e441cesm702806lfr.205.2022.11.11.22.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:19:13 -0800 (PST)
Message-ID: <fc435f8f-ad8d-fdc0-896b-2a88f31c4a41@linaro.org>
Date: Sat, 12 Nov 2022 09:19:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 03/22] phy: qcom-qmp-combo: move pm ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221915_234183_BDE4D848 
X-CRM114-Status: UNSURE (   8.55  )
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
> Move the PM ops structure next to the implementation to keep the driver
> callbacks grouped.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
