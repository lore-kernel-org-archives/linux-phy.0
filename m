Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C7EECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTXeMU1MjgRPKZp3UqnehTM5xdLUxTPrRNrAru5ZxLs=; b=tAtPpVGrCWW+y2
	X7ywIFz07aqmoWB1dFP5QND07svo6GYvzuN4UTLLX1vEpT6m7EvAkCGad+x0CMF/O8WFByQS6sWux
	i9sZgH9RZnabbkd5WhfyocPu7VtENl5dEM+fBfwTM1AMELr1clHL3YS9MiauIx6rjdpqM9PsnT308
	XD+9EGhA5j2WpqiJB091b+SnT7yaFvSHXpHE8QiER+qkUsi7vT6BQ+2Cjpzm/dBV+LHOPCCZVNvyq
	lA+q/bx0YcXzEwpP3GKaQX467SZiS1D4TzTWklBFO4whUl73SHSSYzFw5EhgPA4aJ+VxnqWWGLMVk
	Lyemqje/TUuPEGLxg58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXd-001iPd-0d; Mon, 24 Oct 2022 13:30:57 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXa-001iOb-UY
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:30:56 +0000
Received: by mail-lj1-x22e.google.com with SMTP id u11so785479ljk.6
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=++QYeJg/+C+ik8WFdwtW/r8WZFhwmGFWmKV6qKEKsEI=;
        b=yhSVHZPb0ESj6C8xSmwXNvjOVvewdiIzyVKUX4mPny9lGtJ2BPg0u3DGSxAVCCUIm1
         bdtE1dIP7fWY5ExuowaZWT2rd/zZBPbKAzermaaykc+JyWRw2vQTAPwr5vxY0Ik06blA
         fJAP8vB9xqJsOp5jTN5lmi0I1QzdxvaeFza1r2Vhz23qyZWZEB01YlN4jpR3gevocrUs
         zYUJ2gtVxSe/D67RJoHil9/5iJlwNNlbvYVmeLMNxwkPaepPPoWgRlEvKMkzKZEaph9m
         iAgBvRaKtqzy+P3egka50v18xpITEwYl5kgrIQzUwF2/h1CT4qgznjUpA62h7Qe8s+H/
         DCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=++QYeJg/+C+ik8WFdwtW/r8WZFhwmGFWmKV6qKEKsEI=;
        b=kJnoVumFqnSDhbdjfXNNw9VA6fLQ5W0962XcSqfqtgzppUB1f1WE+QNxWto+1SZ2kk
         ZXfjyAAQ6GIStdJgGNCxJT0cGl1+YZQseHDpqVvGiYSHDx6QEdB0nthPgExkqcf/SiuQ
         K7CY6s3+TiVEp6CL50jJzPtf4lMbjk+pTPj75m80SmcDLLuEoTz6R6JKl9YVVjL50jqz
         HQjODyZwlP5gWCn5XXPP4gAzB3PRYva+hM9AIovB4d/aODLq68rz1HXI3oN44qEX3G51
         w+iy4fLVWRsUGUyXJEExd0r39hs4+QSRzTlBYOqss6yBqyEbwl2MvrTYrXuSj8JTtamN
         UA2w==
X-Gm-Message-State: ACrzQf3qyhffcOmH9qPc9ZLzMtvKB9hryopCFZqE6SiNKTq7mzFTuBdi
	8nqYaskH8WvLNmmuPjpa0jNszQ==
X-Google-Smtp-Source: AMsMyM4GcW7E5WxrqWZrOBjhHWnWb9sXxY7y0kftJE13nf8nO3M9EScq/v7+TLu0j5Sskf6tDShnJw==
X-Received: by 2002:a2e:be08:0:b0:26f:ce4e:c659 with SMTP id z8-20020a2ebe08000000b0026fce4ec659mr11387111ljq.16.1666618252427;
        Mon, 24 Oct 2022 06:30:52 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 6-20020ac25f46000000b00492d064e8f8sm4518918lfz.263.2022.10.24.06.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:30:52 -0700 (PDT)
Message-ID: <a0acba21-647f-c031-4fd3-5c2a37d63812@linaro.org>
Date: Mon, 24 Oct 2022 16:30:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 03/10] phy: qcom-qmp-ufs: clean up device-tree parsing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063055_036215_6FAB65C7 
X-CRM114-Status: GOOD (  10.78  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Since the QMP driver split there will be at most a single child node so
> drop the obsolete iteration construct.
> 
> While at it, drop the verbose error logging that would have been
> printed also on probe deferrals.
> 
> Note that there's no need to check if there are additional child nodes
> (the kernel is not a devicetree validator), but let's return an error if
> there are no child nodes at all for now.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
