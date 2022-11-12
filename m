Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15C2C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oz/iyGbQSpjUl45/5SGS14nDsLXhyN7rcB+mb8OgEG8=; b=ms6WOfRTcdGSee
	z+J8aiaASAfejHSKkh8YmxD8p4clMmCqpmdkpHU02cRWyHo5OgWrqPzPcph6/DMU0BUrYIcRRT8AP
	KwjfBLltWQLHgkwWsdR7rz6/zEI6Jj3K/bBB3AXBleQGjdoPtQFuV3CNCl6fr0m7l7wED28xspXCB
	F6UTo4Bdk9FjjPUftzbeiDowpy6dtAo9UrNqd/73XnZqRKjPBG3KVo24l31gfR8NVHfvlEOu4UY9l
	27ITjPPWRv45GJLM0y9aLlUMveL0WoLfLQeVwLEZI1xieyDZrLSux/pu6ZuG4YcVGqdRRMwWES6rU
	THvWwJUpfH/xWMnGSyjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlG2-0044RN-Rj; Sat, 12 Nov 2022 07:48:54 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlG0-0044Ov-Nl
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:48:53 +0000
Received: by mail-lj1-x229.google.com with SMTP id a15so6858486ljb.7
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1WxsG42LKTQVTkXlEAiYKa0OwGib2EgN2ooRMVwZbEg=;
        b=Df1TvR67pZNpHd/nMYAZhVgQhoZiK2vlxVz1PDLu8R2Mhr1/Ial8EIiSDmsBoqieYC
         l9MhlstcmHHHDw3p+gKuskhYPSA81RUUht08dHc2p+CoyJnGR5wgQOD3i7t7gvgIMoTb
         Q7KfHSQvzGrDwjZzKHbenr4ru/yleOxyAulRdbf1aTzqrYTKQ5/EVxmZUQuK53wwXEiI
         u+YGFf4XBmIbqNUlTKiR0n5W8wSsq0fkCiloWzSuGBLzV2Hrm4k6mAQMFVaY9xTkjs9F
         5io8LF+JJ/2qvY40HgW+F77tS/ljuc0MZlHWc0jqGlRhG4IdccLBLTcTKE+j1kOLHups
         LD4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1WxsG42LKTQVTkXlEAiYKa0OwGib2EgN2ooRMVwZbEg=;
        b=fSu3ikSEBQ+FQURVA3vhnVuWJTYnITbdI2/C0RF44BFMfwGVvoHtU1ilxTk5BkPWYp
         PpffIKdl0iFKhiDq33ySrA1X1RB0Hc6pKqMIrwaf1kzltJnk1qtXbJruielMXGJRM+Yz
         Zt/wDx+P4SfVCIX/qNe9XFIOlNnwrLK5yCtWiKaoBEtb15czhFTz6ui+LqUEoZSbB+6Q
         NZO5BklnXrevRYrSK5HpF8Rb+IOYRiwYizwXylf4M+kkiX60XELiv/Q2DLAiO/B3cilE
         l0v9yQHbqOoQ9b1XZUWxOqK3rp/WHkEOQ28NxBocdepYRlqFSQWMQq5rg2jTZ5lASJ+m
         qr7Q==
X-Gm-Message-State: ANoB5pkdbVBRLHRQBFgQrzrZJS7kV0p1kZCAmk7UxTu5clUVj+fTSLyl
	dpSyacAzkBy2coKSAfsq1jU7ag==
X-Google-Smtp-Source: AA0mqf5r/HaUD2qsEtfli181hg72rtsQbgum/yeB7dEGR+HqiCBJxpv2t1ri1kePIjScYIH/P4bE9A==
X-Received: by 2002:a2e:a590:0:b0:277:3ca2:dac6 with SMTP id m16-20020a2ea590000000b002773ca2dac6mr1531460ljp.143.1668239330269;
        Fri, 11 Nov 2022 23:48:50 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b0048b365176d9sm733775lfp.286.2022.11.11.23.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:48:49 -0800 (PST)
Message-ID: <7f892a0d-56f0-6811-0111-6922c2159b56@linaro.org>
Date: Sat, 12 Nov 2022 10:48:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 20/22] phy: qcom-qmp-combo: clean up probe initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-21-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-21-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234852_804145_E7E57395 
X-CRM114-Status: UNSURE (   8.19  )
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
> Stop abusing the driver data pointer and instead pass the driver state
> structure directly to the initialisation helpers during probe.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 62 ++++++++++-------------
>   1 file changed, 28 insertions(+), 34 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
