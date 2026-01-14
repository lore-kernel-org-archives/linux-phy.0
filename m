Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07EACD39007
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 18:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcEamyx9AvKvHU/3JQIpbJcuRSeGeH6oMK0DjHr+H8M=; b=QTgoCbn0IYDXEO
	UGK6YwCt2dEnGm6HytGRtNhnWxx6edXm3Kny+FZ4xoZlbOa6bHGolQ0zBL1GI8mOoFHWnRFpNgiIW
	GAHDkMJnQ7cSN++IXlyuWGkG522gVlprfAKnO1Qc02+asmXP2CGF869Zhq+UlIGqLEiECmFKu5lG6
	DHEYWnIp9kkY5qz1hJfl+z+E+kr5VCPVdIts7JdrfryBnpLheV8vcGBRMWbN98xQCvPybvGOA2HV1
	WiIrcWN+JpF16LTXR2/ZfUtZeociPsaRbSFz0kn0Br0ZBHyQ/XkiMf3ix6rKl8tkysDjFTmV6Z6aM
	ClT2t58Bn1+lLWU96YxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg5ti-0000000ANEQ-2Bzf;
	Wed, 14 Jan 2026 18:47:14 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg5tg-0000000ANDS-0Hnk
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 18:47:13 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-64b6f22bc77so13373a12.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 10:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768416430; x=1769021230; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J9ken08GWaBvhZybEJhtrMx7vEhMPkB4XYNJbjZoLig=;
        b=geWuAwJ8C0N17skAiO155plU3dmZ25fGT6bFg8Vl34br7sWkebRj/3rMd3lGEGsCqq
         SJB0PCvdLsKlmLC1y25hz8EwfAMvqX0gI8CXQem+aY8BJQeN6HcLQKAFlrSiXDpwU9jg
         xR8ZOYY75a64Tr2aHZ0F1JuQmqY6OZsRRNv/NvthKBhEnQJrGC8A9iQDp6KI2X1psVVF
         7shuBnsoQ72LMIeEgaxXGFH8tjkfhQxpG17Zj21vobm4BTW/WAUyHCsY4Cyr7i6FLWfZ
         P00rZj7XAFemuG26mQfQUjEO1fKx84W9x+Q363X7W7pRdvrf/hvTkKnEfSIu5e9zDMvp
         ZG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768416430; x=1769021230;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J9ken08GWaBvhZybEJhtrMx7vEhMPkB4XYNJbjZoLig=;
        b=Vbfb4YJWXGZDVsuI1PjU+AoAyRqLdTlTqFptayzbINgftvbiR5RSI2YOiHu8IFCm1/
         IjfOzPyu+kEIfXtjj6HR+e/+vxkmfMP8YdAmey2qsQEVuVBjnXCDtXw6O1YShYLLVaV6
         9qEsEAdqfGvreip0FMD4QVsr8AN3pFIApSR+G39qlQysTBEWFA6c0n31PKpFlGZkq0BU
         /sEZw6KXJSMlwG6c6xHlBPlWNhHLftP2U+Hus2Zq+aRu63lDtMSokB6x12xjOQbWChY5
         JEsenSlAOC14FL6t/sKD+yaRREc/0VinysB+WRs7OL5Imhg38P99PUoiPV0MCfHTkHQ6
         GFIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr/jMz69BdCNlC17NRmHBWJ7VzQ6M5vq0pktiN60EkI1Eb0eOTSYKM57Nck8k5bqz2eBoaBdc4XW4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzW6dbVu4LG1n9i9rv2weGfc1e88ZTstaGWqTD28XnsZHKcz63d
	vmvPKWLm4iPzpzD/jyuCIyUK5yNOghu4gAMoOYSg5j5DFgCOfJ0IymsE
X-Gm-Gg: AY/fxX4DyKDFfhM4X4lsUA79g4aGIqXWIzfRl17fDyan09UeKrhgGPiamXfAoQiBvyv
	6FhKYJ0a57gm83UJqx2COYWPBu7XZ6aUSv6XI3Iz0nwbuB2eL/NiL9jd3aACb5uUx6O3R/06vxL
	pMkg9T88bwrAFOWL3bScFNojRPVLKnxvAALfbH1UEyCschXjKyBjbrkM3UvzAl2goswVUQs9fiM
	QQnB9T7hja0kYJl5+1ATIE67DkyO23Hu8qhr6hoyYqBC5bXR2SDyeGAohxnPk8xp/GC/0DQIILP
	gT3HcJmZM3iQ7vNkS/JS+mjmSEuCqrjBjqdpvbmUej/ctW/BqbqeoDfeKbaSZt/0hYnM3iQ6BME
	Ww//e5o9p3OXX5HloiYImi1FNdOdffGnrDAcAVflTUd4u9ZSCRTqX08QPWroZmEjWUklR5eI7ow
	I9H10=
X-Received: by 2002:a05:6402:1ed6:b0:64d:46f:320 with SMTP id 4fb4d7f45d1cf-653ec47b906mr1748710a12.7.1768416429553;
        Wed, 14 Jan 2026 10:47:09 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:9b39:8144:8a26:667e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65411882043sm327189a12.11.2026.01.14.10.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 10:47:08 -0800 (PST)
Date: Wed, 14 Jan 2026 20:47:05 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next 03/14] phy: qcom-sgmii-eth: add .set_mode() and
 .validate() methods
Message-ID: <20260114184705.djvad5phrnfen6wx@skbuf>
References: <aWfWDsCoBc3YRKKo@shell.armlinux.org.uk>
 <aWfWDsCoBc3YRKKo@shell.armlinux.org.uk>
 <E1vg4vs-00000003SFt-1Fje@rmk-PC.armlinux.org.uk>
 <E1vg4vs-00000003SFt-1Fje@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vg4vs-00000003SFt-1Fje@rmk-PC.armlinux.org.uk>
 <E1vg4vs-00000003SFt-1Fje@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_104712_120960_C7BD4096 
X-CRM114-Status: GOOD (  11.26  )
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

On Wed, Jan 14, 2026 at 05:45:24PM +0000, Russell King (Oracle) wrote:
> qcom-sgmii-eth is an Ethernet SerDes supporting only Ethernet mode
> using SGMII, 1000BASE-X and 2500BASE-X.
> 
> Add an implementation of the .set_mode() method, which can be used
> instead of or as well as the .set_speed() method. The Ethernet
> interface modes mentioned above all have a fixed data rate, so
> setting the mode is sufficient to fully specify the operating
> parameters.
> 
> Add an implementation of the .validate() method, which will be
> necessary to allow discovery of the SerDes capabilities for platform
> independent SerDes support in the stmmac netowrk driver.

s/netowrk/network/

> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
