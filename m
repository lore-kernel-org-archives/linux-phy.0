Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2ECECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+K3ralK5nbpB4MFv3kCVfN3VQXF9iJTa458V8p0uIo=; b=JSxQ2q0o5c8uEa
	JBdyDIaEyaOhJ/ruJwjjj+RkP7SMp02r62mt09PqcRQr0vCPGLDgeC3fDaoEl8swl4ZJpmUB1uNq/
	c7vBwQQYFbko1hG5tUv9M9b0d7RqAQc/SkIMPmpCeLr0TstAf8GPNrvHAGOeSInmdk3Toc1IWpvdc
	QhBGO0Umqq9vhVJX7mBjH/P2YfgArnJzlOr988KJEoobShTI+gMczuExkghfGrtsfTl8ko0HKZcX/
	C/KuRbLe75qpfh3XDoq9lSY4e4JJkn939Rub0dgRI3L2jeqVCQTXKeeT9X/Zjx09sV4pGBsw8DRhz
	xYk7eU1VatyHmn9oasdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWabr-00F9N8-NI; Fri, 09 Sep 2022 09:47:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWabp-00F9L7-Dv
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:47:38 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bq23so1763384lfb.7
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ake5tgQqILRJG+4KzZg3Srv4ZA/AFZzVW1hkSSSjZjY=;
        b=g2RNyj6bsexsTkubyx+Z7ZyQGJ5PURcgkv1goBeGtYsHs+L25aU7jXwb7T3yIAVX+8
         WtlB5bHVIynC7uF7dnZW4txe7IWChghVAPz4Rt7ZPlYHeHjTf9+2xZyyITTRT6Ru1KvY
         IHO/4EUcRGShrNFSn4yqsh3UGQ3rY8GQisLXWKbwVUeSYrLrTOSlhoQYIhYNH3xe3R05
         i8Bk1Qqgh2RQNnZNrtSmwwDWw3U2AGs3iGppGcH2n3GbdXw5bbdTZYNrKW8Wv9LfjHXC
         BMJAS/bqh8MzYasEL/dr6064yISqfPiTJDvcpPX/beocvwccGi7p33QLe6HHt5/YMb39
         K7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ake5tgQqILRJG+4KzZg3Srv4ZA/AFZzVW1hkSSSjZjY=;
        b=solkp/FgVH3PXJFvGW2uffuI36YdrV3mQhR+miayU97tjAGjrhRJ+n+0jm6ALvUaUJ
         KfIO1nmvYjyeZld4oLs3YFkJ5ctY3TF3inRTVqRDcl8GXfMsmdirbryMGK/AuvrvQ9Ow
         z1bJSlHtTWcVrUt7Z1MZAQ6bGyzO+sV16RzkzvPilJs9wclAZ8ejhLM6cjQRXdxZcw9x
         GrBThQG0NJaL5l1Snft+p+PgNFT1SCFoicHLHrCJuhNDpRsPtbFR1MISbh5nxfzj0yU0
         H4qNsu04AEIEr8mInQC23vqHqDaAvuyPiDJsPuZD7uH7fhJloM1PeT5jpSem6DHpkL5k
         E/Tw==
X-Gm-Message-State: ACgBeo0jwb+rJMaZ6yGNS0CUz19lR+uOhieM72kSZ/ulNE2KcEaIH8YD
	H8mLsllQk7ORZJY4WlEjWDb1Rw==
X-Google-Smtp-Source: AA6agR6xIRiz3h/qc7ldfo5fdSyq9Ly2yfNndxUzi1oYASOsoNu/o8hzGRlKwdn0RR3AOKgcW3z/0w==
X-Received: by 2002:a05:6512:3b06:b0:498:fa72:c24d with SMTP id f6-20020a0565123b0600b00498fa72c24dmr644600lfv.538.1662716855888;
        Fri, 09 Sep 2022 02:47:35 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj33-20020a2eaaa1000000b0026bda31c10fsm8604ljb.61.2022.09.09.02.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:47:35 -0700 (PDT)
Message-ID: <4d627150-7097-9394-b550-6610dabbf134@linaro.org>
Date: Fri, 9 Sep 2022 12:47:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 14/16] phy: qcom-qmp-pcie-msm8996: shorten function
 prefixes
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-15-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024737_500435_EAA0133B 
X-CRM114-Status: UNSURE (   8.49  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> The driver function prefix has gotten unnecessarily long and hurts
> readability.
> 
> Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
> Multi PHY" or similar anyway).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 93 +++++++++----------
>   1 file changed, 46 insertions(+), 47 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
