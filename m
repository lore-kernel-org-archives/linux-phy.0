Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C1C4C00140
	for <linux-phy@archiver.kernel.org>; Mon, 15 Aug 2022 17:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmJcnRa+bj/6cgxo/cxeiU74KqRRiRM3B8dZl+BodNk=; b=4GH9xcOpTyu7K0
	s/uSQwrYxglQD07g70LpwIYgwg98ijvrcNoirks4PRpv1sGQ1vS5VNlcJ2U0x4r7cO093uE3/wca3
	UXqkFXP3iIKQPUY/0oh0Vc2C7F2gn/1ARstSOC23vuVqeJ8hBjnXj04fpmkudCEpBn/Pv7no0j/BE
	96q9lQw9f4zkCqzWGjaZxLTgHstZnESw003PschP/QfQsop6To79QSUip/j7PM9lWXllhNnB+tJNV
	snoKgxrN2LElX7CNhu9Q/QYPDSaFckAkbFm/oMcnAjY0ILOu2kNtkXmJBUbXiU7j4qgruNnlqzFuY
	Ol391aW9VjZ76CQ3vSWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNe5F-002SbG-Ga; Mon, 15 Aug 2022 17:41:01 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNdPK-001xZn-Gz; Mon, 15 Aug 2022 16:57:44 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id j1so991224qvv.8;
        Mon, 15 Aug 2022 09:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=dT9Pg0cgomgnI0kkqHjm6eb1hxEl1p1LNNw04+pYAiw=;
        b=UAbnyBq77vyYNRVvJhwDaocodBZTdW/rY26aTPJ3tUoVcG8kLbkvDeuHoCDVazGTqp
         U3sWT1HisJNc/seNXOnderJHWURJq9o4MgfiwPF0JBbdfW64WPTclAeuu4L0OJZbxuLR
         TcysGwk8ohcgr0uCvm6OGzo6qR8haErFewbD2I0+n3DaZN4NDE5GhwIJaJ5iAKsS7YjB
         J67OCySu8M6iaLP6QU0K9qUMuaaQNz53rc7Mc+kihyUpk4ZXKxciQTtZMWWmzwdTR1iK
         ylcJ2kUbrNKv0MWTDSbr31gytziDJYbVssAOt0Ez9SBA8elvqQr5y6onp0bOpYZVWs0k
         Af3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=dT9Pg0cgomgnI0kkqHjm6eb1hxEl1p1LNNw04+pYAiw=;
        b=CBbcWTs5phAqQapkE+9JQmzNg+IxCl+ybPkVmbjk0n7mun/Am02P2OjVgwILLjXcMS
         K5iTSmIWPzFnUZVRCwuOoir4wkBxZCezlDBNUqho+G8efhe5RuhODPTy9+GkB7VyjeGp
         1BEwT4FarNcA/zTZYH9Fg7el669UNP61HJfUr8QaZ2R29VMR3xY/aR09YpPbSVBzyah9
         Pg7ifuRmc6Udrg7Z7Qnvd2OzkJT7BVOQq9Cv5WzmOEOkiMjMeHhUncCjyyGfUJgPbP37
         m7tFOdHGqeOVWopbu1jE1yRP76TJPBMIG7AFbY6gC6bzwSHG7tQK1m/6cq5e//b/UtWV
         TBXw==
X-Gm-Message-State: ACgBeo0C1sb2NdSjwuIhMEIbaa3HRN1KSzu36tthoQB7ckA3/EoLR1Bj
	7hBajCAgcso2VIrqrUmgsHE=
X-Google-Smtp-Source: AA6agR5+e4ITrllG9Zdjcav/qnQ/K77ki/+NPhNuFZ+FfibDMeCZLlBPNoSOkBpDKq1B9dRdFkv1qQ==
X-Received: by 2002:a05:6214:62a:b0:476:858d:b2c8 with SMTP id a10-20020a056214062a00b00476858db2c8mr13917327qvx.65.1660582660417;
        Mon, 15 Aug 2022 09:57:40 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id f8-20020ac84648000000b0033e51aea00esm8459756qto.25.2022.08.15.09.57.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 09:57:39 -0700 (PDT)
Message-ID: <584ebb0e-2d55-348f-18f7-a555c3a359b9@gmail.com>
Date: Mon, 15 Aug 2022 09:57:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 6/9] arm64: bcmbca: Make BCM4908 drivers depend on
 ARCH_BCMBCA
Content-Language: en-US
To: William Zhang <william.zhang@broadcom.com>,
 Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 joel.peshkin@broadcom.com, dan.beygelman@broadcom.com, f.fainelli@gmail.com,
 krzysztof.kozlowski@linaro.org, rafal@milecki.pl,
 Guenter Roeck <linux@roeck-us.net>, Bjorn Helgaas <bhelgaas@google.com>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MEMORY TECHNOLOGY DEVICES (MTD)" <linux-mtd@lists.infradead.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:BROADCOM BMIPS MIPS ARCHITECTURE" <linux-mips@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 "open list:WATCHDOG DEVICE DRIVERS" <linux-watchdog@vger.kernel.org>
References: <20220803175455.47638-1-william.zhang@broadcom.com>
 <20220803175455.47638-7-william.zhang@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220803175455.47638-7-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_095742_802499_FE61FEA3 
X-CRM114-Status: UNSURE (   9.56  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/3/22 10:54, William Zhang wrote:
> With Broadcom Broadband arch ARCH_BCMBCA supported in the kernel, this
> patch series migrate the ARCH_BCM4908 symbol to ARCH_BCMBCA. Hence
> replace ARCH_BCM4908 with ARCH_BCMBCA in subsystem Kconfig files.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> Acked-by: Guenter Roeck <linux@roeck-us.net> (for watchdog)
> Acked-by: Bjorn Helgaas <bhelgaas@google.com> (for drivers/pci)
> Acked-by: Wolfram Sang <wsa@kernel.org> (for i2c)
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de> (for reset)

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, 
thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
