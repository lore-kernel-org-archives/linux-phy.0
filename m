Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66935606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E4Jon6UH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=zNPlWWZO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+WeqH7l62WvdvBU4AiTTH5+93q1svWqiMbRCteRfWVI=; b=E4Jon6UHfsg985jonjRvUoiff4
	TS1r0ZJ6R+0qgSGsT/pAiHXq8vfXGt4nk5UGrFiz12n6fElNLNcVoqgZj675sF8OV44uOHxsc6cR0
	DM/4o6+GNqFueG2fqD9aAgD7hvXX7bkWIXnR7gXq1n6C1tOXds0Q+8ONTEEKrYvx1MoMCI7PVtxoA
	+8S+66DEY7zvrtcrlRLl9Qe1qmTbxh3PcPgqxEUCfxQlQCuJsTXY4Q5JNxstTn9gahcrD8tntwFi6
	TA8wMSDt1QZq1uChTe4FwB5u6LMaW/cHcYRfO4M9vn8K8PDaYZzVtafeaBXYJUS3a5jQljynJozRK
	zBgDnn4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDoV-0000000A7mY-07DP;
	Wed, 25 Nov 2026 14:17:35 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDoR-0000000A7lH-2Gg4
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:17:33 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5be4b29df8cso444286e87.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795616249; x=1796221049; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:references:cc:to
         :from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aAjT/juoIc9zz5suBwAKIoZ37zYZ6TKZoBm98/nn904=;
        b=zNPlWWZOrIO53AkPsnRz60M/ESqXOBSU3VqCuqFqKRDwR3YBcooEMUnRyrvWFQ05C5
         bEtnSCZwn7EHMM8oxHfHgtF8DM9i9ahvB96ihLB8r0CEQF+BaPoe9mACBXJoyS5jUIoY
         JYKLSRKSkxYFTkAx+QRZsu4Pz2Rg3opgOP8/uPAIiAARk4IIVZQjesUK4SWQ/Jlvv8C0
         JuLPEO/LlS7diLO9XPT6PE+POfy1gYKSXHegYsxR6dbBG8Oj+GYP7kjLnX8nhaK/L9AL
         FsmIHVLGKqNNbrbIwp4flfUuZ6PXMySXn4IUfvMGa0peWBUQ5IaAriGhjGDa2oqt/SW1
         CJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795616249; x=1796221049;
        h=content-transfer-encoding:content-type:in-reply-to:references:cc:to
         :from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aAjT/juoIc9zz5suBwAKIoZ37zYZ6TKZoBm98/nn904=;
        b=dc9l+LBcq0jVGqpyHatTFHOwa9EKKYVuvJJjeVtw87bThRtVw9sHq4UXdOr6zYHAFG
         zewpeqfInhAhURYUdTgZClxtrZuiiNWPOu8SRqy4X5IExrWXNHVBGe3RNGH0If+1CRn2
         Y/ql34TP8efMDqvhoC1hYd8y62xZxOVqXIMPAao8RCm0iuImnPlqKGANekjAdrlenMXn
         31+FqBzAIfFwyKDzEIaOkO/fa0QY7lrafqev2RkQ+n2sGU7ZykNVleOnrNxkPb8RfAT6
         UivAp7HTiezMNcL/pAJLF6i6soi8yWaUe48X0tYH3xga8OCa89Ccqrf44DnusuH3YPpC
         20jQ==
X-Forwarded-Encrypted: i=1; AL+hErG5P3Zo8DG400KwkGzLv06sKF1a0NruuCdlTE6PRe1CEwaSTg1KTX56Sq8mMzgTJmIb0WMZZuW55XU=@lists.infradead.org
X-Gm-Message-State: APuU4Z+JmJMDVBzeFKin6IlnYhFXa+G3ckStlXWg78WBcEGHWMQ1UOIh
	TIPSiY5TvE3XX4r46ALZfLMSoFRrTsOaSvHNNYX80rjPfUZautX49v+bWAcru02PCIA=
X-Gm-Gg: AZFdTZc3XnktYytMcT2YH2O+od4IHBral/Q0BiXhWQHGAw8xtebR4oB/z4A/ZrJ9ALb
	zfQW0iqpMrpFdWaXM9mOGIUiXmrr2f96zXEpPiaPxP4u8KAAkbYtKEcqYLkGbx41rJALtydHQWN
	r8wcP0PGJnqxgfCksO97ILV3CPHtQ6mIV4+mS6XXrDotvxzk7rLaJJDnMbf5G6SQAq2kIJGZ6lf
	mBMRyi+cIBjBXCObCOaM8J2iWVz86sWV/0l9bYOqNyMZyzfunaG3HSEpGTDATKzIPTCZCRtnUP5
	jgPE62BF5NYwu/5uI6VT7YTu/i8lFn73+Ic0Y/UaqAjapdarAxIIoxXbes2J2qbMFybDksYkSrU
	bMXUmM0DpHwwodebiLCxTdEwT7ND+tisyzadSOg3U5agE/IXmZCUNxydneigEseuEbULTHJXm47
	yu1u+BtKJubVjx0yC3HKNXfUjTjVEHpZWJVlLd/PBNzdmv0eojy0/EKObmvsstH8Xg+pmxzbUBa
	KfZkrz1ayYzYk9ICBu78bsQwVPmKnSCaJu9ubK4+clCVrbJF397lnrjY8iFuh3wpM6dgI7IlVZJ
	WBHuQVwEj8QJ08v2DjaGT+PHS0OK164NiRTYRFpLdp64J7oHpygOQ6OTCR0jmp20eHABcx4pNNc
	jDBAIsdA=
X-Received: by 2002:a05:6512:6c3:b0:5c1:4a47:b86b with SMTP id 2adb3069b0e04-5c1bc785b7amr6120129e87.3.1795616249240;
        Wed, 25 Nov 2026 06:17:29 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcff993csm4633339e87.23.2026.11.25.06.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 06:17:28 -0800 (PST)
Message-ID: <a1b367f1-a65b-437c-a9b7-92b29750597b@linaro.org>
Date: Wed, 25 Nov 2026 16:17:27 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
 <a2010032-8750-4289-b443-3afb57d656e6@linaro.org>
In-Reply-To: <a2010032-8750-4289-b443-3afb57d656e6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_061731_703480_41B177FC 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nihal.

On 11/25/26 15:28, Vladimir Zapolskiy wrote:
> Hi Nihal.
> 
> On 9/25/26 08:48, Nihal Kumar Gupta wrote:
>> Glymur's camera subsystem hardware is a functional subset of X1E80100.
>> TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
>> three CSIPHY instances versus X1E80100's four.
>>
>> qcom,x1e80100-camss is not used as a fallback compatible since it is
>> already claimed by its own binding schema, causing a duplicate
>> compatible warning in the DT schema checker.
> 
> This sounds like the DT binding documentation shall be fixed instead.
> 
> It makes no sense to add a large number of new compatibles to the driver
> code.
> 

Please ignore this my comment, I believe it will be simpler to move
forward with the current code. Sorry for the noise.

>>
>> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
>> ---
>>    drivers/media/platform/qcom/camss/camss.c | 1 +
>>    1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
>> index 23f3cc30a15a5e098162bea98ba69fa636abdefb..9954a99981004590d34c722337bb6510fe759699 100644
>> --- a/drivers/media/platform/qcom/camss/camss.c
>> +++ b/drivers/media/platform/qcom/camss/camss.c
>> @@ -5751,6 +5751,7 @@ static const struct of_device_id camss_dt_match[] = {
>>    	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>>    	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
>>    	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
>> +	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
>>    	{ }
>>    };
>>    
>>
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
