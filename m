Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67B8ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuThmulUdSeB3ZfkgcBJZ1TN/JXcQxaGSetMK9Y7JVg=; b=ci86in+B1pCmmK
	FuPqPGuyTNgvuKcfA6jXHyR2YGYiD3SvogKnXmG9yDt22KrvnUmq7o3M70lq+2NY2WgECvBpDkYuC
	nzoyDTnUNS56DFLB0WR29oPqZD4X6LiS8O6770AUx1E6EKLHdhSUANV+ZzUE6zDlugwLjt+Py0DvG
	lGbCnk5p75K117mTspzU/R4+YMpqnb7I4bRZbpmOMCzcNwb5BNME0GS5u46l6sJ8nlMNW68RbVT6p
	Apt0Fi2pm2PubqjIH8MmsVATVlnCVT6x3bZZic2Wpd4A1IcL4VcsYzlwIO2aOTXyfCbJoC3jDYHPY
	auhRm5OhzBCFpZRManxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQVa-00HCOv-8M; Thu, 22 Sep 2022 18:01:10 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQVX-00HCN7-Qq
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:01:09 +0000
Received: by mail-lj1-x22e.google.com with SMTP id g20so10718224ljg.7
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=il4FfHFNJa+SLUSzz+jH6qB0ObxCaIOW9FAiJRgPVms=;
        b=BVX7HvSW5vdQ5GCnIRyIwEd8GUOCzggWCzjAvJC1ZhCXs2yCiVOLMW5sTX5pOrY1+9
         ClN28BhPHYCSXvKV2oLkBCGqAa/rjpEWRYYtDZh0p9zqUv9o2rG2EdQbKaj5sbvgykVg
         JIXYQfbTpF4s1OS5ihucm/dMyd+3wVl/TegnYBDeXk6vP2/Zy9jUzOtaLeXbqeRiet84
         30woL2xWX20fsX5NgsDVAMnb07wf7VK7xB06f9/d3R1PKWANhEjXGtIAq/HLdzAhA1Ik
         U4VPL0aAz68vSW4JzPNYzjmKdiFCvRhMx7yfP6XTjoqBSwRmt4v20ODImz4ARMXRyrjo
         AM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=il4FfHFNJa+SLUSzz+jH6qB0ObxCaIOW9FAiJRgPVms=;
        b=XkfqTwcRiQWl1HLuvLyWjTthdPWO9tnHbwh4tdMDudHAkheQ/PKfHFtopPHY9yQ8ef
         f4qieHL1/r5Et6q+LTP++bCVUe8/DaUTRPfAz33HMvsX4FFAbhBRvnjOl3o+GeO6pCoX
         qjHNbCePLnwSmfhDU7u6reLYwcoREVJo20rFulByl3Mzark2oRoruK38iwNJJknnoRn2
         Q/q7JNIH4MlHZG5J7xgnqkgYpsfsIOF2NRgTKH6S6ekb85utxB8dhoQFeqP5Yrx7oOid
         fwmBLha2kOMA1Cbfa8yE/5Ngl9bQ1XnuiIzW8K/imB4Mz/QjLYQKug+RyNSlzIzojOiY
         rTGA==
X-Gm-Message-State: ACrzQf2LubOdWMy3wqkhUqNj+fmv2wf5LxsrM5v3HK69xXmziFQ2Pleg
	06AFQp5XY3HJpqxi5oJw3/u4aQ==
X-Google-Smtp-Source: AMsMyM6olhD5+tQF0xGTyGy2dUnq+lf4MwtqPAqUGDRcGdJxgKtqE3F7nnCyqJtW9yR0x9Fm6Zreig==
X-Received: by 2002:a2e:9602:0:b0:26a:9ca8:d6f9 with SMTP id v2-20020a2e9602000000b0026a9ca8d6f9mr1679181ljh.88.1663869665535;
        Thu, 22 Sep 2022 11:01:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g9-20020a19ac09000000b00497a0ea92desm1041587lfc.135.2022.09.22.11.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:01:05 -0700 (PDT)
Message-ID: <a69b82bd-2540-1953-4236-9e484928aaea@linaro.org>
Date: Thu, 22 Sep 2022 21:01:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 13/17] phy: qcom-qmp-pcie-msm8996: rename nlanes config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110107_893333_E3209578 
X-CRM114-Status: UNSURE (   8.51  )
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
> The nlanes configuration parameter is really the number of PHYs provided
> by this QMP block on MSM8996. Rename it accordingly.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
