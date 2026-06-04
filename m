Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29619CD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 10:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQTkCJ/5wa9vLk6PAfLnSfuh6aMsKbQ2LznXTP7d0BQ=; b=BiwKMjlYFF8eEl
	PWFd3jUyNqsMjJ1D++dR/RHz9VicACLFVCp7AXkNLcMxwzTN8RVEtJV3cFF2Rg7B/UA+ehZfMD4Bx
	3AvrVpuR4wsmM28tzlgjVUsIBZS3Xbz8VSpRT3ald33Ogf61VkkOZejdRoYFglz9DSsgR1XA9lA6W
	9ECRuO7KOCxkCJ24p+kSzmvmEcw1P1f/aDogQ0p9s661h+qDrDwZOa/xpb9XAUeMcOaLliOzgpWCg
	8je49am28T6D71/1U01Tz0lZAZslkqjAF8UiyL74m3TnNOyuQKWBHOTsTfo1/bv72Jvzns3tjgmVA
	LP5fCnItq6j57L3P+V0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5iV-0000000GbEH-3AcY;
	Thu, 04 Jun 2026 10:54:27 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5iU-0000000GbDt-0OdE
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 10:54:27 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-396718028bfso498951fa.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 03:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780570464; x=1781175264; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bCnxhfojGBE4En3AxLCMLMPhWtZG8rg5zO2UJYy4dS8=;
        b=oPCWLjq+1iNhf8y9GeKGaPZvNJetuxSKY48m2FTc/kpxjFRTJ1KAmlez1Qf1Qe9QOd
         4GgSgPwqWVvE5kPB8ZHGcGHS2LG0LpcaRK0OvZwxDkNr+ukVvEbPJM+ixWHJoKg47ctl
         JjiTb4Z6oGOZt/kaZHxITyYf8B9m6bUnuRDwbr58Om3FV0wAZfGH3Xk2bnG/xfG76NEx
         0LyKItJ2BNRCCb/mg7/UKpWoj0HNt6aYWd2IefhgZwbS4YMWIyWSklxXY6Oi207FakQV
         hySWr2uRtfDdgBuySYGqMJZOOT+Iw78FJlk16TKbJWTC9EOyc3WyXalISAdkxz1I25MY
         n78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780570464; x=1781175264;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bCnxhfojGBE4En3AxLCMLMPhWtZG8rg5zO2UJYy4dS8=;
        b=B4adtNP/0ze2yB1BWGEtIgWT0bGD1iwq5R7mgQCzTo2yh4OFMwB9EB4ywTtjEOFlN7
         eAdu4hsZXzP/9rxJk5f7BuHFbpdxKMEFc3nq7fJse/QR2brkZGhMhKgEy7xfCzYcjqZ1
         vm/eeXj8l+qfBpqnTg8DQgYvhPK5eSCPkKuiJy3ZjEu7yd5tVL/7Xcp/xAxlPWSnqy8Q
         bla6DCU1JUX4xD6foNYzVuSrWh18lXBun2FjRnzmkEqGjNnjCphBABl/Yrdg4BUuGvWA
         Id49pGGT/R5az+TPKaDLCKkM6wKku2vdXxTR7Grh22/bgu/b7IKntC5Lge5yC+DAFmtd
         ud1g==
X-Forwarded-Encrypted: i=1; AFNElJ+1ORnyTJhOLNr8iQk7yhcLoHN3Tl1I/yDnzMAwSmvzWcPoOW3jEg8MUyCm8EpJfj/yhn1nvBTQnyA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhl2j1cnqBaxqPXX/Kwpud6FB4hNJdKEg0neXCiS6+Iqj9Y8fr
	mGqrFw0bRbMSF475wWuQ8uj3mlkVDlLMyGCyLyZFhns3TkEroz+Qq92g95/IAnEaME8=
X-Gm-Gg: Acq92OEuszAVGN9l9NebjbhaKauiz+ZJTJDY49Syt+qw8bhn7JZC8+pseftG1hiIvHj
	hbaIy/PJOSXSHO2zDYykkNdLiMmxSLiMEZVy3fRZ/poV/d2H1nWSURNS3tb7APDUHK0sqwJYQH6
	iZH2J+/dDyi+yrAzVrngeZnkhliMcLpYbe4OXdv6/10iekxGtwzaO7Oq2qBwR4SUxLSg/SnDtLL
	LC5siskl/uCrOgoun15e9dk+DrZ+ixphRWe9+2hmrQQcQqO2gYEiPiPeSrLS9N9ttgvwgvid2pr
	25tzB4t14A7SnmH3OT1Iz0zlTJAZIxGX/oaJNYg1oS7o3xmLCXzQYb+2CKqgMeFxIJdlHMcVBaF
	x/7yORzmuVAH1r0g8cT741jHUAzxC8YEtrJeSEsxFUNYmfA/G368vnkUG/0rvnFaiRzKFI5rXqF
	TMQiHGq1JsTB3S3/TsKY1Q33DYmVE4oC0fhOChKNO4CFrA2Qzb6vDIy4BDrZh3MDO0n8HCiirkk
	zJTnapenXHtxXRv
X-Received: by 2002:a2e:be20:0:b0:396:92eb:36a0 with SMTP id 38308e7fff4ca-396bed4f78amr3316271fa.0.1780570463834;
        Thu, 04 Jun 2026 03:54:23 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2d5ec0sm15504751fa.33.2026.06.04.03.54.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 03:54:23 -0700 (PDT)
Message-ID: <81c069f2-bb15-44cc-aefc-a44c1c6396c6@linaro.org>
Date: Thu, 4 Jun 2026 13:54:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_035426_159795_D7402AD1 
X-CRM114-Status: GOOD (  14.42  )
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

On 6/3/26 01:51, Bryan O'Donoghue wrote:
> On 02/06/2026 22:59, Vladimir Zapolskiy wrote:
>> On 5/23/26 05:48, Bryan O'Donoghue wrote:
>>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>>> PHY devices.
>>>
>>> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
>>>
>>> The schema here defines three ports:
>>>
>>> port@0:
>>>        The first input port where a sensor is always required.
>>>
>>> port@1:
>>>        A second optional input port which if present implies DPHY split-mode.
>>>
>>> port@2:
>>>        A third always required output port which connects to the controller.
>>>
>>
>> This port numeration is imperfect, because port@0 and port@2 are required,
>> while middle port@1 is optional.
>>
>> Like it was stated before a number of times, it seems natural to operate
>> with two ports, where input port may have two endpoints rather than 3 ports,
>> also that approach solves the problem of a hole in the port numeration.
> 
> Can you confirm this is what you are after ?
> 
> port@0 {
>       #address-cells = <1>;
>       #size-cells = <0>;
> 
>       endpoint@0 {              /* primary sensor */
>           reg = <0>;
>           data-lanes = <0 1 2 3>;
>           remote-endpoint = <&sensor0_out>;
>       };
> 
>       endpoint@1 {              /* split-mode second sensor, optional */
>           reg = <1>;
>           data-lanes = <0>;
>           remote-endpoint = <&sensor1_out>;
>       };
> };
> 
> port@1 {                     /* output to CAMSS, was port@2 */
>       endpoint { remote-endpoint = <&controller_in>; };
> };
> 
> This works for me BTW.
> 

Something like this will be a much better description, below are additional
notes:

1. for endpoints to sensors data-lanes and clock-lanes should be specified,
2. as it was stated before the numeration should start from 1,
3. output port may be just removed, otherwise there are supposed to be 3 (!)
links between the umbrella CAMSS and children CSIPHY devices, namely the
links are a) parent-child layout, b) phy connection and c) media endpoints,
it sounds as an excessive overload, where a simplification is possible.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
