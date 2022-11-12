Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CC9C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJUUZm7Lmkjw9+E9DT7RB5OXBgHqlxMV2Q8fTKgx2ss=; b=xVr2vb4trYAGIF
	gD4WUqejLRnpganq8T87O1pj6d/2pZPgfquohH9QOgb1w4HdoR1QjJkMr5VC3sHM7P1A+RYNSis6l
	jhMbnOf9isDxCTU7N3LpgyGH6SLlRCLHm2ItLYEeADs9Lgvu88qbmIkp7Qh7pxMmB9054tbxUJz5x
	qwDyPq4fG9HDdUbu1j8jZ38HxYzIntAWS56MTVAEB9fh4JuJfO3u6QoitHVvzoPaZIo6UZqoxAJgx
	FP6ZMz7DjzDy2c8ulkQIY7p6fW757uABwt40cZ3UjsCwuZZzrntE54ejLRFRGC3hJEIFaHz609F44
	MVesDgYZGxHmGXk/G4sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjtL-003fC8-Kn; Sat, 12 Nov 2022 06:21:23 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjtI-003fA5-Iu
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:21:21 +0000
Received: by mail-lj1-x22f.google.com with SMTP id u11so6731982ljk.6
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mFeNrqQl5J9ANlETlekblWE28Ck3TgYP7FWq4RbjmOc=;
        b=z8xbufEHC7dDTyTo7nCI0VL7+cOzUpISCkTg9g6nfclTGY/rLMlVCyUpVjNufzxA2n
         AufmxD/mli5tFB8qL10hL5Pz5NhnvlIKhY55JEeVa+3lbz2YmI1RJAC1pe5ru+XWosFF
         9myCMg1FzgLsBMJW4WA3r1RX61oDiCJaNIdqW+GB+gi8WnQWZuyOeuqRnBARykFSBmFF
         PJhcu12+pz/wIRQ8Lqgd7vPSpawX4/5VUeq+Mnc8ii7anvye3PCpJwrkryJTj3bK5cf2
         gTQqDpZL6MyiVzWOuDIfg+j52DI1aT6/nbHWkynRr0SJwzpOyNDtF00d41VW/7RoDMx3
         6ljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mFeNrqQl5J9ANlETlekblWE28Ck3TgYP7FWq4RbjmOc=;
        b=GJ6EyjcJZtLpgn2fqmlKVnyvNg+Ps2+/1vaiollf8VIsizy+nTcd4Bwwlf+7O0gBH0
         P5M3reYPmnSFEJwevGL8DVHhKaTbMltBnDTrOhqwuzn8OMqETC4JbJkeRPrdD0Zw/9W5
         BgWhtIuAnT1HoADXsJnMbnlx3cHpXA7ul1NY0V5oL1xnSiwwIViEb4RxuW7iZBxqJYUS
         dK/W1/UEhJsBtzQLkz0IaqsydIXMQhZsnumvy6UdP4rH1hChvWSpqJGbec6wpMlriCW2
         r5pd9edF3/o/5jyN5xzFSywd1ISbEFxBT7oaxqO9DMDtHzCGjXDojfpvzuU6fS34879A
         XDtw==
X-Gm-Message-State: ANoB5pkeuovpU38B/YeaNC8QdqxmJK0P5Fa6crzE0lvaFpZzFn8fvC2o
	IKnZn0UkLOuIHodurDyxqxdbJA==
X-Google-Smtp-Source: AA0mqf74UZa+MPXgy2g8PwliOetw0zLHzqxSEB/7IKKUAz9HX8DzXoKU97uy/uj8aISeES2W6JuU2A==
X-Received: by 2002:a2e:9dd1:0:b0:26a:c77f:57f8 with SMTP id x17-20020a2e9dd1000000b0026ac77f57f8mr1438016ljj.465.1668234077746;
        Fri, 11 Nov 2022 22:21:17 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bi30-20020a0565120e9e00b004acb2adfa1fsm703312lfb.307.2022.11.11.22.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:21:17 -0800 (PST)
Message-ID: <a980d73d-b6ce-53b4-e9aa-c9be558afb37@linaro.org>
Date: Sat, 12 Nov 2022 09:21:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 08/22] phy: qcom-qmp-combo: separate USB and DP init ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_222120_656454_CCCCF3FB 
X-CRM114-Status: UNSURE (   8.43  )
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
> Separate the USB and DP init and exit operations by calling the common
> initialisation code directly from the USB operation and adding a "dp"
> infix to the DP callbacks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 36 ++++++++++++-----------
>   1 file changed, 19 insertions(+), 17 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
