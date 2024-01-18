Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6814C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=329zkgrFYm7NwHyoCg62cblOSnKTcflPaGpjpME5naQ=; b=gRNp+etV7m6xqn
	uJuzy3VrORohqvmhS6Z2sK4fhSEsTnbYFBO/uCE6cGgebvFnkLWs+BX+Z6GZFoRIxv7JYa7lKdFnl
	qh/5vDOk3bf6twrnrxiggdgNfHSQWASshk4COdjcVcelJMCTX5Nm276+2wNbb4/M3GgvrcGOS5sKp
	jM1tukhndQnmseySw8pvfC1oi69pCfT3KNNPCZZCO2x5ENdZdrvB57tOkq5x0NmA4hjzI88LVVY27
	JaT+fiZAUvO7koXUqsAmHo88IrHx42Z7cu41jXpCU4oM3jlLztNbsA6yWzUzp/0fFUH+1j831X5Vt
	yFNuuYvRxasPpiYZrAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSrG-002tVL-1N;
	Thu, 18 Jan 2024 13:55:02 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSrD-002tUb-16
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 13:55:00 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50e78f1f41fso13229826e87.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 05:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705586095; x=1706190895; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ps1E8PJMTt8mzlLH9eECx/CQbcZhGFU/1wZdq7L4X7U=;
        b=HI0X9G1ChDN5xz4xMXvwcZtdiHu+bd9CLO1FMxaHrUUnLsQhuqbbg798YykW6CARuV
         LICk3q7FCSQvTEmrgECZFX1cgWmt1Xp9km/lpCNFdts9KCcTxc+IAZld5wICF/0eR0wP
         DADvixtmUyabfmtmJj4FzdNcLsqwvqBH8b6lwaK+mbMbcnR3yz4kXpeJlvgWDhYkZQBZ
         z6DDBWYFWB9ezV5GtvqfoJZNax084pdhcCaHI3M1DfnFTrbwB6Fkd5XVkqER6RMjna8D
         xOsTm3+wDHOnY9kJQTYo0rlZLkZ/fEpVqjw/AFYD/aii+gIl1UJqxmAoNC143Zs2VW8N
         uaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705586095; x=1706190895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ps1E8PJMTt8mzlLH9eECx/CQbcZhGFU/1wZdq7L4X7U=;
        b=C8Qy93G6PyYj3YQSr16TOQXjb4y4p0Olvvr3pQxIYUyDVp4CZwulRJeKS1oOvA+u17
         5cn/CMHirlYk40Z2XBNm2H1wAvCInHVvpbk2M2H6Mh6kTeVPRbAKg9nFpvMzeS5oW8EI
         Dxh1hGltIzBTHdrxwVzmJrvZrjfEX60SfcLsgakyEdbTiBDIs0hDxzQduguepn1hgwEQ
         Iw9yF4hG9nI1h5YfmPR6pmxCsqIZj8Q99OxEydb+APcV939HowKdF8LZIZMWl+rqMzno
         x4sfNinfEiyLqIVozN/CrzLM+Hgw5sVu/oU9kDxGon2WjNIUM7uRkkKBGAhjxE23f37A
         UXWw==
X-Gm-Message-State: AOJu0YzBKRCpu5SlTdz2dApbrw2KNXnty/oKNSQ7DR/2TAeOsL6xyN3B
	FKU8NCAYwJXOEolnY++qMBCgVxvkNfMGvO7K3mAZe2TlMhB64J9nEon311SV9hQ=
X-Google-Smtp-Source: AGHT+IG81baX14qnfLZc7lP1lCoEd/MVMqnvyBVS2danUVivMYbgvenMBVknrh3McJP0uFBgXyCTSg==
X-Received: by 2002:a05:6512:3c92:b0:50e:78f3:dbed with SMTP id h18-20020a0565123c9200b0050e78f3dbedmr612042lfv.91.1705586095296;
        Thu, 18 Jan 2024 05:54:55 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x7-20020ac24887000000b0050eab7d397bsm637771lfc.256.2024.01.18.05.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 05:54:54 -0800 (PST)
Message-ID: <e28dc651-a573-4c73-b030-19dd69c48493@linaro.org>
Date: Thu, 18 Jan 2024 14:54:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com>
 <9a24a065-b649-4431-b8fb-78c733c07671@linaro.org>
 <CAA8EJppEFSy2=GKgkqC3uS15cO51KfxDrHtxHhAnA10kScYKhQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppEFSy2=GKgkqC3uS15cO51KfxDrHtxHhAnA10kScYKhQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_055459_397930_F7DFE5F4 
X-CRM114-Status: UNSURE (   8.14  )
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



On 1/18/24 14:38, Dmitry Baryshkov wrote:
> On Thu, 18 Jan 2024 at 13:17, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 1/17/24 23:01, Bjorn Andersson wrote:
>>> On Mon, Jan 15, 2024 at 11:00:53AM +0100, Konrad Dybcio wrote:
>>>> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
>>>>> Define VBUS regulator and the Type-C handling block as present on the
>>>>> Quacomm PMI632 PMIC.
>>>>>
>>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---

[...]

> Is there an ack?

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
