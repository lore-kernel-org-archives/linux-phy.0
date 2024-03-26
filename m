Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01955C54E67
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 21:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGh/3m4vXqv+thXN3e5VmgUhvtDpIbhG6pd/hPpBGHI=; b=gfzRYW9wW7qViC
	XArbWx8Cz4ci/M/Y3kZMdrC+QtvEqXkT27Ct68LUCIxg3nyI56nd/LeX39kncyO9xH8es9ym7PhMg
	67SaAHBIaMEgjlJ5rzXFl3IaSsg+IpmyLbDjrev44HIGSp99sNgE+VHK3QJNQTdKahjRU3XF9JOka
	MZkrGceIezU+KD7ST5KAxFWUU3fu+H1GjYQfb4mYpzR6lrcoNb1JVi3iW773cea6uLvhMb5eRjsx3
	s8RJBUzDTpTJQ2oLBxWAa5f0vhGpOWaollEDyvLtgsnpUF/vvXNVbrueeZx0JJnLdfsShJchrARdY
	jfHMPVCc7+buJMEjjLDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDwK-00000006Tim-0Ja1;
	Tue, 26 Mar 2024 21:02:36 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDwG-00000006Thw-2oQv
	for linux-phy@lists.infradead.org;
	Tue, 26 Mar 2024 21:02:34 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-515a81928faso3584564e87.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Mar 2024 14:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711486950; x=1712091750; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=09Zf5P5vGBpmvdrWtx4RMS92d4LIttiFFqXDuisdloo=;
        b=TJzR/FyCs+5iHNioJbui8I3pAfxq9WiEEm78OQgCQPjyy8OJ/qy0SrXIXqd8BjSg4f
         /cddGluB8elHu11KKenGA+4rHZ4KucCBC8hL4sU5MOhCYQO4oy/wnS1kxxl4ZXaueil3
         p81Audxt+1xe7FQKz83z+RYJTL/YRJsQs+3WsdscMGXip258EoD04AD4lUP649ncdkCi
         N4QLqLJK4ZVFecd/SLMmUacDoCDhn7UelQYPdDvMq0Tc491fIBCKPl7MzavuyrjaDfpl
         ESXOgNzKlWHdtStEo1v7j7fwE2azlVQjiTusnTEZnGyqOp1MBGSx7NrUQVGI99HIasLB
         r85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711486950; x=1712091750;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09Zf5P5vGBpmvdrWtx4RMS92d4LIttiFFqXDuisdloo=;
        b=qN1wcNJfVqSaruOTjGa+Xqan7fIdypsxF4GqN/E+slbORDe9Ozk3OzAhdwPuM7Xtc8
         8Gft5TiNyVQ4rq2vS3PD0tNhjjfTPDDdSf1h14h3fb0I0HNV91i9HcQFDdxrBORPvpe2
         gHTphgTuGNZmNTbxyv1HFVrYA0Naise6g4aSmolOONTd/bd28AFAVhxVdO3CNzT/lQ5A
         WFN+NgHu90ckntJqrBjoI7k1pkpQHAoRCRBMKInUrXppwHbUZFLr7dvV2BRuI6hWLYUY
         eWTeTc9yD4zWPCqJ+WvC6a0m8TMacNJ8QPp3pGjmaczbTljqguqYXvaAd8PUJHMr8t80
         8p1g==
X-Forwarded-Encrypted: i=1; AJvYcCX7DOQi7qpAuc1xH0BF4QteNp34dPTANP6MA8hGSNU695xY5WxoJWxxqWndpGd0HRZWl43wc3X2kbg+RQGtP2UF0HrCoh5USLjz8ptm1Q==
X-Gm-Message-State: AOJu0Yx8P1sHt+B+pn1Ui0i36CFCzuNqu8A5LRlnQ+Du52p4Rt2TiOv1
	1+Faoz26ZqP/+ovxM+OF9XY9M9HT88FQDRIkF3GQNwfHxYqx7ieiuG2IZ9L/2nA=
X-Google-Smtp-Source: AGHT+IGY+1iLe+1YFwBHQoSnDeRUdrevgbO3flkn+8e6KQZaVK+F/yHcPIiR4gvMFTdxihmoS6apsQ==
X-Received: by 2002:ac2:4ecf:0:b0:513:e21:2a64 with SMTP id p15-20020ac24ecf000000b005130e212a64mr1645468lfr.31.1711486949970;
        Tue, 26 Mar 2024 14:02:29 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id x18-20020a170906b09200b00a47df55cf5esm3123065ejy.13.2024.03.26.14.02.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 14:02:29 -0700 (PDT)
Message-ID: <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
Date: Tue, 26 Mar 2024 22:02:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Bjorn Andersson <andersson@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
 <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_140232_784167_15A06CC8 
X-CRM114-Status: GOOD (  18.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16.03.2024 5:01 PM, Bjorn Andersson wrote:
> On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
>> On 15/03/2024 18:19, Luca Weiss wrote:
>>> On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>>
>>>> The patchset also includes bindings changes and DT changes.
>>>>
>>>> This has been successfully tested on an SM8550 board, but the
>>>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
>>>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
>>>> as expected.
>>>>
>>>> The DisplayPort 4 lanes setup can be check with:
>>>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
>>>> 	name = msm_dp
>>>> 	drm_dp_link
>>>> 		rate = 540000
>>>> 		num_lanes = 4
>>>
>>> Hi Neil,
>>>
>>> I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
>>> haven't had any success so far.
>>>
> [..]
>>> [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
>>> [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
>>
>> Interesting #1 means the 4 lanes are not physically connected to the other side,
>> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
>> or some fixups in the init tables.
>>
> 
> I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
> same outcome. Looking at the AUX reads, after switching to 4-lane the
> link training is failing on all 4 lanes, in contrast to succeeding only
> on the first 2 if you e.g. forget to mux the other two.
> 
> As such, my expectation is that there's something wrong in the QMP PHY
> (or possibly redriver) for this platform.

Do we have any downstream tag where 4lane dp works? I'm willing to believe
the PHY story..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
