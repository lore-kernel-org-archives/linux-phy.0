Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3288C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZApGGXcGMtk12pAYz657HhAntF1kHbA2wyRE0CV834=; b=Opnb9G3nozKxVQ
	eUYcofEobENnixeD5RQ07PwWKLL7iojt8Ow/fPkUA0o604SuPNo2ML4NonEA2PiqU01iBfGZj5Mok
	AX9xPJXWiJUBz//NJ2UxWVYBuHnRgKHNVHk9hWvYOhubjbnBw7+GjbLyv+Pp3tU5HVOBm48V4IxWW
	17NWWOKf1f1D2lti0FPiYoc5DGASnMFrgQG7PThvXJG1FAt5iYMjbVlXznVc2lsE7fw/SpvlOq5Ub
	CkoH9gGT4P/Hw2457tUAUas2hR6QkkREcI/9nOEb7HPhQQc8eLTwF/UO7xzkcKJht/9Vs6RXltECX
	zGSLjap0FmltS62U5PcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubRD-002Fuy-Ar; Mon, 14 Nov 2022 15:31:55 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubRB-002FtO-3w
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:31:54 +0000
Received: by mail-lf1-x136.google.com with SMTP id c1so19863449lfi.7
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 07:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NOWBKmXybEX1OHhK1KbtYTt3hmjgbm76+zxfNN+3ArM=;
        b=kwAl/fBziCR2zSE2ZWp6HT+geZ5LGV8FdVEUMhnkFGi/c4tKLFIfK0n0A8SqcouoIQ
         8lTcjcK+ZWWkdmgWKnH8HCHb5lvjkcM5JJN5Fq+F7x/vkFTjL43kvvpNOWGliKZGd8mr
         l2cy74ROMHl30KG7dkgQW2l8khdv7kDC/ixrxKtZLFpcIEP7ofdghDSNUtK8x7zmSMXv
         eK04mUnwvsn50DQBEV8lmDBohBJF7fJWn1OmlDVZuCe1dyo83p20ecKkB4WBWVd7GqLL
         75pGfqXuDWnTYrBYVlY6p9SFfoaOzJYgtJjofIFBs4TZXwzKejhC6Bzv71zrO6lf43uD
         2EPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NOWBKmXybEX1OHhK1KbtYTt3hmjgbm76+zxfNN+3ArM=;
        b=MOi6OtpXCUiHIwPWp7m6U4gv/RxLyeXlLwPpjlzbBkvYIaT8neiDI/wNkc4aO6/11g
         xg2AE/4EVCIhzqDubI+UNLGktrrXm1PP3dEQ8ho5hX+KoiNVo7RzWdgttT0EEGUTnqh7
         BMccuwkmPLn/fg8K2siFITD1olwvHEqstedjNXPC6ogS9ixoQgpJrYBui2XB3ySPgSt6
         dTjZJb38mS7cSAxXf6cUNfPTuCtoR4tapLkCtNS2XGcKb9l5tG9vLlnBRPhB+MVheBWv
         nMd8nCv+cwuxKje2mkWjDCcUObXdBctXIqK9bv0dFV2VxrgDEjYgMQsHFwdGzSQ8GHwE
         xawA==
X-Gm-Message-State: ANoB5pkgXaxxaRcnVRzJzrzJl9cULyY0IAZSKGChsJ4Afu8JStUruJWO
	cznDmRxUEasVchmmOns4FkzNWw==
X-Google-Smtp-Source: AA0mqf4CVE/dg5p7b2shK5W+v5UBoaFtWwkBelND98rOl5lom/mY2/0GUCzBZLUmRzjyCwFcBtV9Iw==
X-Received: by 2002:a05:6512:34c1:b0:4b1:5a96:983f with SMTP id w1-20020a05651234c100b004b15a96983fmr4862734lfr.535.1668439909326;
        Mon, 14 Nov 2022 07:31:49 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h8-20020ac24da8000000b004ad5f5c2b28sm1850242lfe.119.2022.11.14.07.31.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:31:49 -0800 (PST)
Message-ID: <fc6dcc79-0ccb-da40-85f9-826380991a96@linaro.org>
Date: Mon, 14 Nov 2022 18:31:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 08/14] phy: qcom-qmp-combo: drop redundant clock
 allocation
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-9-johan+linaro@kernel.org>
 <75e188ce-99ea-7511-a561-5b0fef9feeaf@linaro.org>
 <Y3I3vec+9Ob1dPhW@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3I3vec+9Ob1dPhW@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_073153_185622_7E2BDC7C 
X-CRM114-Status: GOOD (  11.30  )
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

On 14/11/2022 15:42, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 02:17:44PM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 12:24, Johan Hovold wrote:
>>> Since the QMP driver split, there is no reason to allocate the
>>> fixed-rate pipe clock structure separately from the driver data.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++-----
>>>    1 file changed, 2 insertions(+), 5 deletions(-)
>>>
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>
>> Note: it would be nice to port these two patches to USB & PCIe QMP PHY
>> drivers.
> 
> Already done:
> 
> 	https://lore.kernel.org/lkml/20221111094239.11547-1-johan+linaro@kernel.org/

Thanks!

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
