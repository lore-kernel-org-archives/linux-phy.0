Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA41C6FA82
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CEWFyLi0MusMYyhSlzcjqfpxPRNcF9YhVfJii6CxFw=; b=iNCcCBF/KmKO52
	f4Nl5g/qRYIUTSq2HpitUQ00FV25DhXtXodrASJ6v/CUjNVOh/Z/5tPtJe+9gsp6L16jxars/ZroB
	4e+WKzk2c4ruM+b8/hDDT53vJX1uT7FR25OchrPRh/eVhPr2bU0BqJr/FraPJirG6UaGwLtAjFETo
	f2IHnd952vb9y3G06eksPIgUYQ3WvDAPodilmKFcu5TtWLeM9dwg4vh621uVcZZKPVnOjJ3LSko+R
	g9Vxp10VISfyyfr1kM36oU/OCpZdPE+0bOIN5UfgL0Nup1q6Dizxp/9iIEZBQSvaFHlZ5lHlJY0Zz
	DFWSWPtqyiPj9PBI7uhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd75-000BOY-BX; Wed, 28 Sep 2022 19:52:59 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd72-000BO8-AL
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:52:57 +0000
Received: by mail-lf1-x131.google.com with SMTP id a3so21888817lfk.9
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TmHquM/S838I0W3etX4ILh+MW3CKmq4SAxyvSg/zqqQ=;
        b=WNn2CNANydh4/XvjrZU4pq+uN1MCM1mmEmEVJVpIRk03UtNVlkmBQCLDwuqkoy8DT5
         iKzdxJLRZGDmKsnvwDLB4pV2UCwMHtNfuZiMEoJxG168LAo0H02/8Vr5Xj5T++3jUf6D
         NuUafSzd4uoCH5YbnSMv757AcRg/aFlAVKNruq8/1L+fr7otk44ewBbVq6BPvZKaTDAc
         fvz3jQ39pn7CsYrzq37aR15oP75WOJcJ2nlcit9oi3dseEmuJooTU+vLP+17ykkBnCrJ
         EPLTaCHp1u4lsNPghYnAo7hUk+Jh40LtO2f0DAKy4U0Jq8xcX/IoJcGUrxf7QPNTMJAe
         NDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TmHquM/S838I0W3etX4ILh+MW3CKmq4SAxyvSg/zqqQ=;
        b=zrlW7csYqe601h66LcX1YfMwyAUbeSDGItkcuJ6sb1RxpgnlZN+836Tqn2ydtVlUWT
         4vkST05XKppFpywx9mEutJLAK+vnpTUCZx3NXB26T6fQaH9WexkUBSYOTqhghcliJiCQ
         6QzW13VjXxMfZTCfH94HO7NkWkBT71Qcxeh7AEWs/hhDdpwzUwarnQsirYLsCcez7b5A
         uI+e78DMekqCvssTE+Z+iDtoHeNdSXJdh68deXV2QqCpXGeUA7+09E8UJS0aXB/YePfC
         VPWNoXl5XJ/ZNQKxc2LHgOIQDgmaJRBYY47inLh7agDrBKtTDOTPKed2QVUC4Mk4LuLS
         9CQw==
X-Gm-Message-State: ACrzQf1TExht3Y/1j6Spda7ycaF37exVxJLL9wetMdusp8fy/EQa8dfi
	RO7+Q+N1Jee6rgkW1VPaiXZnlQ==
X-Google-Smtp-Source: AMsMyM5Xy2LGiEAAHSyv+eyoHBGwNAg3gEpPQzXoDqwmf2+HceMc19AxWpGniC+CBQEWDpCG7dd+Qw==
X-Received: by 2002:a05:6512:b97:b0:497:5c43:2d61 with SMTP id b23-20020a0565120b9700b004975c432d61mr12860680lfv.251.1664394773836;
        Wed, 28 Sep 2022 12:52:53 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b28-20020a05651c033c00b00261ccf566e3sm511392ljp.65.2022.09.28.12.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:52:53 -0700 (PDT)
Message-ID: <d03c2b1f-6af1-ddb1-4324-cc5e77faf320@linaro.org>
Date: Wed, 28 Sep 2022 22:52:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 09/13] phy: qcom-qmp-pcie-msm8996: clean up power-down
 handling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_125256_403449_9F11881E 
X-CRM114-Status: GOOD (  10.32  )
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

On 28/09/2022 18:28, Johan Hovold wrote:
> This driver uses v2 registers only so drop the unnecessary
> POWER_DOWN_CONTROL override.
> 
> Note that this register is already hard-coded when powering on the PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 10 ++--------
>   1 file changed, 2 insertions(+), 8 deletions(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
