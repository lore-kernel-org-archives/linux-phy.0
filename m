Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F8ABC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 13:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMEco7Yl2PD58nCwwUkmcNO2+jOJ65OLzqD9x9bSxE8=; b=J3FxXWUDmoMh6J
	hHwW3sTqP2pOuujv3gwF4fzqiCpV2N3WTCkkg+BLmi7OboXo/p5MkfQYIifLtwCTKpbh1VmgoexSn
	FISWI8F0O8m4RocfQERyYfJeaWRrx2Kh8wEvZySlIYlwp6Bd1CwvtNGV7RnDWnj4rTcOT7a7xGvsn
	BWJlzCqHVfoxWlHdqypjkcCcMCoIpr6cnGzos1II/6kxMEVcbFjPiwTiHZYDZn/I+sTwg+arRgEVh
	Ij0o0lJa/JgAV1I5OI1kFnrMt70fv3dMoty8mfJBVRUC3dBfHFyMJDFCWPN9cwahb575TEMRuAK9M
	l/FJOsmH7pfrOIOtOGug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFoi-0000000HZ9P-3sRF;
	Tue, 23 Apr 2024 13:04:12 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFoV-0000000HZ6f-3p1P
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 13:04:11 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-51bae805c56so634439e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 06:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713877435; x=1714482235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kvy8LO+cIMm+HbZIf+ZYGi2YekLnZkMXi2GFq6BTKfQ=;
        b=G7V2XxUCCJbr3cVeLeSy/sIk+/9kLsLUDFpFUYjvst8Ba3cYC0LxDudLLQ3NTHOIZd
         ERVDLRFb7ER7pCqMRgXj9wE+xH01sz//xlXMl83oVY+7cT4Uvc5ze09F6L8A8VJlajVt
         JIzNbV9mhgangc3XSZ3ZkoGrhRe6B/I5MclnDfWFIUe/RvxRFbqBPMy0yBYRa+2W+VsQ
         6HPLrx4kcAam1uYhvLIxV5mdT6NuSQ0ZXhxtJzTj90CF3JmBmh/ZeBO5Rl7mWRuK8m6l
         Mq9oROp5GMl/1iDZTyxUea4so294wlQoxxNH17rMsOWltaepkZ71b/FqX4U+OP1CDh7e
         C4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713877435; x=1714482235;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kvy8LO+cIMm+HbZIf+ZYGi2YekLnZkMXi2GFq6BTKfQ=;
        b=AAMDKORKRmWMWyMvJLxC6BYc7VRdaVWN0UF7y8pVU0ThviK2wigb59LlU9QDO9btPj
         s1ULjOE5wTKMTI6CIDKTy445aQRJP49vcj3K2vDtuySADjd/SvnOLIMR6I0P/wF9x/OB
         sNulfYb1NAwknbagzZ6xTiyk5p6kFqf+a7M7yzeyrB8eA+3NN6jKUUFm6KKwC4+T+e5I
         8U18Z0g6xAkJig6GMJ784JaShUdB2qodDvWbnyqDRg2eh/H7mSfHbgNiQfTdIUNmXvqN
         IuRtgOPnrOqWrP3q4oGFnD2o16T7rgeMBieqU8OdPoUMJsxEfdEjiiGOajL1aLSXoRdK
         uKyw==
X-Forwarded-Encrypted: i=1; AJvYcCUe8ArndrVJbIsSmI/n9fSuFprh1umTslSSuAtKRY3PpNl2fnihms4wXmCEbj2XlJNtSwuaCm7a+BcpyWwv6uWiZ365FKzbHBegM8fh7A==
X-Gm-Message-State: AOJu0YymIIbJqp+/GOSORbCm11ChP6N1ia965Hrf8/UCNf9P7VDWOwfn
	wxTxxQYhoazljiUz/yeMjnWVky9rFZ7WsMVgW+Dh3a2hFDox1QD8Kn6EMVW5PsQ=
X-Google-Smtp-Source: AGHT+IGpySdaQcCROpQ5r5e9TsmfSInd7LVYx0iPlnKIMODKT5YasK7WcFwD6VkU7AE9jDrwMyk+5A==
X-Received: by 2002:a05:6512:36d2:b0:519:6c2d:9bdb with SMTP id e18-20020a05651236d200b005196c2d9bdbmr7266957lfs.43.1713877435006;
        Tue, 23 Apr 2024 06:03:55 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z4-20020ac24f84000000b00513d244005asm2019862lfs.199.2024.04.23.06.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 06:03:53 -0700 (PDT)
Message-ID: <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org>
Date: Tue, 23 Apr 2024 15:03:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Luca Weiss <luca.weiss@fairphone.com>, neil.armstrong@linaro.org,
 Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
 <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
 <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
 <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
 <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
 <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_060407_236770_AED6293E 
X-CRM114-Status: GOOD (  18.93  )
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



On 4/5/24 12:19, Luca Weiss wrote:
> On Fri Apr 5, 2024 at 10:08 AM CEST, Neil Armstrong wrote:
>> Hi Luca,
>>
>> On 29/03/2024 10:02, Luca Weiss wrote:
>>> On Tue Mar 26, 2024 at 10:02 PM CET, Konrad Dybcio wrote:
>>>> On 16.03.2024 5:01 PM, Bjorn Andersson wrote:
>>>>> On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
>>>>>> On 15/03/2024 18:19, Luca Weiss wrote:
>>>>>>> On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
>>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>>>
>>>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>>>> PHY is not powered off.
>>>>>>>>
>>>>>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>>>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>>>>>> this will leave enough time to the DRM DisplayPort controller to
>>>>>>>> turn of the DisplayPort PHY.
>>>>>>>>
>>>>>>>> The patchset also includes bindings changes and DT changes.
>>>>>>>>
>>>>>>>> This has been successfully tested on an SM8550 board, but the
>>>>>>>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
>>>>>>>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
>>>>>>>> as expected.
>>>>>>>>
>>>>>>>> The DisplayPort 4 lanes setup can be check with:
>>>>>>>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
>>>>>>>> 	name = msm_dp
>>>>>>>> 	drm_dp_link
>>>>>>>> 		rate = 540000
>>>>>>>> 		num_lanes = 4
>>>>>>>
>>>>>>> Hi Neil,
>>>>>>>
>>>>>>> I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
>>>>>>> haven't had any success so far.
>>>>>>>
>>>>> [..]
>>>>>>> [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
>>>>>>> [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
>>>>>>
>>>>>> Interesting #1 means the 4 lanes are not physically connected to the other side,
>>>>>> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
>>>>>> or some fixups in the init tables.
>>>>>>
>>>>>
>>>>> I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
>>>>> same outcome. Looking at the AUX reads, after switching to 4-lane the
>>>>> link training is failing on all 4 lanes, in contrast to succeeding only
>>>>> on the first 2 if you e.g. forget to mux the other two.
>>>>>
>>>>> As such, my expectation is that there's something wrong in the QMP PHY
>>>>> (or possibly redriver) for this platform.
>>>>
>>>> Do we have any downstream tag where 4lane dp works? I'm willing to believe
>>>> the PHY story..
>>>
>>> Just tested on Fairphone 5 downstream and 4 lane appears to work there.
>>> This is with an USB-C to HDMI adapter that only does HDMI.
>>>
>>> FP5:/ # cat /sys/kernel/debug/drm_dp/dp_debug
>>>           state=0x20a5
>>>           link_rate=270000
>>>           num_lanes=4
>>>           resolution=2560x1440@60Hz
>>>           pclock=241500KHz
>>>           bpp=24
>>>           test_req=DP_LINK_STATUS_UPDATED
>>>           lane_count=4
>>>           bw_code=10
>>>           v_level=0
>>>           p_level=0
>>>
>>> Sources are here:
>>> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-5.4/+/refs/heads/odm/rc/target/13/fp5
>>> And probably more importantly techpack/display:
>>> https://gerrit-public.fairphone.software/plugins/gitiles/platform/vendor/opensource/display-drivers/+/refs/heads/odm/rc/target/13/fp5
>>> Dts if useful:
>>> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/refs/heads/kernel/13/fp5
>>
>> Could you retry with this applied ?
>>
>> https://lore.kernel.org/all/20240405000111.1450598-1-swboyd@chromium.org/
> 
> Unfortunately I do not see any change with this on QCM6490 Fairphone 5
> and 4-lane DP.

Hm, could you like dump all the PHY regions up and downstream with the display
connected (and nothing connected) and compare them?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
