Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0321A10F2877
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 23:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIb3QwyvrU+7WXPTovruuKNzFVkGHREpKQzNTtorowk=; b=uw4qcnciP1NLLz
	7af5+3RGZn6beY4+mDL/2Nwks8ilO3p9ZN3sJrwJsJyxPBQqdJV7u2LcfNik6uilNidtWZOHAxyu9
	GkUYOy+bHbguX4ctEqXBvo/7vHaElbZJQpXSj+IYkUFxgVN3Gds2/v4ca+nsENXU4TnIDUXPpzuEa
	7vWSZm9JBlFHRn+QNFMptPnEWFwJa+Y+luYzHt/h8eVjs+Ol2WyE9o04hPaY/Fn9qEvQkt1ERVXOv
	OSaQgPPnnxPgADBpKKKpGCOexHgCYx8/pJ1SHDpzenKBEM0POncfweU/GqzO/NhKnRYQvQvxD2Ya4
	PGN4+eLZowCY+7nJkDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GMM-00000008J6D-0xhv;
	Fri, 27 Mar 2026 23:12:58 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6GMJ-00000008J5r-0fyi
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 23:12:56 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-38a428745e2so2913451fa.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 16:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774653173; x=1775257973; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OziGBdC4J8yoVgtN1D7aBpVXci5U7b76YaSG2nVXofg=;
        b=pGMb7UlOfC3gXriNR9rsDvDvesnPg099lyOFNR8PUkQSBwZEiT6qMaFFV2Bomfyoo1
         CBDQ+tm6zFr2zWrS9peAY0Dfl2IWayXRoBoh9lXfId7bQFIDCZ6D+JKdEzM1ro3FMfxu
         9U3kxUauRcPJjEZsKSTY9UhHSc3gYyuQzFeHd8Ehimq5sRXMkE9/933dYhgglyh8vX0o
         RBlVeZyu1mz865Ne7lnBbe6+4sWoBvKSANzGzwPgnfb15Q5MnW1FtZxPTLRZyrl/ZeaT
         G2Cgerkjay1waVtrOHGeytBGhUeYI00EfdqLA9bVCcXJT/hBpOSEco6/nGHOswogdTWo
         Ef3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774653173; x=1775257973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OziGBdC4J8yoVgtN1D7aBpVXci5U7b76YaSG2nVXofg=;
        b=T1ClsJTba+RCJqzTh0I/ssGK6XlSeQhp9QZ/ICdIQjixDLYDp+GqH5OgVUOrHz5aI+
         u2Oee/aRNyVzorA8qqsVAXL+w9gh13kCM2cYGpFV8h7jFWE5zI4IGhTMcmFofrOArTqp
         7LRMhA64NqAYKO+JdkJCEnqWB3zsaqCB9iT9uDw+RVCeHIOZTen5jrJb70gi7688GWtY
         ih8XsHrkHEwtcAXRcKWqBIUnEoWXUJzyaQZjsY0Af/p+SpxONofdnAcJp9kc2PGwx6YI
         7cTeWbebervklofb4RbBdNY17Aq6zLFNnQrimbiNxpFrVzVtRAzzY9N2+2nt0eaxm0mL
         cmfg==
X-Forwarded-Encrypted: i=1; AJvYcCXpZ9lr4PTdTX/cODNlC6AS6i7AmfdugD6WIwNRl92bgTQPREOtk+Gjgl0O8WD/bQk+wNTZJHxy244=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQIAioR4dwWaEingwagwS7bIcP3bL/B6CkL4qUbelxH8yd7hL7
	ZA4KxNaADsFl3E8x1XRFCkFRGq8OOqbzuCHl1+6hKrH8VIE2TwicPcsKAhAy4HQ48Os=
X-Gm-Gg: ATEYQzxUhxN/cpr9YftwcDRJihF0izRUv7t6zI9+p8Ru74Dbs2t7mrefTNePqCexAAI
	MUziO+lj959RC68KhZXTj+X7NPCNGm4pRSzCS+RtYxq2oC5ZM4+CV+xRKEuWC+YlAGtFIyCedyR
	8EOv6ZjDf5KLpBLve4OPILEmmHhwRet6vRqLzWBUzuFLTkf80rBxcQ+sZrLZnJgzFvhOJ8Hsd2H
	bQRjHlUnEEnnGF8+wCT2SHLlCrDNepnkw24/5CVCCKZLJgsmlZDo0uajky3tMBpg3MZ3MeT2+R5
	HuAO1IT6LhmXXjDy0TRxBD/xqTGtjdy2Tc569NcE0zVzQ9o0q+3NTsuwpgy17Vso3+bw4naPTc2
	kUMGeLTbtilnWFTDmk0JpGVRB5G+EJSJ+MjyPJe8LrNNNQTkuTQpAIdtfWxU32Yt2FbS4fZ7YI9
	eQN2yua9mQ2Znl1xatYEcI7DoSDgzdXESiSJNC9Rgsp1f8fblwvQE4156+AIUYAyg9YF+Zg1ruC
	nJUPA==
X-Received: by 2002:a05:6512:308f:b0:5a1:23fe:b047 with SMTP id 2adb3069b0e04-5a2ab5965c7mr751806e87.0.1774653172597;
        Fri, 27 Mar 2026 16:12:52 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b13f4289sm81235e87.15.2026.03.27.16.12.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 16:12:52 -0700 (PDT)
Message-ID: <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
Date: Sat, 28 Mar 2026 01:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_161255_237259_FCCC4E81 
X-CRM114-Status: GOOD (  15.29  )
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

On 3/28/26 00:29, Bryan O'Donoghue wrote:
> On 27/03/2026 20:51, Dmitry Baryshkov wrote:
>>> That's just not true. If you read the camx source code you can see
>>> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
>>> PHY to support.
>> This needs to be identified from the data-lanes / clock-lanes topology.
>> And once you do that, there would be (probably) no difference in the
>> hardware definition.
>>
>>
>> In other words, I'd also ask to drop this mode from the DT. This
>> infromation can and should be deduced from other, already-defined
>> properties.
> 
> It still needs to be communicated to the PHY from the controller,
> however that is not a problem I am trying to solve now.
> 
> If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
> 
> I'll aim for DPHY only and we can come back to this topic when someone
> actually tries to enable it.
> 

DPHY may be the only supported phy type in the driver, it does not matter
at this point, however it's totally essential to cover the called by you
'split mode' right from the beginning in the renewed device tree binding
descriptions of CAMSS IPs to progress further.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
