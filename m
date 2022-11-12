Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46907C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8adZ6hJGD2IrAYOB0L2kiZraeiKpSKaNs/1OXHEzgI=; b=nhvCKyUjViwfhQ
	YjSuCN+8i+sDOppu4kQImRLQE/Xsp4W6j+FFUu1UEL2LeouhSAPhSm18WfAog8XQHZt2//rJIl6ke
	n6d4wVNym32rZBcvmtkuPdhpq4jfnqaGptLvvEXDZb8RMemkbF1zlNMmGjE988wQy04ZMwbunzua9
	vqDXw6ZN374Zk0MH+lRNLAcGDRd8opOB8Xj/7mdzDkAJXcSdHaR6itG5siOs0rNrwfEBPC40T3c1/
	6RfrO3aRx8emyGgc2GRAEni0UCgXr4kFFvGH2JqOHLTfcd+wIfRLYbkuWb/mUhMe8TskE+Cr6L2xm
	/Gp+LMEgoxy7mtVDRflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl1O-003x1k-NJ; Sat, 12 Nov 2022 07:33:46 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl1M-003x16-MM
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:33:45 +0000
Received: by mail-lj1-x230.google.com with SMTP id b9so6838487ljr.5
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZcHiUI9DGERAno0rUlyB48/qOHRTatayzGuU/OKYXhQ=;
        b=Pkn45t8/abunZrzIujANrGcPg1WRPhrPt0gULUKesLGYhpCLV+q+oJcIbbobDmS0M/
         m63GzfYoLg/SQi2PNYyYONMQXtaiADTf7wuJRSIJwvuGnzXHeQTV1gn1JLsyCzM6t83H
         x1gOfaIMrrazgCRQgwPzloWArLao7gh2CqvnkD78MvSQN3Aht3ck8DoymWaq7+435F3m
         bMXzDGaguJKIPoYyim2lIC/Zx8HUHDJWHroZhHi9C6R9nnapSUsm+WGY0duMbahu5KGB
         hcpVATmoBH0zElnOMdXq21rUib99dIPfIuYkcBUSmWsDdgbnOD+p69uOkmEvxfYF5ChL
         M+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcHiUI9DGERAno0rUlyB48/qOHRTatayzGuU/OKYXhQ=;
        b=bB5B0dAWKSle1SoX3X5ak2zvdirr4edK8xx1T2D/eo3L1R5iSxV3Mqfudi/X/NCut9
         1Q+fJTzNKWyh3jgr9P3Nmujgh1x7+isZ8T71rQH2WjH5GLl5A7eLlfnNPZvQZV/ZjOUA
         +mmKUptmOG88e5aM8eZYB7TKTkabX8euBqrZTUBn9JueDOuGXZBqdqoR4LBCommKMNpZ
         dCVx4HNkT1kyGWKH8nWKrLC/HE5UrTMZyFKTTlgUYfGxqdnM4OMm6yNltCTYP9+SiE2B
         GpB4v9RQngdDLmarPQbWaK38pSFpB+NxqxMOtQmPU2t8YEmVH6zeF+UqgaPdNqi5nMTG
         q5dg==
X-Gm-Message-State: ANoB5pnKCsT8SCfJMnVylTGGzgEu/I9RKUdi6mpchiF8+GeRBB+ADSoC
	2ExJJejn4f8Tr1xJirDwSChSqQ==
X-Google-Smtp-Source: AA0mqf7IYmIualQg3UXqEPIXTCGeFZKjAX/hHgShiK8f7MOBFqehwnnxzDVWFY0zfn47rDrvQkKnxA==
X-Received: by 2002:a2e:869a:0:b0:277:f46:617b with SMTP id l26-20020a2e869a000000b002770f46617bmr1514630lji.221.1668238422461;
        Fri, 11 Nov 2022 23:33:42 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t21-20020a2e8e75000000b0027711dbd000sm761494ljk.69.2022.11.11.23.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:33:41 -0800 (PST)
Message-ID: <c77b34aa-e45f-f6c0-86e3-66d92079461c@linaro.org>
Date: Sat, 12 Nov 2022 10:33:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 11/22] phy: qcom-qmp-combo: clean up serdes initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233344_764798_B1E6D96A 
X-CRM114-Status: UNSURE (   7.79  )
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
> Clean up serdes initialisation somewhat by making the current helper a
> dedicated helper for the DP part of the PHY.
> 
> Note that no error is currently returned for non-supported link rates.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++++++++++------------
>   1 file changed, 24 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
