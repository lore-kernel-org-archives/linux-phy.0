Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E8AC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 21:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7BAN6SgZRY2YAp2SC6JQDQL6erXJt/aGKPjrYGDMV0=; b=usId/98lmv+W/e
	DxRgZ8ArLMUE/7usZXETFHOJ2D6Rrp5oG3/ksN3dRJrYeZGeCv0XaZQ1mKzVULDFM1/QgxnY1AqIA
	N96KsLys/jaQwRt9r5qvhewwKcnQu2sc971G/QFnZPNVAyN2Zpw/+Ged2SEoxXxg7ALNJh88SOOlW
	xzuyLTe8T3TkwqMikBiAHM+aTSPphJ5u7rEmH3wSIrYgScWP/ExIIsAnmTCNLNEx6Tl3M8CWfl4JL
	cQyA1AHRR3D+2jYxg8Ohouhi1Roh/dJ3Z5fmM29Jm9MiNeFmHexxVW7NQCZe59SyqnaUBh5bTig+y
	X1zQgh9l2fXBPH9onClg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY1V-0000000CwKC-3uRn;
	Mon, 10 Aug 2026 21:59:09 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY1U-0000000CwJ3-02Cp
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 21:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1786399147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c9CDIauTN7m7q0Q33ff28ouhlrdSOd1kpngNZO2bxk8=;
	b=b1V+z6LjWPZEg4OjovWPfJn7a6AuZyyWlTKahf3Qk6ifsjndmc5o5No+w5sgVu6AqbwpEA
	LR7nBFaBFQ8kwfZ2LYzXL4okq8z2LxMn8Na7twTEVCRimxPr/jMAooKGJi0iEpSwDx/BJ/
	kEcUs5HuTB8L/FWDfPVaDyZDvSmnm0I=
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com
 [74.125.224.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-64-pTGsq_E4OESMgAPxPC2BOw-1; Mon, 10 Aug 2026 17:59:05 -0400
X-MC-Unique: pTGsq_E4OESMgAPxPC2BOw-1
X-Mimecast-MFC-AGG-ID: pTGsq_E4OESMgAPxPC2BOw_1786399145
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-664e15b53d3so6973489d50.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 14:59:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786399145; x=1787003945;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c9CDIauTN7m7q0Q33ff28ouhlrdSOd1kpngNZO2bxk8=;
        b=JhA+nVoI/w1x6UA+5ajtpDfD0w1RUH5+cdUqouYrSK6a+yARNSrSi8RYmIocbxWP30
         3S4OXn1pb1Gt/dRNw1/mSDTFVOIt9a3D6SPfzQj0wJaqT5iscFT2hAHZ33gOXEtgtGxI
         BcLg6Xzc2Ju34dZDVeJCMl9nGaMaOCdrFJfFDwPnXhxeLgYpWsaN1CqNKF/tsAVsc5dR
         mlS8YdqGOq0P4SWVy59q4UbIL/FnuZjqGlw1ILVG4rHlQN5O0bSgzY2HArTjZSvBBYhw
         +AJqiX2mbKEj7AubA+EcPL/H9RxxliOlnUm0JrdxPwudc6COocjU/ul75s2GF/DBNI8v
         wwuA==
X-Forwarded-Encrypted: i=1; AHgh+RpUo6KCeuGB+AOgQXwPvQGH+uo6oXXz9kS+Sp8c8dn8GF/ko/NeLmuCOBrjqqK5GC+vrp1mmRpaiik=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQCVlYimrJSGRH4v4Okix11+NxBnGy1OxMqj8nziRm3+NDXKqu
	ebJufxEm0bAcbUh04LBthnGGBSggUeyXRlD/GgFeJWwjVwjCx9BJ3PRpIWkqyumN5hoLe1JfmmM
	Nd/eDYfWcnZnImMn7nj+7Mrqgei/suImIzd5Dk0fyiRF34t33w3BWeOgmSvIrxEfaJwU=
X-Gm-Gg: AR+sD10dSxr2sxd2D1xym/VkBCw8z5J1eUbNoMyIIpASWFd3beig+zdzRhhLijPNQQo
	1e99KUkpkInIw29xMrO3ReC6SYG6DrAL26CXdTXnMn9SoCA7kJLDCWv9CtATU/j/tW1EZGsh6sK
	RjEsDUGNUQW2tXYqUn7akOnAP8oY8AmOaltQp81XA6fx2treTEfo2wvxIaK1I5DzS1u0Q7K4XVI
	ON3OPpdYRmP04gp/iK17dyLukfJteAaMxzzD8FDZoIG1TJF7vzZwIpZapGUwumFoYaFimNwrmmo
	Sh5hpwgZVbWSKsjCjZR0bwJiGUX5sU9BmL0OsHNhZwDlml3Su45OqeFG+EgEQaHqvbKYEoF/8+U
	kDVVRlMm6lJHu3ojQ/Pw+J9oPfx0ZJDTeKCM=
X-Received: by 2002:a05:690e:128d:b0:667:b825:8543 with SMTP id 956f58d0204a3-66b12527c19mr2793258d50.49.1786399145054;
        Mon, 10 Aug 2026 14:59:05 -0700 (PDT)
X-Received: by 2002:a05:690e:128d:b0:667:b825:8543 with SMTP id 956f58d0204a3-66b12527c19mr2793223d50.49.1786399144641;
        Mon, 10 Aug 2026 14:59:04 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-66acae8584bsm7563368d50.10.2026.08.10.14.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 14:59:04 -0700 (PDT)
Date: Mon, 10 Aug 2026 17:59:01 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
Message-ID: <anpJpQgo--a43EdA@redhat.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-9-63846490712c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260810-zx29clk-v10-9-63846490712c@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: COX30LrTX6ogoVZqI_V-uKI_oXjwzh515WBtPNrdnfE_1786399145
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_145908_113346_769BC973 
X-CRM114-Status: UNSURE (   8.66  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Aug 10, 2026 at 12:28:28AM +0300, Stefan D=F6singer wrote:
> This clock controller controls high speed devices: CPU, DMA, RAM, SDIO,
> Ethernet. The only non-clock, non-reset registers I have spotted here
> are hardware spinlocks.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
