Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC265C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 11:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCdv8w2BiZLFUFIg68WnqoN5NoD+Go+u0SbhxQKo8Bk=; b=Y0k3Age59b6wMz
	o5LIaEeIEolHeg79dAwXkIJlJ8/X8saTMkEkEDZC5nTg90cR8R2g4Q5Lh5nUOOC3Rpblii13gPtcg
	TWA6jWADyraXs8tXU9p91lSCch1+caqexNKu+wotoZcIfRVCsYRSD0yyF5/o1IRFVsuSZyZ/HO7hU
	VQxsNNc508TyB3wMZaXDTns1bmTfA2ns/vquMikefgsWIde7Nv1rWcbs/OgOwHSBzwz/w/5d4RnPP
	uWDSAoLFpppIvqLX/x7pzBBIdczTEY+y1UujbtXNeYjiBuMBhyGXT7vdPWItnegKI1Yu9oEJhqb8j
	MziouRE83FKM61nyjlzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQTr-002aqU-1C;
	Thu, 18 Jan 2024 11:22:43 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQTo-002amu-1d
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 11:22:41 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50e9e5c97e1so15415616e87.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 03:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705576958; x=1706181758; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bOlUj+q179IMKEi8p11P9grsyIKsRD5OwjU4jqrzh8g=;
        b=Z7BoURf37ZrVZwR8wYI1+ayFF5bwrlv5OatbD7uw3VI+p3+SEW40e0ET91GKkRTJDc
         h6O+1ZpSHm76Dx95+qK6+TukDzdiOBibwWDEj0Xb3gImQVPM238fiofflN4BpfHGMshn
         J3yAfFuosytRKTyyFTGGL8bNnL7XaJgAS7lI0OiIDipAWnfZx37gAZ9yi2motNGNeYIG
         hdLS0US4d2anbFAv65ggL4rWV3+BJUIGbXkkhY/w0E03FT5QjWu1KohTuKxYKWvMVSIH
         JdUXB4+fDam4L9k/s+T+0RoqgGsQtzNApXF8Ay7zvVTX9WcSchqTID1pKtI5oUD4ntJz
         uEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705576958; x=1706181758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bOlUj+q179IMKEi8p11P9grsyIKsRD5OwjU4jqrzh8g=;
        b=b3L9FtP9XY8YRX6zeaQIN8edpOZEV/LUDRrxwmNp/P1Xpk/CRCDhanHsKLaU2qxocF
         56jKWj/wqbsRiAtbJqt6+xc+OUkGwM600s5C12GA+USV+fzXj1+7aDUTnc9yKYp7G3Cj
         0hLvHNuuSurLeztjU3UFGw1KNkh037Zo1geDtv5cCKE8aWoG4fNdi2sWBMf1C9THLbFO
         tmALS0jmqTa0obTHlnvdKZbEs9s7uE2wd0TKwrTcPeZr5nT/L7+30grxCJpkbD+C5ERy
         HYo5z+IuqSaPyH5hiy5gXTjwqp7uMKo6xoCTkiR/3UL8X6V0tWOXKGXz5kBO2yJKi7EJ
         z4CQ==
X-Gm-Message-State: AOJu0YzQKADQ1SvJo/5XOB6W8k4bB6hK7GFdHZUR+NBgHe732jnNY6fk
	E4FY3HLLNwtRGlN2LnAeL1UmyJyslEq6ffntcO433AcSMTiEzyM5JHh5G8zHA0s=
X-Google-Smtp-Source: AGHT+IFhssFtH2AYYOV9q/RxoLTnlO3ToX6rXcgDJjo1+DTPONKp75AQgZEQBD3S8xqeRmApFi/C/g==
X-Received: by 2002:a05:6512:3ba9:b0:50e:cc3e:2f31 with SMTP id g41-20020a0565123ba900b0050ecc3e2f31mr460276lfv.82.1705576958068;
        Thu, 18 Jan 2024 03:22:38 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b0050f147c0244sm125917lfm.292.2024.01.18.03.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 03:22:37 -0800 (PST)
Message-ID: <32205426-d93d-41a1-bc41-f4ff1538aece@linaro.org>
Date: Thu, 18 Jan 2024 12:22:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP
 register for USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
 <20240117-usbc-phy-vls-clamp-v2-5-a950c223f10f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-5-a950c223f10f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_032240_543486_3833757C 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
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



On 1/17/24 15:04, Dmitry Baryshkov wrote:
> The USB3 PHY on the QCM2290 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
