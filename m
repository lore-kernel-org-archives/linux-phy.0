Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0734DC43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 14:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP5kS0we/jt3FZEZvaLXpv6xRIdBsGcSUzSsRrNMoHI=; b=TKGz9wpB7gYbia
	ylY7baYKZDDHeEYou6lUNVi03K61KRyilAoXoaLwK7f7urRKQHE/WqivuSGX5tH+F2WsnJFv++fCz
	Up+0fcJTLKPVJxunmZscUCMMFM71UfJyKBzrWA/YLjBiLWAWBUBB6ENpnVi4y2MCeWDYTRBOyZozF
	4aYdLh3g9h9Jr7WQmO9+c/KPQiaj5dDQlK65fNjZn63fT144Wd5a31J5c8Nv/PwC5U8DA9MrRQV5z
	K3BBE4QFU7EiobmyLsDOU0L6Mh09y1Fdc78WdbVl3jrIH+TCgoIImYIsxgdubkr97uXQDzZHc9GyR
	4QkKZGTmtfuQgUUL58Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6CJR-006jms-AC; Tue, 28 Jun 2022 14:35:33 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6CJ9-006ji1-6S; Tue, 28 Jun 2022 14:35:16 +0000
Received: by mail-io1-f47.google.com with SMTP id v185so6355739ioe.11;
        Tue, 28 Jun 2022 07:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0ai+gw7dGip6YcbkUuUo39LuNyFuf2jm5c7GJoByszg=;
        b=LSobmXqZWOC2uB59mWru/K7kAIb0vxb8jetOPptOIOe0vV1SKQRHqfHUghw+eGHQoS
         0oNLgYnqNwKURtdkkzOXMTq5FXxjM7GXfSwKi7B74UNa6cXqZBt2XT4KfGautUtO2vxf
         ZlVFixEeOcX66minKQu7McFl50vU2xCvch7sSFucwQVyhJeoyozkY0qcRmOOFaei3b06
         5GNnnayMRzGvnL40jyasntqmFp2wZiqQ+Ukbl383b6S811kNqvSlvJaRNpI0BPSqfcxi
         u1foDubQPhfw5dKA2ipOLlmM5Vad4MXAxIPed6EtiEmh2GnTEB+KEFFKkTUBj8Rn80bu
         FDgw==
X-Gm-Message-State: AJIora8mmXeuF9H7e/wEnPnw3sYS2jND0HqV9Hs9j5C0rYkZPGd6YNu6
	kTyKw84P4deRnUjC9ULOIvIYOGH/ew==
X-Google-Smtp-Source: AGRyM1uKaqEB6vi1TLsmVLeRCfzFwSm/gBg4hNAbNlJKnO7zeOdgTczQg6XOqflcDWWq3b597qBNPQ==
X-Received: by 2002:a05:6638:24cb:b0:33c:943f:7df3 with SMTP id y11-20020a05663824cb00b0033c943f7df3mr7423389jat.207.1656426913150;
        Tue, 28 Jun 2022 07:35:13 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id s21-20020a6bdc15000000b0067533ab9404sm3349883ioc.16.2022.06.28.07.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 07:35:12 -0700 (PDT)
Received: (nullmailer pid 422356 invoked by uid 1000);
	Tue, 28 Jun 2022 14:35:10 -0000
Date: Tue, 28 Jun 2022 08:35:10 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>, "David S. Miller" <davem@davemloft.net>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Joakim Zhang <qiangqing.zhang@nxp.com>, netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, Jakub Kicinski <kuba@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Eric Dumazet <edumazet@google.com>, Fabio Estevam <festevam@gmail.com>, linux-phy@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 12/12] dt-bindings: arm: freescale: scu-pd: Add
 i.MX8DXL compatible string
Message-ID: <20220628143510.GA422324-robh@kernel.org>
References: <20220607111625.1845393-1-abel.vesa@nxp.com>
 <20220607111625.1845393-13-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607111625.1845393-13-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_073515_274359_8A6113D9 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 07 Jun 2022 14:16:25 +0300, Abel Vesa wrote:
> Add i.MX8DXL compatible string to the scu-pd bindings.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu-pd.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
