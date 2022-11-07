Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50EAFC433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9qu/qY03qhTzAZJjs47ws/Hj30i//xPzY6OcMngEuY=; b=PCm6NVUCguoA9z
	bR2RoiyYjYd9kryZg+hbEWJOy2kcDg+JxbLTLX9SnvRzI+YLJAc/Qr7GC+RJ83APMVQtIHHUzXvZz
	J7wfDt5bzaAyzJ/Q/a9JrwSAOVZ9XehqAHoVXF6VoIQ2jfCs4Jb2dlxX6GayAL0EF0POAbP/imMbj
	v4RQNY07/q1bXKmZlfBQcAbjZScxjca/mX3bB65Yapsgl/Sf2ua7WBtVY+xhYPjk3EWvXJOZSHpRn
	R3wDLQCAPjDbt/GBr/KFWTYAlUSJfvToF7WrOez3jW7Mff+5RgSXJyZ4TJNrnjGpcx01VboDKToo9
	/G3DhkYjKH1fEus4txhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5mS-00GcTT-Er; Mon, 07 Nov 2022 17:19:28 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5mA-00GcIT-E5; Mon, 07 Nov 2022 17:19:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 21so18706319edv.3;
        Mon, 07 Nov 2022 09:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WABWUxZUHt8M//n3pzxOX7MgxD/7jpIO4F4+cpbuU8Q=;
        b=cpl9IXvObpPpjDH3q0oTFikx4eVLJa54BcB/VF0a60o7zdTUxUZjVIJCeZu8YGuHkd
         amLM3TtYK/VXTOi1Ex9hUPMTvVoRB36Nm6yAMunAenrqLerTNX8L1TvFt2mxvodyttp2
         ZGuky8vhB+yro3tgFDE38RD+V3wDU+eTW8Lmz3XeS+W0oIfEwcwYIkjg3MOeSjgHZZlQ
         Nav/8phCbPoH7E6RoJv4xH4jtV3IViXN+pxzSMBkQSol8Zt5PVE7pGXJmmSlGqAyW/Rz
         PIPEyRWHpePO6Cx0T8nawzfcZCFn5wHF1gcheffTNhyB1m998KTAvmVxcYbVK3iUHTwT
         njfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WABWUxZUHt8M//n3pzxOX7MgxD/7jpIO4F4+cpbuU8Q=;
        b=xaqvb6DtxHyu4maLuW/s83wJ6/M31BDd0GCNtXTzrHkG5lba+SOHuwH5XkWBCwMt6L
         1q8wyYY7sKyJOD2JM5zLi8WEPhb50c/eb5181SjDS2yrNlC3Pg1Uft38q5FVEl6d+8Y9
         kAl8SKHIiULn/onugL7dEj0J9ZINPaHpC8eO5YW74gO1BUisKFqhtI6lFokeLVBLILpO
         xVbsBBhJIuUq6Ttg6+9/aQGsV2pMqDhRZFvbcK1/kgmqyfbpGzATAs30HrG4gXT3gOpw
         TYCPlHXRC6sZGLaFKizkxfORNEXY9lozgA+kQPTDpJ9af4j37uKOxkMqj/dhaYvvRPdP
         cYlQ==
X-Gm-Message-State: ACrzQf2vmGD3y3XTa02hs74Guo1lQxM+90xvPFmaZ/z5x/jV92Y0hWRt
	CSaywrh+/0A8Dr5Q9f00WVk=
X-Google-Smtp-Source: AMsMyM5VWvezBWyZBcC5CBPMjq7W4wsBETjGxm7Jxg6eDUizPN9CQhdCoHHadTq4T1yOhrqyQQBoUQ==
X-Received: by 2002:aa7:cfda:0:b0:461:9d22:3484 with SMTP id r26-20020aa7cfda000000b004619d223484mr53028888edy.142.1667841545234;
        Mon, 07 Nov 2022 09:19:05 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id eh9-20020a0564020f8900b004587f9d3ce8sm4471906edb.56.2022.11.07.09.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:19:04 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 05/11] ARM: dts: suniv: add USB-related device nodes
Date: Mon, 07 Nov 2022 18:19:03 +0100
Message-ID: <5616911.DvuYhMxLoT@kista>
In-Reply-To: <20221106154826.6687-6-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-6-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_091910_499253_9AFC40EF 
X-CRM114-Status: UNSURE (   8.52  )
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

Dne nedelja, 06. november 2022 ob 16:48:20 CET je Andre Przywara napisal(a):
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> The suniv SoC has a USB OTG controller and a USB PHY like other
> Allwinner SoCs.
> 
> Add their device tree node.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
