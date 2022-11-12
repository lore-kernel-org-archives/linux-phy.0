Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D92F0C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyJrNCvjNv/w5Z2btSq6IanJnmBL65/jpnctA7NeF3g=; b=Pp5vGOc77OJ4Dp
	fS40/VNC+MKWRKNaUN6/EaHLwD75zvuMFCsj5HNqABdGcyuoP0ekMfvEYTYk2eSYhzux06Eh0bKYR
	6cJwunzCc/02EQSHf8QHWc6qI+quGspcJemwvqFh4ljwz3oeEaAp0HoARVWSpy4JjbwY2w/1iVEYP
	NfvY85zfbe7xISG80Bbcgc0Q75p3A2k6cAGbH51DwZnWul+/teGzIZRel38HVn6+D+sPMJbahqeue
	ps7UmCH6+0NHJKVJCKnUKK1kn1sh3i40jXWdpt5oSSkCp6vRMbOSVjwsu1SIeqF9OKo1FvwPImvP2
	Mm8DrB5aN3YBxmnnfTmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlGO-0044fr-AZ; Sat, 12 Nov 2022 07:49:16 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlGM-0044cY-5s
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:49:15 +0000
Received: by mail-lf1-x12b.google.com with SMTP id j16so11415185lfe.12
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ip4CQbUOur2Z8auOo98Z8DR+uOdUvnl6ncRfh2kyCII=;
        b=bh/yt6zArCdN5ziU8NmNZu8cgH2NJ65gpkVTng+6UWgXQIbh4kWESXIxMe8OzKs9dK
         XMgliczUl3QQO7AKUkh54lVGaTMVUWVcrXaTVAtrororWEcG+Jxoh19TLPNUtJNs5jd7
         jYewpduAsjuywcgdv2HQDytTEGw9niWpkDWB/MDZZxunTHdLhuGt8yBE7iXfsIlzkyWb
         /dcsdzo9IRORDRf5x9Pk5v/oFZe4vJURPv9OZAxUYPcMBBfvdh9fyVA8G3EEyC+yKlL1
         Fub4iStp1ABEy+BjJ7I8d1nbPIuq9SyWXXuHmR9m4iMzBX11D4k2FJtKO8X4npCu3gLt
         8yNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ip4CQbUOur2Z8auOo98Z8DR+uOdUvnl6ncRfh2kyCII=;
        b=x+RNe3KGLrWrRTq+Z3KP8MxxLHOkRMqigf5HXBm8Wje/koi/XTKLGbC2V7rrnBKvCO
         gbCVIPB2kX0qpoliBDtMuTvpVonqNmHYomWicaXgrocv8FFHopvhZNXgtzPUr9YH5DQ4
         Ezxik6vW7UQZ+OuNzWbQsgK7QLpLVhgd2sOBVnLhEKv5jmYuRb9UatFs+gX5UsJ+s3C+
         OkvYippbPgRrlNSPTYuTXBilEA8LC2iKxT/ToNy+uxx4ARWslO5EwDpmA9UFCR+Uo0a+
         HDbNSxbwEz7AooAEN8PGzYbH+Y0ZVtXFDqtFn+sjkX9Y21xte1TNKOKEm8ejmHvvCk/3
         GsWg==
X-Gm-Message-State: ANoB5pkBwMNiebsMGg64e9DGAiGVZ3R2ooz7zbM9a7aFMV0jhbg07RPR
	YNZpIryhpKhXDo6EPUyRbVo0/g==
X-Google-Smtp-Source: AA0mqf43xUwIvzvUyPDv0Q3clCPGeMtgNl1ERzq5AEHoxIosoBwwdE1dpbE5Ve18pKHx1spyQh1ztw==
X-Received: by 2002:a19:651a:0:b0:4b0:a1e7:9160 with SMTP id z26-20020a19651a000000b004b0a1e79160mr1614933lfb.566.1668239352827;
        Fri, 11 Nov 2022 23:49:12 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b004a26ba3458fsm747077lfo.62.2022.11.11.23.49.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:49:12 -0800 (PST)
Message-ID: <dfd3a8ef-6be1-dcdf-20bb-94d4c17a1203@linaro.org>
Date: Sat, 12 Nov 2022 10:49:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 21/22] phy: qcom-qmp-combo: clean up PHY init
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-22-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-22-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234914_254717_E055D191 
X-CRM114-Status: UNSURE (   8.26  )
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
> Clean up the USB PHY initialisation somewhat by programming both tx and
> rx for the second lane after the first lane.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
