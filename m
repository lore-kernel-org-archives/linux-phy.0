Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0696210BA45E
	for <linux-phy@archiver.kernel.org>; Sat, 28 Mar 2026 00:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfN7kjHNzehQt2FIXZbuXM3HqlvQ7/WtvsMx9XwlI1Y=; b=4gI4XZz56WKSg1
	Pew/9qL6VTEV4APuhKsshcaiJFwWgd17G9hlZCOZlF59Q7fqSQRIuYMGhVmkXlc3o8kaMGHcYVU7b
	h8DcVaG6V9Ni/NuDzREMipMW63rqQG8oICdm3zsXg1IK3bqdBBzVdAdHwh1CQbaZA9lNb9N35XvGM
	QtJDXzGBSaVo+F5i6Rm4jksp9ghL0rqHydDs7oGX+rOdUb8xgAdk6u+YgD/sZ2HEJFst8oJnQYzZ3
	lcYP/MIffOLKKV05A30ApNNsMoi/2X/VVqsjcEcLBzN/itmmB4b0uCGKOVO0r5QOMyK8f6O3bJK4g
	ruBA85N++NpHJlFi7QMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Hk5-00000008Ng9-1mSz;
	Sat, 28 Mar 2026 00:41:33 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Hk0-00000008Nfl-0TXB
	for linux-phy@lists.infradead.org;
	Sat, 28 Mar 2026 00:41:30 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-38c664b59dfso1239081fa.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 17:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774658486; x=1775263286; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NGqFSu/F2IhY+ii28nyc1IJ0LboHG+irAmTUkiXh190=;
        b=u7TEq9/3CHdu3t11OpHZ7cLKieUe+ciFfW1/QikL8FGOe6jLpZnrlVv61sKVKaFh5Y
         itO26rhZdyeHLy85XcRuGh3G3xpk2aAy5e5XkmIp4UwsxUAOLgykmB8O2V42kUAyAQJL
         p4ZJ+fCBhh7MTR0WDCzqgm7/X3Td0J3nrcOJT4OgvRCMr4gILPA7jmjM1BhgOxXvsonb
         uJXRISe9iyjoVIEN8FRg00Dx/W2wTCfk+ayZVoNTnyw8Z39fe1Fd4n6FtfE2RfgJ4/1E
         +esYio1r6N2Uefwn0y/45ho7vc52EmWBm0JHvNDbLvJamkxorfrU2uXUk5wuQyTQXN5O
         S83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774658486; x=1775263286;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NGqFSu/F2IhY+ii28nyc1IJ0LboHG+irAmTUkiXh190=;
        b=GJBYgG+fPGtpAo4e1tIY6p4IFm7riLDaNRXaWiY5QtnnAgpt+NiZJbdAyZZFiiAlAl
         SrK1tDJLmVxB0Uw/VvRq3+N3Z5/1SAGvrVgtAvJNfw1+4U3TrPkeXnwHl8k01x6T3R02
         qix4cr2ge3b05rKZjC6dWi1sH4oiWOtoywN218dUVUudi7TTpjdpflXRRmRpHjgOQWWD
         nLu37+CUutig92FKTIMhvCLFHiAwgaGSyPqFaRUIC8x/1Vo2KOPcRXu7yvxoPX992AAK
         awvR41pjAzST43i8ufnbqqcD5ZWnXMmPe9UveyFtOPpCxNveGuibb9u/zBE3SaT2BRKG
         pCOw==
X-Forwarded-Encrypted: i=1; AJvYcCWTd1IfQbwo82TY7HoHX/ca9HFAU4IJ/uZ6aUnoEHTgZZnVEWhtLCgp6T8AlzjTqWuJzAMCgb2a4B4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7koHqE3CwqBSqRjlrt6ms64zS3bZcBkcce5DQFaf4rcN/ks4W
	yhKnArdegfVPruuZiFZ/kjwhBMlOvTjp5+V8rVHIhemGzEnGNUoMHzfVqdEPKFtD+SY=
X-Gm-Gg: ATEYQzx+3AJv0wuPmgDe2qGzxSc3eS6vKThsMLOFGBJAF44HdX9fGrX1lpmeQS5kLSM
	ah/AggMvqulbHj//uicUxUjkLMamgiC/2S5sJylzjfLjl3KJE6W5SkKgRfOhhRR+E2D6E9ZNMnU
	gJ5QwL10Tu500HHGP28iwT5zzY7JDwA13MJKRSk352sYR+qjAphYawlJLIrwmiZxlb/vlip8wRq
	5ID8355iTtlYsD0vcUOfP60ao7/UOc3WauwLILtv7gJ67PY0i7AhZvtzF4x+rtSL+P/FZRTAHzT
	/Ex1ey7QTDv8JmFfoG4Av/51Mk8j5dsBtL8xizLGC1DpYVmS2oLbI0b2CRxIB8RBSjoqvBovkmP
	iVhSVczk+js0BJOnqmac1gubC5dcXhxZY9YgvUzclp1kLxNAmPFatFueXwiedyExAncg3kJhvB7
	YClawQB5d0FXmiKRPgtc+Z8IyZX7yfQI5M8+1owitSGxdkM+hDkWjwZzAYEXquT/7uNNlRBUowo
	UMDWIGlg/etdr/V
X-Received: by 2002:a05:651c:4cb:b0:38a:3473:526d with SMTP id 38308e7fff4ca-38c740675c0mr7346841fa.7.1774658485521;
        Fri, 27 Mar 2026 17:41:25 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c8389524esm1397891fa.21.2026.03.27.17.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 17:41:25 -0700 (PDT)
Message-ID: <d2ebd15d-71d1-4063-903c-2b5971696a5a@linaro.org>
Date: Sat, 28 Mar 2026 02:41:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
 <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
 <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_174129_666868_7CA24DCC 
X-CRM114-Status: GOOD (  15.78  )
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

On 3/28/26 01:23, Dmitry Baryshkov wrote:
> On Sat, Mar 28, 2026 at 01:12:22AM +0200, Vladimir Zapolskiy wrote:
>> On 3/28/26 00:29, Bryan O'Donoghue wrote:
>>> On 27/03/2026 20:51, Dmitry Baryshkov wrote:
>>>>> That's just not true. If you read the camx source code you can see
>>>>> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
>>>>> PHY to support.
>>>> This needs to be identified from the data-lanes / clock-lanes topology.
>>>> And once you do that, there would be (probably) no difference in the
>>>> hardware definition.
>>>>
>>>>
>>>> In other words, I'd also ask to drop this mode from the DT. This
>>>> infromation can and should be deduced from other, already-defined
>>>> properties.
>>>
>>> It still needs to be communicated to the PHY from the controller,
>>> however that is not a problem I am trying to solve now.
>>>
>>> If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
>>>
>>> I'll aim for DPHY only and we can come back to this topic when someone
>>> actually tries to enable it.
>>>
>>
>> DPHY may be the only supported phy type in the driver, it does not matter
>> at this point, however it's totally essential to cover the called by you
>> 'split mode' right from the beginning in the renewed device tree binding
>> descriptions of CAMSS IPs to progress further.
> 
> Okay. How would we describe that there are two sensors connected to the
> single PHY anyway? How would it be described with the current bindings?
> 

An RFC example was sent about one year ago, it allows to specify one or
two endpoints under a single phy port:

https://lore.kernel.org/linux-arm-msm/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org/

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
