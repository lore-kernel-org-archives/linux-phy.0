Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 694F4C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tVFYeNGhqIwePi2JjJtm82I6s5iFIWs68TyIbwdTOZo=; b=vXZW6M73A1cAL8Bh3e8aEGZpIg
	hKdLqv9/0zODZ7va4bjsKUTk6BYflPSOWbgWaSHJLHTNCBmvKyxX3XSWAtvzChzK0qYxNQ6QGqEgZ
	qCcBgjkLPzIep6OtYyCI9sZVOz1iP6CtoIahQQOz5oedr5VkIQopMEt5grKCaoNSgAqDdYDxp/c7h
	vRGNKYI7wtwWp8SXj3oa5u077b/MkXCVlRFOBWeUs3lWfdoiTqLDRyXMaIqFERjgbz//gjIucJquM
	w7zZT4d9cnVmcLBc5mXEVb610CEVaO/kvePBgmvr4avAp9aSzRqKY16Q6WufN/RLXq2gGKmDMEFO/
	pCBOhODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLaT-00FRPs-No; Thu, 22 Sep 2022 12:45:53 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLaO-00FRL6-NE
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:45:51 +0000
Received: by mail-pg1-x532.google.com with SMTP id f193so9060858pgc.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=EUOZb2990E/2sm9nyDml2aFGYKW9boLOMIoTqqkufhU=;
        b=1Bcs1Ny8mbZraxYiQuvMnq/zbwtwWWnCOQVPvj/I/46jXmekqMhqko99SpjSu5QdiH
         qDtYVNR2ZNk39h53rapFnDcnYFZ76S5k9IjhP77Z/A926FXiga6R/i+yzuz/uwMq7U+q
         158wYH7FmsKqdZnAfPcR9wKuFTG1R3WTDSMv8CnX5s0cBDpMEQWONja1/aeaRxVMngbG
         5/PZTCoPStAAc2kI0cJ15KfyVhEZDDWAZbwSaCIgTFrIIprM9upFdYel/xF2bl4uHrfh
         CoQDh04eCu7eXYrD0k0Vr3Cwaeoklvq+lh92xk96wzyyldhrj3cNlmUt4hmtc86UUzin
         0PoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=EUOZb2990E/2sm9nyDml2aFGYKW9boLOMIoTqqkufhU=;
        b=rOGuHZcIl2ccYunZ3bqZnfZpuJgeshHRQqUYGJh9Z/e/nAI0c88Rxo1ShZCFiLxLhH
         VezavZVoBSOeb3k637oZlTi6PUcKDX2E1wL1s+n5zd4/BGQDENS3ErgOskaIrOZMuD+1
         ZsiW2A+6MnaL1dwPQtkwv9g9jaaPnRqlTIWeM9o1omC6hiEpcElmfK8MEc5WZjKo+t3g
         Rv2B9SDd3u4rfPhmNqHyWV9visKv+N8lOc4jxJ6fCUaApYn+EFaSqNtfvXukx/LhxMEC
         +9tiuPvUP4ikG4lwu/VzyTbTUGO5UVE4t/XlLOdn5Rm2AwyLWSPfBE4SdtvLJG1YTR1g
         tuXw==
X-Gm-Message-State: ACrzQf1X21Veq2SOQfh4bsnu/TdsZXIBfMTXdBvd0gx9qG3q7KtX9gpW
	zBN1zHNywhr5yfrxmZaKt2u8URz4b/lY8tTuyX3O/w==
X-Google-Smtp-Source: AMsMyM4O/N/zVs9zWHo8VZ8pdUXoohAewcmlUdHeafYOGuDWYY8oL47N7HPDeTurxd6fZSfsLroIY0k3HWCl8XmZlms=
X-Received: by 2002:a65:57c2:0:b0:438:ac40:1460 with SMTP id
 q2-20020a6557c2000000b00438ac401460mr2997875pgr.216.1663850745089; Thu, 22
 Sep 2022 05:45:45 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 22 Sep 2022 05:45:44 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-1-4844816c9808@baylibre.com>
 <d01e4a03-1d6d-9616-45ca-1c927f2d8237@linaro.org>
In-Reply-To: <d01e4a03-1d6d-9616-45ca-1c927f2d8237@linaro.org>
MIME-Version: 1.0
Date: Thu, 22 Sep 2022 05:45:43 -0700
Message-ID: <CABnWg9uZ=FrumgUzyUoUiS6T51nZTEf5JZ-1KF0-Ra9Ood5ufA@mail.gmail.com>
Subject: Re: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI clocks
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Bo-Chen Chen <rex-bc.chen@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054549_005448_FA214973 
X-CRM114-Status: UNSURE (   8.76  )
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

On Thu, 22 Sep 2022 09:11, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 19/09/2022 18:55, Guillaume Ranquet wrote:
>> From: Pablo Sun <pablo.sun@mediatek.com>
>>
>> Expand dt-bindings slot for VDOSYS1 of MT8195.
>> This clock is required by the DPI1 hardware
>> and is a downstream of the HDMI pixel clock.
>>
>> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>
>>
>
>Looks like broken patch.
>
>Best regards,
>Krzysztof
>

Hi Bo-Chen and Krzysztof,
I've sent the patches using the rather new b4 prep/send commands.

Though it produces valid patches, it's using `git show --format=email`
to produce the patches, which lacks a diffstat.

My understanding is that the diffstat is considered to be comments and thus
are not necessary to produce a valid patch.

I've reported the issue on the tools mailing list [1], I'm looking at providing
a fix.

I'll be extra careful at the patch format for V2.

Sorry for the inconveniance,
Guillaume.

[1] https://lore.kernel.org/tools/CABnWg9uBOGqJMq=yCtn7SoEME=+2u1-ZK9ftb6=_jRhkhL_jiw@mail.gmail.com/T/#u

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
