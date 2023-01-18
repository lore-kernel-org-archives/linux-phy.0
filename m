Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48AE9C54EBE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEJwu+NYqZVMCgJ1ChelPXwxLcfes8bXj9LVX+xHJvk=; b=lSmyBcwoZ2W16Q
	aLEy22z9JQBanpDwgOfeYLzyUCSPoX2tvuwxLj9jccbFDxgPv2ZnM7De4KQtdpvTKmqgf3TvYRQsx
	qoU8g/7+s2lXalyckXSPDHBlGR4cxFUAH5ksRwbeXZ8SqnUG9me6k1ZfuhUoIUBgt1pFatQf5LM/h
	vk2TXq2CXryuummr5Gii1+ISMNcUWjFOE+/xPLjQxquzQUdKBpTpkIV52cI/3dcne4iWfFq89Kp3U
	bqV7Pgb4vjTXno0UOIMUM+BsbIQqZHPfHmb5YZeZUJTkdDV1lJoQMySwiuaZ2gwsngNrtr601Z7My
	pwIsG7vGXqN3M8mweu5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI00g-00GrrW-GY; Wed, 18 Jan 2023 04:25:14 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI00d-00Grqe-Vu
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:25:13 +0000
Received: by mail-ej1-x62e.google.com with SMTP id vm8so80277211ejc.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rlq8ZUkPme8OoPapVwxYuqzeRJKR1AlfI4njj17otEg=;
        b=dNEFIdt4/udYrvDmeARVfEBQCrPK3rKTwEa3jhMG3zbuLHZlxN8ha2hwt9z0aGdAAZ
         0q1YY+T91JD8CxK4oPNmygB0QlWj6svrvhtXX9R5JfJsFVKBqNf3EoZVwWTpVW55nrAq
         yvh6eHq6Kqm4kmOdoYUM+ZXRmWw3fc785SbLUJAyr0gniBrKhe3RelHR6Oqhqig9NUbC
         EM3qUPZduMZoViYsGYqxxJc7LVM0+3vfkAcWTy8WUMt3i+esyC5i0fsszaApHKmUGtca
         BgR9S8rj2Ypa3eQWVbpl32cA8lYQssbTbukZ1GsF1AT742+PNQ5P80NXHd9ctfdVFooY
         HY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rlq8ZUkPme8OoPapVwxYuqzeRJKR1AlfI4njj17otEg=;
        b=ZV63kP9NV9qGKsGITWSL+n+1BS6FdfVJOgOByXwbYsPsA33uMe2Ec+VXjWCa+yZP5K
         cHas9zGR8qZsZT8rqTAOmZzTOexyBg8CjGrI4ifD8xYBJJDDMOMvE6g4EM/6xe49Lvcc
         bg6AaMhwVJYQ5txFcZJ21IazGDhVkOPkBnAv6x06ZMGwun0DxOH7p6/meiDvkIbutAbT
         XJYs9FQZ3Lcaowl5wQ8uZFSLQE+HE2rUb7QK69mfNyXfTwlNQqbXcfECG3w6VZeDANKp
         8AxPhNb7gfMKKmmt7xalOJJ73AcizPTtePSCvDhqlrhO+G/eAPB0I0/upTIvITZlWn42
         AlGg==
X-Gm-Message-State: AFqh2kpE8aqh4DVxzduDwBequsX4SjB9gdq2AKVCU/l6c5Oy8UpC1ga8
	UP/ATSzVbA9cHaD5jk0tbaTkcg==
X-Google-Smtp-Source: AMrXdXu3yncy/ZyCBYWEMG85EiI1UpQFEKhkgGJaiAXT32bNHpPzTa+aaDVKI2uBDmS5LRMWOVZ2GQ==
X-Received: by 2002:a17:906:4a12:b0:7ad:d7a4:4346 with SMTP id w18-20020a1709064a1200b007add7a44346mr5474439eju.66.1674015908396;
        Tue, 17 Jan 2023 20:25:08 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id fy5-20020a170906b7c500b0084d3bf4498csm12646209ejb.140.2023.01.17.20.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:25:08 -0800 (PST)
Message-ID: <1e9d0c74-a2bf-d587-dcec-44b244004188@linaro.org>
Date: Wed, 18 Jan 2023 06:25:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 4/8] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-5-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-5-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_202512_080932_8352E67F 
X-CRM114-Status: GOOD (  10.24  )
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

On 18/01/2023 02:53, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new PCS PCIE specific offsets in a dedicated
> header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        |  1 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h | 15 +++++++++++++++
>   2 files changed, 16 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
