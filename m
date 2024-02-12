Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7CF5C4829E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Feb 2024 23:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Bo66U9jIUUd0D0sIukzSdasmoHwU/bWw52X3XU6b9o=; b=a2HMPfiPDBxw9Y
	cI1fmoTaf2sU1Hc4MlF8a/Q7JkzGJje59fXjuMQjTRSK/JowPViylMgSJQ0f0FsKMdRUUnoSOXSBk
	3jFFhiu/PIjEXtFZIZTdZViCoLmamnxkdqhhYuA54dvrZ07mcNdjWA8U5lxQ9MB4NP/ikCwE6MpgA
	z4vVCvsgyA78nGsdnfF4hQ/qkAHxMP3zuiEXmH/4JHj3PQXil34cRS3LbXBaezEDcU6NHvIbaOTvv
	dELpXEiECNV7KkX/sxEd0zjPAL8ad9WBKrX+S/+YCGLqnSDEwwmdZpHNvC7rOKBT+irPbpsC53syB
	2DGdh3P1jZ5Ho63cRdUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZfk4-00000007HYh-23hZ;
	Mon, 12 Feb 2024 23:29:40 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZfk0-00000007HXF-3Sih;
	Mon, 12 Feb 2024 23:29:38 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-511976c126dso277258e87.1;
        Mon, 12 Feb 2024 15:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707780574; x=1708385374; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zcaRkfO0BdPvUQLLboOBrKpY6S4NVSBrCTABHk+Uq6w=;
        b=OfIQxPgiDo1qmSBLS0AF95ulA7Ultqx23tGaDHgWOnyp3lMH3KHc+tTto9A0cqJfR6
         dNq1eQQoxwFqnA1Sa/cMEX9iB2cLvNGgcOpISaYafaHEq3dZ7KbRC9gEIYfkqLOpBWNi
         w2YdN1yR+h1TOI8pqB7iLsO2n4Nf+PsJUvMgPf5i36woJPN/KPoo/ajos2QEd9m2U9FO
         MPDqWEiai8QIofD/AAPkTxKrpXvt78UZUGEyg7ADjlLdD/hlaaVV8rqd4MJU1ZDD+9vY
         L6tc62NlfD0JuG6ddT2k5jvtuNI020scXHTXuEXbhpYHnu4/QL5JuWHXXu+WUZJI+eKr
         QxoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707780574; x=1708385374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zcaRkfO0BdPvUQLLboOBrKpY6S4NVSBrCTABHk+Uq6w=;
        b=vOa6yOHGoJoTY5kB/+Ayqm1/oM7B9XyxxBtrgSF4d9Q9qqFYQ5uY86dXGAbgWlDSN1
         MkHrBxH4wAVFHMYl0wT5spnnL9jZZLA9M5PDByBqjn7UnFsFODj7Qc07xGnxZyeSBD+x
         BXY+Wn4X9FYfGc2r22gydlQb1p0dB/eWhiNaxwSo097UtHHYyxqR8yw0nIRY7TFca1vd
         5XuJpD/iBAnYCAyQHpRNMXvgsXwkjZzzbEHA0ep28ur8M/f8eSZ/X7nXCG4afaDcNbbV
         VvkK6FziQXIxIng9tKDjY5CrigRIRtQIBk+5if3A7WL+Fxmom66/BVrdVaDtpApI5Her
         fPcA==
X-Gm-Message-State: AOJu0YyzFpj9jqiY5M/DV6vL3E4EtbaqzwneLBEFK6Y323zTCKGP2z9r
	NnVI1OgVZRf1YUBA9N7g4DUiy2gQyao/+idkw4pOcGeMvZSQWpV0
X-Google-Smtp-Source: AGHT+IFIWtldyJx1XYMEJchXHZMIFVD3PXrL77dt6iWgw83HTQ4i7gIgiIvPexderAlEhkw5ifbIoA==
X-Received: by 2002:a05:6512:328b:b0:511:5c98:ad2d with SMTP id p11-20020a056512328b00b005115c98ad2dmr4693198lfe.2.1707780574106;
        Mon, 12 Feb 2024 15:29:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUXrPlPj5K670alAYmGzlZyfWqvPH3kwwjcqPP1g1Krm6r9bTOGE92Lmo1q6S1bExz5OJqz78F7Qm1SyGIeWMeydbDjOFCL7MW/1SCQkC1dy9/ArQ1bhSuvoQRfr+j1zUSHknPaFyNv4cNjRYbJADAQtICkElxN4PwaIHQqyLm1SsPGxhZrQJwoe4qjbHyZKctGZMBKkRzP/9CnbNJBhqD7BT/ymKWnJHyUqicfHtKG3M6CR0+2PeGY+iER3DibEhbyYN4jyWmjGfoO0Hs+n1iabvRgW7AQOefxaVcW1K5EVq2ATHOesYtdMIcsIzXR7+2ZQh5OxfiJkoBlyNDKwHJo7DpsmXxW7NYvKHMEvEMUa9FhG9jUWc1fweMjGsFS6bFu7y549eon9JUlZU5CmhGZnMegJPwnU52hDb4W5gqVoJ2jLlLaWj05aUOYpU+wiBHclQF2GmVjIn0zNuyA0CJc4NAucxk7v95lBrcYaGvH3gtLFAewbjPd0lqDRN9zaVMI1MrOeGRHrZqMkJ/L2bxQx+RAggjBtyUdJU9AQfXBfpX1+eSOo71EVtFHuh2h7MVhWqdU+Gnf0fM9P03/QP9PULseUpJlMZoBb+KrbsbxPm0=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ca20-20020a170906a3d400b00a3c49c5aa85sm668989ejb.126.2024.02.12.15.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 15:29:33 -0800 (PST)
Message-ID: <b89552bf-cb04-42b1-94ac-5529205b3be1@gmail.com>
Date: Tue, 13 Feb 2024 00:29:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20240212-phy-hdptx-v3-0-2cde680cd024@collabora.com>
 <20240212-phy-hdptx-v3-2-2cde680cd024@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20240212-phy-hdptx-v3-2-2cde680cd024@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_152936_902888_F50E750A 
X-CRM114-Status: GOOD (  10.38  )
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



On 2/12/24 19:52, Cristian Ciocaltea wrote:
> Add driver for the HDMI/eDP TX Combo PHY found on Rockchip RK3588 SoC.
> 
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.  The maximum data rate is 12Gbps (FRL), while the minimum
> is 250Mbps (TMDS).
> 
> Only the TMDS link is currently supported.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

For Linux FTRACE filters it is needed that all functions in a driver start with the same function prefix.
Currently there's a mix of hdtpx_* and rockchip_*
Maybe use rk_hdtpx_* ??? similar to for example rk_nfc_* in rockchip-nand-controller.c

Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
