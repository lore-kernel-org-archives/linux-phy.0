Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC94BCCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 15:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQBcgKtcLS0vjcTudCWIf+thqXEX1N8RStBKzlzBokg=; b=tLM1PLa4kwvxID
	45d/3IvqPUvdt9IKhTxjHLxo4wr8rbzL8ClMcJbOD1907LzL63KIb+kjTl51OXyDuxL61du08bChv
	xe07qCQVrfwxnCkhEs0tNNcRgX7k/S9V177o0Edb/Gd7XYiRMbBzVVAA8fFbwcX+Jn35Q4wzML8/I
	OHmujgShiaD1IElyL3J6lxs+ENEg1GVEYsp7R7QF6/C/PYQmGr3VULXY52/Uhl2AXf89VFCSprnGc
	8YOV8/WO3i8qyzHo0qkuGvkFp0+eoXAZqA8wakMnPC6I94wqq+uCQq1At7PbFtX8rvgfU0Sv46V/j
	znJZth0BkOnvx9ovA/Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITnO-00000005gz8-2TH4;
	Mon, 10 Nov 2025 15:27:06 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITnM-00000005gyZ-2LyG
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 15:27:05 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-477632d45c9so21125235e9.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Nov 2025 07:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1762788422; x=1763393222; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sU4Vu+5Nhcr+sXRc68w+sgESrqt+otDbTB/fX8fU/W4=;
        b=Vb6R+NKcTTyZFVBx9Wy22PJSa3+DvMsQjUE7o74pdbTxwZBN27kx5t7hOSZEDhOu1l
         Oxp+59hcKrO+NJkkmDzAISYLjoakVqo+FQJIpU0CIBFud4rZIK4nSZ712qfDocaRUjFc
         2t2Yx13qd5DbBnKHtZoxg9NbqzUsWqaPSLgDDNqNs1AvgRsL1pPpSn1xpJBI1NrKFkIS
         hOJtAIBvLYS398tTloSQMda0t4+700yfhPQ9avgASxMCZ5lIBSurQSLu9lBYbUmBKT9M
         QIEhS34smlhf0OdeQBouMrdWs/BLaobgM3PAiKURN/r9iet3uCwAE4Lgvad20oDspfWk
         Pvyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762788422; x=1763393222;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sU4Vu+5Nhcr+sXRc68w+sgESrqt+otDbTB/fX8fU/W4=;
        b=jJn4aUbhjaAqSDqeiT/aJit5xi6j5Wjaljh005OOHRHpChZJ1UwlGeyMcfWVPqywUN
         3VQYLWed4iX5DgMmIWozDARdakg9Sfc2GFNEj9yegFgKX+YwpEwNQT3WAl+KXBS1ZP/2
         5dmrpiq9VCy+cBJROnVwKwSkCqljP9J45dNfAsQGOa/cU2JYFy+60IOYW205obLE3o8X
         mdqpCOGnxpabba2GCY7Qqwhif6C7FfyvHLoSnYVhQ/RyJqtrVuYMAHWpZtI1m7bTI9pr
         papzKV5FKvZ3vYxFBO3X/uP+OuRqhHboWb9C6JGUeBq3BaMtItqPhYNLIe1qEDLtoEOL
         0aJg==
X-Gm-Message-State: AOJu0YxiMWGXPLA3BSkWkAhX20oQEKWKvqgTnbIieulPbFfr+AQKFv07
	2VCB3B1tbUSRPatGlgUz/g58r+0zeyk0eu41Uou7o5DkJlJDQ46kewZjMMMK6oQaPJo=
X-Gm-Gg: ASbGncs4237HOxg2HYb9Fk6kEfmwqVPNeYq3lSuyADGi9mJEJwKiKYUFG/otDzc91Pm
	qR2Kr0L9JdnD81M9F77DDIbPDYcKaSTuzLvrRFTPN9izRC6mEcq/XDURlRd+duqEPLc8YY9t8qw
	aDDyVuD0Ir0V7tULSII9Yh0DYCmQm6er67QauYylAE4+RLPJ5cV2dB04mCWDSqQC8K39sYtzx6+
	wUP7fvd9XK2UxEDsg69pAwMDq1EfhXOBuS9ZUxyxWA5afjPHAUMCrD7FHBhACOq01f4FkWtolWg
	9AN+L0OPjjIXR31mTcQMdhnCA5PewkpzYqBhmSrcsL6xqLBkmQKmQxyUCxOokV9+BXvpZW5XzRa
	ABOMUJ8RVj4nrBtifKNnSuKhFMDApcV1N8nKtAw3bqZRwsebaJkCnpvNTpLCtRd64IZg/tglZEP
	8wqxq4XhI3
X-Google-Smtp-Source: AGHT+IGKa6znPzwKr8w/TiVXgulW73+wNboeJt9rzEOBoA6V/J1joYMMoFHr1OJr0Wko0CzJFczvYw==
X-Received: by 2002:a05:600c:45d4:b0:477:1326:7b4b with SMTP id 5b1f17b1804b1-4777326eb64mr76072995e9.19.1762788422160;
        Mon, 10 Nov 2025 07:27:02 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775ce2cde0sm329772085e9.15.2025.11.10.07.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 07:27:01 -0800 (PST)
Message-ID: <fecb65e5-f434-43c4-9132-cfede05eba0e@tuxon.dev>
Date: Mon, 10 Nov 2025 17:26:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_072704_605199_43EA775C 
X-CRM114-Status: UNSURE (   5.01  )
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

Hi,

On 10/23/25 16:58, Claudiu wrote:
> Christophe JAILLET (1):
>   phy: renesas: rcar-gen3-usb2: Fix an error handling path in
>     rcar_gen3_phy_usb2_probe()
> 
> Claudiu Beznea (6):
>   dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Gentle ping on these patches.

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
