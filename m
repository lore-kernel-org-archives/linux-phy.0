Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC4AC982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 09:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xe9cQFr6t2twZc99DWRKC3vHQtbwaGwsI/kGzWgyGjw=; b=zJ2K3CgvLwmfAS
	oSznZe9/yYhL7Q4j7kt+d/YlBEDcc5KvgC7nPc4Wss0KtzJXByiQtaHUhVk77zRoZaooGcuHjU8N+
	rKdkoy2WUPzDX1VLt+1D0Eg4m7OexiaPw3D/Hd+UvKUKcecGCaKc+xSXPfGfNnOAfJxYqD8PAB95W
	gqhaZXC7p1pIB0ASnO73I8bs98YtYq7f+fO+MFreS1LPQpanXLBXFHv7e94C7Y1yvO4ZtO17bmB2l
	zR0K6uvVM8jNECL4p2xkyRI8YcL4/9XZ4IqK9yQbFRk6PbeDl4iWCumxCXNk1Na8o6sRW0+d5i8fs
	/8VRrh06Rvfw+55XIEpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wrv-00000004vkB-0tto;
	Tue, 22 Sep 2026 09:32:55 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wrs-00000004vjX-0l8D
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 09:32:53 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c254f6c7a4aso476940966b.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 02:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1790069570; x=1790674370; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3Ab95yjg47UXgu4IRFT2olDtzGqxsEpvIhJOJgfomKI=;
        b=xxlLp600sNVP+pDrT5H2WSXdqslsTMzDZuP/63l3SG0RGuEIGyKerHNBOOe9tquCG9
         Y7p+USMTZ/CR2QMbvtTcL/1aBw3GEGt8MIHoCYhydRa+NOC3rfuC03NxBLgiQZV+kSuZ
         e7tEBkK/O9inPwE6C5CjJPZh9Sfe46Di9dmaglMEGUMzbHFjaQ2RbUW8eHWx0SGa3Qph
         q6TyELitfDKs8USyG5e4ASYjpNJqaKEC35oYrT6u6j+MFJ4T8j5LZ5YHEAFJd3OemOFr
         zcmAkXo42eEHJho27xb7GgWOCvLHPpJ+3KGwHTEJiq5XrrHWvehVLuMgjMb1j5RoX5zT
         JM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790069570; x=1790674370;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3Ab95yjg47UXgu4IRFT2olDtzGqxsEpvIhJOJgfomKI=;
        b=weu6RKdviKvQcLOUFUJ0HLhKwCtrRTUknMSjKxDt2b3mrzn5VWS9PA+i5MAWTY1cTG
         rONtpzp0WZdp1B8ihYiRnYVwzH8GR5SJqmxhdMOeEsLVZrtwn233F7vtWLzLf/sf6GY6
         PpFcxrhAOac3okGO7XL4TQ9vFQqJ8xN9a/2g2ngdhOA2tocRGtf491zcSvRSqXFf4fdA
         +VcvyEnyaGYdv4xt40j8tAPbFoTm3lmgkjzqSF7LHsMkjVlPPcWwM/dAGqQyhpklT0kZ
         ry/KPSxaDZYy5mBYhRZbbA/CEHX0kf5ljFrhHodBOGUepya8sYfROpFudSU8co0NkBd0
         +XyA==
X-Forwarded-Encrypted: i=1; AKwUvBzx63BsC24xA5pgPdMhhCLPL7v/ctdwItUBQEBAizbbB2k53SqQ+tOsKFaE9hGpigC0vyPCAI4zzBM=@lists.infradead.org
X-Gm-Message-State: AFuF++kK18xYSYB35uhwwrJIz2s/n/g9GYbVEZ2Cm4as1NYnC9aaOw1I
	7Ore+DpkoHJdQjlIIKdFDd0H8nDZ0sCvFH4ABYxn6a+CdG0S4vvubRpqoUYakMeeIHw=
X-Gm-Gg: AYBFou3bxqrZXVTTUbmVQVh4z9e7PEyedMDa5K69i2DN80xDZgyOv0w36NPXqv2YHGD
	JXto/qQMYbdv8/QVacJlhjCItknjzPi3RoM7uNnh0aUfF+JRwr0AZFqAiNqXIACcMzcphA1vK80
	GMAQqkH19T6bWG6vVjvfFjlkuAdZggYNJ0VpUpzRT5wqJNslr3zk4zADZo0yv5RXaMqmlI04roB
	FLsOS7ZZEQ2QBBmzAjgekmxP8IeUmoR8Kr29wdFtB2mzN7TSYyie7e6+w4lTDsxfXdp7Tx+zbt9
	P5hGKXTsbt0+RFB/5O4JrPZooiRv1/xEoRzrLM/zljz4ARHCQfvRP+YgiRTXgezZEwId9B4F0Gc
	YqF5nTpxObjW1T0ZK0T+2VHKkWc/R5547BnAh5ByxwKLNYCa8A2xBb1Nys6/hk67feun9T8Zhd4
	w6JP7r+DNoJ6QbNgNyYYjIry1ixV5c6RtvGv6CUme8UZoE6Uwdll2gfz75oVJUYznUS51K6GusS
	WKK78qcAAE=
X-Received: by 2002:a17:907:d11:b0:c25:541:fd3a with SMTP id a640c23a62f3a-c2a1578a505mr1126569066b.7.1790069569625;
        Tue, 22 Sep 2026 02:32:49 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.71.182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a9c5ec614sm54010366b.45.2026.09.22.02.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 02:32:49 -0700 (PDT)
Message-ID: <61ab6356-874d-4a05-87dd-4900d826f02d@linaro.org>
Date: Tue, 22 Sep 2026 10:32:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 5/6] media: qcom: camss: Add support for PHY API
 devices
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Oleg Keri <okerixx@gmail.com>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
 <eefde985-c807-4905-a33f-616a1898ad72@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <eefde985-c807-4905-a33f-616a1898ad72@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_023252_255788_B9FD2E48 
X-CRM114-Status: GOOD (  12.30  )
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

On 22/09/2026 10:15, Konrad Dybcio wrote:
> On 9/18/26 3:56 PM, Bryan O'Donoghue wrote:
>> Add the ability to use a PHY pointer which interacts with the standard PHY
>> API.
>>
>> In the first instance the code will try to use the new PHY interface. If no
>> PHYs are present in the DT then the legacy method will be attempted.
>>
>> Acked-by: Manivannan Sadhasivam<manivannan.sadhasivam@oss.qualcomm.com>
>> Tested-by: Oleg Keri<okerixx@gmail.com> # Lenovo Yoga Slim 7x Gen 11 (Glymur)
>> Signed-off-by: Bryan O'Donoghue<bryan.odonoghue@linaro.org>
>> ---
> This and the following patch conflict upon applying after:
> 
> aedd77ea8168 ("media: qcom: camss: use fwnode_graph_for_each_endpoint_scoped() to simplify code")
> 
> Konrad

Thanks for the heads up

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
