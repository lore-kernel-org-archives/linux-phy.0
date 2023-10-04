Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87407E8FDC1
	for <linux-phy@archiver.kernel.org>; Wed,  4 Oct 2023 00:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vh3ngrAwCIZV9IzvkdJ0Mbi4rP92Fwg31YS78+qZBrI=; b=SaJE95L0ek7ju8
	toq2bgOyhjkolYaIPK/HRYdkarW0zjo/BJjvV11aWudgCvNKzidRAcAxcvW/edbI0hoVrPiGZSnVa
	hOJtn+yhMxTVWA43USRV+CaUDsTaJgVAOhzOGR+5bfZkpeLsxWYUZJTdV5N3HaOYR4nVWc3uL6bXH
	8N+PseCHPO/jp3KN9G+9xKUddYinwtv+sM4wPiIwfXGIj+tXGX24gzpZII6+8jczxJ9LhFSMxfIz7
	VsxjP68BnVxW+zPVRqnggm30sI8i5O3Zk/BFcWShekO3PAJbISKgHUcgGjbNcKdB4MRER/7vkN04f
	OKK0e9sGfiX32O4kLibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnpRh-00FdVP-0W;
	Wed, 04 Oct 2023 00:08:57 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnpRf-00FdUP-0R
	for linux-phy@lists.infradead.org;
	Wed, 04 Oct 2023 00:08:56 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d89ba259964so1624570276.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Oct 2023 17:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696378132; x=1696982932; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dCa+0i9kKeVSkGqpdeS9Lx9148GCyp/qVyJFfQa3oIQ=;
        b=boqa1OKVJ2KjUfT3zWUMy5cxAYjnbc49k+J6BPBAfOJxBdd1p86VcFHH558amkxogl
         QskCbKQ03T2im4mWKSfbmVx/DKPs0ygL5QD0nCyVkXnLr0kw+4BGLwOl6yJz69Rr7DIl
         cq6MxEuJptImwQ6aEbNWVgk1OAIp3CJh2/H6jZB7SRuETf8G/R21q2uP4PSe6O3X6sS4
         ONqtnZ58uGr+NzqTX5MMtkAs6POvW+v+wzPrq83hpV6lsOG7vGvPJikhZwbQtF6XR8Cl
         3ll/loaLA/quyTZjaAfJQY//0PAEjcDBVMswlu626o3SKTD0GueN6ddng5bCrLBdEAf6
         rO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696378132; x=1696982932;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dCa+0i9kKeVSkGqpdeS9Lx9148GCyp/qVyJFfQa3oIQ=;
        b=Ua+ZWS8JacLsOHH6vwOif3/TwYAtuSCpl7LuBkFybkR6gkxuJkoj1r4avasgQA4wVs
         J3byw+KvPobeQ9ADQ0T1VHFFut5xp3bI+4xKwh3MNkD30FESNdkRBmuHUd2DfipAk2lz
         TWjis5LoCOfXdHwF4nruFstoRYxPX2k47rPsPn00yGlEEt8VJadwZnwkg8DBC5VzOeje
         4Q/nI+zJD5IIAzf8ji7fyxJmITwrfyf9DxIQ6cNADdJpmyYvEfAlw/B5KNEQYxKJ8npf
         u18rqyBkXPx7hw9daXBQaZ5C5/aYHNLu/F7WKwGYCWqunhCd6JWOYgpZxpj8BJcOijtl
         jFRQ==
X-Gm-Message-State: AOJu0YxFUuD05EJETDLpJfp7mCdfkIUABlWGmRjy6fjWFOaTvXdntXDk
	IXmIfY8Sw695lr4HfiQHEBo=
X-Google-Smtp-Source: AGHT+IFqKJtIqlFOEKO8qAKF+mtZkgNwFt6wO5+bzq6Mw/+VU8TXxOCbrV3uGZCtWPanRjaEV3dcWg==
X-Received: by 2002:a25:c0c6:0:b0:d78:11a3:6800 with SMTP id c189-20020a25c0c6000000b00d7811a36800mr612442ybf.61.1696378132442;
        Tue, 03 Oct 2023 17:08:52 -0700 (PDT)
Received: from ?IPV6:2600:381:7008:cca7:f580:6da:ca4f:33e3? ([2600:381:7008:cca7:f580:6da:ca4f:33e3])
        by smtp.gmail.com with ESMTPSA id h16-20020a056902009000b00d7497467d36sm699845ybs.45.2023.10.03.17.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 17:08:51 -0700 (PDT)
Message-ID: <20dff920-fc6f-4c37-a708-0519ee658c8c@gmail.com>
Date: Tue, 3 Oct 2023 17:08:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 net-next 09/15] net: ethtool: introduce
 ethtool_link_mode_str()
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
 <20230923134904.3627402-10-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 HGuUuzv+GKZ6nsysJw==
In-Reply-To: <20230923134904.3627402-10-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_170855_196501_11F03CC7 
X-CRM114-Status: UNSURE (   8.19  )
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



On 9/23/2023 6:48 AM, Vladimir Oltean wrote:
> Allow driver code to print stuff like the resolved link mode to the
> kernel log, by giving it access to the link_mode_names[] ethtool
> internal array which already holds this info.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
