Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E0AC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0elJjOeUG61874nqqA8qMxbeDArwjHQOIbz5FpADjKk=; b=RLIjc4JL2xg3k2
	7G4mOTleLNTvevfghZ1/Ut86Ca93owMZJmLfVFDRBYJNjcjJwYgGSXD7gW7MSaxRJ7NK18itENVIA
	s0x3B9sgOJJr3Z9sRpmqq0vhS23XAGEv5YZyu3x2sAzdP63SXDjgvK/0O3ccLuD5adufb9CLiRVmU
	0fPvhwAAJOV1UMCQ+Q4lAvr2u4sVIkh+Z4byO6RCOGsEXJFyeO3+3ON1m1zU24zPtO4fgHMbroNly
	GLw0aoT8pJpsqGGG1ltlHEV6LZzkIuJ8FDKE5vGu8LJvhEWBkDqX5AtWLV4bQ74fvFzXqe7UCXNnM
	vistuR5zStg51Mgz9HMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNlj-00GHHo-Sv; Thu, 22 Sep 2022 15:05:39 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNFR-00G3Ac-Bm
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:32:18 +0000
Received: by mail-lf1-x12c.google.com with SMTP id o2so14978659lfc.10
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=E+KMosBqXSWQlE/JQgUvo901l97D1VfyZtQi7a+eaBY=;
        b=bKjdwmQdIsRhCzp8BN5ejl7lXzlVG9u4TBXX4vP00avhtbdUSbTFpZSYqzrwPXCUOG
         +ToQ0LwsALIkPQ+/BrU1D1LrPJdqhAtcLdmAVpXZKGjpjMS4MNQivm1qsm/HIn7zRMSh
         tdc2y8KYcN5Fr9+5ON2UJvjVUSbgqz5RY91NQdeW7O535eDOncQsRlvmD4NKOm6J7XaD
         SGVaHe+LfFW/1U8fJcTIOCcKcgPvsGVm1p0qjXcZjqPDP3ILpmqV9u036uEyTjiD97rB
         iUO9mIoMHEGepXA2f+IQ+Q9E+m98bYijCSngX2ml4sIkn8cNH1X1kWarOunnrEx2BJPb
         9leA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=E+KMosBqXSWQlE/JQgUvo901l97D1VfyZtQi7a+eaBY=;
        b=mOJM6ZfJ9HDz7iehcgvmZfcvG9g+ICEDSwPH1CMywOkx6TgKcGHGeYjlyShE9EcciS
         ldQcrjezwTCRTBTUXVpSZMpIMkOAEuCVRn8rZ3lZUhJVg5Q+a8CcxMBhwfrcXq9EwB/n
         vaRwBYWSWyycjiAxR4M0uksopl5EqaRJXDNNjVWNYGmxNOQSWc7cLQR3ra0do2hhjsUQ
         lqkNVo05ODRLrDgbGvEslx3dpnRjWRiFTxw02msMjgHOaoeEkMjY7wclXvu6K70w6vNl
         /caypUXs35R9u8VD0WPci0h+ibVgKW9Ays9oe/+vd17YDGi6J527zRWgCcpkJONBilnO
         x4Ig==
X-Gm-Message-State: ACrzQf1tAijsUEbhC5CR1Fs6HZdYWNWkjTJdKD2Gv9GOggQOnpUlxb6v
	zXVmRALGFFweXFAwElOM8adIKA==
X-Google-Smtp-Source: AMsMyM6un4zgO8RmL2hWz4cb8M81IBCUXIv0rKrWRghKhToBwcV4LTSaNzS3G2jviAiaCrN+trVhlw==
X-Received: by 2002:ac2:4429:0:b0:497:a5e9:d14a with SMTP id w9-20020ac24429000000b00497a5e9d14amr1484897lfl.372.1663857115721;
        Thu, 22 Sep 2022 07:31:55 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t26-20020a2e9d1a000000b0026c297a9e11sm930815lji.133.2022.09.22.07.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 07:31:55 -0700 (PDT)
Message-ID: <3b795603-8300-793c-96e4-c4ba443ff1fb@linaro.org>
Date: Thu, 22 Sep 2022 17:31:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 02/17] phy: qcom-qmp-pcie-msm8996: drop unused type from
 config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_073217_465071_AD5266AB 
X-CRM114-Status: UNSURE (   7.37  )
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

On 20/09/2022 10:38, Johan Hovold wrote:
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configuration.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
