Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF4BC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qc1Co4lz6e0scNjcacVmBBxyQLybYsoEmmt9Ir4hlYc=; b=fyTs6RnFxxFaoB
	msACQ6cFJXRSMbg6S/iGtgEWKZg8iq+ViCztDaOgmc+tPtpTjh+B8cSjMNXm9OTaoHFug+3XgNDFN
	2D18y/aNLIsAW9okrheZunzBAZz1pMvWGGgohXO8mAzR3jMt7u89TMDgZY08G34th3Mr61eC+40GX
	JXmai65ePhExZMDvGFHyuINZaT6SsaZKKfkqslw7yCJD5WQc6S9lYyGljbcV+Cw+1n9oxiKrYC8wZ
	V/RVN3dltyuKqkn7T63wvICmdu+Abnz0hRM+OczZVEsF1c9MDplk3lV9OqhtN7I4YaLYFPmp3bBCC
	GkVxrxi26RiXVDb2s5Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFsp-004Q9l-UV; Tue, 11 Oct 2022 14:05:23 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFso-004Q8o-62
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:05:23 +0000
Received: by mail-lj1-x230.google.com with SMTP id x18so8391673ljm.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 07:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmJosukTcNXPq7QpHRkQ7HCuPYF8BwzQnDoh2vNnO6I=;
        b=gyS7VEpV9tQaMXim08Y4nduzhuIEz2ky+dX/U0PWXSvzQrjAS9tPCvFcoRIF8MjqE7
         rxevgYcUfAXY0b6ERYAiMXnPafQNlWh9sHkokv+d2s+rDI2O5SHez91xh+YejrZ1rzDC
         aNCkTBiuYG49DoYsXC8OItML2EYHP3RSTKH51siJiEOKeL/Q4TuKJbqDFYUZTZQUtiZE
         AbCWBGDel9qaxCS6qJKT1kifEeL/O/XUL7Zun5lk/EYhRe+/Fe1z3Wygp/VxHC46SBgU
         CN3X4IEu0/J0n98Kg0fbk+BpFTvMAjsG+E20jQnzA9HrSuHaYzPf3NEkxEMdDn2WZfUv
         bIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmJosukTcNXPq7QpHRkQ7HCuPYF8BwzQnDoh2vNnO6I=;
        b=uDh3Z8MQmO4VY4neCIY47SZvYuhW14jN8lPRHvOHGQ0doSEr2zqhlWb2YhrTqMja3c
         aFI3sm0axsAvk3eM0lhjwapa+QFGfYdxuzHkJrnu+J7xPGuYTVp0SMjG4AB/nntJl7nU
         wA4EVcqV6XgeNldzC01iJgOJX8+sHw7hQ0AUTByFfpdTM0vgMZ7iHH1r41jqN+UxEC4O
         DbWTPcRYBS+Wv2fKEcD3zO6Yzg1NFZmma/RUpkMRLzP3/bckq0Vym59P8QoXAi2aOsUf
         vZgaO7OOH23/KVktWq5tDeupMdXSV+lVXNKexGM0LVauTGDWEKnwg1mZX2NgZmYbg0Hy
         t5YQ==
X-Gm-Message-State: ACrzQf0iFuu/gfu+JiuNVCvk+CSK3yzafasY1GOmLVUBASy4L+TdCxFd
	ffC9lwfHqg/1M30q69azM80C5Q==
X-Google-Smtp-Source: AMsMyM4/ghz+u0OuwIx9672vf3jqEPPcpS2RYAYfYGtZSIDWv7zQCEGyQK7EOwS5pgq8yfvg0ufRZg==
X-Received: by 2002:a05:651c:11c3:b0:26d:fb49:4b12 with SMTP id z3-20020a05651c11c300b0026dfb494b12mr8765815ljo.492.1665497118693;
        Tue, 11 Oct 2022 07:05:18 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c9-20020a056512324900b004a054535826sm1886488lfr.24.2022.10.11.07.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 07:05:18 -0700 (PDT)
Message-ID: <2fed12b6-b3a5-a360-f040-fc8b1d3ced20@linaro.org>
Date: Tue, 11 Oct 2022 17:05:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 11/13] phy: qcom-qmp-combo: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_070522_261763_56A2D6FA 
X-CRM114-Status: GOOD (  13.04  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The power-down delay was included in the first version of the QMP driver
> as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> Let's keep the delay for now, but drop the redundant delay period
> configuration while increasing the unnecessarily low timer slack
> somewhat.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 +---------------
>   1 file changed, 1 insertion(+), 15 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
