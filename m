Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C12D606A326
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 23:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cpoqQCzv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bJBnV7fRSTiMkkA4FG+EP0uPHfhieFarZj+Byl6KPoY=; b=cpoqQCzvxSzKgCCGHUOa0q7Wkh
	rf8U635aTwhLZrfAEsKuUemSohUX9xw5VASTvEkmCeT8NHTnsdk15n4cWt4gKZJrrj+Mo95/XdtQV
	o67Bu0kAZXB+DeOdnqxvDblkQqpQ+H8kzJjXugOdLglYLsxyEDEH9adY6Naiemd58hWheHjft1s3E
	tHEceqHh5+MuhXVZw05Cj2Fob4+2ctgDzT/4dIjQPQF+uysT5dg6i6xcpsr/w+Ot8rR6T6VeNwiil
	Eev0qnBRbvpLS7I38J1bkuH9CWDUFwtBm5GpjDMSdqiVX7GKq+L7g/iDw9QdxkBB3ANGGu7SKrJTR
	EP0mKDhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvXh-00000005GJe-0slX;
	Tue, 10 Nov 2026 23:46:21 +0000
Received: from mail-yw1-f176.google.com ([209.85.128.176])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvXd-00000005GJ4-455v
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 23:46:19 +0000
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-8b305312e4fso22724427b3.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 15:46:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794354376; x=1794959176;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WCdKUUEAMgyuIUvweS/CVZqWS7quwtCy3Zzak2dFXXY=;
        b=PvI7joJsw31Qe2Aj04803XqiOzdS2TVpNk24IKfCogFOYe34SsnyDa2ch/tx7paORf
         d07IwIoMfytsOfmdltOHcnTJRaodFsKtpZ5/mQ/nqytT3ZMQGpFG4RDmVX05v6gUtahX
         aBEJ6X4/Ik3Nkh3ohPAKtqVY1ugaboKu0VIy3jgn+Umo+bdYocX5MmyTAqIK6UZcXeb3
         C+83EBvrgLE4Zy+28i1a2tSNL6HmoGF7/Fco9fcaXIzjM3swJIUttmocxltLN/UyUIL0
         g60+GF3Q3yLq4PlWM5gSjjzjfTDkL6SAauD5t6qPp+9FlMb19ncYeaJJNb1bmlcyCk1I
         Y+Eg==
X-Forwarded-Encrypted: i=1; AL+hErFuylvIxdiXvoWAdXKODahHlwYRq6vCpM9OZXD/y8LOCqdRwX98GWwkTdpIF4NlSjQnKew0Rqqv7rc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8CFhOD2aqc6zGhkZ10yGD01JPrvaB0G4zXn8zFgp3Q/SrYLFiN
	Ba2STPtEwk0xpaCiM0oFYK7iYHFiXHIK6V+haNMdC8cB3cnz5jWb9dRT
X-Gm-Gg: AYBFou20WMIIHBt+WoxPfeY4T6fvPPo68F6VQiSF/G5WfY3OWQt/f2NSrAUI1MrFIyM
	CWSezJUhjQtSadA7S9V6uwXs4aNd4segW9mDOn95LsY8QvZ1x+gE8FdaI6K8ayx3AXbcmCcYe0J
	WT+sY/b33HdBHYQIbTx8Jx+DwRdMPXeTbeSbOQaOxMbSQyTkKfQOEi7+IL72JYjgiqB6cyBtrzE
	w2ihgFRmDYaz70AVW7Ch1C8n/AcH6sgGuRLUCNc8s+VEU3TBAWF3yEHwUGOKiKZR4psU1tUfc3r
	BJzzZtL6FyzTGVQT4jgyv8Y9XN/Q4eXclNjSTz9zAMIfhWh8/2WyuOZWRvf5l0IhXKHEL7kVX4U
	JRJB6sDFu6Md8yRyuDTZSYaL7GSii510cyETWVf6kB7f0xb5civjdFvXCjRI0fPy6cF2cd3rNzI
	gTOXE28nfqZ1ysHelYVzBGKUQIeG2MSX+mBPhU3qm0D8OgMk08kYgdaxEvT4R+o3wrTB+m0xy+t
	UfoXAmtlLvtRhyr88Yt4kmjcfpiNXb7cR7ym7z2YatX8YkPZKEqw7mDxZO5t/1731ipmxOTDXal
	LUlfaLZMwFfbl6LgQsNSFGQ7HPrZg64F7TlMrqyFMct/m5X4r6KjkUBu9ZaZ+mmKD288Aez1
X-Received: by 2002:a05:690c:e3ea:b0:8b3:15c2:24a6 with SMTP id 00721157ae682-8b3a7ff3419mr7031107b3.17.1794354376630;
        Tue, 10 Nov 2026 15:46:16 -0800 (PST)
Received: from ?IPV6:2800:a4:806:ef00:2f77:7097:372d:6d14? ([2800:a4:806:ef00:2f77:7097:372d:6d14])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b3933c59cfsm31871827b3.17.2026.11.10.15.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 15:46:16 -0800 (PST)
Message-ID: <ab79818e-4b4c-4b58-bd2f-57d9ae4cddc3@andrewgigena.dev>
Date: Tue, 10 Nov 2026 23:46:06 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: media: qcom,sm8150-camss: Add SM8150
 CAMSS
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
 <21be3761-9da9-48c6-aaa1-b56f8625167a@linaro.org>
Content-Language: en-US
From: Andrew Gigena <mail@andrewgigena.dev>
In-Reply-To: <21be3761-9da9-48c6-aaa1-b56f8625167a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_154618_022599_1777C7C5 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vladimir,

> That's an intermix of names, and you will get a review comment from
> Krzysztof about it, I stand aside.
>
> Here too.

Krzysztof did comment. I kept the vfe0/csid0/vfe1/csid1 order from
sc8280xp-camss.yaml in reg-names and interrupt-names, and asked him if
he prefers another grouping.

> Drop 'gcc_axi_sf'.

Downstream sm8150-camera.dtsi feeds GCC_CAMERA_SF_AXI_CLK to CPAS and
x1e80100-camss.yaml has gcc_axi_sf, so it is used. Can you explain why it
should go?

> Drop 'cam_' prefix and 'cam_sf_0_mnoc' also.

Prefix dropped. I kept sf_0_mnoc because SM8150 has a CAMNOC SF path.
Should I remove it too?

> Or C-PHY, right?..
> In fact you shall drop bus-type from here, because the link between
> CAMSS and PHY's output is not a CSI-2 bus, it makes it inapplicable.

Agreed, bus-type is gone from the CAMSS ports. It only exists on the PHY
sensor input now.

Best regards,
Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
