Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CABC9C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Mar 2022 16:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIR7LMVE/cpSt5qsx2UXbbdaZQ1PdeyOhsGfT9DDcvQ=; b=TyLE/mdndtc5zf
	tw+a8E6jUZTyLDYVEbTL1AyC1kIC+/3cjLmyKTtAO2KBFPaSgtIUzklca+26Io78qO1VTz+1CNzA5
	7ullmTFCIrY1+N18Bw6hKVGAMKPpSw9M7/pXOT+YU7eEoTCB3LQ2nZ4z2oLRvYXdaRcdFqXzOLdmZ
	x/A1KUJBfokfo+kC5uPH7OrNVuXM7jgmdHIZipiZuCoyeeV7fJXaMaLSTdQipxkBHoA36B0//o5Vj
	Kcn5xIwgGmRUtyML5AkV3Q78HmoSxvEMFXFspNbLkLYdyXuVxZp3rKxPvnundhRITabVloc5XuaPy
	uce83kdHGWHp4a+g5jYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcw4-005I80-Sy; Tue, 08 Mar 2022 16:43:44 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcsQ-005GcV-H8
 for linux-phy@lists.infradead.org; Tue, 08 Mar 2022 16:40:00 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 x26-20020a4a9b9a000000b003211029e80fso6224068ooj.5
 for <linux-phy@lists.infradead.org>; Tue, 08 Mar 2022 08:39:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LqsblcX3MtbRMMm9B3Z+AqAZ1YQp8Xi0MtRM0YAPQak=;
 b=X8sz+cnKsiZyvglg5nnRjXDgmvtVtMxCFApK5BXuYCW2Mr6l/AXJkWRQsPptgO8xab
 6XKORjiKWM/MD0eP9X/uR0nB0XpUlQdoBxdVFlSHHleQhB/urS2TmdfKSkemD5UREvWU
 JEr4Q9VQL2jxhMUNA6w54nWWW1fI+tU8rOGEb93J1p/i8jdHNVGLJ4nNnEDBBl6jvDzw
 jMSr1OTxREYYqUpz+qKhtBzv7H2dpuAqIXwHDmRj1chsGINj0xGfiqtLvxGf9wKM2YZp
 6J/HqWDUcZOVc9Of4kw03wxlg81gI+ZFhm94xCdDHakp/NUMX2CcqCVPo2W9L0hhycGg
 5lAQ==
X-Gm-Message-State: AOAM530ni8Rmlx66vzmALI+aK98HCt6f2tB8GeB9YmhTxMNMK+WDNtnu
 UHi/4xijh/6hJyjUutq9X3kpB05u1A==
X-Google-Smtp-Source: ABdhPJx8LX7mJBIVppVai6vgrJ7wctTztsVswtwWgW7rpKjxqFl4p4gEhzFq17Vl8bc/ghG4DRyyNg==
X-Received: by 2002:a05:6870:d69e:b0:d9:ad7e:f0e9 with SMTP id
 z30-20020a056870d69e00b000d9ad7ef0e9mr2872881oap.138.1646757596928; 
 Tue, 08 Mar 2022 08:39:56 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 z26-20020a9d62da000000b005b23f5488cdsm2220577otk.52.2022.03.08.08.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Mar 2022 08:39:56 -0800 (PST)
Received: (nullmailer pid 919426 invoked by uid 1000);
 Tue, 08 Mar 2022 16:39:55 -0000
Date: Tue, 8 Mar 2022 10:39:55 -0600
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: ti, tcan104x-can: Document
 mux-states property
Message-ID: <YieG22mgIzsL7TMn@robh.at.kernel.org>
References: <20211216041012.16892-1-a-govindraju@ti.com>
 <20211216041012.16892-2-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216041012.16892-2-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_083958_638058_54444F69 
X-CRM114-Status: GOOD (  10.83  )
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

On Thu, Dec 16, 2021 at 09:40:11AM +0530, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceivers,
> muxes might need to be set. This can be implemented using mux-states
> property. Therefore, document the same in the respective bindings.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)

As the warning without this is still there and it hasn't been resent, 
I've applied it.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
