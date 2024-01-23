Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 887C0C47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdEWM6n67whLBa2nd5i7hU/Uq2IoiOV/gQqZoK3QUEo=; b=yMKJ0sI523xIt4
	kxLFQFor+DcMPtFWu3Hl4TGU+Wwa5ztgOKHX9hoygO9Hi27tuV55pMmQh/K774apHiDw8aNgBZN04
	2604TTchvhXNo+H1xbtu6el/Iw6MUKgtwwLWrqb8RYOG27CrBcEEYRb6hHEUlZMKM1k+IcrwxjdD5
	G9RVXUhF2pJzsI58xQEvO3u5nDu1tZM1iIb5dXogD2D/TweBeJfbrjemNUu92OQKggk5Hb9fQQ7aa
	CVkSwUniUoIGvPl3SMacEI7JTE+DX0dpScqLoTr7RLZeVVxClniQNHHJ7vZpxOcNjU6QYWInrMbpI
	TVCO3nxSlK8DBjMJ+u4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSK0h-00HMTw-0J;
	Tue, 23 Jan 2024 16:52:27 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSK0e-00HMRD-1s
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:52:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50e766937ddso5354901e87.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=8devices.com; s=8devices; t=1706028740; x=1706633540; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kXm+8B2oUV6NHB3wV69TO5cqSgcr9Tcvgdp6j8iimmU=;
        b=DRjpINSpp9m249F9CcfPQx3H8KfSO/c01FB2xZJn1iLSEME2XLLbYPY9VpICPtc+BH
         Fi/hw8GYlbrj9Ok4Xt0U76OQ++u+mFUY7AMNydTEbvGBoCQ97BDr2chU3EURK6YBimxB
         C2oNFrI3I8wFM/iMXx984QGtUY3FJieLdOdpqUd1cts9muxW0vN74cbWV9zkbLhaGVKd
         /8Jn1c9jqXf402Bsp8WlRaVR9ivD+n/IRq6xczhVrFyoIlVy7EMp3b8KQCkdF/TeUOno
         sOC6QuufKa80FBXBF6YLLyPY+0kKdInDctMIIcbF3Hdq291DgBOHZoSO7W1FPwCPXYY5
         kd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706028740; x=1706633540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kXm+8B2oUV6NHB3wV69TO5cqSgcr9Tcvgdp6j8iimmU=;
        b=YqidwyzzakdWrBnWM4mMeo6QdzKWdtj6X/kV2mzxaO5ZsQ/LNRIz0owkDljb7lXOGF
         TVIP0WdPNhrRqOMmAiplHNvJDrCHTyvIZ9zo9e3q6aERz+kx1rEinvBrxrgAgBkTccG5
         p8UBtDklos0WRF8Vemy9UXmjSBu+87aWXPbBsbZC6Cdo/cmv3vxxyz4hByUk+nE4xMig
         AbeZTkYGuDZqHpvWB0NKeHem/ikFYtWOLy2ue3oxL5n91AY1UPKkeTAoWeZsU6N35shC
         dQu2szfVCULXdEjuXHGY5NlwbxchDxlVfy49ml5JifFRbVtEXtxBMksG+uzAvzE7al+B
         yqyg==
X-Gm-Message-State: AOJu0YxNoUoK/L5Px16MoG+Sol9MH+oqzolCb21gzliFVCSRzLmRMJoK
	HOXUtwIcL3GwgN9ve0lBJFM9ryPvQUvsCTxf/nVu9XkxywogmuIHF6h1wJ/cY6I=
X-Google-Smtp-Source: AGHT+IEChfJWs7cJSnwDKWXR/KKorWCddOvN+gTAgT9MMdF8s9TVHEO/yl02oBF4vRBhKurbwB9fIg==
X-Received: by 2002:a05:6512:3050:b0:50e:30a8:4c8e with SMTP id b16-20020a056512305000b0050e30a84c8emr3204334lfb.43.1706028740692;
        Tue, 23 Jan 2024 08:52:20 -0800 (PST)
Received: from [192.168.2.155] (78-62-132-154.static.zebra.lt. [78.62.132.154])
        by smtp.gmail.com with ESMTPSA id g21-20020a19e055000000b0050e94329e7csm2407169lfj.269.2024.01.23.08.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 08:52:20 -0800 (PST)
Message-ID: <57b3be8b-0953-4686-b370-6d395b8124ff@8devices.com>
Date: Tue, 23 Jan 2024 18:52:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom-qmp-usb: fix register offsets for
 ipq8074/ipq6018
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1706026160-17520-1-git-send-email-mantas@8devices.com>
 <1706026160-17520-2-git-send-email-mantas@8devices.com>
 <CAA8EJpqRvLE3pjkALv_hP9UJjFmEhni_vU5RDYovbpmjv-Sy-A@mail.gmail.com>
From: Mantas <mantas@8devices.com>
In-Reply-To: <CAA8EJpqRvLE3pjkALv_hP9UJjFmEhni_vU5RDYovbpmjv-Sy-A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_085224_629726_5C85F006 
X-CRM114-Status: GOOD (  13.13  )
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

On 2024-01-23 18:42, Dmitry Baryshkov wrote:
> On Tue, 23 Jan 2024 at 18:09, Mantas Pucka <mantas@8devices.com> wrote:
>> Commit 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
>> introduced register offsets to the driver but for ipq8074/ipq6018 they do
>> not match what was in the old style device tree. Example from old
>> ipq6018.dtsi:
>>
>> <0x00078200 0x130>,     /* Tx */
>> <0x00078400 0x200>,     /* Rx */
>> <0x00078800 0x1f8>,     /* PCS */
>> <0x00078600 0x044>;     /* PCS misc */
>>
>> which would translate to:
>> {.., .pcs = 0x800, .pcs_misc = 0x600, .tx = 0x200, .rx = 0x400 }
>>
>> but was translated to:
>> {.., .pcs = 0x600, .tx = 0x200, .rx = 0x400 }
> Even worse, it was translated to { ... .pcs = 0xc00, .pcs_misc = 0xa00 ... }
I was referring to qmp_usb_offsets_v3 here as ipq8074/ipq6018 did use
them, not qmp_usb_offsets_v3_qcm2290.
>
> With this fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
>> So split usb_offsets and fix USB initialization for IPQ8074 and IPQ6018.
>> Tested only on IPQ6018
>>
>> Fixes: 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
>> Signed-off-by: Mantas Pucka <mantas@8devices.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++++++-
>>   1 file changed, 9 insertions(+), 1 deletion(-)
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
