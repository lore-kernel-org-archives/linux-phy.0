Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62422C25B6E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUZ49tINmmfoIqlfARP6cVC1DL43rC4d3fA6pGo2mPc=; b=ywxQ2E66VL2kzj
	eouBW3716oo1u11qNAzasyCXqfTBduj4CDSGLx6UaDQIRyGtgxEVnEt4Iuaqwp9BBL767Zvps/1p3
	uVDdq6wCfnFtp0e0zl9WM1sXKSmOnxNuBNdVT3vBV6HdunLNvv5LZrqNvR670c2mhEnBMINdS32V6
	gQicX7tsSHujF4dJE7wSfzTa4WfkeqkUC6khtD01CTfis9xsrexHJbMyZqghKHz/6aTrO+LeBbYXi
	4nQSdnDwR//j1PUnU9wP3tF31szFnpSm/Z7sEwAAF1kfps+FWdG4oRjTU+dp+mFcBAYtlcLX0SflC
	wcXOsFJK1E46i/X/k4aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7TI-00F9G4-0A;
	Thu, 26 Oct 2023 21:00:52 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7TF-00F9Fj-2I
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 21:00:50 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4084095722aso10640435e9.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 14:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698354047; x=1698958847; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0mjma84WMq9b/LapGl0vTYYJiWs1xZ6cRV2SXhERRk=;
        b=BmnFS1h8lXh4eZIl/k01csJvqpbdMfraFFgRQUuu0F962ZAzPGmGcsNe0NpiN3/ZIJ
         XNudYe7dTq4QqGuh0QK04er6mQWf8qfKL5Ci6F8fpfZmUsRh15KM6b//xC5sX1D7M7rU
         P6ozwqQ6+E806PK9anuMlUrO4uJxPNZ93F8n7Gxj6p4ycJbnZwgPqZ2be9Bniiem8By/
         C+H5Pw4yN9AvMGUB48+p107S4eYpz+n5OdVBPqSUXPY2BMaUV8pDlaWzBBpYyWVjeezC
         Y40+S17BvPrlDXKeyv4ua17J+UZvZslS4DHrPazU837ig5pLHTGLE830vyV1jGhJ1sl3
         HnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698354047; x=1698958847;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0mjma84WMq9b/LapGl0vTYYJiWs1xZ6cRV2SXhERRk=;
        b=igPchFSeNDq6SFkhnVuQkj97I4U4hEHLAq4qpd88zEYEaH/e0M7++JBThANN0paTsh
         2fEvajGN912dTEBVySzZmeBSiQj0NQJfZ/v+mCX6Vxz4Yq+gKumH3BM+o8e9jNAcbuol
         IkH+6EULOt2po+WEtM3i2SLbcH3P4yQMeYEkwd7VvhnB/fDGedaymHnirk+CBajH2YPS
         mRUEhX/i1fZNPuQvknIwkFS5HDpDpwdwbxnqvJAy2EFPZHCaa02hQ671DjzRp/iLgPUZ
         Nha5V4CkeFN9RU0SMwVucZisZsogI/TGvL3mT5H5ds8UCXqWSJ+rJmsRxuiRf9EJ9+1q
         dswA==
X-Gm-Message-State: AOJu0YygxzAgGHGOc1lbazPhpmdOgTlLr8VBXnkdmmCJ4ZWauw9/Lyfo
	x9XJPH0PrBX+OrrtQhQfjyS+sg==
X-Google-Smtp-Source: AGHT+IEfhhLYylIduYkXq6MRvxYQEjqp5ZqhMAToFXaZMFHGlqgOi/vTtnPKL+amQAp6vTiD/WTufA==
X-Received: by 2002:adf:fc49:0:b0:32d:be57:795f with SMTP id e9-20020adffc49000000b0032dbe57795fmr545587wrs.6.1698354046861;
        Thu, 26 Oct 2023 14:00:46 -0700 (PDT)
Received: from [172.30.205.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id l12-20020adfe9cc000000b0032dba85ea1bsm235247wrn.75.2023.10.26.14.00.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 14:00:46 -0700 (PDT)
Message-ID: <b779b911-dff3-420c-9bf9-5b7bef24337c@linaro.org>
Date: Thu, 26 Oct 2023 23:00:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 15/15] drm/msm/hdmi: drop old HDMI PHY code
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
 <20230928111630.1217419-16-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-16-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_140049_771923_7B80357C 
X-CRM114-Status: UNSURE (   7.12  )
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
> Drop source files used by old HDMI PHY and HDMI PLL drivers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/gpu/drm/msm/hdmi/hdmi_phy.c      | 216 -------
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c |  51 --
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 765 -----------------------
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c | 141 -----
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c |  44 --
>   drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 458 --------------
>   6 files changed, 1675 deletions(-)
>   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy.c
>   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c
>   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
Uh-oh, is the 8996 HDMI phy accounted for somwhere else?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
