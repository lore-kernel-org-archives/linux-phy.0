Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4114AC4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUYBGnlV+tA55/toZ490SPoRn/imocnhy/10MXnVejw=; b=vaxzNA89EHnuJ2
	GoNytXXKU/MVRGaYCyvypSk/q0tHyLGSks/KLdPvXSbM5g6kDujjSzZxTehyho7yh6ej3RBPCrq6V
	FHtY4Cn+OOoXAEQKG/mEwXR4toaEzxRUvwhm4LKKl9qNOIIzTD9v4ekANWeY0/bWvf+0EcxvKhW4N
	+7sRhx0J9NIEl4LMk/CdiRsRg5S/RthqGbVW0k6nsqjlFFUaO/BMwywLCJRzZly2Y3DYxU1I3AgUG
	cpfLLj4C4Xvs84ZgGJXeA3ShOm/Vic6qVaR6EvPLGjuGd1Ep1R/8DIItBABANbM6S02idnUGDayHi
	L9aoG6hIgekQ+HKc1rFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeXE-005DRh-2l;
	Sat, 13 Jan 2024 13:58:52 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeXC-005DRH-0B
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 13:58:52 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40e69b31366so9104245e9.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 05:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705154327; x=1705759127; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WT8QIYQ+4FB0VcFrJSjLO9Fc2EguI6T2KF8zu0XQvV4=;
        b=ppQPlkS9mtrY+H/obS9ihL/kALpMffRzdoWPv/k9m6h6zfm4oeJ/I72tzpV/O6+Kwi
         hg0eZDeniiVCC+ofx/SgvdBzQoaFNQeK6DtPG7tA7iQM8AHohraZBc07DV+UDpSn4AGs
         zuQO69EEl/LgJPFkqAIFJTJ9Vs6gmmQSHcyqyftOQXyO/tnd2q8DjLTzzBcwCYR0x4kn
         3AWuugI018bpOVRj7oJ9wWdOme4JkE58VePLXx51Chra61MGOx5+0uvBy4HPxUU1+wGe
         cw1ED4xuDkFtKucKJ3Ok5HLw/Ve+QVAEdP7l0CMfJun+BqUfomVya859DE/SbVlxUWG0
         7G8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705154327; x=1705759127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WT8QIYQ+4FB0VcFrJSjLO9Fc2EguI6T2KF8zu0XQvV4=;
        b=lnRgu5fNJisi+vIashV2hcChm5P2/LFbz78Z8DEfKZkky26oxKDzVfe+W2JMl7FEJZ
         2yG+3VB92imtT6FWYtYjwR8nPOHq7h7aps3z1BFijWeVnVsnOvEvpXCPzyRE9R57Enr4
         lAGX06geDe0g3RFniRG5NFCkXbEgI/gH9olHioizei+ZFYWzF2Cw2PqPONndTZNDTkIW
         t7WTRfSVenOd90Gllh6SIBQdDam7k5ZJnJoB1KXpqwYCGPbTxhpSiOwo0KTiE+qPEeXw
         BoaZ1IPWFm4B9j2H//InI2A8RVWej4rBYKW5I45fibJqqk5EzGqaP00+qF0Jzhti4If5
         ZEKg==
X-Gm-Message-State: AOJu0YzL5GEea6fVWL6yqLdlZ9W65/db+fZQITSwuJ0YDytp3kE9d5PC
	ptanQ5JKCHipnBjtGLJiS0TAwAB6xcTLeg==
X-Google-Smtp-Source: AGHT+IGwKJspmTKwK0oeydh5C+0W91YyLyDhfqNDMWTHwa14f1p0dzNVkcnuqnvLJgl8jRaN9pq7Yg==
X-Received: by 2002:a05:600c:4e48:b0:40d:39cb:6af6 with SMTP id e8-20020a05600c4e4800b0040d39cb6af6mr1701326wmq.28.1705154327179;
        Sat, 13 Jan 2024 05:58:47 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c350600b0040c6d559490sm9476148wmq.3.2024.01.13.05.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 05:58:46 -0800 (PST)
Message-ID: <7e15bce2-977d-4b02-9f8e-6503383eb281@linaro.org>
Date: Sat, 13 Jan 2024 13:58:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] usb: typec: qcom-pmic-typec: add support for PMI632
 PMIC
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-6-de7dfd459353@linaro.org>
 <7e36b380-8ab5-4555-8919-1c2c6ff7aa68@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <7e36b380-8ab5-4555-8919-1c2c6ff7aa68@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_055850_914025_6251C2F3 
X-CRM114-Status: GOOD (  11.18  )
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

On 13/01/2024 10:33, Konrad Dybcio wrote:
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
>> The PMI632 PMIC support Type-C port handling, but lacks USB
>> PowerDelivery support. The TCPM requires all callbacks to be provided
>> by the implementation. Implement a special, 'stub' Qcom PD PHY
>> implementation to enable the PMI632 support.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> 
> [...]
> 
>>   #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
>> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
>> new file mode 100644
>> index 000000000000..5d3b0e78d4d8
>> --- /dev/null
>> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> 
> Not a fan.
> 
> Maybe add some TCPM_FLAG_NO_PD and solve it in a generic manner?
> 
> Konrad

This is a good suggestion, provided its the direction Heikki and Guenter 
want to go.

Otherwise @Dmitry you can retain my Acked-by for the stubification.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
