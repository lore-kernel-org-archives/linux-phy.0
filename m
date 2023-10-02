Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24335E74913
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2J/b7UhOsLSHJ+jIIS6K/ml6W4bqfRDPWr3UQR4GBo=; b=VjonE0oUNnuu3T
	IxyfB6v+dWcJ46i+1a4GMK+B9lQfoeS8FC4Ao1AiKfdA88/hY3sDMqG7aJ3ac1pS0QlxhhZEfpHm/
	vpr13DKc/JzGaSDFdD94vQCsurDO/s9aFKeAAurpGsAgGoCc1f8lmgpTAjoxDB7cWBRBFLzI7dr3q
	FLkGBfCVXREAwqNy31vkS+Y8L1EYz4wcfquGDhW4m26oUNPMNMxPN8UtMZsN2xSoWwXbiHzju0uov
	xFf2L8UB9DqGzlY25T1nMQChAGxiKObqGT34a4XVnEkhQYQlYF+l5QTdMa5UovYliiXAiu/5cdJ8+
	e9ubAbzdWP2m1b0A17Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOOz-00DHAc-2P;
	Mon, 02 Oct 2023 19:16:21 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOOx-00DHAA-0h
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 19:16:20 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-452749f6c47so81842137.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Oct 2023 12:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696274176; x=1696878976; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Tr1XYfZFQPwOIGZkao0xDKBVDpd/yFY9b0CTr+HCmI=;
        b=VzfCjHhcjjkUMMW1gXcIoWisssDji15DMgLysPumGdwUjiq7GZCeHr2JVgSEsPbfao
         PrwX3UvEGtfm/smd8Fn6/puK9Eu8LqVagoOeM7gi794z3E5jfg7X74A8GWs2QZ+eg0+H
         vvLw0ulAsdJBsO1Wjp/wf8dySRcF6wC9QCb34CdM+/PEDVzzi75f31fmrnPUafYsfk4Z
         dvKDrunuAx/1gS1HY5LgpQavNEiaggct3vTzB606c/dtZalSJTfQLqWsa9GF0lIHBQrQ
         yOVrk72bqDtHC0VPGazIQ5Of9pGA/5YbbZvDlBp5AAR48FiAtRmfV7QK/ycH+lgH3DUS
         4BcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696274176; x=1696878976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Tr1XYfZFQPwOIGZkao0xDKBVDpd/yFY9b0CTr+HCmI=;
        b=tGaIjqS16qtvcGqubMJf0yLZYsRq/nZ5fbxw/Hy609vqaeABJXLTtuv4r6AsM3InyH
         Cy6lPfJCefaMrCkFkrkj3IrUxUoQi5P3Vzon6cVrNzxCMohQoh0RTPENFdyUPh9/+Y1Y
         OTIpQsrVbYMdQonrZ56CB/DyC9XIsYU/0dpdRZNosyq3Xr/M26lX5cKucFP5uRfMDrX2
         TuHhjgEbJj1VuqfjcOKbbV8LKIAFdd0cqQ9QeYbzIROr5FQJ+udkU/lQgfXS9Svy2Uhu
         VwCVNRgzK7k3+KJMTHnBzYiJmcznB08a0zoEx9j9/xDOGwxrVJ9hNGQfiUppw3zvnA/C
         8t3w==
X-Gm-Message-State: AOJu0YyELzD9ULQGVsqhzjnxAgpoORV0gWu1solIbhX6hVHS4/CdBP/E
	P/oKoUbafDdrfiRR8j3ATl9HYziGmng=
X-Google-Smtp-Source: AGHT+IFv1LL4hAxRrpJUw0BnAkrSJG1KrOzUpd35rSgjuWaSyLrINoESA3s18Z8/hb4VtPYwVgEJ0g==
X-Received: by 2002:a05:6102:1cb:b0:454:6ccc:ab79 with SMTP id s11-20020a05610201cb00b004546cccab79mr10882242vsq.11.1696274176341;
        Mon, 02 Oct 2023 12:16:16 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id o20-20020a0cf4d4000000b00656329bb3b1sm7686722qvm.10.2023.10.02.12.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 12:16:15 -0700 (PDT)
Message-ID: <4351a85a-ab53-acf8-9e80-e65b2ebfab66@gmail.com>
Date: Mon, 2 Oct 2023 12:16:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC PATCH v2 net-next 01/15] phy: introduce phy_get_status() and
 use it to report CDR lock
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Madalin Bucur <madalin.bucur@nxp.com>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Camelia Groza <camelia.groza@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>, Sean Anderson <sean.anderson@seco.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-2-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230923134904.3627402-2-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_121619_255296_606B7E0B 
X-CRM114-Status: GOOD (  17.58  )
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

On 9/23/23 06:48, Vladimir Oltean wrote:
> Some modules, like the MTIP AN/LT block used as a copper backplane PHY
> driver, need this extra information from the SerDes PHY as another
> source of "link up" information.
> 
> Namely, the 25GBase-R PCS does not have a MDIO_CTRL1_LPOWER bit
> implemented in its MDIO_MMD_PCS:MDIO_CTRL1 register. That bit is
> typically set from phy_suspend() or phylink_pcs_disable() implementations,
> and that is supposed to cause a link drop event on the link partner.
> But here it does not happen.
> 
> By implementing the networking phylink_pcs_disable() as phy_power_off(),
> we are able to actually power down the lane in a way that is visible to
> the remote end. Where it is visible is the CDR lock, so we introduce
> PHY_STATUS_TYPE_CDR_LOCK as an extra link indication, we are able to
> detect that condition and signal it to upper layers of the network
> stack.
> 
> A more high-level and generic phy_get_status() operation was chosen
> instead of the more specific phy_get_cdr_lock() alternative, because I
> saw this as being more in the spirit of the generic PHY API.
> Also, phy_get_status() is more extensible and reusable for other
> purposes as well.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
