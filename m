Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E3BC25B70
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 21:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rcq3hfvpZxjjUpc2YEkZSfa2lLZ6i3BNezz1IpxvEqI=; b=45XGzu0Uk99+Dq
	dILzj1qzZcwnSxAi0KsDLarnstIltsfnaL9SB2xQvoUDOxgs9mjXYX6JYyhyL3zckQa6kQ06NSTNv
	WyXElQxfaj6TyeoX9PRhy4I8klJiPz2spNZfCYzwsvpxgZdLmmqouLNo3x+1IKr6t3bxE5Om40xMa
	CAet0E/lo6REVsENJ4Kax+9y0I/OAsmlrP2+zeC0fe5TVZPlPSrJAh4csf/aysOFRmuAGhgotDCSw
	vebOsNQJcJmfHLljpB4T1reNeDRmMmZSPMz9biH8mCbh+nk0WxyCHOZEfPn3VV5pa53oaZsq9iKSp
	mTBXSqXD6asKWSz7d4BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7WI-00F9lX-1n;
	Thu, 26 Oct 2023 21:03:58 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7WF-00F9kY-1v
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 21:03:57 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-32ded3eb835so998712f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 14:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698354233; x=1698959033; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/wgqf7zM8eB9vC8458/vz6gwRWY3/cTZbVdubKjZKo=;
        b=N/e+SAdwz6d8oTFflmk8wADP+7j7GjZ5dvxlQw/TGCzOur98Fv9PyidAnF+UvPf5Nf
         vS+pAdMYrRCx+uL3R2auQk3FFRxbuDmJLGc319r5Q02wTgTt5N0Eg/C1H208aP43bwZV
         cWo8sOHxkYHXrWUEk3CI3TRQvGxhZxZnNheCaFHm6W3CZj+wL4SwjeEgPxd85J61QosL
         sRhft2Qq3wu/7r0sKvfAiLSViv/SlNuBjQukeL2I4OoR58lfX0XDSh6nlRfI4A8zAjBE
         bT5eFEQFd5jQkH8CAFhGXPqiTxCgUov4DDyoTUsiNnEAcQanWXgUKDC8mXWpPZzhl+tu
         E54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698354233; x=1698959033;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/wgqf7zM8eB9vC8458/vz6gwRWY3/cTZbVdubKjZKo=;
        b=g+ymfHUFqHbIysphE42nBFitDZ1hQEVbGWsvrnrVylZ4C9yVPLNXlZl6jLJIdDMQaV
         Iwm7E5IlXtfgNeD6OPlfvVJQJ4JudNCirzTf99VTVJVtueIyCJDuAdDtrif5biV/LQ2s
         tzNOnuk/Afpa/SJp935+azqScMoo35eexKlON8ZBix2Iv7nHwLdrQIQHR3vgf2EVhGB6
         acwXgcd7FpmCOAd42H1NGi4osTHO2875N0aMpov6/cb3ZfhqN0GLpdOkHBd35qTciR1I
         FiQ8h81Mgoqh6moS8WIyx8Not+l8T4KUjbsOJNyDFxnC0NHuW9rjTaIpf8bWcKtQJJYR
         yvvg==
X-Gm-Message-State: AOJu0YxQprtpgNOAsck7TJBzsDtYr4pUIwOQgPTCuddj4H6l+oS50iIy
	qEaiRoWT8zmDORE6vd9Khu/QEg==
X-Google-Smtp-Source: AGHT+IHCcKAcemS8hwf9I07v2oLrBnbMRG5xiXH08cWmqWS1KElMruGadt46xV+u93VTSaietpea8w==
X-Received: by 2002:a5d:598d:0:b0:32d:827e:7bd8 with SMTP id n13-20020a5d598d000000b0032d827e7bd8mr612280wri.70.1698354232769;
        Thu, 26 Oct 2023 14:03:52 -0700 (PDT)
Received: from [172.30.205.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r16-20020a5d4950000000b0032d81837433sm256158wrs.30.2023.10.26.14.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 14:03:52 -0700 (PDT)
Message-ID: <e081ca54-e8a6-40da-b101-194e6a6a351b@linaro.org>
Date: Thu, 26 Oct 2023 23:03:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/15] phy: qualcomm: add QMP HDMI PHY driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-3-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_140355_633000_C8B3DCF8 
X-CRM114-Status: UNSURE (   7.72  )
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



On 9/28/23 13:16, Dmitry Baryshkov wrote:
> Port Qualcomm QMP HDMI PHY to the generic PHY framework. Split the
> generic part and the msm8996 part. When adding support for msm8992/4 and
> msm8998 (which also employ QMP for HDMI PHY), one will have to provide
> the PLL programming part only.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Taking a quick look, my comments from v2 were not taken into account

https://lore.kernel.org/linux-arm-msm/1513ea17-2807-4f7c-30f2-6158b5f3e55e@linaro.org/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
