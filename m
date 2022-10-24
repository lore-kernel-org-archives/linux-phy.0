Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D59C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkjhiCt+MBpDFAqNPyJAt10nFpPluOl4e9M1ac1maJs=; b=0vKRZK4+Nf4Oxc
	v2O/mfTk9oSTbI+t6aU5obNaCEBCs3YAklM0pNcLk75ESTBbSFQd+ypV2TQq7OYHPZM9pXSDo2IDY
	aTXxCZVbt+g5TY6OblnEyrOmgJbC/q3to2Q89g/SLtOWEo+klp0kWzXXsyTQ+Ef2Gpx6NhznM25Gg
	Ugovn8JwK/0z6zcC4pCZ4vyex2o2yJ4+P9t53s5Mr+S9QGXDOdTI3GtBaOca97aMkUMo5oCWrbmqT
	MwmhMkBL/3SG7y6DTCB284/wrQWc83rg0SmmpI1gOjLiawJFJgvUvdervBO6exRkSD8JiKGss7Csk
	TnAeDNbhi7GWcbbp5njw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omy37-001ntt-PP; Mon, 24 Oct 2022 14:03:29 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omy35-001nt4-JL
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 14:03:29 +0000
Received: by mail-lf1-x129.google.com with SMTP id b2so16907239lfp.6
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 07:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=48QRiPSkyAXEiO5tejGFOhq9qKIkuEQxYvh+zCSe1rQ=;
        b=AlxEoE8Z/iKF5aYZqd7lFy0indUeyF+usAszriTmec+DUSqOtDowAVNnUtEw8/8iNp
         1Drtyn4ddu+rAhUwAi9CmKhajqaqrZfSWiKnWxLH4qsb/oeCKnWkRuNySfcDDTt0FICP
         TpbQS2AF+2Pxu64YhUSA/ZhIFqScuQQ+Ru9qNrCLPU4ikd9seq5CSQ/WELgo4ZKQXjqJ
         h+8P6x7Ho22oa59SblEqMkccLIUaFqEBStFefReiZqcJy8cmZGeEEDgdonNkB4EF4E8L
         xFY4RRVtg7wZMtYifDXVyTt2VZZtf5PjhDVcm7GohcQpYGp1UlALK8A7ihMg/VFX6QpX
         cgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=48QRiPSkyAXEiO5tejGFOhq9qKIkuEQxYvh+zCSe1rQ=;
        b=otvDkwfVEPqxipMUEYkGBQS0n0F9cM6Zjtjy6EZAZ2k9FaDXW4X+hJaZhHg/1+zuU3
         kDjcgrNg4tRgycpQ8CgHQ1FMw2FRkWpna6e92D1ZhU2MnJlxwwL3sweAaqhPslJH5us8
         6ltNm7wPAPXQNE/w0ad87EnABNfGp6ic+U8Nc5DX4R9c2zg5uJqrixGRR82LGHqMIaPY
         b5tqbpfQLBD96msf3zT2BGgnuNxp4wfxJnOLl7BvTjFvMJ/BaVx+6xJaL3dEl1epAkCZ
         OB73cU16cW2QDcCYwolnJXLkZaEEFGwWbyVg102rpIiUDc25Lv8PkCFUCteFzFNJUL+E
         4Xbg==
X-Gm-Message-State: ACrzQf14CtjhYYxiE2aDIl2bfrPL2HWpk5I3DGAJmJAkg0eGYgyVIIgI
	zzBtFi3s5rVYjmNYXnChisZ4iu3PzzWNrkuf
X-Google-Smtp-Source: AMsMyM6m1tYusvtcWN+1mQQDBonnIuGtubOqJCb75Q+1wDN3YjX0bl2egvkd+XFHgwlXvFOzUiyy6Q==
X-Received: by 2002:a05:6512:2201:b0:492:f874:39fa with SMTP id h1-20020a056512220100b00492f87439famr11850139lfu.365.1666620204586;
        Mon, 24 Oct 2022 07:03:24 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y13-20020a056512044d00b004a044928923sm4522341lfk.293.2022.10.24.07.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 07:03:24 -0700 (PDT)
Message-ID: <29271240-f66c-33b0-5e9e-29b559eeda5c@linaro.org>
Date: Mon, 24 Oct 2022 17:03:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 00/10] phy: qcom-qmp-ufs: fix sc8280xp binding
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_070327_668886_61909D26 
X-CRM114-Status: GOOD (  18.95  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> This series fixes the UFS PHY devicetree binding for SC8280XP and adds
> support for the new updated binding to the driver.
> 
> The first half of the series clean up the driver in preparation for
> supporting SC8280XP and its new binding that drops the legacy child node
> and the (incomplete) description of register subregions.
> 
> The other QMP bindings suffer from similar problems and the PCIe driver
> is being fixed here:
> 
> 	https://lore.kernel.org/lkml/20221021110947.28103-1-johan+linaro@kernel.org/
> 
> and follow-on series will do corresponding changes to the USB and combo
> QMP bindings and drivers.

Great! I'm looking forward to seeing the combo patchset. Then I can 
probably rebase my regs layout patches on top of your tree.

> 
> Note that these patches depend on the linux-phy next branch of today and
> the following two series:
> 
>   1. [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups
> 
>      https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org
> 
>   2. [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)
> 
>      https://lore.kernel.org/lkml/20221012084846.24003-1-johan+linaro@kernel.org
> 
> Johan
> 
> 
> Johan Hovold (10):
>    phy: qcom-qmp-ufs: move device-id table
>    phy: qcom-qmp-ufs: merge driver data
>    phy: qcom-qmp-ufs: clean up device-tree parsing
>    phy: qcom-qmp-ufs: clean up probe initialisation
>    phy: qcom-qmp-ufs: rename PHY ops structure
>    phy: qcom-qmp-ufs: clean up PHY init
>    dt-bindings: phy: qcom,qmp-ufs: rename current bindings
>    dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
>    phy: qcom-qmp-ufs: restructure PHY creation
>    phy: qcom-qmp-ufs: add support for updated sc8280xp binding
> 
>   ...phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} |  17 +-
>   .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  83 ++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 381 +++++++++---------
>   3 files changed, 287 insertions(+), 194 deletions(-)
>   rename Documentation/devicetree/bindings/phy/{qcom,qmp-ufs-phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} (93%)
>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
