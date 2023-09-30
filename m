Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F47E7737B
	for <linux-phy@archiver.kernel.org>; Sat, 30 Sep 2023 17:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAoUemB0KwnIdZ84bzft4Pc4SiUGyMm36sqtnQ21Ia8=; b=3dE4c5TPtwARuy
	00XePiVGQikQGa+eUGUaXy2NxKnY80sz5bzpnZEdraQokzilgliTxDphJ7+dLNxstgVxk6BO2/US/
	0FXsYzkWn46R3Yf86m0hApz4SlwLSNuLBRhGJw18oSmLBiIihJ/oW//M8ky/sOPg9lwrREaPvOwYK
	FI1u2bPKumFWBGMQpRdGz3Qwm7IZV8uSNpv1fG174ZFEnDDFamJHRIWGc7lcxWEqMgDEWQhO9ho4E
	7yuYrDk6nib65PNtCE01vjehoXoQfaJeOzl6jk0TbjDJobdjgBM9B0OsFaTcbzxnb/oRapa+wLP6U
	47M7vtDZO2tIQXSV6+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdjk-009vo2-1u;
	Sat, 30 Sep 2023 17:26:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdjh-009vnA-2G
	for linux-phy@lists.infradead.org;
	Sat, 30 Sep 2023 17:26:38 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50573e85ee0so1196179e87.3
        for <linux-phy@lists.infradead.org>; Sat, 30 Sep 2023 10:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094796; x=1696699596; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TTIc3zh0i/l45HBIix9dYf04hAusch+32uqlKVY6qbU=;
        b=UMl1Ej5VFu1bwjroLpPGAaJ7pn/9lGPRy4rB9DRyUjeJib/Gh1DkxBIP9DYVnqjfUf
         hl60Jj9C9aCZ0F3tLb38vJD8ZnkF2jc0VaEexV1t7+Pqp0Gjlc36vPIWIngEzLzGSzu2
         zpyU24iacaDvnwO0czWf0vHBbFwBhaWMK9zYJxf7yyEREcK6EYq8EmcBJM0M9TszG2K4
         aTUbK7nJsysGVhM/MCvQI4LOUaa9wVcYKR5135NAc4lz6yJ/kFcyiPbxz62iiGvwaTrM
         LJO4SJYmPxYFT/Fns9QDqDoZnShDsxZ+dpF1AB7QRXFl2VubRSziln0rNw94tYcoL15G
         NQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094796; x=1696699596;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTIc3zh0i/l45HBIix9dYf04hAusch+32uqlKVY6qbU=;
        b=aPzFOibLnLHIFLOu7CjTnwLbtoDNyevYKntPRcYj5/mXZtFoWblBVfYc5gRchHtU0M
         CCILPmm22WQGfZN+6F02P5zjtNEYc/jexwSEXkQmHuYYaPiwcRjNZ4FkkpOrnR8fIlAq
         0mNNL8tMW49u5fhUDOOfyue41SrN7VpIxrIaJcsqMBzt1asCu3U5cMwo6d8EeD+MSRmP
         q4K6E4QnqyAP2yT0PjHopQ3JD0qc7SvcukLcE8h+7I9OBcdsBNLumX3QiaCaoBi6YDEL
         zT+TOBWxHqTRwXj68oIx/LAJe8u5ItLkbaA5W0C75tOn5wkXMDZnYXpP22aDEiLyxAGR
         2e8Q==
X-Gm-Message-State: AOJu0Ywdf1a1W0Wcr4jucCw6WZLcIWuwEnXwPoeIqlda5cQF/reMr1+Y
	5KM0D792gX8mkIpXM7bYAks6vg==
X-Google-Smtp-Source: AGHT+IF+QJ1JktLXNhzwX2l7EIixDHi+uB7yhFVUgiL1XWhNJTeQllLnlrNI/3y+6WeiEN8VlSdDlQ==
X-Received: by 2002:ac2:4dac:0:b0:503:eac:747 with SMTP id h12-20020ac24dac000000b005030eac0747mr5603752lfe.47.1696094795994;
        Sat, 30 Sep 2023 10:26:35 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.26.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:26:35 -0700 (PDT)
Message-ID: <1e3af927-52b0-42ab-9643-db4bf3f2d2c4@linaro.org>
Date: Sat, 30 Sep 2023 20:26:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in
 USB node
Content-Language: en-GB
To: Praveenkumar I <quic_ipkumar@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, geert+renesas@glider.be, arnd@arndb.de,
 neil.armstrong@linaro.org, nfraprado@collabora.com, u-kumar1@ti.com,
 peng.fan@nxp.com, quic_wcheng@quicinc.com, quic_varada@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
 <618992fe-4c76-42ef-af47-ee66f74c5bb6@linaro.org>
 <3f89e0b7-189e-4cf7-bec5-b03c903c46b5@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <3f89e0b7-189e-4cf7-bec5-b03c903c46b5@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_102637_768288_EB74DA86 
X-CRM114-Status: GOOD (  12.02  )
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

On 29/09/2023 16:31, Praveenkumar I wrote:
> 
> 
> On 9/29/2023 6:44 PM, Konrad Dybcio wrote:
>> On 29.09.2023 10:42, Praveenkumar I wrote:
>>> Add UNIPHY node in USB to support Super-speed. As the SS PHY has
>>> pipe clock, removed "qcom,select-utmi-as-pipe-clk" flag.
>>>
>>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>> ---
>> Patches 6 and 7 should be swapped, otherwise you may get no
>> USB with this commit. Incremental patches must not break
>> functionality, unless it is truly inevitable.
> Understood. Will swap the 6 and 7 patches in the update.

But just swapping the patches will not work, the patch for the board 
file will break compilation. I think you have to squash them.

> 
> -- 
> Thanks,
> Praveenkumar
>>
>> Konrad
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
