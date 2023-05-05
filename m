Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAD0C7EE2A
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 19:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHJHRykoP4QQJbGFsd+oyl1RS8M8/n2O5U/PStAESXA=; b=gE7fxrqJO1gBBI
	m44O2RbJ/kWOB6flOXvSsux7EUCGB70Y/sBsemeOKXCQVxl+8ntN18N+9SEqGUsBnu+RWpwIuELVN
	nPKf5mj3sGY1OZDvYdHhch0MS5zQkn8jCcTMI12GKbZD0zcJeLUXZbat94gejZqZ4E1WoVUx2TKzc
	yvTrH7dSqQCF3iOeSk6dtai0iPxVuAoOHnf5hP2y8j+Yz2mBREKoDXNkYvlfvxcyfjYi9Aw8aD4Gl
	Cw0rYmqLlYHT56yXc7D1YMqpQbQXVdWlQm9MNqAlV/lJOtWZ5qC7m166ER1RRHHuv6z0IX26Y9X/9
	vUbs2pxAcgShVCc107Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pv14e-00BdB9-2L;
	Fri, 05 May 2023 19:26:36 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pv14b-00BdAX-1M
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 19:26:34 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f14e499ffcso663934e87.0
        for <linux-phy@lists.infradead.org>; Fri, 05 May 2023 12:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683314791; x=1685906791;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3iZJ9fGhjhbbNzeAFBlmfcQc+gjKnOZ5KfzSZflffhY=;
        b=MVs6djWgRKnZBGYNxps9/00kkcIaVpTanY0bv6lV+9QuA7oAe+zMsz/Z9EBDcKc5jl
         0bqAauyycDZjfZh1tkcrdMerW9qhOGSVeeYM4Fd6ZlZNFK6+cdVq0a+UL/rxP6xwo4IY
         S63BnY3xe3LWVd49BKJaKOA7Urzl2zKsNijhneotxntoU1K40jMqh+zqtBv0Rn34ki/1
         9n67nRds4PjfHaAPCTyIZkogoQtU23tkya5NLJWqZDASMq8Ln+Xy6lgTaVVwE94O93Cu
         sNmWOMTBAaL1qlI0iEpgjS9M/pOeVNknYAGpwJfX7m7Uo3VrhkJzQYkn8sixe31WzEg0
         zXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683314791; x=1685906791;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3iZJ9fGhjhbbNzeAFBlmfcQc+gjKnOZ5KfzSZflffhY=;
        b=NM6qvjWKAp3s3Kds81LjyBZivRhU8bepqEqUiwPNyyE7rqRZlos+biMEvYkx6fzAtQ
         NauVpJ1mdVHhnDuM7nrr8fTdM+w54X41jhCBt8f0jn+D2n4U3zUAOlT+1mSpULFt/FrA
         5dueLhGIjiA/GqberqDG2aocq6KCN726n1Jr0yP5weg01/omdCkHkUrMiWJHobUQa6DH
         sVEKuKXLtYPts5jKEm79F2BsYOrmkG4/QL/elCDMOX6Hq7A3emA4mBMmG1CQAS1rJNP1
         tyvf563CpClGiVnah5OBYbnaOAdGZsiUY5sEzQi/ahuCSRyPKJoqohRWJh9HxPqBtBuj
         B2Jw==
X-Gm-Message-State: AC+VfDzjm3rHy+7upYnQ0cktaW4kf4Li2+rQUfSkSEnmUMG8EXKBiCNN
	jhMuenqJRxKpdzO7HImhPKv0Pg==
X-Google-Smtp-Source: ACHHUZ7BIu14SzjFhQTIytIPXgPw1F11LQCkHeaQR0KLUgWzQKpVnrM71jbROal0OQ7L/ot5xDESgg==
X-Received: by 2002:a05:6512:3905:b0:4a4:68b9:1a14 with SMTP id a5-20020a056512390500b004a468b91a14mr743687lfu.60.1683314791074;
        Fri, 05 May 2023 12:26:31 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n6-20020a056512388600b004eaeb0a984csm387537lft.88.2023.05.05.12.26.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 12:26:30 -0700 (PDT)
Message-ID: <958fec66-2978-1d45-baad-c735fab85108@linaro.org>
Date: Fri, 5 May 2023 21:26:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1683183860.git.quic_varada@quicinc.com>
 <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_122633_467040_DCC703AC 
X-CRM114-Status: GOOD (  15.73  )
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



On 5.05.2023 11:29, Dmitry Baryshkov wrote:
> On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
>>
>> Add LDO regulator node
> 
> As this LDO is provided by the PMIC, it would be nice to know why it
> is modelled as an always-on regulator instead of the proper PMIC
> regulator. Up to now we were doing this only for the outstanding power
> rails like CX/MX or EBI.
(which we then stopped registering as regulators and started
to manage through rpm(h)pd drivers and the genpd framework)

Konrad
> 
>>
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>> ---
>>  Changes in v10:
>>         - Add LDO regulator node
>> ---
>>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>> index bdc1434..1f5d14f 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
>> @@ -60,6 +60,13 @@
>>                         regulator-min-microvolt = <725000>;
>>                         regulator-max-microvolt = <1075000>;
>>                 };
>> +
>> +               mp5496_l2: l2 {
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-boot-on;
>> +                       regulator-always-on;
>> +               };
>>         };
>>  };
>>
>> --
>> 2.7.4
>>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
