Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C84EC79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 17:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PIRrOKxFJ7TjXAsNgW8jSDC8lX0gMtzDwvNVgEBEbVA=; b=kCBaRKHSECRiTlY/pvptcqEEBK
	Qvtp0lAxx2LYcbcfB4QrhbXuPRJmwAxMzPof2ecNa3kkTHVSGBkn1bIq7jshpGWRG/KxdVmQkRucb
	d7cVaZ49kJ9YV7i2B1o7of0sllE6HHa5cfiWQuG9J4aHu5+J+TbdpXT3xwW4varO+HP1F1fG81t4I
	YQwQbcdND2lb1LD7LZaI6Xkge3Li/HHBpb9Ar847paO7KauuUU6CwNoPBFWM8fzhIE00KPWTIeWcZ
	zOIEjuFtphRdXTJhN2nwsadQv9Xq50y8UigxNbH+xQtfWuRaEMee9L8lPQOjJhLkzYRMEMIKL7eGB
	iIR9T3pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cnl-00000007R8D-45cl;
	Mon, 07 Sep 2026 17:06:37 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cng-00000007R5Q-32eE
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 17:06:34 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c254f8694aeso26332966b.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 10:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1788800791; x=1789405591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=V74NNxb8dY/ytrLpD3Pf305hAIorNLqeiKPQE+X43xo=;
        b=SgSthYf4EVbvq/iVeonMBeiDmlDodQbh3MkqaARBiWWA1iZ/nd2vPAUcaR0j8lYWpg
         leKOzdd0bs72rBiubVs1uUEFsD4xC4e+I6PCXfhbRJJvJLmEBfVW+YMszmoxrRhB4ry0
         9SiuCQf9Vn2OWJSdB2w9Kjd9QK/V6GUOlZiAfBxxD9IM7Y9R+XtZES2F0l8/gPLmnzGt
         uNJ8ikDWlc0GTkBQ5qbdpC74sgUcXarPccpM7T/o7yUPoCYHj2ZZxHX/HqTfJHGgYNpr
         p9STWR8AMZS5Wzxb5ZTo1YUXgwLQTSqDvkcvQZie/7Wx2yfsm0YGunJ7ftQcfc/M3cWk
         79sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788800791; x=1789405591;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V74NNxb8dY/ytrLpD3Pf305hAIorNLqeiKPQE+X43xo=;
        b=Ziv0+f90tlLWf4tccK98JJya3Ug/hb/kiP62kjeGd6YxVNJpnoUAFjpoqrTDUkp+Lp
         7Xq1NqmfPgReFH6fEyuCaHzrkOcnf5juja0nRmNUPKy3E2eOeiJJf/zRErKuuJvQqZGc
         nRWYmat8KDjg35RvNxgfRVMUWCJxhuPOhQ7npib8puvV9RlgVH3CJ4My5Y5DVA6cGX4b
         +FtffSVrQ6UJhkX0hvcVlOF+JVBABfoFxcjVVWFe3cHFG+/dBQSG6vlD6cUfAIIQVM8V
         Aewr8BTupumgkGj85VcE9tlwl2ySVu+sDP4NAHsqYBYCeffIyGKMZaIDhRrDjzQFFPTU
         ydFQ==
X-Forwarded-Encrypted: i=1; AKwUvBwdH7KJrjdYq6HpCg9mu3JZygU9LFgI4vLZlXzSWc+5ngaSFXzng42R+oKPC+vLwyc6T6QaRi1QXM8=@lists.infradead.org
X-Gm-Message-State: AFuF++kIo2AC+JO3UtA77o4IQaT1m5VDVCtYbJvRTjYLPkqjuUi5c9Ia
	z8/fapemJxOaKqKSzTPDpUVp/NnLpax0iK61gAFKaR189d94YEbVQm08sSGkaRbYBmo=
X-Gm-Gg: AYBFou0DOGW2jgzXjHFzvuBusnNanejz/kxAdONSfQg47GXOjDySDPYmDLRmqhwOOw/
	KJaim/Sn2i0gyGaCEja9G22X57KO0cBc7t+1XY1Wg9k7t4brR+gDCaThI03Mw74b56iJVRSoOx0
	tulOxtQraCO46dWoSGmSgR1QvznNqf2zzEulGVS8NMUoGhqNdAAaO8f/zvF6NamxWEV9Jx6E/CE
	MVk1F2QaYmqT7ji1GtWVmHANoWutIEsX2kUNYBGcdv0yHScVO2nmNFiMg38LEDsCDMFVJuAGPvW
	ZtgN2PFjcjqPZYHCRTlzd1pp1v7q/glI0TIQWTmDU9I+nQpRTJJpdZpRXRNI0C2tW4/GegTMj2+
	ErknEyihOEeAmnq7osMEekeLIfnEqgLAASyD2Pi8NtpoDYyPyG5dQ2WKMRUShgpCuBpOnqBN5Ps
	cYOgERRHwr0Ak78It6fXmLyyuvHJubiLtViVct+KmwLuj04alCTBtReLjafA1mcifrvu2QGUmry
	QkPBklSSNKE07j9jtA/P74u5UpCTfQaZabIUYeuQs3xGAB8TcBbkM0kZoYL3/AXmT93vN39sNBB
	VumN5hWFRnL0HEdnpYa8LrePww==
X-Received: by 2002:a17:907:179a:b0:c25:4ba1:594f with SMTP id a640c23a62f3a-c2903f8890emr88367166b.0.1788800790753;
        Mon, 07 Sep 2026 10:06:30 -0700 (PDT)
Received: from [192.168.3.32] (cpe-94-253-164-142.zg.cable.xnet.hr. [94.253.164.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c260d03644bsm498003966b.6.2026.09.07.10.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 10:06:30 -0700 (PDT)
Message-ID: <4699bdf7-9093-412b-8844-c2a48f9d6a5d@sartura.hr>
Date: Mon, 7 Sep 2026 19:06:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] phy: Add support for Airoha AN7583 USB PHY
To: Christian Marangi <ansuelsmth@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
Content-Language: en-US
From: Robert Marko <robert.marko@sartura.hr>
In-Reply-To: <20260827131551.26725-1-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_100632_812856_49C4151F 
X-CRM114-Status: GOOD (  12.21  )
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

> This small series add support for Airoha USB PHY and Gen2 PCIe
> PHY.

Tested-by: Robert Marko <robert.marko@sartura.hr>

>
> Changes v3:
> - Fix broken patch for YAML patch
> - Split the YAML for USB and PCIe
> - Rework driver to direct node for PCIe PHY
>
> Changes v2:
> - Add Documentation
> - Out of RFC
> - Rework to Serdes PHY instead of SCU (following
>    for consistency AN7581 implementation)
>    Link: https://lore.kernel.org/all/20260811124724.702467-1-ansuelsmth@gmail.com/
>
> Christian Marangi (3):
>    dt-bindings: phy: airoha: Document support for AN7583 USB PHY
>    dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
>    phy: airoha: Add support for Airoha AN7583 USB PHY
>
>   .../phy/airoha,an7583-pcie-gen2-phy.yaml      |   63 +
>   .../bindings/phy/airoha,an7583-usb-phy.yaml   |  133 ++
>   drivers/phy/Kconfig                           |    1 +
>   drivers/phy/Makefile                          |    3 +-
>   drivers/phy/airoha/Kconfig                    |   11 +
>   drivers/phy/airoha/Makefile                   |    3 +
>   drivers/phy/airoha/phy-an7583-usb.c           | 2016 +++++++++++++++++
>   7 files changed, 2229 insertions(+), 1 deletion(-)
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
>   create mode 100644 drivers/phy/airoha/Kconfig
>   create mode 100644 drivers/phy/airoha/Makefile
>   create mode 100644 drivers/phy/airoha/phy-an7583-usb.c
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
