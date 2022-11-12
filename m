Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9831FC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKepuw+hSbjKZSvP5vJYEUr/2R5CEyBW8py5F1iHd88=; b=wiXAxuY/MBN5FF
	W1ex/nxTkCY06iUxFPnlMDXaxptXcl/CH3dhY3WRyIHWXGviL1RfdiE9LmSw4G5UMuflc1/26wAfV
	PCyvTU4h5L8ijRNCPgdvP+BR+4K5B8G1mGRaWGCM9ONOajynDrzJyZ0of7hmJAv0qLUZfOUWlHMcQ
	4bFSL79+8X/w1d6Kpa985UyrCPzdrsHFsSnajxsJZiFSv6AAwsXxPbozS3erN3YDCFMmRhkSFnk5r
	btk2pXwoP5wWu22TvOBXmnwaUTfVnEHoAAfPJ/7SpezLywZaFEqcl5RKV5r8kuC5CjvIAD3VI6yLk
	VbS4qOtm0O6kAOD1MjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0H-003wjY-Mf; Sat, 12 Nov 2022 07:32:37 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0F-003win-JP
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:32:36 +0000
Received: by mail-lj1-x22d.google.com with SMTP id t10so6869681ljj.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pBE8mTVZNOCDexI2LZd9kRkhIvtiQCngd0IeOQt9iqo=;
        b=rli1ruYmdULOcEGpSwKzzw5kMjZOc0pjMS+AjAVFNlkDSsbEGQsGcBmpcPeFfcwE0U
         ByUtU0uOgMj87JYi4cXmyvZ8hpZ8cxyS32cO2rhRydP56Buk2wbnDVlBi8U/ESflGVMR
         LRR59Oem7kFtvyclqcW6+s80xcO5BI+uzm21B/mUFWkemHrWsNPMRrfpSUu+aspIMfDf
         VL+a9jK+iuKMi/6miaMJbG6fpEMbFD9g6nPx643M0ksOTUQrtf1coJjhf7O3AmA8Tk8K
         JXbylbKMwKF+pED7rB+EzSSOhqInsM0rDdNQDywXC1Q7iuJBtVneb1JeJCRXV/xee7mW
         rgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pBE8mTVZNOCDexI2LZd9kRkhIvtiQCngd0IeOQt9iqo=;
        b=ygLNe6C4bRPWl4TXupVxFPA6PHAEqLerNVMrizjKUPziYXYdo0zzC4AVfwBSR22NpH
         6mKbEJaX7i5Wwe8bfsnPQFtS6DmgRuNVE8m24cfIyzC/uHcrndnkFg9B4Fr/RQ8pWD8z
         BRnTqG+dHiujITh8p3LOzXp+q4IemfEMyfTQsrKaRlrwG3+r8u+vfBAsWncOOPTxsBuK
         DR5GOL37Gkzs0JPYq4EUr+TvfSgFUESULHRCWw+t6rLaJIGtrbENzK9Sih8L3BsNrVCV
         7MHoF/g/T9W9zvCPLtXbEyAKkj3eeVmlue1CxNo9MqAxtS78tVf09afdJyudVuRvMnJy
         Ictw==
X-Gm-Message-State: ANoB5pkf8oVw/V7JBY2koOPYkyf+qzYK2CemQkRuK1U1HfjrxCYQyV0t
	8vgEIwTfJ2rdn5NYT0JfJvnTiQ==
X-Google-Smtp-Source: AA0mqf64GHv5fPsVLYitVzUKEc52bQfCAC+HN/3kkGC9Ix+S8fK2p2bjIX8hlXNOgyR4F6ymnSq4EQ==
X-Received: by 2002:a2e:b705:0:b0:277:1c8f:7e8c with SMTP id j5-20020a2eb705000000b002771c8f7e8cmr1752443ljo.296.1668238353012;
        Fri, 11 Nov 2022 23:32:33 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t13-20020a19ad0d000000b004946e72711bsm734062lfc.76.2022.11.11.23.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:32:32 -0800 (PST)
Message-ID: <82d49d67-d012-fb49-9551-6cfaa06e8ed1@linaro.org>
Date: Sat, 12 Nov 2022 10:32:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 10/22] phy: qcom-qmp-combo: separate USB and DP power-on
 ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233235_716986_8516BFD9 
X-CRM114-Status: UNSURE (   9.94  )
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
> Separate the USB and DP power-on and power-off operations in two
> dedicated implementations.
> 
> Note that the pipe clock is only used by the USB part of the PHY and
> that no DP configuration has a pcs (or rx) table or has has_pwrdn_delay
> set.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 100 +++++++++++++---------
>   1 file changed, 59 insertions(+), 41 deletions(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
