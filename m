Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5285DC07E9D
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 19:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zasu9hzwThxuSEqs6JvUmy2k4z/4jV+fpeHNlBh2Jyc=; b=cW9eHL7Buh4m2k
	9i0SBxz7bW0iee/EiLycG+QickG5bd3JjUomx7y75km4th3ADZOt1/RwbGkvOUOwfamUqQaHf8ow+
	K4rMzzhIKrzWbXdREo2bWtll4qlZxSSC5fFfWjdwNxcMKUo9dnHnUxZksr9s//emReJghPowxYLfw
	5MyBxKFZlc+Yjicivh10FgCioI+rpbM/eXzNfdx34hRDgSmy6VoLcvbobojuYN4ktHKXUrWJXRQqV
	GIPBliKqfzTCY75J237Ce4f3tXIsd+Sr0sMXvzb/96chC84N9xoID4gVdlyT/MqSyf36IbWrlQlqp
	xt77iQkL/ntR+b7o5+Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os7WZ-00HTV5-J6; Mon, 07 Nov 2022 19:11:11 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os7Us-00HSXy-Hk; Mon, 07 Nov 2022 19:09:28 +0000
Received: by mail-ej1-x62b.google.com with SMTP id bj12so32675654ejb.13;
        Mon, 07 Nov 2022 11:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wc34CxtEOLkSkiQr361kqOgarEc3e05LL4CC8n3q+Yg=;
        b=MfJt6vqUvl9d2QwzN79EWkGlv9xQvsKg6qW/nuvZj3vutK07lQREteD9jvTdwD4mUs
         cCe2VwZo3iEJF6ZVHT4lp+dSS5XgBxg9O/SdckevvjaiK92s6OPeQtPRbE26fiKGNr1s
         Xm05WlDJc9s4nVcFIcISpz4vHrFkOpb87Kvx/AggAEjHwP97g78jEUq9nU3YIlVk+yvX
         Vw2UGW6EOVcTEs8cesZj5GtkEndzTKKIBL8mZdR0Gs+x5RWLcU/oNIYPNcDmXvfkkAp+
         31I9CxdidxbQ30o8A6EqGJ2W4STLOoG/uss/ng536xqR6ijghJbrTrnO++Jps53BaECt
         lPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wc34CxtEOLkSkiQr361kqOgarEc3e05LL4CC8n3q+Yg=;
        b=mSobS4mGYsDmOS2du+rgNIKL6jk2ziGmh2FoNzdf/6A26DDBWEDvuU+OehS5SGte7h
         v4gzWVhqvMiA7Q3ya5oXrTbsfXDTVd5iDd69eK6fEy+WTTlXXH6gHe/42ECnb/3hMImk
         95TKZXxdXMpOAHUK5xoLOgYMIsMRX5soDC5oSnEj94wC2oRGPJiCQMAWycAeP48NURBJ
         NfJipBGHxA9/q4hQVtXGBUg0gJd0IeOv2KaWpQgln97CdLoEvpj7rgAM4hvQTL05w6sL
         +CjtNZUhlAV1zSwTiNiL6kdbq7EeFcj3irtz0X9F2APQZrvrAVRobEwiie5JtII7Fp2Z
         WAPQ==
X-Gm-Message-State: ACrzQf29j/1E+5WlGHFrmwjatLpi9+ZAkkK4xZk1IBlOPHpcLy731cR7
	vzCuDAyWN8NBuGY69mI5/ik=
X-Google-Smtp-Source: AMsMyM7RT31J7AYXOqj7NXxs7sV37GSZBoUybdyBFoXG5ZdfIxCN8Q5j0SVVcDS70m8z7me697XQFA==
X-Received: by 2002:a17:906:730d:b0:78e:9ca5:3269 with SMTP id di13-20020a170906730d00b0078e9ca53269mr49378907ejc.366.1667848164346;
        Mon, 07 Nov 2022 11:09:24 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id k10-20020a17090632ca00b007adaca75bd0sm3783218ejk.179.2022.11.07.11.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 11:09:23 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 0/7] arm64: sunxi: h616: Add USB support
Date: Mon, 07 Nov 2022 20:09:22 +0100
Message-ID: <111191160.nniJfEyVGO@kista>
In-Reply-To: <20221031111358.3387297-1-andre.przywara@arm.com>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_110926_638521_B90C691B 
X-CRM114-Status: GOOD (  25.28  )
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

Dne ponedeljek, 31. oktober 2022 ob 12:13:51 CET je Andre Przywara napisal(a):
> This is a fixed and rebased update of the previous version, with only
> the DT binding and one DT seeing changes, triggered by Krzysztof's
> comments. For a changelog see below.
> Thanks to Karl for testing this on the OrangePi Zero 2!
> 
> ------------------------
> The USB IP used in the Allwinner H616 SoC is very similar to the one
> used in the H3 chip: it contains four USB 2.0 host controllers and four
> PHYs, where the first PHY is shared with a separate USB-OTG controller.
> 
> But out of the four ports, only port 2 works out of the box, the other
> ports require some resources and registers of port 2 to be enabled as
> well.
> 
> Implement the required workaround in the Allwinner USB PHY driver, and
> key this off the respective compatible string. This core code is
> contained in patch 3/7. The first two patches add the respective DT
> binding documentation, whereas patch 4/7 encodes all the configuration
> options for the H616 USB PHY into the driver.
> The last three patches add the respective devicetree nodes, to the H616
> .dtsi, but also to the DTs of the two supported boards.
> 
> This allows USB to be used on any H616 based machine. This was tested on
> the X96 Mate box.
> 
> The patches in this series were originally contained in the initial H616
> support series, but where dropped there to speed up mainlining of the
> basic support.
> 
> It is now based on v6.1-rc3 and is also available here:
> https://github.com/apritzel/linux/commits/h616-usb-v2
> 
> Please have a look and test on your hardware, especically on all ports
> exposed on header pins of the OrangePi Zero2 board.
> 
> Cheers,
> Andre
> 
> Changelog v1 .. v2:
> - Add Krzysztof's ACK
> - wrap If: clause in allOf: (patch 2/7)
> - limit old (H3) PHYs to 4 clocks (else clause, patch 2/7)
> - change subsystem to phy: in subject (patch 2/7)
> - use "regulator-" prefix for DT node name (patch 6/7)
> - drop unneeded status property in regulator node (patch 6/7)
> 
> Andre Przywara (7):
>   dt-bindings: usb: Add H616 compatible string
>   dt-bindings: phy: Add special clock for Allwinner H616 PHY
>   phy: sun4i-usb: Introduce port2 SIDDQ quirk
>   phy: sun4i-usb: Add support for the H616 USB PHY
>   arm64: dts: allwinner: h616: Add USB nodes
>   arm64: dts: allwinner: h616: OrangePi Zero 2: Add USB nodes
>   arm64: dts: allwinner: h616: X96 Mate: Add USB nodes

Applied patches 1, 5, 6, 7. Thanks!

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
