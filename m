Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F97AC25B6E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 21:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mz1HXp/yQHA8XN6qkEXaTA2YJDySQYbqAHOqq6lgnE=; b=ys91pxfiMtXgkW
	SRF0GBTiXRCiss1tue5O+DeglKYUKocHRNyXke9b88L12kYne/z5xUTEpco+fif1KLUar4Wsu0AeO
	/D/3JGSi8uRNfAYS6omAQLlEkDmB7ccRD6OrCkRgQJlCA9C7SOYcGxJF5HUKJtDKgtTu+J6KXbzhw
	dHyidpw+WG7/CrcnEYXtY0oGCKtJLpQx5VvczVIGrm0SQXNc59gzT8PKFw7SpBDNBxA5E1rNJMoor
	ROQmgAfAeKpB90r7k9qeBySfVm7+lCxzLINalmVNxIT8pRMQ937JAnnCSACyPtx7asXsMRaWIzjzP
	p2DcJdcm8tMsMRLmFpPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Wm-00F9nD-2U;
	Thu, 26 Oct 2023 21:04:28 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Wk-00F9mR-0Z
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 21:04:27 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32daeed7771so852156f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 14:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698354263; x=1698959063; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A+WjwVDuEjfphxivxZ019Dx0u0fobKcWgfHyoUTG59Q=;
        b=ntGNHTwNVCqd95SAl94cmcMHUcB7xGRdrgfuzqGneiiehshwLsnycoIKJuHdhDGpNf
         jevXK5NwtQ/lu/EtOaGLIfniRgfg8509ZNPCd+MKXyjWLYnsmBuMv0E/SvocGvuUYiDT
         czusY+dXK7dqegEi2FMrVjDVSGK84PFYTy4I4B04JcM0SoYo6wg0rDJPx+MhO7KIC/ob
         RjsA2tDrIdq5ro6WQh6sO36oYHTFwDvS7dEW1qmFSwN+t8OLDi1wQOZu83axqBtU/VC/
         M4mJsLY5QhQ8UpwwMDf4gdUxHMJATplZLtEBt26gaE0y7gbPrhB/OzVN+ju/mornGMjK
         mpEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698354263; x=1698959063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A+WjwVDuEjfphxivxZ019Dx0u0fobKcWgfHyoUTG59Q=;
        b=NsFcwffGks47tq/wDXIc/B+hWi53gUTgthi0Pfwmnx76SUkB0wCT/mZXon/6frVQv2
         q5sexCdhpJ+tTNXOdd7ubt2+c6YX8MLw/ha1qu/adNcx+z6daFperW+2R449zaFB0tOj
         EMn9l+3BsL7Dk5/inrVKLWPuJOlQGYaizaaQsGgWhexTto2AH98TX4qbPQWYZbwdx7vr
         0foAb9932nvMdkjZYVorySOeDnhQR8U1pkVpTq4P3OKaWwU11z968TVC+79pXbSJIPXa
         MsnKUDjYpL8Y75ii5QaUTTrBcm5uUsCjn8lR1PBUakUxrh1txo8gd0G4TMYbjJD6M+d7
         QaAQ==
X-Gm-Message-State: AOJu0YwOYcgpDfTAjfU9BE7Tx3x0IQ4NH59E2JKRjh6RiRKau856RkUV
	2Jk8kF++fhmOqHGbBTDT8V+S/Q==
X-Google-Smtp-Source: AGHT+IEDywECpnt7wzKwh/plP8K8CxNVzDQhhmdPRvs5IAb52+K0gslBi53+Q2RRbjXloa2XGGxWlg==
X-Received: by 2002:adf:ed83:0:b0:32d:a688:8814 with SMTP id c3-20020adfed83000000b0032da6888814mr679214wro.19.1698354263261;
        Thu, 26 Oct 2023 14:04:23 -0700 (PDT)
Received: from [172.30.205.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r16-20020a5d4950000000b0032d81837433sm256158wrs.30.2023.10.26.14.04.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 14:04:22 -0700 (PDT)
Message-ID: <90c8b0c3-7f42-4d35-9cf2-d5274184d8b6@linaro.org>
Date: Thu, 26 Oct 2023 23:04:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 15/15] drm/msm/hdmi: drop old HDMI PHY code
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd <swboyd@chromium.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-phy@lists.infradead.org
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-16-dmitry.baryshkov@linaro.org>
 <b779b911-dff3-420c-9bf9-5b7bef24337c@linaro.org>
 <CAA8EJppFi6jJ=PKCdwBqM8hXdgp41XTY=QZkdiHkPPJ9KdTfTA@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppFi6jJ=PKCdwBqM8hXdgp41XTY=QZkdiHkPPJ9KdTfTA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_140426_236323_97A5DD82 
X-CRM114-Status: UNSURE (   8.38  )
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



On 10/26/23 23:03, Dmitry Baryshkov wrote:
> On Fri, 27 Oct 2023 at 00:00, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 9/28/23 13:16, Dmitry Baryshkov wrote:
>>> Drop source files used by old HDMI PHY and HDMI PLL drivers.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>    drivers/gpu/drm/msm/hdmi/hdmi_phy.c      | 216 -------
>>>    drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c |  51 --
>>>    drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 765 -----------------------
>>>    drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c | 141 -----
>>>    drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c |  44 --
>>>    drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 458 --------------
>>>    6 files changed, 1675 deletions(-)
>>>    delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy.c
>>>    delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c
>>>    delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
>> Uh-oh, is the 8996 HDMI phy accounted for somwhere else?
> 
> Yes, it is the QMP PHY now.
Right, I realized that as soon as I've seen that you replied :D

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
