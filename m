Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5896C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 16:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic6mgYWv7P69rpENnjzmtKsk/SFdcpyUPRMCru5OLbU=; b=QxRVnvQrLOZ6Zy
	0BksqkxEtY04JxD4Nzjj3jiUDQBkN4mLVfDlqdWY2gZ+5QD6ge5r+xzADGjNvRoal1ERyl1m/bRFJ
	TCYcZpaUFq9szSH811EFG39UgGVJwKDmUMwHyRG902yV2iEnigBfscGMram8WIWasVQns+76ufe0E
	2MMJB/g69WFGQkj1BFO3ZJOukX0LM5kcsvnsuttfKCinvWuxFlljOlVw6g1B37u7RnGZseJ5dt0Uj
	FAnl4kaLgbyOk6F6PkFXbAlMLWSth6A5QHTEdqyf40Beo2nUXWVQgHPVzQhEf9bIHAAk0ejiN/rrk
	MZOAe20jP7bissh6DLXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT2i8-00000000qDH-1Zhj;
	Thu, 25 Jan 2024 16:36:16 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT2i4-00000000qAk-1bCr
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 16:36:14 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-510221ab3ebso345743e87.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 08:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200569; x=1706805369; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mOhc9njMffkxNYdD1egZdDRcjEt1wn9p6obVt9P775E=;
        b=gd1KKBmms5HrRLjQF0LHCT92TsZR7o4i3oKHtZ+B3q3X8YXWMkNE3Snij5gfw34BTl
         jlZrs/eftyosFE3vnbQmvPt3chUkYyaStsh2jxjyxAXHn7WcuwwDRWfDo486p+pH9MaF
         9O6le4w7Nik+cY5kFBpMp8ihQ5xwBAr7fnpJqxu3oW5WqgwCZOjAlewKHhli4u+Cn7tS
         DGPmBj1xDIRzVXkk5lS/QEOvRUUKM8hUp5iAX8KaQ9pr6X94fVhmWefH8z7H87kC9rWg
         1Y1QInhnBQeGZjpONqT+CcO0clpBtd4x47/HHHj1zfatv8n5s45iJUde/NuoZziq8r2V
         kBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200569; x=1706805369;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mOhc9njMffkxNYdD1egZdDRcjEt1wn9p6obVt9P775E=;
        b=cwTlDN3CAQXggIbSOD+qx7olWiiUbi0ikJFNfBqxR394imutXQGDT8mq0rSc6zw4Oo
         mJBVpwFNHQHhuykzyCGtgGD5RMzicEz8YOmU8sbwGUYy3PYBMP67J4gcDuaq+hZ2j4LD
         Y6xqR72p2AZHqiRZ5Y/EnDDC/ytwT4oNTmzGS+PgNIbofFi0hxRwAt2MsyvnXsIqThRV
         O8u64wZiVqwIRS/YiMQ7uJZriorkJbAKMyIx6M/mXeIl/u4aKPMEZbas9Hm0dNJ6moy3
         mcFhkq2O1atlaIhJAyHbSoQeZgyFCPD+6ihqWWV1qRSK/LqGyK2buIzXg+iIdP+aDKlB
         VGDA==
X-Gm-Message-State: AOJu0Yz5kv4/DjaNGP2O23BcETWLA9KXxvxi9n1lS+q1uxDE1thHBizq
	rAyEP5+AeXNkcubbyw6EmzBhZxhyVV0aQRJYX2sCM5Eow1EXNTcTBavUIsYYULM=
X-Google-Smtp-Source: AGHT+IFMO+xoeC65I4slZOzO2IxFMLHMXEpO8c2Ds1GdTTlBycdyA02BYh1cW1xcPHtk0iX3z7de2g==
X-Received: by 2002:a05:6512:ba5:b0:510:135c:c060 with SMTP id b37-20020a0565120ba500b00510135cc060mr38059lfv.76.1706200569551;
        Thu, 25 Jan 2024 08:36:09 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b30-20020a056512025e00b0050e7f5cffa6sm2904066lfo.273.2024.01.25.08.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 08:36:09 -0800 (PST)
Message-ID: <0ba94f0f-3df5-4eaf-a88c-c63aebff4232@linaro.org>
Date: Thu, 25 Jan 2024 17:36:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode
 configuration
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
 <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
 <6179e3c7-f399-4b0f-abb0-aaf5e549d8d9@linaro.org>
 <ZaUASV+0gc/Bufmw@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZaUASV+0gc/Bufmw@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_083612_517207_E506BAC9 
X-CRM114-Status: GOOD (  17.68  )
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



On 1/15/24 10:52, Abel Vesa wrote:
> On 24-01-03 14:42:49, Konrad Dybcio wrote:
>> On 21.12.2023 17:27, Dmitry Baryshkov wrote:
>>> On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>>>>
>>>> Until now, all platform that supported both eDP and DP had different
>>>> compatibles for each mode. Using different compatibles for basically
>>>> the same IP block but for a different configuration is bad way all
>>>> around. There is a new compute platform from Qualcomm that supports
>>>> both eDP and DP with the same PHY. So instead of following the old
>>>> method, we should allow the mode to be configured from devicetree.
>>>>
>>>> There has been an off-list discussion on what would be the right way
>>>> to pass on the PHY mode information to the driver and it has been
>>>> concluded that phy-cells is the way to go. This means that basically
>>>> the controller will pass another value (that is, the PHY type) to
>>>> its 'phys' DT property.
>>>>
>>>> For this, we need both the bindings value and the PHY mode value to be
>>>> added as well.
>>>>
>>>> The controller part will follow shortly. But for now, lets see where
>>>> this is going.
>>>>
>>>> There has been another attempt at this here:
>>>> https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
>>>>
>>>> Compared to that version, this one uses the phy-cells method and drops
>>>> the X1E80100 support. The X1E80100 support will be a separate patchset.
>>>
>>> After several back and forth discussions, I think that this approach
>>> is not correct and not that easy to extend. Instead I'd like to
>>> suggest adding a property to the DP controller, which enables eDP
>>> behaviour (and thus makes DP driver call phy_set_mode()). Something
>>> like this:
>>> dp: displayport-controller@ae0000 {
>>>      compatible = "qcom,sm8000-dp";
>>>      /* reg, interrupts, etc */
>>>     edp-interface;
>>>     /* or simpler */
>>>     is-edp;
>>> };
>>>
>>> What do you think?
>>
>> Please excuse my alzheimer, but why did we not go with phy-type after
>> the last discussion?
> 
> phy-type would be a property of the phy. That way we would need pass
> the mode to the controller. So it was concluded that passing that
> information from the controller via phy_set_mode is more straightforward.

Eeh, reluctantly, I'm gonna say yes. It's not the prettiest solution,
but none of the ones I can think of seem much better.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
