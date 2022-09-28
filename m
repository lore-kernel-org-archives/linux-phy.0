Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98666C32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 16:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBcm9xJgAnnaxjSl+eQ9893xoOoaxrtc0LLpijVlbGo=; b=vdhtkcuO6cDdS7
	NOMeDONSAxb8uOmejr3jbOb2Ay+SxzsisVlMp4jqFZl2XG0cqKSSJtVdTnxGtSmsy6DEYA+Co8juc
	9pCw/GDd9hsEH5mW0TO7bbnhkw51S/ilFG3+TFbYKoKArArKk6VaO7/j2bjhAxcEScqP9y7+8uAzs
	arnmShiqCnkc+lD+WosBf18I/NMKzB5k7/s1kXehQzLyupVHzJFjA0q4keCAMbMTkNRu95wzX2Axf
	gXNlz2SBNLCbdVmIvPioXXKfxVONCHzs5z1F5EJwsd6Plta1FVjOUY9z/QsMEcqi3qji5G4+Y+1fr
	w9qo1OQCFntNPAYMwpKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZX8-00H3gk-0j; Wed, 28 Sep 2022 16:03:38 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZX4-00H3ch-Oy
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 16:03:36 +0000
Received: by mail-wm1-x32b.google.com with SMTP id i203-20020a1c3bd4000000b003b3df9a5ecbso1566614wma.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 09:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=U/WlCXHpaS4EJuvdxGL7cBryc3HObdjRZAT31F4Yxs0=;
        b=zICZlPKn7tyOLOAOVwHKy7j8FYkPZKNM3Dp3EpmClXBSgdVE1Oahn5XuBI9B+CUy37
         f4WAv0KNxk1J9ZWoIkXvEmY2bVTcgwQ8qu+asVFfurA0Y+hhIY7J1MbBTsbJgg8I/8yh
         CrCZnWMuWNiiyQZNNO18tACTqKxLrSB/XalIeQTRZPyUCoYngL34rq01P4Yxn3TuxKuw
         HL6nS+RXFQVgohIBy/G1XKXLHcP39X+KKz9m+12GZsatndOamQifkcK1xkAP3zAVuIj/
         3Wl6yEHqzgVRjRgoJx30KZkdxsoR4uvyJ9vdzmD89NgLtCQvtECOu0lPlHkB0e3ShY+r
         ozPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=U/WlCXHpaS4EJuvdxGL7cBryc3HObdjRZAT31F4Yxs0=;
        b=Cnt2zibO/qMUgig4mHQECokQXxd+lhp4iLpYkkI+AXyoC2+DWC4oeJfj2N61k142bU
         rdT3KfU99tB6PDPz00DOnAp0sCWLQn3WS+xVy8/WxKy/66sjRMXUdZiiFrXfgTkZoJ9p
         IxOBG7Uh2xS40O2XijmC22ORlBPYdCvaid3B9McsvxW4NUmeXxa+XKKPedfcLfYcoANr
         iyI11gWIrvvdQcW/sxpfCUWJ98gYG+UNwYUJ7xRUW9O2fEB2TXQCA4WYHjkovz+d0++c
         581UE0xs1ck5sDB+bRvYUUISs2FAz2oIX23xSXlKIYG2B21OIKnIGsg1jQ65zrq/ch0z
         mAXw==
X-Gm-Message-State: ACrzQf049j4JrzaErs7N6rMZVgtKBog/B+Omz6F28j63T5WdeekG830c
	uwQoWjBLs6bZYK/W28c/hsV7VA==
X-Google-Smtp-Source: AMsMyM6x9fCiPlAIsTrXnoVNYhb7/GEEGqBZYfkmXGta8ToHyMPsSfKUrtdi4383MYE4IJkQKbGoSg==
X-Received: by 2002:a05:600c:3d0c:b0:3b4:c481:c63b with SMTP id bh12-20020a05600c3d0c00b003b4c481c63bmr7084859wmb.147.1664381009499;
        Wed, 28 Sep 2022 09:03:29 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id j8-20020a5d6188000000b0022cc3e67fc5sm3380637wru.65.2022.09.28.09.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 09:03:29 -0700 (PDT)
Message-ID: <8982bb98-cbfe-3628-a646-a978ae0f09ed@linaro.org>
Date: Wed, 28 Sep 2022 18:03:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 03/13] phy: qcom-qmp-pcie: drop unused common-block
 registers
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-4-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220928152822.30687-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_090334_864181_F5606783 
X-CRM114-Status: UNSURE (   7.71  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 17:28, Johan Hovold wrote:
> Drop the common-block register defines that are unused since the QMP
> driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ---------
>   1 file changed, 9 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
