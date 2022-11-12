Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90FF2C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4k5SCQdJrTSrG0uSh1Pr+YX9GYRvni2jMTZPN51dh0=; b=gJXPlBWSzxej60
	IzrrAQSpRcvB1xqA/RA6aiX6ikgpxVt9QuedUfJZxmRFL8hwyNTaXMzVmCCw52OFZfyVY639CC+Zf
	J16vCzbv+bnL0HEsgBdNpimhmAebWcpzMDst01QgUvB619TFShEcvnvMiqxKc2eULtcvajIrsJERc
	nUwN220zqQyYD4Ogru7NlCygIIYFAgBlfq5uTVjdm7vZsTIeV0QyS8pSDb81VNdEln4FgMQPxN8Ua
	LGYtDux3pmzxbC9Fh9/RZLPOSAT2OMVvbd+6SrfJu9bC6kPdHCQ03Js6ts/LHJz40fjEa2jUw3n2/
	0EwjHhjsg9kmnASaFqmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjtd-003fHO-Tu; Sat, 12 Nov 2022 06:21:41 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjta-003fEg-N8
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:21:39 +0000
Received: by mail-lf1-x131.google.com with SMTP id d6so11249392lfs.10
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2rSFBeiLpIbhXAzBv6kMM0mwgnolXzo0jTVnOQbFN7k=;
        b=qU4N+hCQFIRy5XA/OX0P/JQx/yczOKS2TpQi1D1hEA9C3fvp2W5PEy32pMUwpOOBuF
         13IltASk3fDGI1Qp89nCjmRHRUpHUrhY07+RN2gns1vBxuZtQmG/EnjfZo71Wcyf5R69
         a6/O7j3u7ItbsyjzLpO2wXjVgOBYLSZso9IacfSeEV4UsPxT24JhH1ouRqYb4gAxI+1i
         uJMifXwA6Ux7MViKBgJJJhn/FEzTWRL8x2Ory5SDxBvHgdhqHmsIdfhlbiZ4iSg7DmCt
         X5O288yq6Xl3ruYxqBtUNuKSHH3U1Gdopkn0lNL1FVeUY9LI5Fv9sSp7lPoKgXCW/6Yh
         sCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2rSFBeiLpIbhXAzBv6kMM0mwgnolXzo0jTVnOQbFN7k=;
        b=YewWxiRpttF8ImktEo70n9KHPM3BN+6KJ172vNZ6ZGONobn+keoePnY+fsTKveIl1F
         q2XZskafXvsrcXQBK+LA6cSdfg/biflvghbcnHCkPtvNEQMdYo0I6w98auGG0PlMq2T7
         pDH/Pxyl04LTLcT2frvQnGp3R215+gXiQVpKMy6ttPEdCqWItOd+aRm26/iUB2N7RSAH
         A4FhYNLRgOswhA9AdXqFMoMHxt+bKcoaw9exyn3X6YBeYPtUrDUHTsmzyx7zqDgKwBZc
         lmjP9VnLcwy5Hv6AxDkhvy/dI28GFx3dKnuNXwZRySMP8dJbLIwyETRp8b7Ya0JOYlP2
         g9eg==
X-Gm-Message-State: ANoB5pmzwWyGGpeeJQAKAgXe01NcgmGGcHZ0M98cG5/O31ipOzqem5mP
	JXHn+RRcdPFuoCNfycCxwpW9Ww==
X-Google-Smtp-Source: AA0mqf7kPAbErD3YYgREA03LKEKeJqcZXcvBxxD7ZArWMJ+n07NSzFNg66emGzDF7xLAUg1LZlD5gg==
X-Received: by 2002:a05:6512:10c8:b0:499:d6f9:5b3d with SMTP id k8-20020a05651210c800b00499d6f95b3dmr1605170lfg.69.1668234094699;
        Fri, 11 Nov 2022 22:21:34 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e10-20020a05651236ca00b00497ab34bf5asm717095lfs.20.2022.11.11.22.21.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:21:34 -0800 (PST)
Message-ID: <ebde04a3-38d6-4a19-7aa3-74fd205e8221@linaro.org>
Date: Sat, 12 Nov 2022 09:21:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 09/22] phy: qcom-qmp-combo: rename DP PHY ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_222138_788811_04538807 
X-CRM114-Status: UNSURE (   7.93  )
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
> Rename the configure and calibrate DP PHY ops using the common prefix
> for consistency.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
