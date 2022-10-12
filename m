Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78599C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEdbUWPWvwGvE53xnEsNXqPs6mDqyhWNHLfYs7MVzXE=; b=H9PoONGYDSWwPp
	LS46bzJAJ9PVj7Ptnh/jd4iTK2QYcM9cpGCrKnblEaiPl23JcJcTPxcvzhRggpvoLE0uXxhCB2+FI
	2gqvRGcfe0MbdTQyPx8n67FmGknpt/tfEKake0TaQepwU5ZRKVz3Dd4S6YlXK61r1NdAwciNgsLCv
	McfnmpRM9jO3bn7WVdRU0dPnb4SwNTRLuqFEizHVn+ZiESa61nCnRrb+jG/FRbHeHgaGO6sFL7i/p
	jpGjc33gTL2nSQUmOQ+jcg2FDrOseNRS2zlt11LqJ/E1Q8ANprkO6rHWMCvmIHzzaMBI9+xm732NT
	NJEdMLieNkmqmZg5+guA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiibN-009JZ0-M0; Wed, 12 Oct 2022 20:45:17 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiibL-009JYJ-Hb
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:45:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id x18so13469123ljm.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sti7xlJS8BDmPeM82erSW44bu9sTdRGshhN8rLPU3bA=;
        b=RbhRt1rpSUaAOSD9pBZPyvuMFoWe6OutvYUttzUiIkADnJ4ofq2sMk1thS3vJa3JDX
         N2nGP+2pMgqi9t8wBUFAKEFGZ8dMIuhpZfnpdWV5TJhYX23En8L39Lk13fwrwZph7Rvz
         LSf6k0EbODorm4dKGTClNXmcko05jjDlV2+r211Z34RSwRg+nYN1V1QpM8shPUHNA4Au
         6RBolRLH1AJUeh0xmnMeEF5dOYE4rg+St0HQUe4GqHRA8tdmpa07JGKOHmrmtDphhcRe
         z318noV8MdCGzaomGb9ZZjBadvI6QG3wzg0Gc9GSEuGiJIxJrKx3iQks/vtGzQItVhQ3
         fm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sti7xlJS8BDmPeM82erSW44bu9sTdRGshhN8rLPU3bA=;
        b=x8m07bzaucpS/5cGZ3Ee940/+J1LnyiO6JWWNDzh295OPMIQMaZm60+5vAZiW+uRX8
         NhLSEAcG9nnH7YQRMrNh2dZN8gi4akJlOwg2Dmszjn0adagmlrr7RY2EpidWDgD47rND
         MSRwjonKrofvZt0TmsS603Z75Nf3dtXWs9ZHLzhaWd9P5COZB+SWm0tQRtzny0bKSFwL
         n+iBdaSWoXhaFFRfm1jlNyGpfR8/J2QQvBgtJs1T7WVuUQWbyEnn3wuNaUOQ0AvCdarm
         18WxOBiF33sAoQxbVSj5QjWwHGosXP87amSQMOqHow3BhwTbhT/q8494ssJF0PrwV9wS
         o1KA==
X-Gm-Message-State: ACrzQf3J7PP+9fFA3LWFPFTt586FVhQSK6W0a8x4/5gfq0wIfOZn7JFu
	xvo29TCC/3TcxpXe4IsaiNhg3g==
X-Google-Smtp-Source: AMsMyM71pvu/vjt3lZgu3Ss9P4ecS3RXKZjg0NzEj/bQ//NP9sw6TtXb/w0ZyLNfe2xeJ4G3thg5Qw==
X-Received: by 2002:a2e:92c4:0:b0:25d:9d30:5d61 with SMTP id k4-20020a2e92c4000000b0025d9d305d61mr12046148ljh.202.1665607514237;
        Wed, 12 Oct 2022 13:45:14 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e3-20020a2e8ec3000000b0026c3ecf9a39sm115541ljl.38.2022.10.12.13.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:45:13 -0700 (PDT)
Message-ID: <b9ae4d56-3d16-cf78-91c5-ce52dad02daa@linaro.org>
Date: Wed, 12 Oct 2022 23:45:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 04/20] phy: qcom-qmp-pcie: clean up status polling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134515_612724_1B06E743 
X-CRM114-Status: UNSURE (   9.21  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> Clean up the status polling by dropping the ready bit mask which is no
> longer needed since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
