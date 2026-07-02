Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1356C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 08:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIHVRKEU4IDFA/JhA/J4PA4A+dnf2tlJwkUqR6MSOqM=; b=3m4ytpRtT2RT3P
	7nOaGEIW02E8EdSOI578f82o2zRf7uRulVRvJFf40TevWVd8z/KLW1GbB/6RHuafF08t2ea1Bqwyy
	sl7vy2da86cYFwONoJ2P7rZnYabUJw5W9//aY3kYbYNkfLTcJXVtNt2TUr5hI+OpZiWg6U0uvapDE
	8AgtHyKLaYBpHLomslF70wOWaAE1+ONpzHl2tNd2yolWKpGggbg0G1yT/Mcn4oyOLdou+Z8S5h7gX
	VbiOZbHMioNposGQoX9GinyKw0jRlhTT2eMcMJUJr0DLseotrH+GAEMfNDe0AAy/U+lP7aDsmEYjX
	yNKOHOS2EFQogTIqzx4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCpw-00000003sl1-0xpw;
	Thu, 02 Jul 2026 08:31:56 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCpt-00000003sjV-0qgI
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 08:31:54 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5aeb36c46bbso184535e87.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 01:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782981111; x=1783585911; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uyIInBymlHfz7VGDGtgQL8R4WXsM/iu4ZoItEUD8FE0=;
        b=jMMI3YyqVUUPzt2UJOEuKpNasjhC70bKMkjcMOiti2z56+M0/mIjToC1ONAdDGfbeq
         T1E3OIB1sqrqbPfyZOfKkuf1aQh8YYy816fyrecIaB5dzQyXYGjPYM7hbNqseFLyMTS6
         JV8NNiAX2hC/06EvbIA9U2zvGgaOkd8qJB/RXfgsfazdAmOAqBvgpQuvyUUamocYEbWO
         ZLb2JAc9Nrd2hlnY3UPuLwZMKro57qKYuQaf8wHcXt52wYte81Qsu5rZNUVAIjrQ7nzR
         ROcDfq2hh51n90VXPPvc2EEuaNKai1V1KrmyMYktsd+eIL/nm0NWx/Fqr5nmohXZK+Xm
         5zWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782981111; x=1783585911;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uyIInBymlHfz7VGDGtgQL8R4WXsM/iu4ZoItEUD8FE0=;
        b=QTSBhliH6Jxse7AU3WnRDJrZhkit2OXcBUFZqfSOfQfG9u7bdZT4b7Qb9RkGPhK/OO
         6JbhmdGePO/gIK56Ey18wgIg/hVmcjmg2jA5PqX6H4zeiGHkzSeH0G0sNhc/NddcGCvO
         BbNgUZmk+pITcZvy14lT63PKT3jtOgLUVExpvOwQVCv2+eVdDjSbD7zr5uWN4RklwuLR
         zmN6Lvh7adEp2j1HxHmU+FavMKIsF+xNIgmyGGtuGrAS9JTilwD97h9A5vXopEkgNYIG
         g0RcEj1C9JrIuMiJmbqUHrrlmouAzUh3wjB/Xvtp2l4Dr1zSoT3emEDODqR6bpe+ejW4
         7s5w==
X-Forwarded-Encrypted: i=1; AHgh+Rp3XiAitGcsDXio6ai/mpw3WzXdakbHNCF4WLWCEqGtsXNPYumSf/6yokH+VavK/mKI3HJRfIQVrwc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwS5Dk1TIrGe4PjbZqkBsMMUa0aoL2LNITMIi3sRpArFyMb1l3M
	xJa5aSV2qmNZKEDbgwa1oD79e1ji8GOGcsJuhRtQZVXpEzG5nnpuIxx/BczeUaJPaBQ=
X-Gm-Gg: AfdE7cnsTWxPEO4Z8ZmyqB/hqQrKMuLdFU9XVAifM2yF2RaBzAufXqclc+6FEF9SX8P
	lI0XcTIh3IBUIfw47SN/3FjWJidB7fBWgLBcDkOSHQmJPhQTNXCU0Hw+75O1MBp1XyhE6HeniEB
	GGNOdrIN3dUq3hJFo7oaVaIgOmqsc11qv6ffICXMNH4GqebfygetDBObBGxVn5pCwIOAwIuEaT9
	U8bA23GGxl24xFaaRoymhg9pBB5n82yTnl5jtT3rgg4Xatzi7+/6qbO44NhSmwmFwTCz816cIRr
	86yvaQT6ewhutBZTcNDMQGJhOngf42kPAZi+QUFU0kJ53Pt8DRDcjffl9yK9wbfzF6IbS0xuFjT
	Kl6+/yJpr/M+CYapMyZ78Yee5cWpFMNa+4AjUkBEKoQ5FHC8FG5sztWH+5YxkJxFpMBImZm0qXc
	bVgDZGNRfbuRFjQy2vElqwDuLVthVGHB29wTQhcqh972lXI7+2NuQQuZtIEZievoyYpNw=
X-Received: by 2002:a05:6512:1319:b0:5ae:b6cf:2864 with SMTP id 2adb3069b0e04-5aec676a8f3mr825148e87.0.1782981110761;
        Thu, 02 Jul 2026 01:31:50 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec899171asm537377e87.16.2026.07.02.01.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 01:31:49 -0700 (PDT)
Message-ID: <1c583e24-09db-4d90-8f32-d3d3961188a0@linaro.org>
Date: Thu, 2 Jul 2026 11:31:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <7c564df8-5c5a-4b43-806e-5e017e5c51db@kernel.org>
 <ae3a381b-5697-43ee-bdfd-aaf2d22ceedf@linaro.org>
 <6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_013153_270277_FEE8BA12 
X-CRM114-Status: GOOD (  13.61  )
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

On 7/2/26 03:08, Bryan O'Donoghue wrote:
> On 02/07/2026 00:37, Vladimir Zapolskiy wrote:
>>>
>>> Inserting bus-type into the PHY layer is borrowing from one domain
>>> linux-media and pushing the concept into PHYs.
>>
>> It's the other way around, "bus-type" is an endpoint property of media
>> devices, reference to video-interfaces.yaml to get more details about it.
>>
>>> phy-cells = 1 with CPHY/DPHY specified in the consumer, as was Rob's
>>> suggestion will specify the mode.
>>
>> This cell is just not needed, and unneeded complexity should not be added.
> 
> I'm going to stick to Rob's initial guidance on this.
> 
> https://lore.kernel.org/linux-media/20250710230846.GA44483-robh@kernel.org/
> 

Sure, the discussion will be continued abouve v9 of the series, it's
just a chance to do it now. Rob properly pointed out, that the invented
"phy-type" is not needed at all.

Ther fact is that the whole placement of the CSIPHY to phy subsystem
looks execessive, since you add a driver for a media device, there will
be nothing PHY driver specific left in the CSIPHY driver but name.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
