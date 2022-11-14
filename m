Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 429C8C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzD/0LabO6hRl2VLS2aLKpkhBzxGsNdyO31KLa0RsSo=; b=rhvUg0TH1trKWT
	3lrYiumvz/KkTAUOph9Jbakw3W+L3w2Y+Ne+Rd3A8Fd45KRHl2vTt/3IE5nF3FfQvud7pBgxQ5WCr
	49HoE74zcfZ5XTS7R64vShkKePZKRqzwiQcqQI6L6fBop0PZR7ONZZQBKwAcnZZMC3JWdDBPSFfh0
	s6FnXNPlE+UHLOctdccjKjcALRUF9WSFlaktm9WT96NXb0xrZVtoWwwXqqp38cmhRx5rmN5/ywejt
	h46qwITpZ49lSa5lEiFJ43x0EDJlEIfhiJeec+zHu66twWY2gIdX601Lvhl6LLnROtfWvKyrBivxL
	F4nTZNT2wZaXzIPpfT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubXo-002InZ-Gy; Mon, 14 Nov 2022 15:38:44 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubXl-002IfZ-OP
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:38:43 +0000
Received: by mail-lf1-x131.google.com with SMTP id a29so19888331lfj.9
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 07:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mOEG1//p1argvxLaN4lEBl+c5SYhnpTC5Y7qXDI3ncw=;
        b=qTlwph1jEH3KELFPFwz1JXAbic1+PYa+nVKg7gi0wwHS8yEv8VHdj0TKmytCtvVxEy
         yBBJxvXe01l6hFpQ00zZLU/XWyiV01dmUXXLu7lCnoSbjZyb2HeB9adFfUvaRNE/G4S2
         v6w97ze9QKb+QHuRSmMt53gvwN39T3latGxLYfHl8O2a1E7DpRzi+Wp1CAOyhYpkhJ7S
         0Sf17VlXIxT0pXYPGVkm6MoqVcoAeFTmFXbc7dbZG/JcnbukDG0UdoWMXApPnnOGpDeZ
         zOkQhlzBGZQ7NSm8brURS78jfPDZzlWj23bDsWaJvlKUBN4LKdsVn7TuqrMQj6XjZbZl
         XiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mOEG1//p1argvxLaN4lEBl+c5SYhnpTC5Y7qXDI3ncw=;
        b=KNf50smr+lMn+0DBh+DN3bAM9bUhUQ/QQg2aua8wAYx/l9BkpywJ2hByHoXdlpmV6N
         i3WjQM6F0KmDg2WwHQ/Bvf/ycTchjVXaQ++B9sLIkIaM2HiWW3kflijyyEaI3uiNT2Sz
         OS8RliCmgVgUidTlqj8VufHzCZvCXDoyRP0Ml4Zd8pf8pB+5SoA3qoPWe6QN9WVBs1rJ
         yeValS0+NwIKlSaiB5yHseeEADOsxtr0/NOmXbVB0tOxt6Lws9laRvyB3qLyyhARp4Sz
         QLpiBR3SeN+SK7IyD3roA0zPxHfUyd9Onp29Ompz6SlxB7KWUFPOTL8WKVARBVeNE+PW
         DKkQ==
X-Gm-Message-State: ANoB5pk0Fu08rb8O/u2M+lf9UV3sbDSjaDKR3Aj+EHreBJzAUnGnD01n
	NmyRGruYzrTy4F9TP4AMT9S9wX8vs/SY/g==
X-Google-Smtp-Source: AA0mqf7+3xN1f8t+uzuu1OEu7CQSB8unLeS83Qd0QmP57uok3EDsdUSFFPnirNUlE1gFGiJMveKDxg==
X-Received: by 2002:a05:6512:2097:b0:4a9:39f4:5790 with SMTP id t23-20020a056512209700b004a939f45790mr4584562lfr.192.1668440316948;
        Mon, 14 Nov 2022 07:38:36 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b00498f32ae907sm1872273lfs.95.2022.11.14.07.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:38:36 -0800 (PST)
Message-ID: <e1140358-b693-c23e-68dc-787bf6aa2422@linaro.org>
Date: Mon, 14 Nov 2022 18:38:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 12/14] phy: qcom-qmp-combo: rename common-register
 pointers
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-13-johan+linaro@kernel.org>
 <f3ae781b-2046-e1be-564f-9de74107f000@linaro.org>
 <Y3I6lN6UTHg2ozNP@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3I6lN6UTHg2ozNP@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_073841_828735_5A37A5CF 
X-CRM114-Status: GOOD (  18.08  )
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

On 14/11/2022 15:54, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 02:31:27PM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 12:24, Johan Hovold wrote:
>>> The common registers are shared by the USB and DP parts of the PHY so
>>> drop the misleading "dp" prefix from the corresponding pointers.
>>>
>>> Note that the "DP" prefix could also be dropped from the corresponding
>>> defines, but leave that in place for now.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
>>>    1 file changed, 12 insertions(+), 12 deletions(-)
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>
>> Note regarding the last phrase: I'd suggest leaving the DP prefix in
>> register names, it makes it easier to visually note & verify the
>> register block.
> 
> My point is that "DP" was never part of the COM register block name. The
> confusion likely comes from the vendor driver naming these defines along
> the lines of
> 
> 	USB3_DP_COM_POWER_DOWN_CTRL
> 
> Here "USB3_DP" is the common prefix for all defines that apply to both
> "parts" of the PHY so the corresponding Linux define
> 
> 	QPHY_V3_DP_COM_POWER_DOWN_CTRL
> 
> should either include "USB3" or drop "DP".

My thought was that we already have too many _COM_ defines in the qmp 
headers. Having QPHY_Vn_COM_something would make it too easy to mix it 
with QSERDES_Vn_COM_foo. Thus I'd vote to leave DP_COM prefix in place. 
While it might be not fully accurate, it serves the point of identifying 
the register block.

> 
> This becomes more apparent on SC8280XP where the corresponding define
> is:
> 
> 	USB43DP_COM_POWER_DOWN_CTRL

I'd still use something like QPHY_V10_DP_COM_POWER_DOWN_CTRL here.

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
