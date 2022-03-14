Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68963C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1a+1Dd3Id1RpErugEIxxiQjl3ZM2STOBpw9D4ZsCtA=; b=c9X+A6CC/MNlPd
	7jreMAyEyOCSO12Iis8OFBk7OT1k1gDprMO3NTh3NqiUvsdJCrg4i8967c79bCa7azGObKx8msdvn
	8FB3A7DDVqNsTbKEbMobC1gwpD66LtvldYeoozPESH+4BWHFNHoE+C0bHqbEl3eJBhzq0IjC02wxl
	QtKZVO+vsKZsUmOWAO3RO2MSXLzKPPfk5kUqBWNX6YR6uiw/ep702fpqHwz4gHRzbrRaE6+326+pJ
	bOoCDIPDniAvIn04I3uJ6XJtCzmojGARggBh8nh0+d8oCOpEnX+dP8sOhdnNC7KmriN0a8q46EzEQ
	PfCiQ+loSV0taWvzDiZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTils-0058Fb-SC; Mon, 14 Mar 2022 11:21:52 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTilq-0058En-GK
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 11:21:52 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECD5E3F79C
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 11:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647256904;
 bh=W9VMt9fitOMhu9PbN4y31ZgV44fBSNG49uwM8HTR7CI=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=tWss6L4HR21RZIP6JsTVHGGfw/PrgxKVFRQKjShspD00r5v8U1kWQ+9ZlVEgVI8dV
 QN2n37FfCny8rMQS/1RaHa3mi8B3D4MCHqon4+62wYNIcfdL1BTD8CuKnVGiKxytkp
 lo108NXLSuADaorliq+7ayxq3wF5C5Q2zNOsybQhMQKxLZi18xEeQ2e58rBoaLjevr
 eYPXgngzKGkdftYe4QD9qZbXU2Ua8DmzY/WA9JbPwV319V6w6y83++1kjuvSbmPIGQ
 vsMjQMIf++8H/qYGsUV2UEraaullfKe73YoY9T0H+lOCV6efWw/TDkHxLO46C55+iN
 kYNuuSU+gSOWw==
Received: by mail-ej1-f71.google.com with SMTP id
 x2-20020a1709065ac200b006d9b316257fso7814618ejs.12
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 04:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=W9VMt9fitOMhu9PbN4y31ZgV44fBSNG49uwM8HTR7CI=;
 b=Hne/RhY7PYXA3AiGyX9HpDxzsvusE4AOEcX+v0FE6SSxuMPv67OfotM4EAx5wckOSY
 tS0mpIQWyqVpUSn4fpzsNROxGUh6UwIIJsZsObK8FaMbF8fMCrk+wLpRFPsXIWGHmizd
 H2mhtjETa6Cv4MyiP0j/LeYRJ9L9q3LXPJGGGKMwldIVtZWAURz4ZProFoxi7isMn9oQ
 qUUFjERx7edW1RZM70JO/JCyD3+7etdHk2TDOM1NcQ1WWWU9GH7CwZz2CJWDWHAotQYP
 VDUEDjbRR2xubcGVLLsQITYg1jNad1qZTCEV2fImA6ehLUcT2Oojd1KorNtrQ6sJMmyF
 g+SQ==
X-Gm-Message-State: AOAM5309xgmWMPGNGlmMgFAfHDr3sr9nM//dQGpAh1QdoVY23ma+8SZk
 Hefk0wY4G/RxhhYRimlMhtsA4PdSPmOOd7SBpb5F7rr9SwGPUINoyB2ltIKazatTE6EbVf75kNW
 Giif190PA74AK8V1NJoMcmZ3Emx/mibQO7EaO3bBqQOw=
X-Received: by 2002:a17:907:6da2:b0:6da:94a9:b7f3 with SMTP id
 sb34-20020a1709076da200b006da94a9b7f3mr18346489ejc.692.1647256904338; 
 Mon, 14 Mar 2022 04:21:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznZeSz7ppOk/V81jFboc957xuTXOB6UgvnwgrPV/5NzFrdaVAXBT1SidK5IOuXKNsAyX8TzA==
X-Received: by 2002:a17:907:6da2:b0:6da:94a9:b7f3 with SMTP id
 sb34-20020a1709076da200b006da94a9b7f3mr18346474ejc.692.1647256904099; 
 Mon, 14 Mar 2022 04:21:44 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.googlemail.com with ESMTPSA id
 y18-20020aa7ca12000000b0041677910461sm7859672eds.53.2022.03.14.04.21.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 04:21:43 -0700 (PDT)
Message-ID: <1a43277a-94b9-4f95-314a-876291227982@canonical.com>
Date: Mon, 14 Mar 2022 12:21:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_ppratap@quicinc.com,
 quic_kriskura@quicinc.com
References: <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
 <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
 <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
 <c88396f4-4cfe-d375-1dcd-b34a6496cb06@canonical.com>
 <20220314094054.GB28402@hu-pkondeti-hyd.qualcomm.com>
 <b45b3b7e-e1c0-79b6-81c0-53c70427dd10@canonical.com>
 <20220314103045.GA31533@hu-pkondeti-hyd.qualcomm.com>
 <fadbc93f-8741-58c6-d0e5-dc740e0f0724@canonical.com>
 <20220314111313.GA6889@hu-pkondeti-hyd.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314111313.GA6889@hu-pkondeti-hyd.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_042150_781499_412D48E4 
X-CRM114-Status: GOOD (  20.90  )
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

On 14/03/2022 12:13, Pavan Kondeti wrote:
> Hi Krzysztof,
> 
> On Mon, Mar 14, 2022 at 11:41:27AM +0100, Krzysztof Kozlowski wrote:
>> On 14/03/2022 11:30, Pavan Kondeti wrote:
>>> Hi Krzysztof,
>>>
>>>>
>>>> Ah, I did not get it. That's not the solution for this case. defines in
>>>> dt-bindings are for constants which already can be in DT, e.g. IDs. Your
>>>> register values should not be stored in DT.
>>>>
>>> These are again not register definitions. These are encodings that dT and
>>> driver can use. These would be constants only, no?
>>
>> What do you mean it is not a register value? I don't have access to
>> datasheet/manual but I can clearly see code:
>>
>> +	if (or->hs_disconnect.override)
>> +		qcom_snps_hsphy_write_mask(hsphy->base,
>> +			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
>> +			HS_DISCONNECT_MASK,
>> +			or->hs_disconnect.value << HS_DISCONNECT_SHIFT);
>>
>> You read the value from DT (e.g. "3" which means 6.3% for hs-disconnect)
>> and you write it to a register. Directly. 3 is a value for the hardware,
>> meaningless outside of it. It has meaning only in this one hardware
>> programming model. For humans it means nothing. For humans 6.3% means
>> something.
>>
> 
> Right, This is what I have been saying will change. we don't pass the direct
> register values anymore. Instead I am saying, we pass the percentage
> multiplied by 100. For 6.3%, user will be passing 630 in device tree. for
> -2.75% user will pass (-275).
> 
> Are we on the same page now?

Yes, it sounds good. Thanks!

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
