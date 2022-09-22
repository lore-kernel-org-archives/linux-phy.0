Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E4EFC54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuw58RFtd5m3VtJ00EZlBRu5v6i7lsf9709L0uiwY3U=; b=K8fqV+ED4DO/Uv
	CXXWTa8KbbHy/Q2w5bDSaFz9WJSC8TaIcXyDulkSXQrzh68fxC3vwNZgSF2Se1THy/sH2XbIKiDcg
	xQpK14wNJ3CcooNjl16jwbzz0xfaygI3eaaiWvGORGmV+P7B23NrhO/9KYCdhT4+gKSz7HM5p6yhp
	C6PtOP9LH9StsGK7O3sFxGmLzUiq1MTN5UraAkDUj9sr7dWw1ZP7cYmT7d3dKbkE81pkq6LT5DKrL
	EooSKPJTYCWDNo8MVEzmOymGb7b+9Dz0SbLqkjjYxV8JO6HXV/akl++1QJxoDZ4jL67/sSyHMfyKO
	keAIaONRT9NYDhOgn3sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQT9-00HBmE-LI; Thu, 22 Sep 2022 17:58:39 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQT6-00HBkn-Vf
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:58:38 +0000
Received: by mail-lf1-x130.google.com with SMTP id f14so15982345lfg.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=7urtu4G9+3Ak/jE04wIYPLZWdmsb75/IHNhSivsn/uQ=;
        b=iqxXiUrrE3kHZfaGB8BG8OSS/w8zsSrquEC5mRDvwrWc6vCLRr43wSBKOwjYbwhTCy
         STGzgZpMGWiDJ6CD5ALcC1pfxMsB9AXcPBErP8G+5bDbGU1qanzKiDYm07D53PxZlmh5
         Eohaed365lKq0g0iGhQHcwNS1vEB8CKpb3XVKaPbNCXaYgGF75YmHRZQofn7REjMbNdj
         x5QFYKfSrrNGY17pzGqifoCSWUaLwt1ifeCcLziiOaA68E0AUoRAdQGk8JZG0TBZOnDt
         9OF60AKWRqK7pGXEOPArzTJk8lm7NpL2OjubQoUYNqFb3dU7pTdgFNqiUSB+47ND4PBi
         4r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=7urtu4G9+3Ak/jE04wIYPLZWdmsb75/IHNhSivsn/uQ=;
        b=8RgvDLGjOzFp3oSq7Ph1JYKNvopLGv1mF/1PcGQmnIMUrIi9oexQRRNIB+eapEg1RS
         xj6tjEKIu+IYAwPhHhZdtAmfe/vMCA8JghJaBHWF03EMr2h0bGzeu9aXOFOWoLRchFIn
         q+b34f5xUQoZMiZfoKPt9kpCbL31mi5yPZKP3FzEyXrFd7MLUbBesfZtRsb+gxEbA8do
         OgtwDIpD6k6dFD6c5iU4ldkgPylPNn1g26ilQImF/ibW20UXblbU2VdKgng68I8Ieblq
         FmDSjOULo4688V0dRG3ys8w9GpxbwlrSJr0KUigFmcj2EB3P6sjCydMLQznRYUg9e8mf
         OQkQ==
X-Gm-Message-State: ACrzQf0BsqcvZAKi9QLmJ4ZEM9BIjONPmwYt52xIsSqh55M50uUGkPBt
	aCUclMuovWCTS3Wi3UCbzrWMcw==
X-Google-Smtp-Source: AMsMyM7ZjO5nJm77v04L2Hbre+eEX32ZuiywMOxaL5E97/XfzA5Sx5F6MV8frz/5D1j0gdUGUFTSxw==
X-Received: by 2002:ac2:5f84:0:b0:49a:fc43:6213 with SMTP id r4-20020ac25f84000000b0049afc436213mr1717178lfe.150.1663869514716;
        Thu, 22 Sep 2022 10:58:34 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm1038859lfg.190.2022.09.22.10.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:58:34 -0700 (PDT)
Message-ID: <1974a260-0922-86b8-5c6b-6fa433d976a7@linaro.org>
Date: Thu, 22 Sep 2022 20:58:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 08/17] phy: qcom-qmp-pcie-msm8996: drop unused kernel doc
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105837_060009_93AAC595 
X-CRM114-Status: UNSURE (   8.15  )
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

On 20/09/2022 10:38, Johan Hovold wrote:
> Drop the removed mode field from the struct qmp_phy kernel doc.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 1 -
>   1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
