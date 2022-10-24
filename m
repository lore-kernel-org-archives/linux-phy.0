Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FF8FA3740
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4DKS0fyNSRIwJv+/5o+fKD03Q6TBEwh4HDLRuYeQHA=; b=GnvfVuSTUO9gOa
	kw5UkgGtdR3cDWdZehkM56lkE8Fm4lBIIqrpvGs3rirE0KYs5oLTQxwBUwWwpJQ1MdnVC2wCsv8gD
	Be63acedcFuNzJ+DNFCIOrVb6rFIlLWFeodO2id+QXSTX27N7gLGQLQ0IKxEUrPEo7gyU6ZbMwDKO
	2YBQEqVdvq6LrlyL4H6NYLuie58B3av13Stqaq+JrQ2dJGr62AAmzyL8f/66OOcYOKA4TC2Tw2HZu
	vjOd/1QEKkCNPKLGFGWIXBOZU29FSJTfCxiW5dYmaC4yl9nGMkc7gqP0VgHoXm2N/kKvPzQL7LjgT
	Hndt/zPEAFTe9JaHeUag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxaZ-001jCt-Vo; Mon, 24 Oct 2022 13:33:59 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxaW-001jBs-NK
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:33:57 +0000
Received: by mail-lj1-x22c.google.com with SMTP id z24so2803099ljn.4
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+2as1mhURYl6ztefkLaN+H4eFtyrR60CAeO5HCD+7zE=;
        b=okg3KNpZOsQ7UwA4Yg7gl9GHgVeOiE1JT2FYl7qeiV5w7U1lrEkP9rS4AQYhIGSrbA
         x3uJm37dGqrPZhwoN5XiTi3OHZvmArT1eHyTo/wJ31A1gTrJ4p1QmPrTKowRN6E+uSO0
         3RBo4wZ3MwNZwZwGCcvzUV4zcJfJUIrxfPCh4H/0NOgBzqDWL++ar0dqKuXEZ6uo8JV+
         BX85Ib7Mem6FJPBQQBOfOXJvkSJvedFsZSskyxK05MFg2uNtX4Ksuo3Z37KSNSoKVasq
         2NydzkRsUdyHEZ35xKvYLL0R3bMbu8k9hIEZgOHgvkNzs7WUemBujEYFZRh3AVMCrdUW
         ssUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+2as1mhURYl6ztefkLaN+H4eFtyrR60CAeO5HCD+7zE=;
        b=H6vh9xptddMPyyCfo3jFsEOFC//U7VGxaC3Rojg0r0V4Nhucj/qvp6Lwaf3kZmQo9o
         d6YvNnzUVJx19i+tsZFcnW1QwilP7w6LxzxtL1TIjySvyOHtnhRWIO4YNAC2AMgVnY4J
         fhsYtpE95emhNRmuXRwvgSOa4svvL/sOXNk7x2xFMvPW7j+d6BIQOsgVpK3i9iBmXsQG
         5cHLdbR3I4dw+3NNabrmgT+5xKPPakn300CjWah9WGJIMg7+hXocL3F5SA+wGIjmIC1a
         HCbw14m+ZZNTL0fJBf7bwHjJsI4VpzjVG6P+HBId+2+foHTgOUFkaEJC8+pAnvBCA2Bs
         QY3g==
X-Gm-Message-State: ACrzQf2AGK+vYctz8dm+MGhARnFlQs9YQqYMVenEZ0Ag5jzYwDn+O4/Q
	GHD3Vhog3eq7gen0T98zJK5kUA==
X-Google-Smtp-Source: AMsMyM61FEPqaObKjORxFtXvRTGcSDTRzooCTowBzAoBkOFvhXvCx/oWfl/ICM45pj74XuOE2W80MQ==
X-Received: by 2002:a2e:8186:0:b0:26e:8893:fef with SMTP id e6-20020a2e8186000000b0026e88930fefmr12594550ljg.377.1666618434903;
        Mon, 24 Oct 2022 06:33:54 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f28-20020a05651c03dc00b0026dced9840dsm4794607ljp.61.2022.10.24.06.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:33:54 -0700 (PDT)
Message-ID: <f27662ad-5798-720b-19b2-28bbf1b6a620@linaro.org>
Date: Mon, 24 Oct 2022 16:33:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 05/13] phy: qcom-qmp-usb: merge driver data
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063356_794022_6157CAEC 
X-CRM114-Status: UNSURE (   8.29  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> The USB QMP PHY driver only manages a single PHY so merge the old
> qcom_qmp and qmp_phy structures and drop the PHY array.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 239 ++++++++++--------------
>   1 file changed, 96 insertions(+), 143 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
