Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6192C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 14:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0fXtr9b2goSal/sZbKO3YOXF6gcgk0n8jS4/BknKxU=; b=QU4edYGySLZB9E
	34SYQ+DCiKmV9VbECdvkN5oAML6c011stB7ZECPD1+fT8vJBGJbM3lXlUBd5nstUPHe7qJQ2UCYvv
	yuKP+ku2ett0G3bKxKkdTIhezcUTNOa0ECwesb2lWeXlqfGwPLy05XOe7Q4nXwfbg0h0aF1AhB2c1
	cosFz4ebH5Mpwd+a340zE9hGMS8LsUn0NaGsrSb2/tzVz74DvqRWnxKccK54Nce0XTIC/i1cmVdYU
	cnlsA486lxSDl4V0Of/k972j+f53P5UiJ7m/ooo7tvVDr+7bxYWlB3j1ftdqLj4GewPKzVoA+INUL
	lYMABcNPzrDn6ll3725w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot8Pj-006Klq-4D; Thu, 10 Nov 2022 14:20:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot8Pg-006Kjk-Gk
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 14:20:17 +0000
Received: by mail-lf1-x130.google.com with SMTP id d6so3491109lfs.10
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 06:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GKIM7k+YSkhSJchQG59Vcw7ysRCT3D7i5Em2qQX+ntk=;
        b=gOf/GguwT/ZqoSTDal1pRPsRe+sI+lt0qA65Q11J6hdecTXMqYYSNEwDEGH1ODv8ZZ
         NOqAIQtICm+O4yp5H1Xn6MAJoBmzgWxC09D/4yQh8VKBr9Ivs2HEuHXRQD7hf+fDJQt2
         7EOvBqo84G1TWsDEEpFCxMmKOKk2mBEYXPzPjvDpDzpQxbVkx1SxB2ae4AJDLHB1aHaM
         2gSIrNUyjCRw8BjEgwey6qGlKFpdBOlwFu4Dfo7qUqwvSJpoTANoGsI+52JT9kTPsX8J
         ogO+RK+maF8sXinpSDDMQ2/zK3XlSSGGSKARBVUTqnQxrj82a0X7Ke0wHg3qXZAUaLUA
         SIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GKIM7k+YSkhSJchQG59Vcw7ysRCT3D7i5Em2qQX+ntk=;
        b=YK/c+Y0QjU63T/MgAwQrLS4sJoKMiY7pSuR5BGmoyisofKNVmO0VjmyzvvtoVB+HNW
         e/UEgucYDpjEUZ9wy9A+jBSBdCaXWbGj/gWJfizNE18j4gZLhDyzgUBoLxpl/Lso6bIh
         LqiHyaFveagYhzLrqBpWzMEAby1GBRVBu+cUZTduxL8cHy1Ok9OvbeTByCCurOiKPu69
         tc6ZnqvbIwqfnK26uehK65ezJ3KVEMBqdIopwa6UoWl8oTflUAQ+Ha7YHAotNo2H65kM
         dHIP2gEa0ZF/sWWVpCm3wGvFl1GqY4PiqjA/4ND0SBDdf0BhNufNQztrjGvN7QVSDgZb
         kd+A==
X-Gm-Message-State: ANoB5pnyIAoP/wtk56hGItE+X91BEqfWWNIhDjWFZiE6fFO+VCBicjxy
	gxOlkaXYaBRlIUQRElYsmW0EdA==
X-Google-Smtp-Source: AA0mqf6UHa2taM8UHFO2M6pHk/KOhKDjydLDTxwianehLxR0LBkkmXjWc7S9lghiT8p+wT4pPK35JQ==
X-Received: by 2002:a05:6512:3b0f:b0:4b3:b6db:8ca7 with SMTP id f15-20020a0565123b0f00b004b3b6db8ca7mr1217969lfv.590.1668090012679;
        Thu, 10 Nov 2022 06:20:12 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u28-20020a2eb81c000000b0026dc7b59d8esm2700050ljo.22.2022.11.10.06.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 06:20:12 -0800 (PST)
Message-ID: <37fe9a22-7ca0-e4e5-ebff-4eb56dbb74eb@linaro.org>
Date: Thu, 10 Nov 2022 17:20:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8350: add PCIe devices
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-8-dmitry.baryshkov@linaro.org>
 <Y2zYHEZDbNoGumTl@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y2zYHEZDbNoGumTl@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_062016_601134_BD895DCF 
X-CRM114-Status: GOOD (  13.59  )
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

On 10/11/2022 13:53, Johan Hovold wrote:
> On Thu, Nov 10, 2022 at 01:33:44PM +0300, Dmitry Baryshkov wrote:
>> Add PCIe0 and PCIe1 (and corresponding PHY) devices found on SM8350
>> platform. The PCIe0 is a 1-lane Gen3 host, PCIe1 is a 2-lane Gen3 host.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8350.dtsi | 246 ++++++++++++++++++++++++++-
>>   1 file changed, 244 insertions(+), 2 deletions(-)
> 
>> @@ -1761,6 +1957,52 @@ tlmm: pinctrl@f100000 {
>>   			gpio-ranges = <&tlmm 0 0 204>;
>>   			wakeup-parent = <&pdc>;
>>   
>> +			pcie0_default_state: pcie0-default-state {
>> +				perst-pins {
>> +					pins = "gpio94";
>> +					function = "gpio";
>> +					drive-strength = <2>;
>> +					bias-pull-down;
>> +				};
>> +
>> +				clkreq-pins {
>> +					pins = "gpio95";
>> +					function = "pcie0_clkreqn";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +
>> +				wake-pins {
>> +					pins = "gpio96";
>> +					function = "gpio";
>> +					drive-strength = <2>;
>> +					bias-pull-up;
>> +				};
>> +			};
> 
> The pinconfig should go in the board file.

Usually yes. However for the PCIe we usually put them into the main 
.dtsi. See sm8[124]50.dtsi.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
