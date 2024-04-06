Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4692BC67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 16:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O2kWpxil+YykaTw5Tdxm1IivcEEhjaMWA3uYEXatgw=; b=mM4fvUPX7aTDyV
	IeO8kt1E0cppLFrJ/uKsYWCvnDnWKjPI3Js1IjzjfTGEzDXGCkjUjOZCI36D8XnzzKqZamoo65oy9
	Rf3ZIf6WGf+5tFsPj5ghy8RYqRn/wfPmw/lwqdhj14abUWeFTiM4VRlGI+sraklqevapqjTiz0Tdt
	uxJy9mVas2NXMQEqD6ZUmwJt8JV4HlkO8wj5zt3UmxXUpu3wyjZbgA4cTLNvpcCti/PEnPQ57hcKj
	/blde9nfnvyKqQMZOzkN8DI7h40tXsR/tq+iF52p34CzRNkzMMev8AuiMurbpzRR1StVO+hEiejj2
	jbst9qfm+yK8MqqxCkxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt9Dp-0000000AffF-3KhV;
	Sat, 06 Apr 2024 16:48:53 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt9Dm-0000000AfeX-3g1G
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 16:48:52 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6e675181ceaso1948653a34.2
        for <linux-phy@lists.infradead.org>; Sat, 06 Apr 2024 09:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712422129; x=1713026929; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DKheQqCooEORfEAc4BfVHAN7JSAJma1nB9maY1cQRV4=;
        b=edO50Jiq3pO1601P/3l4H8j+4nalDFQrDqtsIgdJQPhmxLhWFujuY15Kde84OPxE63
         sPIHLU9mZo73TvS9xwEhJ01gbMRQGrZ8mqnJQPqljEZBcQYpx/VU885K14BzZCQGtiEc
         3PwWtpaATdM1rNiyvG7cFQLZRsnjwrNdr1P7HYke7VguUam5C172/e7O4aK4aIjxtW0b
         usvdwpyQzz6DPjAkFq7EUlQLwH8j+sG1TKkq6iUWAijnfHEdDGJUnnS+qR6Mfehx130v
         adxe66T9QU36jmcG8ACpJJJIWt8LV553FLXqLCNMIRAJ+R84WnD6MXmhzC+g7pALgVhL
         uvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712422129; x=1713026929;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKheQqCooEORfEAc4BfVHAN7JSAJma1nB9maY1cQRV4=;
        b=q5qn1cZJXQUpyZRPva67OZ7kt2V6XzqV+LQ6yNR6Xv4tjwQyfaaxeV1vdxyfrZ8/Am
         v3fqLitKr7bKs6Lnr6DCGqTY9WwstQ53efhCwzagh5CcMS6TA9Pb+glblR38tAc+8xyl
         C6wU1zfqujzpzAXbLAqWbd1z9u2wtQgy9hGTdHr8CdadKiXEzqfna3J8c5oQBHaCIgAT
         PyPlfpHFAENti6dBMGBodJYWAqs9/iDOt9UGEea/hRBnU4URymLxq0vnZOdQBUTPb5/V
         jHHTB81oWyzKis/jVPL+sgFiMm1YCigwwMzHsjafe4P7F+XrUCQ4OCyBACfLZuNT+5Kc
         Ef7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2aWzW4aF0m+sEnBH1pGC3XTmXLgx2Y9TGn3VdnI+GEFb7YPfbjEtYViRugO3bZs2GNU+x5Ti4oHRa31T7v0TWL57BXMeUU/wq9VOnNQ==
X-Gm-Message-State: AOJu0YwFy7G10z3rCV1oja8movILZ2DKX4RbtJsOvYFsXD7DZ5Z03tQs
	ETMRtL9bikUAOzLRgP/QPZj4yRoppJsiAeE6jOitNV/ii0yWOPss
X-Google-Smtp-Source: AGHT+IHQhCgoz1D7z2Bflhbg39hCU1gZZwVTvOMMq3IkNcQxp3kf0snzpBO3qyliIQ0NwjSLyvPMJw==
X-Received: by 2002:a05:6830:11c5:b0:6ea:f00:5c2c with SMTP id v5-20020a05683011c500b006ea0f005c2cmr701920otq.35.1712422128821;
        Sat, 06 Apr 2024 09:48:48 -0700 (PDT)
Received: from [192.168.7.110] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id i4-20020a4aab04000000b005a48e64c699sm821908oon.40.2024.04.06.09.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Apr 2024 09:48:48 -0700 (PDT)
Message-ID: <45e1a982-fd59-48de-ace4-d6b6e821189d@gmail.com>
Date: Sat, 6 Apr 2024 11:48:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2
 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, ansuelsmth@gmail.com,
 robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240402192555.1955204-1-mr.nuke.me@gmail.com>
 <20240402192555.1955204-6-mr.nuke.me@gmail.com> <ZhEMB0HP0g1YwPvE@matsya>
 <CAA8EJpqYV537aCbkwTRUeZJzcn4wMXFqGxQHSdDFraGV_2zbQQ@mail.gmail.com>
Content-Language: en-US
From: "Alex G." <mr.nuke.me@gmail.com>
In-Reply-To: <CAA8EJpqYV537aCbkwTRUeZJzcn4wMXFqGxQHSdDFraGV_2zbQQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_094851_031756_E5F913C0 
X-CRM114-Status: GOOD (  15.00  )
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

On 4/6/24 09:37, Dmitry Baryshkov wrote:
> On Sat, 6 Apr 2024 at 11:47, Vinod Koul <vkoul@kernel.org> wrote:
>>
>> On 02-04-24, 14:25, Alexandru Gagniuc wrote:
>>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
>>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
>>> being reused from IPQ8074 and IPQ6018 PHYs.
>>>
>>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>>> ---
>>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>>>   2 files changed, 149 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index 8836bb1ff0cc..f07bd27e3b7a 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -487,6 +487,100 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_misc_tbl[] = {
>>>        QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
>>>   };
>>>
>>> +static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_serdes_tbl[] = {
>>> +     QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
>>> +     QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
>>> +     QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x31),
>>> +     QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0F),
>>> +     QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0F),
>>
>> Lower case here and everywhere please
> 
> For hex values

I will these updated in V2. Thanks!

>>>   static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
>>>        QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>>>        QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
>>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>>>
>>>   /* list of clocks required by phy */
>>>   static const char * const qmp_pciephy_clk_l[] = {
>>> -     "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
>>> +     "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "anoc", "snoc"
>>
>> How about older platforms which dont have these clocks
> 
> The driver uses devm_clk_bulk_get_optional(), so it should be fine.
> But the more important question should be why the platform needs
> anoc/snoc clocks here.
> 

I got the info from the downstream 5.4 kernel. While I don't know why 
these new clocks are required, they are needed. Omitting them will cause 
the boot to hang.

I could rename them to "snoc_lane" and "anoc_lane", if you think that 
makes more sense.


Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
