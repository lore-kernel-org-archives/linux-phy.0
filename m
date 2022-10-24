Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2FAECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhYNDKQseR/gWosFVRxnwum1cBH3ob3RYy+1NCFEB1c=; b=01SqOD4g7PAarI
	5vb1OBMfsE6lZCjNO1hTvW8m4kmuL11BdsBy+Ahtv+yLUQnRKSfYe8at/P5OHMU+h47MM+/2z/iPb
	V7KePRIBgpOABJbHmivnZBBiw/QctZSqf4UQlWhQHDDB73U9Z514nZvKCN5Z/e+u7GTHNLiVIqkjl
	IH/fD1E2ZuAXVUzUeEAsNahLWymejmf0KUr1ELurcaLMD6BbYY3SMZ2gwyvHqtY/WVDgn6jMunqSl
	Plu0lgMViMWqe7hJIeQOrvCyPrXgrr4Ka9tPxZLoY9pdjN1Ke/7mtQH6uSB89T/XxfTtIKnoUWKNb
	R9yKBSLu/c1jTU8ahEaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXu-001iTr-8g; Mon, 24 Oct 2022 13:31:14 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXr-001iRv-EN
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:31:12 +0000
Received: by mail-lj1-x229.google.com with SMTP id s24so2280182ljs.11
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e58V5kNvHigzWFOu8o+ewlZvVrXwGRuPYWmqVQmQEmY=;
        b=nHSPF+adEbn1VaIv7mOAVDJwYrX+fsluFK3y0IR4E3izty9NzTCCmJV7gqoKHTD6tx
         ltwVRoKjBkmv12U7T03vdUNFSVZAID37aKwZPQqh0osDSrRLpfXMwrZDUNmzdEb7XEu1
         xGkk9JYglNkXC5HIbchR4zuSChoFVop8tCKfF4vU45h2wvtSKTrZVMcXwdWRRJ21S5mX
         sitErKFvVsYazHQM41k6zBC84luLCMmU2uO6gRwTIfibYKdNqiVQtb3EYc6mvVL9EkpN
         7mK5HNmqQvsn2pMX10NqfEpXB3ERiYkw3hLjWfiG/HXTKbMnl1L8xSP55twtW3ukc8Wx
         i3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e58V5kNvHigzWFOu8o+ewlZvVrXwGRuPYWmqVQmQEmY=;
        b=IU6KuM+1Q5/beLoFlo3s0+UErdJdmmjGwHt78E5UYtKYyE1UQoXWsFozAsGf78sh7G
         Qou8+5ekUkIs88MNt0Qmg2NRkvycGVPh2ntaru0yVn0S8e5lo1Oe9rjNOGZLHKGL24c0
         qPnGiYCnXzVVUDgAetVhikoKlEu6RJlKX9hjm6dMYHb5n/3blqe1z3QmX7I9d5X7PSPS
         YbB1gnQiPWYmxvdMyDPOAlfCKh1wI5hMbkZN5Z+siblLw76PGB4xJwATABzH4p03eytp
         Uuxd35DC8J+ebaA+RVZiZP7mA5xnsIW5E67EdGz+fREwd3ZAVWkeRiDbG4WfcLd8BqFF
         mF7w==
X-Gm-Message-State: ACrzQf2P0M0oeg6QGq7lzvjFjOaGkkJuEcXL5LAkRp03m20k4ILNKLJN
	HgpOxAbmSw9QfA0XPMTFBWWnvyqI1+OK1bRc
X-Google-Smtp-Source: AMsMyM6qoEKHB2Rw6RfZf+iCAzSd54FmJAm0ulvY7o4ABQ1Z2GR2xQ9k3990ccS5FaCL800sF5ZDxQ==
X-Received: by 2002:a2e:88c6:0:b0:275:ad8d:f3ec with SMTP id a6-20020a2e88c6000000b00275ad8df3ecmr6737080ljk.273.1666618266279;
        Mon, 24 Oct 2022 06:31:06 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k22-20020a05651239d600b004994c190581sm1246628lfu.123.2022.10.24.06.31.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:31:05 -0700 (PDT)
Message-ID: <dc876500-e7b5-4c60-2664-056bfec1caa1@linaro.org>
Date: Mon, 24 Oct 2022 16:31:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 04/10] phy: qcom-qmp-ufs: clean up probe initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063111_509676_AB4B023F 
X-CRM114-Status: UNSURE (   8.74  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Stop abusing the driver data pointer and instead pass the driver state
> structure directly to the initialisation helpers during probe.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 37 ++++++++++++-------------
>   1 file changed, 17 insertions(+), 20 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
