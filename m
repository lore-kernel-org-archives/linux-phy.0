Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE165CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zteIO4/WZxk0FPDI6g2HDcYN7C+c6J7tLtvv8kCyTbU=; b=XeKrmNZIiXZVhr
	jN/RTV4dS+P9tVhCYZlOQidaDKVY+/wS/mEwerHmpTv4RdkSMcNl+I0Z8HUBtK3s155OaAfCmMixy
	AhwZe6Mxv7gJiKP52pxyfv59A3X1zR/DocSpJ9pBObRTGQVlORPLbVyA+VJlwdcHmbja+N0WjyVkY
	wE6LQ3H9HmKldH7ASM/tHM3bT1JuGbNDbMS005hAtprjsfogm1KzVnBSqYxfpKY+SlutZmt6rsBZX
	mUGoOkB8ZEioxVO0GKgZwWkv7JGHB8zM2m/OIfae/FpOVWuBK9TeCeeHqYePCu8NfPGLtyuIJKdB+
	4DmusL9JehJHdTYjlfPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fPL-00H3r8-5P; Tue, 05 Jul 2022 10:03:51 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fPI-00H3o6-FY
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:03:49 +0000
Received: by mail-lj1-x235.google.com with SMTP id o10so3196748ljj.13
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AT5njUHvAH3QuRjtRgqJZ6DlL3/SnvHEB2jL0WRqjGs=;
        b=MGliCR5T4Dfn2uYgt2awymKF6EpzY3ieiIzuuU4lb2g66COYzA8R4EAVt9R3hrOPAt
         23nwgPcEXUB+izaw0hTfrCj73bIo9xVR9j/NpqOXcasAuQllLw2JGAdTcmmpB/nLyreg
         huX0EpE2OMhoLg37d4bAmbQ2OXbNKPumo94qXe1f6gCOFpJgw4rTfUqCOw6bNOkojUzz
         mI2NtLGLUEZJDPL3CtE36nkf6Q2JIyHERiYO+tKxdZvSxPsLSRmGqgOxmb9YdrVlQxMI
         rEcwHEiw8DxNrymaQK7EXS4zunrruIkRRxTNzhOx1u6xyjOZfYSFr40GoipuTrnyMRHy
         rbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AT5njUHvAH3QuRjtRgqJZ6DlL3/SnvHEB2jL0WRqjGs=;
        b=CPeFNyK6ELsX+WOJSEkULc5wffR3L+xzc73jYDTTzmb5isRsG+WgnPDHWAzFn2Oynv
         2BMjHFJ3TrVTRFAci5hPr9z+p8cVE+C7JdB7IpcUpKC82neLKRhd+ZDkdNnU0Lwo3Y92
         WFM3cuGdjRARUEJUHPdF1XfI5K9miuVcK2dFxHTNi+G9H9rYy59VWbyKPQ9YIlc7Awuz
         dXqtxbPn6rQAKbS6iJisvRfCsTkLk6mJ0RWMwOtQ0L/M5yaeOJ73se67fNuBRV1ppdSz
         f9TMxFBbPLLoy8cr4+SB8ObTH3pjnfXbFcnbLPiZsAL1mTZhgIneoMCpH430yt357qm5
         PapQ==
X-Gm-Message-State: AJIora/F28/TCDPhaa2cxiXtWydOJBarE2S44/HeRPKrZwanMLEgL+XC
	hs1426m3lOjvTsCGkyhMv4Gw6g==
X-Google-Smtp-Source: AGRyM1vaUT16FirG0zj63n29nYtA5g+ywxCOAUfbxGzN8iBCZwBFGnEMJerkNTN3y6GT5xmVmcYOMw==
X-Received: by 2002:a05:651c:101:b0:250:896d:f870 with SMTP id a1-20020a05651c010100b00250896df870mr19923072ljb.235.1657015423816;
        Tue, 05 Jul 2022 03:03:43 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id be37-20020a05651c172500b0025d19a2677asm1558356ljb.76.2022.07.05.03.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:03:43 -0700 (PDT)
Message-ID: <1c916a09-8703-21cf-23af-5235c14ca188@linaro.org>
Date: Tue, 5 Jul 2022 12:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 05/43] dt-bindings: phy: qcom,qmp: drop child-node comment
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-6-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030348_570363_D8B2A07B 
X-CRM114-Status: UNSURE (   7.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/07/2022 11:42, Johan Hovold wrote:
> Drop the redundant comment about child nodes being required that was
> copied from the old binding documentation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Could be squashed with #8, but it's also fine.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
