Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA56C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 20:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ik2B4UoXjrZmlGKz0rEWGD9Y1FeN+B4tItXoRV8Rk9o=; b=uFjq4H5fDoYgoGeqr65RaNXUYd
	jTSZhE3qJtOFax3xcNo0NcP0MBuT1wE5qMQ329Wnm2rujtwGCZVwKjE3ypEXIPPy+yQLgx5hGZJiW
	BSIn28KymFr7HLAJl0N3C4RryzTfNx2mlnWs2XLTdpwak+SKw0+bffcwRIdDzoZxylrcOuAXhgLO5
	yk3rWasBm4ZhjSwSqPLiTeRzfWFwwMkTHrOx1XajoCnaph6Rw6OxvHU2kSIUNDmncCi+dfvrDq6Ed
	7J6oRhM5/onfvwjDrqavyTSLq+9XdcOWJeiGpwkn7oDTRckM7rB1jY0aHm9ytRFiVbaGODdsr/TSX
	vowm7TvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msWOX-00A4d3-VL; Wed, 01 Dec 2021 20:40:01 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msWOW-00A4cQ-1W
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 20:40:01 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 gf14-20020a17090ac7ce00b001a7a2a0b5c3so662703pjb.5
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 12:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JihpeWwnbffmSzfQgXPFy6rVgCaBqhRy0BEqe280cxA=;
 b=cpvBVD7LMaw9qYDhYi2lGHYPXilvgUNFn/xR7q421BAxHOesaXVRp6d+IycLTlLA2P
 MHV+34hzaSw1+xnmu1mSiij/xPlZKWZ2LGI8IbClylS/zq6mDIu16kcsFya4BzLAKdAw
 9paDK4xNaP5NNAUCkoHVCJ/m4rxKTb5/eevGNaSey/PyyjeINtbvTz9+Alqx7zd5Xn3F
 m4Sy0dxut1QXkRQuEg6J/qQ03h+MfjrQGAVj6znAiBqGwIMPqiDPgJmhdZSye8vhC4CJ
 tT9jnhnhNLhbcLjzAUIe+LotVzNBbuVrBORmY9lY1jxzeJheQ0G3JLqWurdSCDTDyu5U
 QMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JihpeWwnbffmSzfQgXPFy6rVgCaBqhRy0BEqe280cxA=;
 b=UsFanzXkwgLcircMQx3qNM9J4XWxD5jufBtfDShpffuls009TYeIlFVWcg598L996i
 QzwbBu5LRS8zgUKt6MfRuEkUecHUhFuIUlDshiv+gXnr8co1u3eP0qTIvW7VgBdZJqoF
 l7mLmy/VN4Irs2s9DNR9/kIT589NMWKTSpEv19zon9iDIabTeIpEAYO7COsQebPuEv3t
 UP9/eh198NosIYmS1TdyBZm0MXpHejxvkWp6FcIGO2mAX/Lu6gyqtv8pNLJZtRibsyA8
 VltnMRjizlAv2ui9l21xXFh0KGhWCutxaBATfcscqhZXNGJsQ3+bbUrn9JKSXrKmlvDS
 oRig==
X-Gm-Message-State: AOAM532CSSX5IrIEyXlAjRXyi3dJCh3BQwmJ+7FgVCL9lVL0tZPIIxdH
 3vLODdJ0+9EWOO/fqXsT0LQ=
X-Google-Smtp-Source: ABdhPJxJVotuM4kn3lvPTPEnYvo6GNLxAMoqoujTrCk15/4LLhQFytkFhVHJP5FBKjlUnS5HucJ4Ag==
X-Received: by 2002:a17:902:c7c2:b0:143:bdf7:1670 with SMTP id
 r2-20020a170902c7c200b00143bdf71670mr10104784pla.61.1638391198523; 
 Wed, 01 Dec 2021 12:39:58 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id hg4sm189549pjb.1.2021.12.01.12.39.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Dec 2021 12:39:57 -0800 (PST)
Subject: Re: [PATCH 1/3] phy: usb: Leave some clocks running during suspend
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-2-alcooperx@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1c7cdbef-75c7-6ee8-825d-840fa0124633@gmail.com>
Date: Wed, 1 Dec 2021 12:39:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201180653.35097-2-alcooperx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_124000_135271_BB171943 
X-CRM114-Status: GOOD (  13.58  )
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

On 12/1/21 10:06 AM, Al Cooper wrote:
> The PHY client driver does a phy_exit() call on suspend or rmmod and
> the PHY driver needs to know the difference because some clocks need
> to be kept running for suspend but can be shutdown on unbind/rmmod
> (or if there are no PHY clients at all).
> 
> The fix is to use a PM notifier so the driver can tell if a PHY
> client is calling exit() because of a system suspend or a driver
> unbind/rmmod.
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
