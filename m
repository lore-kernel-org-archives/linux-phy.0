Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1714BC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kg3jPu3F4Lh/o7aEVGZQ/MnCqqvZpqQ23kBaHjUHXu4=; b=hoLxTv/UAwr7UX
	z6SVyWJjWtUNUk0M/aC2gGE03rFZwIPur55XAOsOuxzArO6iD3ZAGp8Yidru0ZrCrR7/koJgWDvmg
	fnpMyngqe6NX6+f/pt7llikb+o4wwp8m49ZLPexrxi6Jnc8jMMBtiepB0iSnN8Q8uJQeniKWZyNs7
	gO7J/4n83zvvw9Dqk/n+AsewFFZr98GdhOwB00dxSuDepo+/xnzgeXdjq3AKmlATUyThcdCBBc5+F
	wntDQGOEFmoXhOIRbfC+K5NHlmu8k+Pe3zex7MPzQSG9qBG0vrHAKxZmqB0qWWYx3BZa/kzk6DTFi
	pKDmkMzCy446srCq8mXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5lm-00Gbzj-F1; Mon, 07 Nov 2022 17:18:46 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5lb-00GbvC-Bs; Mon, 07 Nov 2022 17:18:36 +0000
Received: by mail-ej1-x632.google.com with SMTP id kt23so31947394ejc.7;
        Mon, 07 Nov 2022 09:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+FL3EYtmTevx+/qcGveIJl0H5e1m/91jGuQ0ro55J0=;
        b=DUznBw1PxsVpisi4ux5m0ygNTpMneN6HgLhaY0gCqNr4zYyifoCpVqSKvsnwyJjnC2
         i5Rhq2cJARubP2+64WPHBO9zDgjXOhXQkStEgAvSQ5hOYRhHA0wzA0jCNfBsFAdDoCb+
         91Fg4uAoTzylUw59WfohWOi4vdAf67w5uROfVrPa6dseoQNYSZ1w071aLrDPRIMTtgtr
         imE2N1dWD3HY9T227a0AIALk9499TodWKdOcKGqj/vOr0q3J+YFgzGPvR1ni6i8drW+c
         17Sdtb6a5LyC++DUSUoGzYZLBujb5VtR65SCcDki4NZLNQme/ZnT1GrUKIA0+DOQeuoe
         LVfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m+FL3EYtmTevx+/qcGveIJl0H5e1m/91jGuQ0ro55J0=;
        b=XQtoqYlFe69L4QkLBnxDeorDevvBSl6Lql6xnLhJuawSWT4zgrLhaDnRnhgp6SpCbf
         buJeziRMHkBiUKlR7YdrqcFOifD8aw8kW8gh0tNqUEnfDSaIUIN7JcbIrFXMW6EkEiDq
         7Bcsr6Nb2X2pChEehPdAFcmZ/HJbvc77D4tBCpTz9AqcCKHELvTq//SGNSIdzVOzR6/d
         owlXlJeVQdVMAhvWS+RrigB/4+BeMyzhosq4wqFCBwU10yJujS3LuTcrWvV/Uny1TMXI
         aLmxg/0BGdzq2bD4c5v9AQc8xZ3DicrSDx8JQdHylzzWpbQrlOsUZ+OnPYsALEEO3hhb
         uGbw==
X-Gm-Message-State: ACrzQf0VmEBiOBFBsc+PbEHDIQuBc/PYxEb2o0A1YgBa1SrJFrPkmLQb
	8zq9Olbtcqx72Ao4cfETmu0=
X-Google-Smtp-Source: AMsMyM6mV3aLso4CUT6uTdUiMHuu3LgcREAPDJpTwtCVBhcwZHXn3+qSLcJ2foQdm1a08lQY1XzMNQ==
X-Received: by 2002:a17:907:720d:b0:7a9:b7e6:8612 with SMTP id dr13-20020a170907720d00b007a9b7e68612mr48312406ejc.435.1667841508935;
        Mon, 07 Nov 2022 09:18:28 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id b18-20020a1709062b5200b00731582babcasm3698252ejg.71.2022.11.07.09.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:18:27 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Mon, 07 Nov 2022 18:18:26 +0100
Message-ID: <2652859.mvXUDI8C0e@kista>
In-Reply-To: <20221106154826.6687-4-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-4-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_091835_438808_F0130C17 
X-CRM114-Status: UNSURE (   8.89  )
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

Dne nedelja, 06. november 2022 ob 16:48:18 CET je Andre Przywara napisal(a):
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> The F1C100s SoC has one USB OTG port connected to a MUSB controller.
> 
> Add support for its USB PHY.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
