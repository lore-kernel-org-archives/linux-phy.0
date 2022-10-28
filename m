Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A88ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 11:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs2AytIt/MGi5fKkz35B7VK8KOmvyCBUMdzvsTlSWEU=; b=2Y7Y49pPv3D51m
	Qsfzh+znciat+RPPqVuE3xJzgdlaryIpa7Vj73TK9FDfggCYJkkaOl7vtfZSfJaOFIBt/7cyvU0pc
	wQOuU+UsGUbeWr5BNUfDkZKd4gNIgjmQZy1W5vGK9l+6uyGQsnvX/uBgealbBr9Q35tkUSEweX8a+
	s0tZyFAXiPWxnbR4zU75oWkYqxjP8e7OulZ0SqT+xOHozlejSqlrFDaWL9s6UNrG3+1Zn3h5IBm77
	ZNQnJ72QW7Z+dj1pKJDvCjBa6/eLNdErBR2sSJ042YbjTWaQ+EgPLhSrN0mFnVmdUK8GVo5gbvaM8
	k5I+b60m6HZf3qP1uYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNWB-00Gwe3-5B; Fri, 28 Oct 2022 11:27:19 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNW7-00Gwco-U8
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 11:27:17 +0000
Received: by mail-qk1-x730.google.com with SMTP id o28so526199qkl.4
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 04:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n27P9fQzAea5JJ3rcyXtQsWTxD0urj62so3demloRqQ=;
        b=s3VsWG//KkD/UGRA5ywODMgnFjgOsElESRo8QPf8XegqHktP0/qfkb8meHjwzOWjSf
         Quq2ROyt8VFaPIeB+1xj6oI72gAuBcNZ5+rJZ4VAtCFpV15SoOVyzXo7H4OfzXTc+xMj
         MRGbsvy61qw9FzMmxbYYiP9+piZt39XblXjYoV6DXnwlStS10/O1ZHYZ7oBvzBauQHoy
         utP8L2g93zI+vErg9j684msLNCKn0Jbt5L6R00DAP3X9WmMDAAuRfsgq8m44I+ErlLQk
         2oDrig9l72iCUk2/aKTshcG3eY2qemwJM2I2HVTZeq7a42Xf7iUABHninoGSUpit8xyN
         jYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n27P9fQzAea5JJ3rcyXtQsWTxD0urj62so3demloRqQ=;
        b=dfc2DOLgwQYDPx9gLBYYASLOP9qfo4vuHC+Xhw1mMM1ZCznjP5sDDssiVQLaM7Mrx+
         JOSBLnhBQtFXMXqGLqn72G+howiLirprEmgPo7pO2Soem+49LKHBZOjU/O3ANb8TSelD
         8R3BnHwI1O7SlTH3m9j5rwtQIVaVZk5BcDt+i2/WtW93s15fzrd0NO+5qCW7mX/EVBVO
         x5/E1b/91pk60ixx055tCuRNOVSVh88VRgyFzw4+Ww1+AbHRFgwXo4DsQ5AiTAUD5u7D
         hU7EfYqGCgy3Zm0Bt6sgmF3dhLpjdvoTreNHec5Bn7G4vHEmEnMWrgrX47ef37fNYQyU
         hcFQ==
X-Gm-Message-State: ACrzQf1icgJTTMJ+HLkgKm6LD6n1pei5vpd89GuaJxz6WLDwKEkZwJS1
	3t2QIU4ZTrhKMZxzvNRphRNXMA==
X-Google-Smtp-Source: AMsMyM4oWiDhP7JzCJKC5Vj52NzocxJ+zmvdbOC+BFV0wwy5MqyYFVo6KZ9q5UpuKFDMXqnwowNswQ==
X-Received: by 2002:a37:bb82:0:b0:6fa:e8d:534 with SMTP id l124-20020a37bb82000000b006fa0e8d0534mr297964qkf.738.1666956432590;
        Fri, 28 Oct 2022 04:27:12 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w24-20020ac86b18000000b0039764587192sm2223661qts.57.2022.10.28.04.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 04:27:11 -0700 (PDT)
Message-ID: <5676bcd2-14fc-4e1d-643e-89e575d190c3@linaro.org>
Date: Fri, 28 Oct 2022 07:27:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 04/11] arm64: tegra: Enable XUSB host and device on Jetson
 AGX Orin
Content-Language: en-US
To: Jon Hunter <jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>,
 gregkh@linuxfoundation.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
 thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com,
 kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org,
 mathias.nyman@intel.com, jckuo@nvidia.com
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, singhanc@nvidia.com,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-5-waynec@nvidia.com>
 <2059dfe5-b084-42a4-7f35-9da9561fc12b@linaro.org>
 <b803bcf9-fc47-5239-ffe9-707925f324de@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b803bcf9-fc47-5239-ffe9-707925f324de@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_042716_013111_8FB22E44 
X-CRM114-Status: GOOD (  10.73  )
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

On 28/10/2022 05:33, Jon Hunter wrote:
>>> +			ucsi_ccg: ucsi_ccg@8 {
>>
>> No underscores in node names.
>>
>>> +				compatible = "cypress,cypd4226";
>>> +				cypress,firmware-build = "gn";
>>> +				interrupt-parent = <&gpio>;
>>> +				interrupts = <TEGRA234_MAIN_GPIO(Y, 4) IRQ_TYPE_LEVEL_LOW>;
>>> +				reg = <0x08>;
>>> +				status = "okay";
>>
>> The pattern of redefining full path in Tegra is confusing - I have no
>> clue which of these status=okay are correct which are redundant.
>>
>> Do you?
> 
> I understand you may not like this approach, however, this comment is 
> not really relevant to just this patch, but a general comment. But yes 
> we will ensure that this is correct.
> 

Just to clarify - this status looks redundant, but I have no way to tell
for sure...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
