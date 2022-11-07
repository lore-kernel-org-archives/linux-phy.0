Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B54C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52Md3yHE5z+9dp//pEybZJhMZLeEaB393vn0P5SpL3w=; b=Xw0r0Pmq0cMavC
	odV/yufRUkNHMj3V53Ndl97hJjvWWxN4EAa31ZxfbHoXHTunvAfGpqZL5+P3tRGa/6m2ojSXfIdlB
	r6DgvkamsUu7uisYMTdxnsiTaJMqqn3oUG3RRqgd9ObJrTsQjQOVLxbq4nAW8pksTEJN4NpG1PrWh
	l9VsVxdZ91c3lE1VDPfOHg0Rlz+Rh5h1KJnWMZ2qB1oCJ62xNb9eHjiyRh6AS5bcPr98j09yHIyeI
	0PD18opZTbaKkuLaMTTmsu2cEHUiPIr5kH8VchC2xzZ/c209xbeedzEfsTwTDeOSxRKYQeRkuV3DB
	BWtjlaMBH3i7xSqKXjJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5nM-00GcuW-TS; Mon, 07 Nov 2022 17:20:24 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5mh-00GcUQ-Vk; Mon, 07 Nov 2022 17:19:45 +0000
Received: by mail-ej1-x62b.google.com with SMTP id 13so32059073ejn.3;
        Mon, 07 Nov 2022 09:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qu2FEOZRSY9IYT6eXjzTtKMMNTggAYYqVs1ygedKPq8=;
        b=eP5ltGXdVJCTEnfFtucRNeoiDO5ISElM4ZgzkK3SF43MMp6aAHv4/ErdPHVGtlA/k+
         fVY5bwSwb2xnDbU7WgI0MzBFD2e0CfvwXjQvJ8PF0YAxl3187R+6KDI6cfhDgP0ORfVY
         3R6PFcO2XHWhAXPMASTCWpAKIcOHU885WW0tkCW5Ru9//iZw1EohBjJJlCeb2X0Bk+OI
         eKJkTRWaQd9GPAybx3k9MUln2IJG9A63ws42uE3087CsVN4nu+MzvbQcnN/TSLVMIQjy
         rDzJIgswPG4pItlOEbw6HXDD6jeBUrK4WWx+T+1Qdozru/hxX769+VXqQ4nWwlqWWN/h
         /kGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qu2FEOZRSY9IYT6eXjzTtKMMNTggAYYqVs1ygedKPq8=;
        b=jXj3GdaGhgz36kjutM+z7MUBk51k9r+2rZ18P+om/go7FZ/b9Lz06qu+axa2KOST/0
         Kgi7N3Nju7wuHesdkfk47XasWGUfTfFCkjGc2IiXAQ2mlo9aecwXnqACNCO5hGGqgpAN
         A5KryKaPlo3Yj8lUqxaEcqaNCaeOB+tyTsnwCqDPSX1kh6Eim1gqClP34GACgKU5kIta
         eCnBBHIHBeA0Ei8OKTJerk1NAh5m7qWOv458B9HpU1jsdghnQkyDySPVer3oAnbnX7dd
         2c3FtYsoD5YD4Q/shtHFJKLweRaTth/bfQRPIBcqkwJHXhtjiQheOJZFLdPT4TzpvA4A
         Xbdg==
X-Gm-Message-State: ACrzQf221zPP92nFSKcbDuTFoL83ezZrg9gQ7dND7HpBbQbAorvVLGWQ
	I7QEZQq64wese6BLSrBQm1A=
X-Google-Smtp-Source: AMsMyM6LCBPpdH5Hhccy3tvFaUxUzv+rtYf8WatcRANMUVqlYQrqC2RObFbO+iRqfgVOlcqQlUZMnQ==
X-Received: by 2002:a17:907:1c01:b0:79d:637c:7848 with SMTP id nc1-20020a1709071c0100b0079d637c7848mr49606542ejc.513.1667841569716;
        Mon, 07 Nov 2022 09:19:29 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7da18000000b004643f1524f3sm4485651eds.44.2022.11.07.09.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:19:29 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 06/11] ARM: dts: suniv: licheepi-nano: enable USB
Date: Mon, 07 Nov 2022 18:19:27 +0100
Message-ID: <4780198.31r3eYUQgx@kista>
In-Reply-To: <20221106154826.6687-7-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-7-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_091944_054417_7B27E939 
X-CRM114-Status: UNSURE (   8.31  )
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

Dne nedelja, 06. november 2022 ob 16:48:21 CET je Andre Przywara napisal(a):
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> Lichee Pi Nano has a Micro-USB connector, with its D+, D- pins connected
> to the USB pins of the SoC and ID pin connected to PE2 GPIO.
> 
> Enable the USB functionality.
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
