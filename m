Return-Path: <SRS0=M3Kk=PE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C02C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:45:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43E9561247
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:45:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43E9561247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZBQPGcXmiJdosprRqv1LlI4FzLeOIF5SiIAeKAWunbY=; b=0iGE/ymBqPd5VKHP/h8fnxb/yL
	4pGOTTv75wH3JH4YhSsyUWpnuOxgGpwst5Xb5nNfVdLwnUGb0Q5vRprPZ9sb3fPa55StSb54SwGWx
	kMUXb0Uokg3YAsBrm2bSDylkMCBKXebnZB8qBXIcDynyTRLWai2Q30qiPcQbd1lw75YsEMId2e9Wu
	/UjEp2KwZlSfNn+yr6sjmiWnGmaioFVMSzCCy6uH0GQRIE/QDCHXvg1WjwL+HnAXA7gwDt4vfevKR
	tWDOlivE9G9QdcsNGS0zZeJ82ySLWkWmSSgGbhO3ld4NWGFgLcIG2BXNdte8wFB31Yf49JGJklVuV
	CN4eIEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbtMx-00BUgW-N7; Sat, 16 Oct 2021 23:45:39 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbtMv-00BUg3-4r
 for linux-phy@lists.infradead.org; Sat, 16 Oct 2021 23:45:38 +0000
Received: by mail-lj1-x22a.google.com with SMTP id s19so1226545ljj.11
 for <linux-phy@lists.infradead.org>; Sat, 16 Oct 2021 16:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D0c0sgb79W5e6dJ7vSSEO8I4m/cuKD5ziHmuTHpjwPk=;
 b=gACon7vaUk14p+gdXfz3V/FTLj+wJ8H23Q9GRR3voWv10V/VRq6kmtajjh+F4LLEdM
 9EpTkEfEfWh75rm513hzPHusyJ9MikzZn0OsCw0nt2wR006akapPNRau+DNJbbVbNJX6
 hXk1nO9wvFXW5oqk0lJW2xhQMQOhwSvVTZ4U9YCPJuAUUwoyK4hGamLTSLq/eLa8gDmi
 AiYq1SBwkPHBbWU5iQSCIhvljAX2oWRkL8ymMWlxM5HCbZ12eqZmepVmqJ8MiG3sDBWN
 E3GuQ7t5ZsTWSRC96Pg89Bq4OX2hZ2WbIF8kVPkO9Fs2oNsPcTA2BNN5jqXgdT4Jat2a
 73Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D0c0sgb79W5e6dJ7vSSEO8I4m/cuKD5ziHmuTHpjwPk=;
 b=HrKiE8+pby45p7CcfEkWHa35iLsKc4n9J+jO0y7RCujoAobAF+FdJZjUzwy9gPh+Qq
 R8wwYSct0+1BlEFBAwPTrA27ts+XkFcErm7YE+6zxq3vlwQdvqKFHDoohAOoibixfKzT
 7SQ0GXLtNGfR10cHKQrH26M6vuPxBGMUUWvIal5Lv02DRq7PqFp7hQBsWTNJBSNnn5UX
 POPuRLudMjghpiy+l+7f63GfIp69W8zPgTUjBXgldbGp7T4D4zJedPAMSL6t+jtj3Z9w
 HzDSSbOd1YnKei1H8Sr6fskTUOAUoJy66J6kiiSnMAhOppKkTBhS6y8b8KkWIuX3bc3t
 huOQ==
X-Gm-Message-State: AOAM531W8En0Lu2/+rXevE0ULj1yND5a0PO5Um1foKMxbMI+wqZ/uTWY
 u7huEh9Wz2vp3TEYuP4WSHgW8A==
X-Google-Smtp-Source: ABdhPJywd/FL7ps+XWxoNM5azL4XXID96PYjk39vlLDUEv9J+jliv9N+aAwPxEMM4MRJLR46qrVDLA==
X-Received: by 2002:a2e:b611:: with SMTP id r17mr21958949ljn.336.1634427934373; 
 Sat, 16 Oct 2021 16:45:34 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id v2sm988001lfo.119.2021.10.16.16.45.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Oct 2021 16:45:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] phy: qcom: Introduce new eDP PHY driver
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 linux-phy@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>
References: <20211015221312.1699043-1-bjorn.andersson@linaro.org>
 <20211015221312.1699043-2-bjorn.andersson@linaro.org>
 <CAA8EJpqGbiy_d1_RUoPiT0Jz0CgC5WaekkuJFXyzU7z7rkZChw@mail.gmail.com>
 <YWtbrAlV9x3rLTsQ@builder.lan>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <4ec86f4c-8c7c-d654-2cfe-9d879fe24950@linaro.org>
Date: Sun, 17 Oct 2021 02:45:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YWtbrAlV9x3rLTsQ@builder.lan>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_164537_256812_6AA4D636 
X-CRM114-Status: GOOD (  15.67  )
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

On 17/10/2021 02:09, Bjorn Andersson wrote:
> On Sat 16 Oct 11:36 CDT 2021, Dmitry Baryshkov wrote:
> 
>> On Sat, 16 Oct 2021 at 01:11, Bjorn Andersson
>> <bjorn.andersson@linaro.org> wrote:
> [..]
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> [..]
>>> +#define QSERDES_COM_SSC_EN_CENTER               0x0010
>>> +#define QSERDES_COM_SSC_ADJ_PER1                0x0014
>>> +#define QSERDES_COM_SSC_PER1                    0x001c
>>> +#define QSERDES_COM_SSC_PER2                    0x0020
>>> +#define QSERDES_COM_SSC_STEP_SIZE1_MODE0        0x0024
>>> +#define QSERDES_COM_SSC_STEP_SIZE2_MODE0        0x0028
>>
>> I think we might want to use register definitions from phy-qcom-qmp.h,
>> so that it would be obvious, which generations are handled by the
>> driver.
>>
> 
> I reviewed the all the registers and concluded that the QSERDES is V4,
> so I included phy-qcom-qmp.h and used the SERDES_V4 defines instead.
> 
> The registers found in the PHY and LANE_TX blocks are specific to this
> PHY, so I'm keeping these here.

Yep. They look like V4 DP_PHY registers, but with one extra register 
inserted in the middle.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
