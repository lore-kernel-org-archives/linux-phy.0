Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 027C8C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 19:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCRkeHv80YthUyQn6i2+A3Nd074z9Dj86dy5Ij4DJD4=; b=GXMqIYQK335NyV
	O0pEnprU2BhJmxToI0JvnsmsSKcoh4EzA6GaH507fLY7rmbtE9BxJyfPQsOQeyN7OAovZjDskn7a6
	F56Ny7Er7h9Phf03AXP8waDH2gtCU+JDAGL0+rlu3cKiu5/+gfSQKvppSTCfxHWjFf58LgJrkxGK/
	JK6DfEs4h5GnxuQvVm+M9wwAREF2n0xzwO6GCKaUyAKnvch4H/yVfdKKqzZXOYXWxVcgmj9HK/lhR
	PKq34JC1wY1Of6khpmkr0KGG9JYaNjzU34FNVMZdVDIU48WoXo8/420CC5Tz14V8F7xILlkj0lBFi
	vQ0E8/svBNthxO86Ef2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mw7tW-005QRs-B0; Sat, 11 Dec 2021 19:18:54 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mw7tT-005QRB-KE; Sat, 11 Dec 2021 19:18:52 +0000
Received: by mail-wr1-x42c.google.com with SMTP id j3so20420592wrp.1;
 Sat, 11 Dec 2021 11:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gOlTCB5g4Ul64JkhSPK2Bym/NyU9CnIoy/twmv8/VQM=;
 b=fUqpRaZgBf7CEd3z2zVOe6jdnR/v8TZ2zI28oI+Jlz9SA22NR1gOn9jMaiJDtm3bEV
 jZd077h7yeY1eNxjd7HU8UU9K/kTvPNtZulCXWxAS5efH3p/+NQ2oDeTfvmSHyScyv8L
 a15EkJH3Rbn+ayd5Dzn9w7ZxClS7+WudFy1fgChiz94+PE6cRZ+gIvGhrpPOBnPOQc/9
 3w2O0X1Mk9Hsjswuo4jLg92CpWUX0czhIvGUkR99LFenrkC+2EzEmB0itf83/eACQJpC
 moTwP67Km7CGyNjJMXGQt4QjvsfTF2WedRTaxaXT15RlqMv8ip0TqL0BNu9TrRpgHR0O
 QMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gOlTCB5g4Ul64JkhSPK2Bym/NyU9CnIoy/twmv8/VQM=;
 b=2LQ06R7TFK7bhhvBexvrXDwiogu+rzEc9viXL0IidXTXneAe3qwiPemiXeRzU3YOQ3
 RYbbFaZYa4doqaNIBVAqC2W6ySNXlhq5zEUEVDpLiE1SHt7ns0c2R96BQiv4U+YS3MtN
 jdrydFDMtSLQsEvJYjrZTvW21JYpTd9R+pxejUqRDXluTA7HWyHkp+qNza4vO5wrnFfH
 NjpoYPCqqJ96UVp6Rg/DNtiP+awKxl2vZ/oEfhcJySlejK3tOnycqwEX0vdTvEe9gqfx
 MJhktsuTwJJOGvGoogiYZro2bVz9BeEFES0tsKhssmXDrUShc41aBrAGL7hDGTME8Su8
 EGqg==
X-Gm-Message-State: AOAM5319Ao8S+RAYSEFarfW8cztjNyqzq+U91BuOj/fb1yBcp0XutV16
 NU7QoZg9TDCqf7aVca7bNdeZ3PvbyC8=
X-Google-Smtp-Source: ABdhPJzIhDx8ABRVZ0FCBxAK7JVUsBsAzr623bRju7te8XUPwtOqsjQL6wl7EZJAH5iXBIwoDCdt1w==
X-Received: by 2002:a5d:5007:: with SMTP id e7mr21539594wrt.320.1639250329686; 
 Sat, 11 Dec 2021 11:18:49 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id a3sm3116524wri.98.2021.12.11.11.18.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Dec 2021 11:18:49 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 yifeng.zhao@rock-chips.com, kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v4 0/4] Add Naneng combo PHY support for RK3568
Date: Sat, 11 Dec 2021 20:18:47 +0100
Message-ID: <2461932.fyNAqVaUXx@archbook>
In-Reply-To: <20211208185449.16763-1-jbx6244@gmail.com>
References: <20211208185449.16763-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_111851_717231_38F0D25D 
X-CRM114-Status: GOOD (  12.10  )
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

On Mittwoch, 8. Dezember 2021 19:54:45 CET Johan Jonker wrote:
> This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.
> 
> =============================================
> 
> Changed V4 by Johan Jonker:
>   TEST COMPILED ONLY!
>   Driver not verified with hardware!
>   Produced in the hope that we can get some review progress
>   with this serie for the documents and driver.
>   Use at your own risk!
> 
>   restyle
>   add devm_reset_control_array_get()
>   remove clk structure
>   change refclk DT parse
>   change dev_err message
>   add dot to phrase
>   add ext_refclk variable
>   add enable_ssc variable
>   rename rockchip_combphy_param_write
>   remove param_read
>   replace rockchip-naneng-combphy driver name
> 
>   rename node name
>   remove reset-names
>   move #phy-cells
>   add rockchip,rk3568-pipe-grf
>   add rockchip,rk3568-pipe-phy-grf
> 
> =============================================
> 

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Applied this on top of 5.16-rc4, added the necessary device tree
changes to rk356x.dtsi and rk3566-quartz64-a.dts and ran it on
my Quartz64. I tested PCIe2x1 on the one combphy and SATA on the
other, simultaneously. Devices were detected correctly (with some
hiccups on SATA due to a Quartz64 Model A design issue, but it
was detected eventually) and some transfers were done to ensure
it's stable. It is stable.

Regards,
Nicolas Frattaroli



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
