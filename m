Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 659EAECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkEnnKfQbde7ixVvIgUeAgczDgNG5cqnk/wMtkIwMZ0=; b=nQl8DSxjviJVzP
	XFFGTGQVRIFS0x429bYug0C3eaOjvQZCbtIvp/DK/vdkuCHjPWi28K0E3OnSxLG2SSFz1/KlTKkDP
	Q1F1xNJExrxeaC+3uu8YySd/9rCYKCoBBlLxluhNm4ZY6AqTR1NdndwS4NlKw4vN5ocRopZN46B2l
	ZXZA/5Oq3we8etMAxjqtUX6V6RGWmg/gD5pI5cghZTVaaUrAl/hR9YMp2Glw10/klbiWWZ3mIn2v3
	EvtTrAIbhxHOh9bjcqZi20AN79cXgSeks4ZeGZA2PemQqtFL5ZiOIn+JxgiHAJP6Oao2okfN7Yn8R
	rsyrO+9fIjiia2vufPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXH-001iKI-RL; Mon, 24 Oct 2022 13:30:35 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXF-001iJC-1P
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:30:34 +0000
Received: by mail-lf1-x130.google.com with SMTP id be13so16745425lfb.4
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qaWaEd0PTNUwkHSdWBfjQaOKY0U/4iADkLwuX4tjYsI=;
        b=QTLOedLCTWH0jSE73TXFDlpXIEqR6RHh3j3y/2qLMiCJ04s16ps7GqLwvgXl2lHMCR
         QmogwGOsM/BiXf7D4uKAvaqjEXfvhYSXBEnHwAKLLIAkR693vNvKi/G8Wff7DnZiazsn
         RQihbA1f6S6qq+gbrpZjQeISnvRLKUyDw7LBo/LaiQerMEgkc64xZtKkp7lkm6+sep0g
         OGhS1kwhRltDJoXwCHK0nF7Gd0LdRMQBFkL5v2a8BR1GIcLQLgxg8JGz46Ifa7ePwUrs
         7nvgAKnIoYg4sgNmHoBTsTTutjmfdoNR3rAoIFKeLeXKFa1RXF7lE7GI+CCpSvSIPM3v
         Ridw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qaWaEd0PTNUwkHSdWBfjQaOKY0U/4iADkLwuX4tjYsI=;
        b=Jq2GZRTYKJBvOCz3W41zUaBxchJfkAerJ/j0dztD0udvkecGZWrqlbns4Sf0vGDMHe
         w4tXZ/N/K9JUJG55S0k3HFGGWUFbExTk07vQ7Tlw32D0LkRCZZU6SLwOHE/5oAYtRlpy
         9DxYIiQg8nNplqCjl/vRMzN5LanlTIvhGxfZhlP3WRisyzh/mRPIHgl/6AMPvauw9d4h
         aB+Wl1CqAu/DfaHD9t2Kt8w6W+WppHSmsyECeBpthjuz+Zv9g9fFE8Y7yI6626OC9b+Y
         JArExTjwcc1i4fpIN9/YE53h3UETY35fViZNVJ2n1fiCkx4VoMc4YTquzho4qMS05nK6
         Fn9w==
X-Gm-Message-State: ACrzQf0TpessL73YitUNdJScMqQPmBO4o1Bz7GdEOQPEvgGLIWGV9NeE
	EVlpAew/2+eEd4PyGIlCMDwr3THIWXDCrsU0
X-Google-Smtp-Source: AMsMyM6HpatqnbXqxsA3dpg5mU8rj42wb07sIMKMi3Kr589GIFHjAxaf7FDsiuupdql6gn3KoPVsDA==
X-Received: by 2002:a05:6512:c0d:b0:4a2:4129:366e with SMTP id z13-20020a0565120c0d00b004a24129366emr12771891lfu.328.1666618230554;
        Mon, 24 Oct 2022 06:30:30 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w25-20020ac24439000000b004a240eb0217sm4522460lfl.251.2022.10.24.06.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:30:30 -0700 (PDT)
Message-ID: <65db9e0a-29ae-3584-9dcc-e45d8a8a1cb6@linaro.org>
Date: Mon, 24 Oct 2022 16:30:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 02/10] phy: qcom-qmp-ufs: merge driver data
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063033_111935_E973F492 
X-CRM114-Status: UNSURE (   8.59  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> The UFS QMP PHY driver only manages a single PHY so merge the old
> qcom_qmp and qmp_phy structures and drop the PHY array.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 171 +++++++++---------------
>   1 file changed, 63 insertions(+), 108 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
