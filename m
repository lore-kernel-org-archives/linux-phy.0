Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CCACC05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 20:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVGk1Suj9GQwbNQaXg8VRuOKzIuL51DFDXKgoHXnPNU=; b=iy64QTHMZB9psK
	P1c5Yn6OHijU3lCocQP5ollp18v5hlFExXW+SUOkiV2l8sjZPtOmo4yAOj9cqC5d/McaQe44eWzE5
	NS6LgfOUFqTKIPdiiTA3MOdiuU/M1WGZ2JZELQpExAeOILaaiAl1xSNIwIQmH5gl6Glss5N30zCIB
	qTdjTqY3fgjArgGlucym/wajZN/tV6KPLFxMrwdRgERuTgxuHH0Kb4cGXfMX3Vpbd764bYMfQ4VM4
	C84yXl9Gr8ad6yAmJxUeY/QR86iRneXHa7C9QbkM9wlbH6159z7t6vaoOlSEh25NXUvuUd/fjHLLM
	WIGE3hPyaNzRAeRmzYLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAzV-00BRnU-34;
	Tue, 14 Mar 2023 20:11:25 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAzT-00BRmx-0M;
	Tue, 14 Mar 2023 20:11:24 +0000
Received: by mail-ed1-x52a.google.com with SMTP id cn21so36781066edb.0;
        Tue, 14 Mar 2023 13:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678824680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uOmN2wxHAubP/wjFGXET4njJl/QO5fM/z9sdlvX83rU=;
        b=CHhAm/7O/gstpGzq7X5DDLTXks05VMX04VZtP6IfWpvHV1BPITJBPtOZQzL9SfVrOP
         K7nelNQDZ9fwxi+pliz4LX5qQ44yGJpAVVO3y+nV+piezOVBGBSSnPw47TMugdQuh8v/
         QwWK4fQmvfOfvFByvx4fsvkgJv7c+eAE027MmoJjaf7Vc6TTC6t8SrAXj7g9hoR0PiMP
         huzQ0bA05qJOPNg+B9W/Jf9ln49b41v935ouW7KI45o/owobC6yJhVdr3l7aQ3dmG+WU
         qLoun8HykJR4mPX8w0DjwMEO48xJUazKN+cDziLEzfeRO3IzlWdCZek0a5pd8zhpHenA
         afRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678824680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uOmN2wxHAubP/wjFGXET4njJl/QO5fM/z9sdlvX83rU=;
        b=6O9nHgnKlFyDpnnmHJ9mKya6YW7okEYcWb4cpO3PQHDj6dwUEZ5DUiWb9w2YGQuu6h
         Hly7lj7bKn99yFoNamtvMsY4654oJ9rfc05TjutvHX+AxnZ8xNta/UHApTw0qruFWHp8
         Jm6ZaM2sYhj+NfmRuK3Z8tEAfIlYNmF2mPQsA9UTcNNfORQTQUhDb7a1SMHqzXrdOiGt
         X5urrGBlaKErZKyYQpKnJDatMNEayx5xMUC5feyHN1iPoCYiQRkt8da2DhxaGWxxUH5x
         uC3x3Brrv7MotTl3J/oG9KYeo38Ej/ne4xizTcDxlTOXH9wghxw2SLeutib52diEaBJS
         +uCg==
X-Gm-Message-State: AO0yUKVKd9uL2ddhLHpFNh6EFd70OrqfEI14WovZSol9jAGDt3PyIQU8
	wtJpwyE8zpiyhTdA4+KoCig=
X-Google-Smtp-Source: AK7set+qCVKByxD7iuQXEmywLPaTa1vcwJ7G6XCqfhULVzCL/kVmJIdeJKzJeKK2tj317A2Zl/2klw==
X-Received: by 2002:a17:907:9708:b0:878:711d:9310 with SMTP id jg8-20020a170907970800b00878711d9310mr4432767ejc.1.1678824679798;
        Tue, 14 Mar 2023 13:11:19 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id i16-20020a170906851000b008e8e9859905sm1540068ejx.184.2023.03.14.13.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 13:11:19 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Icenowy Zheng <uwu@icenowy.me>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, kernel@pengutronix.de
Subject:  Re: [PATCH 01/31] phy: allwinner: phy-sun4i-usb: Convert to platform remove
 callback returning void
Date: Tue, 14 Mar 2023 21:11:18 +0100
Message-ID: <9076995.CDJkKcVGEf@jernej-laptop>
In-Reply-To: <20230307115900.2293120-2-u.kleine-koenig@pengutronix.de>
References:  <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
 <20230307115900.2293120-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_131123_189645_8161BB02 
X-CRM114-Status: GOOD (  19.31  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Dne torek, 07. marec 2023 ob 12:58:30 CET je Uwe Kleine-K=F6nig napisal(a):
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is (mostly) ignored
> and this typically results in resource leaks. To improve here there is a
> quest to make the remove callback return void. In the first step of this
> quest all drivers are converted to .remove_new() which already returns
> void.
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  drivers/phy/allwinner/phy-sun4i-usb.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c
> b/drivers/phy/allwinner/phy-sun4i-usb.c index fbcd7014ab43..6a74e5ce180a
> 100644
> --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> @@ -698,7 +698,7 @@ static struct phy *sun4i_usb_phy_xlate(struct device
> *dev, return data->phys[args->args[0]].phy;
>  }
> =

> -static int sun4i_usb_phy_remove(struct platform_device *pdev)
> +static void sun4i_usb_phy_remove(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	struct sun4i_usb_phy_data *data =3D dev_get_drvdata(dev);
> @@ -711,8 +711,6 @@ static int sun4i_usb_phy_remove(struct platform_device
> *pdev) devm_free_irq(dev, data->vbus_det_irq, data);
> =

>  	cancel_delayed_work_sync(&data->detect);
> -
> -	return 0;
>  }
> =

>  static const unsigned int sun4i_usb_phy0_cable[] =3D {
> @@ -1054,7 +1052,7 @@ MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
> =

>  static struct platform_driver sun4i_usb_phy_driver =3D {
>  	.probe	=3D sun4i_usb_phy_probe,
> -	.remove	=3D sun4i_usb_phy_remove,
> +	.remove_new =3D sun4i_usb_phy_remove,
>  	.driver =3D {
>  		.of_match_table	=3D sun4i_usb_phy_of_match,
>  		.name  =3D "sun4i-usb-phy",





-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
