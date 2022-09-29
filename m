Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1908EC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 07:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqM0eQr2hIxUwyfF2RVBcN9gloj7pOlE8h6gsThhhOI=; b=0uGJmCqj8vuxzw
	IiCDBfy5lHNHSiK6OPwhGfYiQbTwuIJf+Vr2+yOv/4jVs+K06cWcYdrsW/o+sqKSRWVPaZikPhSWg
	f3Lkf3/UM1vainMLoFJU77qXsH3e3ciOk4lL2H+zSKWuziL6x6YpqVLlDssXOyPK23O+U0gI81xe9
	tq+goJG03UGI4junwntLsb2RemaP2z5iTABv9NhlpLsrPnZO0j/uZ6L/AtjdEymJrSyDqSJZSkWzs
	LiCb2I9Sf+Rt2tKXC24y1UM2b0Spv5C7Ydr3Y1YJ3A3r1dvhcJ1OkEUqK7phhYy/Jm6Fkj+IyrT7O
	xbthhrr3K51niyRrAibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odoP5-001feh-Fu; Thu, 29 Sep 2022 07:56:19 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odoP1-001fdz-QP
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 07:56:17 +0000
Received: by mail-lf1-x129.google.com with SMTP id a3so1025757lfk.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 00:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=5I0KFer6CMq9bS+qb57rtF7Jxe3pkwXN2psBdqfUQXI=;
        b=Ck6MPZt5fmCodIEyDLh6E41lYpwwhdGCmZyvW+lbk2zOEhdtQQncjNQxhIZmAQ0qjG
         TeUEaPob21B1EMB28Uh742fObyVjUHI7G8/goo6JIe6jQFrLj493AJTbV6r8KQfjRpbw
         q4/SpWuUHNMw/PNhjUIORx+/r1CG2oxz3d43fivIIhQLoEYwPpy3hOZTXvvhM2ebtG8P
         j+GAvQBoQwLYtff6fXJdKrlX2JBFTOJ+CIugNaUl9z7KdAlX6gDFDgrZPWZmcSZJfTrq
         N4LP+qotWxPz4A5iZeVZ0WrP7jo1nSQ9Fmh4/ATIzgnuixkHnRMeZ126/dDY/HBhfffQ
         qG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5I0KFer6CMq9bS+qb57rtF7Jxe3pkwXN2psBdqfUQXI=;
        b=pi/B/Zfa8qYkoI0O8npyquFtOFL3MZwAIsvyJj9wQKd7yDCIAnzJNDJo2itl3q5NCe
         tgIEgadUl6iiAEXf7I+3P4bhPdyL2JfiTJcFldnIdbyyvcMHpHwOlTKbrOWgxsA+QlKZ
         Vz4CeaUgyNSTGaAsvnEl4wXKPXeN90w2WO3l9SCGyNEv0HxqozmAfkMcM5P6IP75qudW
         g57H70fO0HMMxqYRRdwW7Y083zIQMQwSW0G+eyFTjKFWrOEclBx1AgSLGSxjUBlN44Qq
         ZsvjEZFcAn9rEN77uyPfvE44mDRu3PLodxqFcNv4MGej/rE5NShZj7me5LBZTPuaYzaG
         pO3Q==
X-Gm-Message-State: ACrzQf12MMH9IyYzArytbXiMpsB5d9DXh2pA330fgQguy02zRrCcUg0l
	86aHaeb1N8YuoIG1VDdlDyETrA==
X-Google-Smtp-Source: AMsMyM4ESrsuCcFeLMKwFM4lzuOI4iKNeMYoJjszgvxbAOlpQrqJOj4oMRQ2+lGzJESEEKyHlT8fJQ==
X-Received: by 2002:a05:6512:31cb:b0:49f:c2dc:9986 with SMTP id j11-20020a05651231cb00b0049fc2dc9986mr812354lfe.549.1664438172091;
        Thu, 29 Sep 2022 00:56:12 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id cf33-20020a056512282100b00498fbec3f8asm707549lfb.129.2022.09.29.00.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 00:56:11 -0700 (PDT)
Message-ID: <e516bd2e-baf8-7ecd-cc59-9e7c2af64918@linaro.org>
Date: Thu, 29 Sep 2022 10:56:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-7-johan+linaro@kernel.org>
 <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
 <f9d0fb60-3e62-8f55-015e-88ca2e209323@linaro.org>
 <YzVFQikkJmTDlg4U@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YzVFQikkJmTDlg4U@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_005615_988023_42FFA275 
X-CRM114-Status: GOOD (  28.52  )
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

On 29/09/2022 10:12, Johan Hovold wrote:
> On Wed, Sep 28, 2022 at 10:48:40PM +0300, Dmitry Baryshkov wrote:
>> On 28/09/2022 22:10, Dmitry Baryshkov wrote:
>>> On 28/09/2022 18:28, Johan Hovold wrote:
>>>> Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
>>>> PHY is powered on before configuring the registers and only the MSM8996
>>>> PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
>>>> initialisation table, may possibly require a second update afterwards.
>>>>
>>>> To make things worse, the POWER_DOWN_CONTROL register lies at a
>>>> different offset on more recent SoCs so that the second update, which
>>>> still used a hard-coded offset, would write to an unrelated register
>>>> (e.g. a revision-id register on SC8280XP).
>>>>
>>>> As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
>>>> the bogus register update.
>>>>
>>>> Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for
>>>> sm8150 USB") added support
>>>
>>> I'm not sure about the particular fixes tag. Backporting from the split
>>> driver into old qmp driver would be a complete pain.
>>>
>>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>
>> After digging some more, I stumbled upon the commit 0d58280cf1e6 ("phy:
>> Update PHY power control sequence"), which puts explicit register write
>> here, telling that 'PCIe PHYs need an extra power control before
>> deasserts reset state'.
> 
> That's the commit I'm referring to above.
> 
>> I can confirm this with the register tables from downstream dtsi. E.g.
>> consider sdm845-pcie.dts, pcie0 table. The PCS_POWER_DOWN_CONTROL is the
>> register 0x804.
>>
>> The programmings starts with <0x804 0x1 0x0>, writing 1 to
>> PCS_POWER_DOWN_CONTROL (which if I'm not mistaken we do not do at this
>> moment). Then after writing all the serdes/tx/rx/pcs/pcs_misc tables
>> comes the write <0x804 0x3 0x0> (which you are trying to remove here).
> 
> The PHY would already have been powered on with the mainline driver, that
> write has already happened.
> 
> Whether or not PCIe support for SDM845 has been broken since it was
> first mainlined almost three years ago is a separate issue. I assume
> Bjorn tested it before sending it upstream.
> 
> 	421c9a0e9731 ("phy: qcom: qmp: Add SDM845 PCIe QMP PHY support")

On SDM845 PCIe0 is used for the WiFi, e.g. on the RB3 (dragonboard845) 
device. The PHY definitely works with the upstream kernels.

> 
>> Same sequence applies to the PCIe PHY on msm8998.
>>
>> Most newer PHYs have the expected sequence (of writing 0x3 to
>> PCS_POWER_DOWN_CONTROL) before writing all registers.
>>
>> As a short summary: unless we get any additional information that 8998
>> and sdm845 tables are incorrect, I'd suggest adding a conditional here
>> (ugh) and using it here and in qmp_pcie_init() call.
> 
> I see little point in doing that unless you dig out an SDM845, confirm
> that it has never worked with upstream, and update the init sequence
> first.

Digging out an sdm845 is not a problem per se. It works, but it also has 
an additional regwrite that this patch tries to remove. I will try 
checking whether it works with this register write being removed or not.

> 
>> Vinod, Bjorn, do you have any additional info?
> 
> An explanation of the split POWER_DOWN_CONTROL updates on MSM8996 would
> be good to have either way

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
