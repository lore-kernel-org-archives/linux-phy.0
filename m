Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D0F606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D1yg3LSj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nMDWMr5o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FrVHzQGkiWpCZ6MS7MW4PEzVSEYd4ucNtznXPhgxITY=; b=D1yg3LSjlfYO6gE4y/1NYXgy4l
	ATTE9lu9+XB8DEjSE4qqNc0dG9FplXiUvknTOhMMf00wgaqhF5katwl5Y/bFfNk+yMjMS9hA9WFDi
	uLzUx5J+L8CzmjG4zon3Ww1AoOKmqHI2G0gDGOA/Ke2t5Ry9n2r0t3XZsXOven+Wfo4Ar4R87/6SP
	3GAjXlZ5fyPZpS4FU9A4jJzd6tgdH5SSAlU2d9JibM5hrCk6ifIQXX09PfGResaSpaWh8uDtW8tL/
	4GcRsMaG2O5NyQozjlUDH3owct5TaM/Vp9dXJlYBU+x3jT4o3L53CX4X7FV/h1MqaSa46Udml4s8R
	kmTYt55A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlf8-0000000Bfj0-2W3J;
	Fri, 30 Oct 2026 12:24:50 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlf5-0000000Bfi4-3eaA
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:24:49 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id ada2fe7eead31-7ccb2ffe333so420508137.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 05:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793363085; x=1793967885; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SIV9tpRgLQZjeNbnTpIGIuOv0nbniYNHC6sYgR8Ss+8=;
        b=nMDWMr5oTqXOCckSzPGj01bNOx1izoerlmipldEBQxU0SEk7J0JdlYIOb4EKsKUzoh
         l8pgcnPUQGDClxp+ulCv+c6PyANU2D09y50O990mfDQ/gtwVInFOfnp6YSJwXDsPjBtM
         B3CwSPlOef/AmNiF2G4WfYU2Utr/lAb4xkYaRY+bXA9V/bEuE9ZoWVwwpW5t7F9Y8cdB
         XWjk+keq8W7FxRMrn0IGpx9bAXBEefdfHp2BpCstFCBZJDnerx4WSlTXHUICgH8Emxs2
         tS0jJZcDj9HBjnsi8c08uReDGhS8v5CeFJuFQPH3E6kgqUL3qDALbInYFjFjxKJsEaiE
         A+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793363085; x=1793967885;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SIV9tpRgLQZjeNbnTpIGIuOv0nbniYNHC6sYgR8Ss+8=;
        b=NPOaYUYzPwG1pRYO1H/9tWr/z48nzsiBR16bI3omcjorgGvKW90tgYo+Rgpwn/6yA3
         TRJt6xjV4crjJ/4BjGhJMJm3DWQqf+IihZk1jJGsht0VKZ+WjzG3+fIe1TjDccypVqyL
         khz2z7q0zksZxkO2UqUwF/rC16IPxHPhLcti32iZPJhonzo+kncrdyC31komTlVGBdWe
         9AMsWPJ3zmrZkuGRD3pOSIeLSID4yc1rQ//zJKZbIprMTR9jSToKsjOYGHzhrhdJQkb2
         AT9Px+4vBGs+SSymqkXaqGjBvt+1IB4WPn6VBYSrmv6a5Jrr0bzLq3cP7coHleQ0g3dE
         5cbw==
X-Forwarded-Encrypted: i=1; AKwUvByT5fqvdVVIRCCwDKkFc6Wx9/fyrRn3GN5lcZ1LJUuSLjIJwuRVlozYJVL4nCFj0ZfLCRxQvZtGR6M=@lists.infradead.org
X-Gm-Message-State: AFq9FYLUk2sTpA/8rwj21qjfyYfaVONY6LznNYA/4hgnpTsdVQMfIbSl
	fxkd6NpDV1CaZCDvdQBKtJ10C3LN00D9VMn8HswODE3yFuLZZSpooqOT
X-Gm-Gg: AYBFou0o9U0MgklHHGqkEvlT7+v9+WiEKf1MlRdNSG1x9ltFJxoc26J/2+XluVfFtio
	/WbvTgeDwsvXsMuMPRj0tyHgZNDAbvls9dEQCf8yf8i8YEzDsUP0bkDa37u9MvK/U8MzIa1vuNj
	77s+O8w1zbBbzdq7yPSxWQ7/8eXF6iDjc4e0Hj/FjFjVj61xhxdUKQRL/aXAZ7AuTueFU46BR4P
	07Y6kOZItTimuVeJeDHLEDrNFqYmCHy+tKWm5sRE5QwjFbAZBp3meHSMhBzwvM21Jta0Ke6bNqQ
	dHOVHpGIcEbvuq6AYZctrGLQusH7k9ps4i4Glu4JXuxnf9zldhkVbbvPx7noMzWyHWlvCv4vj98
	3CJqPZDZsCa+tPNtDauvf2uvYQ3LWccPU77XuGnEi6fOE8Nm6VtQfPargoix6Yd5irqstO7ARV1
	yktYKlOUO+NXlu3eYUL9Nz0iagXpxXgzWztwZJJqPjWX7fq9fjYoMhachFwmXGUDN9GNhV6jcwa
	bHjSA482UHbP1h72Z3ghxvlKbOt1u3CJgZTIpyOmHgHztq+gx3K43GPHDTWHL8nlgidrwYiKRPG
	8V/CzQumETmyqfzjC8ORtTHQYXhPnZpAtqDMjTKlbrJ8is3hyIAtam89mnvHGdnC77nrYvCpjs+
	oNTdhV1kGgNLQoD5mLIJEO3ayjKR5EAz1/TaU
X-Received: by 2002:a67:e70e:0:b0:7c1:7ca9:94bf with SMTP id ada2fe7eead31-7d072c3fbc2mr1028237137.19.1793363085481;
        Fri, 30 Oct 2026 05:24:45 -0700 (PDT)
Received: from MaquinaLab.. ([179.179.238.247])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5ec69bf54casm2188412e0c.9.2026.10.30.05.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 05:24:45 -0700 (PDT)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: document Allwinner A733 USB-2.0 PHY
Date: Fri, 30 Oct 2026 09:24:33 -0300
Message-ID: <20261030122433.1659882-1-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261030-adaptable-vagabond-skylark-bacc90@quoll>
References: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com> <20261029172325.3425046-2-vinicius.eduardo.pedrosa@gmail.com> <20261030-adaptable-vagabond-skylark-bacc90@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_052447_911103_4136F428 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

On Fri, Oct 30, 2026 at 01:03:31PM +0100, Krzysztof Kozlowski wrote:
> Just one paragrap and explain whether they are compatible or not.

Yes, the A733 PHY works with the D1 configuration in sun4i-usb, which
is why I used the D1 fallback. The A733-specific compatible lets the
driver clear SIDDQ earlier, which made intermittent USB1 enumeration
failures go away on my board. It doesn't need a different PHY
configuration.

I'll make this clearer in a single paragraph in v2.

Thanks,
Vinicius

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
