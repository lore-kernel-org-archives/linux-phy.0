Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79AB2C43219
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDAeoYPCA79IJ6QVY9adQUs9y6W+DZ35bGX+uMVPcCk=; b=QiRqRG0GucELgK
	2Tpihjqgt3ChJ7XlwEnyQCPNzyAHPGNJnfz7VxDVChuSMMcqpj3mj4jdHXo6In5qhfTy8SgEGQCMG
	SwP35zn/IGklRtJE+gA6qJXvYngX/zbFU+8cIZqkh2j2C8DPI+tx+HxTrx4aK22/p98SDLczUX3s5
	Ak7t1s6gWt9TNXjv6tfIzvkXCMata8bIMuXy8qjY+QNyDhyVMcTSoOls7PUosyHVeJ4kRWMYTm57J
	Vr2y11Pf1mTBFcSAifaMMyn566MWl4kpX4VP/92caQ9JvEa7e7L0tJ4espUS8PT3hRHKPAy765MhP
	dd9k8WGhxqi1iXVqWQdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otp0m-005OA7-SJ; Sat, 12 Nov 2022 11:49:24 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otp0i-005O4q-1N
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:49:21 +0000
Received: by mail-lj1-x22d.google.com with SMTP id s24so7253283ljs.11
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Aiz88a/UWF1mDwyihRN1pRlhLSpbfmr9kqBgpQ71UU=;
        b=sPZeq5gP66O2VJ4OcWwMEAJdanitpwOUakQLTc5Yu1E0hjroGMz1iYVnpepAS4l+lf
         LvDaHj/ywGRIsNHrRRps9EvcTv85o68RU5+mhnSLzPFv2gBD0pdegvmH6/qI96FsTgef
         J5yZinsafX/z25K5VFK8sa1JIoMBGlEA0MOG+WSLeIHjhPHSG6MSk3vOLQqU/YhNfvpX
         9ANGSFtmfKUfuauL3Qxpxld3N5pdUE1Uc/5pnt0ppovO7q+cEmonBGdCajO7u47EeQht
         WLVoEc4hiMgQHYZTuGpVf0b0SU1hkIPDQvZJAsHsbJk0ehiz4PPHb2VszrCNxuXvC1eF
         sy0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Aiz88a/UWF1mDwyihRN1pRlhLSpbfmr9kqBgpQ71UU=;
        b=8I7foZRxkbkZvkZIWsE6dd+uLgn4XckxfxoUMpjydbEu+heToJ6yViapDlH2p2QNBX
         muwHrWvb+A4Dl9LUNG3Snrm6WzS0eK1U+64BBqiY4OYGPH5ePbhXvqkuTPco2/aMSR3F
         VQfh1zGOSmyb+UDy2wNP7Nsr4IS6PL0kxerO9eYuS9efbGC62k6O5CUkfof+sZvrklJe
         lFFznyfNmmki5k/NyR7y/5w0hMRs6oGl9HoyVJTPrUif5dkR4+g/GijHI2CuhXX8bdZp
         Jde7J1bZykcup62CeMZp5Iz1ClhRTwRL8zaAlieslHtCpHEi+WAteiee7iPc4wkf82Q7
         4SXA==
X-Gm-Message-State: ANoB5pnicZxXFF1r2RU7y4cMsB+NfYj+0bqOaVjI/iAkqQJLPdjPRsed
	L2qPXNRTXaCGyF8vav1QbkJrsg==
X-Google-Smtp-Source: AA0mqf76UNssSrdqRc8o2C9SAs0oBaiwKLfmyBfB/2INeKn33JZw6A2p7qfaYjWtgNm8ZFiXroWhXQ==
X-Received: by 2002:a2e:300b:0:b0:277:31c3:c9a3 with SMTP id w11-20020a2e300b000000b0027731c3c9a3mr1733250ljw.473.1668253758283;
        Sat, 12 Nov 2022 03:49:18 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d13-20020a19f24d000000b0049ad2619becsm836125lfk.131.2022.11.12.03.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:49:17 -0800 (PST)
Message-ID: <a8a4f889-d69c-c6bc-25b6-755f8d6d934c@linaro.org>
Date: Sat, 12 Nov 2022 14:49:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock
 source
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111093857.11360-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_034920_162200_3CEB4B86 
X-CRM114-Status: GOOD (  11.37  )
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

On 11/11/2022 12:38, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not be described by the devicetree (instead this relationship
> should be modelled in the clock driver).
> 
> Drop the driver management of the reference-clock source for SC8280XP.
> 
> Once the other clock drivers have been updated, the corresponding change
> can be done also for the other QMP v4 platforms.

It would be nice to also understand, how does this apply to the sm8250's 
usb+dp PHY, which has ref_clk_src, but no ref clock.

Bjorn, any comments?

Other than this question:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
