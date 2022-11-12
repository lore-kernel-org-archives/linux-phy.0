Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D27FCC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0d5+Yx2jQSusxYlkDWj+d5Y83RfCdlYua/M8Iqt3Iuc=; b=FA9nmdDL+H41e9
	oCllqFSB632kVp84I/KVWTbdy3hR0X1GfrP4zNCPOoA6HU8651neWxVUqv6d8Mb1Z0w0LwUSC5lGk
	gvWh128sYFJtuKEFQAMSxJa+HbtXoO6LnCsnho8e8XsXdeh202m8xhRSnQP06vnuceMQUYyoiUV0g
	fev5mEB8U6RerShbYjsh1Gi8SotxEFuFcExabOxzQXyLtSGzTijeoOu0RKrb3ZE7TyOf2fukQLTn9
	heifamdLJE5gNOTfdh2/70zWMuyDlnPMlEA24mZdhMrsmR/uy/Xotbv/nWlCZ55DMv3ELcMUykRfU
	12kjnumBmC+GeRc81R+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlFH-0043V4-9B; Sat, 12 Nov 2022 07:48:07 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlFE-0043SL-EZ
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:48:06 +0000
Received: by mail-lf1-x12f.google.com with SMTP id a29so11438165lfj.9
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SSYSecfwreONY34mR/p9SxmUxxCaL6B3q47OWMgC/dQ=;
        b=c8jLKpFSR9CWEdh/8j1pLH0f6oOTVCVLEY5bNqeCD6KKsfwob7cc0OPprxS3qZDZRf
         OizfysZ8awyu+6Y+gppWTPcL6nrbztUeWRNSA4DFmE3FdjumTssqmLoCQMCxf7wD6SoF
         jijfyAe0T8agfMA0M/3wEnRZ7/fIiyymG4OextOmb+P/avFBCEDUx80DlXWwIGdEfuUc
         a6Ct4GOlgVYgarg+THYNvkPfr0BAFQ1248TZDYuCIkW3WAxeJEU09g7tlq2Nntxr8RmQ
         slGSdXjwM4K0Pv62CN+chKCdoYd5maHvfjSRtkdJO7beZUdDiH7FIujrnzK5ds4o2j1Y
         SP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SSYSecfwreONY34mR/p9SxmUxxCaL6B3q47OWMgC/dQ=;
        b=NeizeOudxOgLIpSuKB/m8m0OaM9L5hZNnsrKV3lpeoOFl97lxgyV9w8pEq2rA2J2T8
         OH0Q+N3OKcuKxWQX4N6FC2pj3NT4yUZHPdJgVdM8O/935Sdmdu47cQ/wJPkZ+z/Jq5Su
         RCJtDP+HfTD78tzBhVhbCY0RqXXCBVJRm3PJUu5oFuXxBniSdqO8svEInWCXlQ2M62mx
         FKcPT4fHZ159LZoN9hXf2IlyvN7gS/PW3PqQ9F3zeMHbbo2OTb3Bh4ocTt+HJmEn2VH8
         EEaJMxQtxCYOCfyE9/mWBUl6hSiYHoZ1Zij5qv56KVT/QK3bkt39trOGUGvCHwepjK00
         rw9Q==
X-Gm-Message-State: ANoB5pmIQHVQHyWCVaZgrSoeWPhPGjE8OYtrPzp7AgY06qw4rOsntCBo
	X1gh3gNKBwbK4mHkn0tVoZE35Q==
X-Google-Smtp-Source: AA0mqf458rupvRoJ2WBHSjs87urAAsNZkQbPk3jX6Xnl59+IZmhqvVkMRxgEw/u2axc7B9qCm1KEUA==
X-Received: by 2002:ac2:58ec:0:b0:4a2:aef5:ceed with SMTP id v12-20020ac258ec000000b004a2aef5ceedmr1988111lfo.371.1668239282047;
        Fri, 11 Nov 2022 23:48:02 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b13-20020a056512070d00b00492ceda336fsm733520lfs.278.2022.11.11.23.48.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:48:01 -0800 (PST)
Message-ID: <50b2d285-8bf7-a4a0-9f35-1f11ba2d662d@linaro.org>
Date: Sat, 12 Nov 2022 10:48:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 19/22] phy: qcom-qmp-combo: clean up device-tree parsing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-20-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-20-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234804_759977_B010D6EC 
X-CRM114-Status: GOOD (  11.10  )
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
> Since the QMP driver split there will be precisely two child nodes so
> drop the obsolete iteration construct.
> 
> While at it, drop the verbose error logging that would have been printed
> also on probe deferrals.
> 
> Note that there is no need to check if there are additional child nodes
> (the kernel is not a devicetree validator), but let's return an error if
> either child node is missing.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 ++++++++---------------
>   1 file changed, 28 insertions(+), 54 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
