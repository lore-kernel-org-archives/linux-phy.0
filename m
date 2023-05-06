Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0F0C77B75
	for <linux-phy@archiver.kernel.org>; Sat,  6 May 2023 11:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOBop+389PMl4ewaLkW6pOAqspTWf0KX5QxGXUMFWxQ=; b=oXn1VgzIBIz1ui
	ayZtxSxv8ArvjqRBC+mGiee5KEtTH3nRhUbEy9xvzSE1O0fm+2QkHXGKicCq84uktsEPmtmGp74rx
	f+cjbcj9iRpHHROOYTVfiy+K/3hqVp5Bmx4MJ6Ms8ebTqPR1oE7l2eTdkgRF4LZXMrxYxCeHz9Wgc
	c7UiJTs6Bhh2SDGABeH69CkQlDIo6Vez7g5GBC1Q8h83tdWccK1IV6IVte/9DGWYpHo/VqNgnPZ+q
	+qBSmRx0ChrbNhsHCZBCJx/et8zNr6XEWz4AqSsWqD3LT5VX4mPJLLnWSnGvCy3KfEGRe69dkG0Ey
	edCioB8D1Oa78qQpBqDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvGGs-00DKIM-2A;
	Sat, 06 May 2023 11:40:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvGGp-00DKGa-36
	for linux-phy@bombadil.infradead.org;
	Sat, 06 May 2023 11:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Q89WWNqgDfTX8XQe+iwDXWhftOpjNe+SVaLkM27Jjlk=; b=k+1UEW+QzIlb5EwQw5fksY5PzY
	GpKlCk1c8uK9S+sgt+S8CwIoGqsuKOV/ZIkC6r6Voql6DPn/KgNLMe5uoPo4QH2lPkaIgFa9HJDGv
	o0X2sr7Mu8aORABsFIp5LcmWVDtnWiGRJ/18SEP01kFyg5Spiyjjrc/4UCOk803PcB6OftNjLYLus
	lKXWHN4sZCWp4MQ8mlUhR9qdTmmEvxmz1BEncIRdszJdqvgNrtqAJK5xAnW8Uk5R798ho0akntpzK
	jvJiQhGhPOYp7c6XZDLbEvsuspn2heop2Gd3nH6Tdo6DMl3LNTKOQtEXo18FDnORITDVD3n/8hNHJ
	FCYRWO3g==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFAF-003xD5-0n
	for linux-phy@lists.infradead.org;
	Sat, 06 May 2023 10:29:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bdd7b229cso5266356a12.0
        for <linux-phy@lists.infradead.org>; Sat, 06 May 2023 03:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683368953; x=1685960953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q89WWNqgDfTX8XQe+iwDXWhftOpjNe+SVaLkM27Jjlk=;
        b=pmATmgnNBn1vaw2zFc9jefVTFkd0dnlE2vqaWyus03GIzYhi4HyzVnyelO40yuG4Nf
         FbsLdOYL+TPWBZlc0TzBjLv23EisWOaFqVtJ7I8hyRdQkIJyGxnKJWf8U+17lEnl87UF
         nk5FPFUIX9YjFAbDzbOwMQxx/W/figOX/gCjvtt/cHh4kuwHBv699IQhnIP1Th5OsiD4
         qSZ4Flnl9RaMHEnbxZyUcucZD7QgTsn44dLXogGymzjwvrMwJP1njxSDT/gl5FqAFwMA
         +xJPkkV4fuyksFjlazHpTM9bvRGVUs2rEmA75iCMNANIdV/MyaVhtx8GrJiSrrhlgeiN
         QHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683368953; x=1685960953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q89WWNqgDfTX8XQe+iwDXWhftOpjNe+SVaLkM27Jjlk=;
        b=XUxwqa7bX5hEr3OkWEWBwhaqcnsarMso3az+hI+XT3GJbfrc0KtRsuPDVVlNuXcX4K
         BXy3tTKAt/YjfH4n9rTpooetFj+E04AJECcn7YMejeDYpNokRJIUXeU9yaqJY7AyvN5u
         9okNoHWiwYkrb0pNOcduS6YbxSMSWYmUOibGxyfhgnH57uAIHfi+T56irMzABX6Zi4tb
         Wy9Cyk/3/59Y6mKTFBj7Z4PrCDMA+a+TberQq0jcC83cFU3eIExrrildCm3kAc3/fhEs
         tDniYy7rlM8NIj4BrFUY65OAU/fIj500ZggDjmCjHqocWPBsvboXDwoOcBhftcSbCv5p
         +ZMg==
X-Gm-Message-State: AC+VfDz/F13qphgsyZfZN0j+vUOC5orKfjnaMx1yuzzRuTKiKrkX0K3R
	EDp4iSkfN86LGDRQ/mkk4pgA9Q==
X-Google-Smtp-Source: ACHHUZ6/wPqlS3DByla0DrxWiLfSctxz7UcT+4RZsEyKv1NRwAVpbGbddpmZMuF0gSHXShBQ1JQNRA==
X-Received: by 2002:a17:907:709:b0:961:69a2:c8d6 with SMTP id xb9-20020a170907070900b0096169a2c8d6mr3030336ejb.69.1683368953421;
        Sat, 06 May 2023 03:29:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:efe5:7c03:a10a:7a40? ([2a02:810d:15c0:828:efe5:7c03:a10a:7a40])
        by smtp.gmail.com with ESMTPSA id hx1-20020a170906846100b00965f1f4bac5sm1532711ejc.124.2023.05.06.03.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 May 2023 03:29:12 -0700 (PDT)
Message-ID: <2dd9f9bd-c55e-a887-2e9b-61b2b66512ef@linaro.org>
Date: Sat, 6 May 2023 12:29:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] phy: cadence: salvo: Add
 usb2-disconnect-threshold-microvolt property
To: Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230505185247.1854677-1-Frank.Li@nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230505185247.1854677-1-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230506_112921_609109_8813FB9D 
X-CRM114-Status: UNSURE (   7.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/05/2023 20:52, Frank Li wrote:
> Add usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8x-mek.dtsi |  1 +
>  drivers/phy/cadence/phy-cadence-salvo.c      | 30 +++++++++++++++++++-

DTS and drivers are always separate.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
