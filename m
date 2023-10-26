Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F29CC25B6E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 19:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBB9LJIfUf3aejsgKcsCHftobfZaSmE/829lkiHs1Yo=; b=GhfVe/qqo7rUqV
	K9FIru8St66QOc8X8g6SDXTog0u3rCpip5LY2pUHIzrSaz2xANFYQTUH+/iqfIkhOGN9tNyho1RPC
	Zq4hygm6EysOLURTyccBpDs5Uwl3jg8F3VbVo8qGvFAGs+TQ0ogqrhhkdtLtJOpm2okPy7nh7UbTd
	ATBS+Scbfz+tZP1Y0I8hfCoAcX0RznPzZ5SxsXIzIAprm/X/NzlbrFj/lnPRrVeBhuPLaLpli170f
	13XPi0jobDO5IHqz90bA1iaLrNeoK6+aqO/n/WnIh3+Q88sg0WcgZh5IHKtJKcYbVewVsm173CPGF
	7wuAObi5X9Bb33nq2Dpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6RB-00F53y-1G;
	Thu, 26 Oct 2023 19:54:37 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6R8-00F53Q-0Z
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 19:54:35 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507975d34e8so1945830e87.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 12:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698350072; x=1698954872; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+yKfel6jVKQdcczBrQhnxnhE7v6YeHb+nTnhUYvp60=;
        b=hTYEV01rSw7JEP2wSNLi2FTANRKXAOpbicROYbrar1orWxuhl15zgQ5xf9cGv2TCCi
         HYq92mQsQaSYvojtyLCuWn2apFR12aIdfHr1g0idwXTUusClTij0HXvAAHwJI1ocbUyB
         FjL9AOBGJcxqeBzGTKDWS5KHBKgPsI40RWOJAk9asWaUByWFrSoUNZpZU5YxuxLiviNt
         F4D18OZgceQXQ8E6YOKeY73U5qpq5OyUnDziNmUs6DwTAzFh1c1EAJVGFRl9C9iuKWQV
         0c5Cb8LTdA+J6JDU82gAGobaInqSpyIo9EP4cfdKL4EdQS7xP5UOHSk9ST2uIlBm3slk
         lumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698350072; x=1698954872;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+yKfel6jVKQdcczBrQhnxnhE7v6YeHb+nTnhUYvp60=;
        b=F8kToeYMThyUHvm2STguWNfbC/djZkn1fBiSRouZsteQWik2ykuL1EcbmWj4QfOcxU
         MKGKNA1apUerzvWcqFqTll3026luDNMqfbAuVh1N+Ei/ACgz1gsspE8pRe0cRN/EiGpL
         cZ33EqjzRjXz3NCBWY5SqZCSucab7cFgJYopT8Ux9LXSUIjXnsyYoNk1tL3Hd3czw3Iq
         UVYqVsbklakfNsoswoATE1UKHPLA6HHYgRxkdbfvkeJ2wxgzqwsS4H5dXKI1/qo3qoO0
         o58Z6BYYAAjarR7tjtMLHBL4m2jxuuWe/ySLKtwxqpPWq0TeodnL2BItA+vq1mm65mnH
         uLXg==
X-Gm-Message-State: AOJu0YwHN+fn3QpHssJBf6GqS+EcBfNDbFr9AhxlmxEk0dZvUS2ZFzsK
	+r6ifSrFU9Clfnp/or2VeFLr5A==
X-Google-Smtp-Source: AGHT+IFmVIu10aBZHdYkJPouHgCG0LXa+bllX/aAIu/roVR3fko0wfX0k3pHKnLEbA6KJxQWbLFmfA==
X-Received: by 2002:a05:6512:1282:b0:505:6ede:20a9 with SMTP id u2-20020a056512128200b005056ede20a9mr331484lfs.65.1698350072248;
        Thu, 26 Oct 2023 12:54:32 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a24-20020a056512201800b0050096cc3ba1sm3104356lfb.255.2023.10.26.12.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:54:31 -0700 (PDT)
Message-ID: <36d6379b-66e6-4781-b08d-ef90f6e47828@linaro.org>
Date: Thu, 26 Oct 2023 21:54:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 13/15] drm/msm/hdmi: pair msm_hdmi_phy_powerup with
 msm_hdmi_phy_powerdown
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
 <20230928111630.1217419-14-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-14-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_125434_220219_3D0987A1 
X-CRM114-Status: UNSURE (   7.98  )
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
> In preparation to converting MSM HDMI driver to use PHY framework, which
> requires phy_power_on() calls to be paired with phy_power_off(), add a
> conditional call to msm_hdmi_phy_powerdown() before the call to
> msm_hdmi_phy_powerup().
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Is this a conversion artifact that will be undone, or does the
framework actually expect that refcounting may not be enough and
phy resetting will have to take place?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
