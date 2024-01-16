Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFCFC4706C
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 12:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0PF96u9uEfoYXls9y3UkeCM4X3wvvqvPZTOdVXZqpQ=; b=P7VypyqoCUonw6
	lStUq162LGsvexFIaAd6fAeESijyk4cH6J3DR0dZuU+hlymaUTOFkS/oW3Rz/saJ5XSmRVHmR5XLJ
	6x6ZrFOs2aG9T8XRbTBgahOGh7tittdg5096imd/ieMdKkKzp778XLGHQnJ8nFJf70jCgxsnc+wZq
	dYkJ0JzElnHgxXy0t1SzTOKGhV4P1hwWjIcxEuVh1L+97XaWwURi4jW8iumX/do4IMgbXYaVAmRuf
	CWwtTMo0VdKYulttIO+a16bS/2zSCYU62nT6SEc1OfygHb/nlUykeeZ8SpZbP0r/zrzUpFirQYazy
	NzILZZ8jWJHbqqAdqZUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPida-00C5LW-2N;
	Tue, 16 Jan 2024 12:33:50 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPidX-00C5Kg-2L
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 12:33:48 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so11533418e87.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 04:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705408424; x=1706013224; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yqUSIm8UXdupfFL04/MqcN8j6+bdxHnm7+lARtVgoAU=;
        b=u0R+95OEXMD4mTRVshO9luqF4kTEORWfZZBGUClZFL5teszP57U6DRGzFZGoCdOuGX
         5M0mjay8LZoH/HbUYrZrK95MBYtmpNaDMdRlA6uNmmZKwzArM7rXSu4ZxRt0nZ++V+38
         rzdkgJnHB/rHbSfbsW99tg8S0T4R0D5OJ+TmiP1XS94q/zjaCSnSKzG92AhzG57dwf0r
         5nkX4cTgiB3Nf7rIFTSVQteSmHmd5aqU8hUYy4YaeUNpTCWTnJR1pofkqHo67nsDO3Or
         Z6xMnT54+JmQLoUEBrs8NsRrZq1JsdhvRGowslNMhTmkA9rjAvStdnwG0dTjM4l0Yvmw
         HYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705408424; x=1706013224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yqUSIm8UXdupfFL04/MqcN8j6+bdxHnm7+lARtVgoAU=;
        b=UiKf8qQvizfuEHl9oAv2xLYwEylQ1LRlrS7KB4vVGvse1cVADVhF9WOUA93PjD0lix
         Ym8gwGMzKzvJWhgoDjC6RIIQOvrMnUTI+U6TaRd9BY1l+73sWvfbiJ2hGuna3fs+2Wvn
         3ediWfMUIheNTCmkRJPNy+HfVBDbKgMp9A2XUTQNRj1uKVel2WqaQiNoujUSD2cl1XDz
         ygye7gvoKLBS/vctddQpRGYLZx6MUcLuund7Q0b4N8b+p2svbIOh7qjOeCsQAXBSWM7D
         lRZL7fpnhNI0egnGIImz9+OUVjpGiN/3QyQf/O40gSc6OSZqebDC80rC39zDRArrbpFT
         ZEqw==
X-Gm-Message-State: AOJu0Yz9aEXwTt11EmWT3EGlSfQbkPdclMweDflg2zZsEHjM5fBHxLl5
	UY1VC6oSanTqU+tuYoiontP8qwa/VLtwkQ==
X-Google-Smtp-Source: AGHT+IEnYeTGzE8ZNVwW0Wo/DO7GcXJyF7myoaGvnuvy9vpcXIHzHBeFf5ELzlSPEnV21sRW4i2hnA==
X-Received: by 2002:a05:6512:2383:b0:50e:7615:d34e with SMTP id c3-20020a056512238300b0050e7615d34emr4223427lfv.22.1705408423784;
        Tue, 16 Jan 2024 04:33:43 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f12-20020a05651232cc00b0050eca8735dfsm1752612lfg.140.2024.01.16.04.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 04:33:43 -0800 (PST)
Message-ID: <f5e88324-3bf8-4b54-972c-d8f47a674cf2@linaro.org>
Date: Tue, 16 Jan 2024 13:33:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/15] phy: qcom: qmp-usb: split USB-C PHY driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-10-182d9aa0a5b3@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-10-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_043347_763395_6FF6F83E 
X-CRM114-Status: UNSURE (   8.02  )
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



On 1/13/24 21:55, Dmitry Baryshkov wrote:
> In preparation to adding Type-C handling for MSM8998, QCM2290 and SM6115
> platforms, create new QMP USB-C PHY driver by splitting mentioned
> platforms to a separate file. In future it will also be extended with
> support for the DisplayPort handling. It will also be reused later for
> such platforms as SDM660, SM6125, SM6150.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
