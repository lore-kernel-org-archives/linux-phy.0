Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE94ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kky4EiUgNmsqL3+cDZ5fcm0Ai7DrGSr7lAXYpb6kz+U=; b=RUvF+FxXqVibZQ
	IEIj+5R0/MpNOqgsJ/Qh/oEQHXT5cLMQW2iXV2kAfYygzA7DTHzwfujRNvzjMGaGX0Qgb+sYy+2GC
	TlQoxKhMNr+isLqwj2OQLvyUHbioIf1IjPI/TQIpeLHLVWHUEWprZcY3VkBz3dk6VjhFvsB+f/RBL
	lz7kVjam2p1NATLmXeWHgGVYPLx3LpQmosknH4Dcs3s9MOE/sIWfDDlDykyXDo8/kwCHxtp1Bi7wa
	ufrk8NZKiD3KeeqxsRNqRtk0xkGL0z/vTG1+D9t8370cJ0YEApNd0vxSs51F7xajp7u633cd8ouBo
	V1XLKxepEYeC60canSzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWac7-00F9Yi-5V; Fri, 09 Sep 2022 09:47:55 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWac4-00F9T8-2k
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:47:53 +0000
Received: by mail-lf1-x131.google.com with SMTP id q21so1835502lfo.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=UC/RYJCZztRm1rSOSADEzcPaiE3TFJT+Z5tiSzE3pIY=;
        b=WCmQbBQXmbzmKntTlhBu3beHFSwPztkJXCXCJ67r43m8w1qKbsjBoOxnBOvXnb+yby
         /uznaMglIk86U7Eg5FSBwVrR/3GBhp05MMm0OULZt1dAJ2vQB14/aezAO+SsXSNof1q3
         WuBOnpkbSIx7npg9Q6bV2W/LPUnsxhBYchUf18XcvUDlsqeFFKPAFpqSjKw/ZrikUXCj
         ETrMGMzcxOqZbw4UMq5hpq3GPA4qBCxCmACP0Z/UIlTB+CBXunB8ppLUSIc2NJCTaTuN
         0WcDFvo72dqFU4abnEdkaGayM4+yVAy9MC3Ury3UL7hHVj3B4GmBkPHhVNRINGrf561X
         Y7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=UC/RYJCZztRm1rSOSADEzcPaiE3TFJT+Z5tiSzE3pIY=;
        b=pd7r0IId0Nw046B/ULrGdRyZMlvMpncsGeSheSZHOHhExbUenWkfTOnwxo+3a0Y+4d
         PJn24xrO4Q1dvFXEKviOgbnUOrPymOlTNsi8jlTOoJK4FvsPPhnUoWQ2tkBGWM0fACp2
         hFU5xmTKbh4TS2j3yt1H6iM25yr5K4a2l7mh+SlogvNeZty50FNXBzCXkxApEYZxGVg5
         61BOe1WAN/jg6jRzutPCcB0PthPBsv3KCxtflw/W5U9s+faZIndVFjKGJSUbt2gbWdms
         61OgHUidS2noI+LdRh8jPRMuCV10ovYYfUKa7oyZMKKBLcLALWAZsW0VMNyj3/TBWXze
         YNLg==
X-Gm-Message-State: ACgBeo1vtt6BnReKcU0YyMYsMYDyineVySTN0TwvVGUJPW252vYT98Yg
	J3Om+sgcgmYj+mHzWQE38FSffA==
X-Google-Smtp-Source: AA6agR5UqzXXevsvW/zI4AsS16Q/lo64SrrZM1t4RbqlgEun59doiX/cK/9YbSah0ZKU8Ksc2g3yFQ==
X-Received: by 2002:a05:6512:e98:b0:492:cf3c:8860 with SMTP id bi24-20020a0565120e9800b00492cf3c8860mr4053202lfb.603.1662716870498;
        Fri, 09 Sep 2022 02:47:50 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x18-20020a056512079200b00498fd423cc3sm4135lfr.295.2022.09.09.02.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:47:50 -0700 (PDT)
Message-ID: <f1681e74-9c48-320a-6f0c-70518c768b78@linaro.org>
Date: Fri, 9 Sep 2022 12:47:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 15/16] phy: qcom-qmp-ufs: shorten function prefixes
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024752_174287_EDA4747B 
X-CRM114-Status: UNSURE (   8.18  )
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
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 88 ++++++++++++-------------
>   1 file changed, 43 insertions(+), 45 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
