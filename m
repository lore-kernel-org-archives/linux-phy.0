Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A19CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 11:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfdhSwkmb1G/SCGeb0O+8DqM1K5+leCaGcRVntPGHQc=; b=3RNJT6M+GVfxDn
	hOwxDaqMNTqIxM1s496PagHYxYaXHgpXA/sOj9SvBghtJqIBdxSsQroX3t9Zyd5EpTGl1v4vuCBTo
	SK1GQqPjdUd/wuUcDkOOGQEtp1S0VvYcFFDDtuue88vVxaLAsY9RXkNRnV0y5FGwq9gLtdX32kGJV
	w1r2RsTJzDwLXzCtU3fkt4GfW84Ir8qdQ5wDq6Lv3pvLfek+tf10bxrOUJO9YvCoeFc4U5moN0vaD
	iaGqfZEiEOaby7MaSPq0fHSkCvllasJWsMSTZBtIDZVwny2aiQBKQP4cUK7qoN5YH94+p/Dqz4FJH
	L9mN5cOMrx9b0h8XvrNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Gqa-0000000D1tG-0wVS;
	Mon, 13 Oct 2025 11:36:12 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8GqX-0000000D1sq-2iVW
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 11:36:10 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso3179176f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 04:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760355367; x=1760960167; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Iwo/yWdnbRioc3LFvtoHLGlkOOJnVDJyMIr5OhIkIk0=;
        b=Pqs0GbTzuKGZKIv2o4fw3iIfcDX1J4x/AOdkUyiLnV3TRqk/UWBrhMv19wYFC8LsMU
         GcxggI3/yvWz35eaAXXM9hoqicDLe/9G6ZYVM+QKVVr9Eko4pL4CNlHb5ttFOOKvtNns
         L/gkXlQgsE3w/5Nudcmw0i4CtZclKcWjqq7/kxDEpm/Hzdvx/sntShjI3GWGj6YAnaZE
         CkG5sU4QWkXZVYKfE5lxpdSjGBRDoRRIciOMHiXj4VK0JGKg12mBh0w3KMNRLWzrQrLZ
         aDQJHTybDHO7qO0Vfl6UUrH0X/MwwI0wAGK5dhxnYKFil1wV2Xv6xRB5F0wE76fOxA8B
         +gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760355367; x=1760960167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iwo/yWdnbRioc3LFvtoHLGlkOOJnVDJyMIr5OhIkIk0=;
        b=QRcTrbVGvwdMkMULPLqyvCbr2qSAmiTzuDPZbYl52+SZCB4DCF+V+E9kj36Y33q/1l
         U3UZPG2W/nsWzAZJZhAvCpqnD0u7y0o1m+Yyr6aq/rVRYAxKOa95kUijzOSn6rKodm5y
         ujoMynd0IE8gXPSMmqlL3+/mLPH3EI9zwOWgzQ49dKu4nrg08NHkf3urEXuLORm9dRbi
         yfri9Ggyf0QSsGVyVxhqPYOT35XJz3obnBlQQvocagx57dXciEajpAAmznJeHNVmwUr1
         M/7SCA8Ht2sJ37FF0i1tmjIDO/rDtaG1orWDsN7EralTv9F6Yn00qJpjPPWxmsKA3WmW
         P9WA==
X-Forwarded-Encrypted: i=1; AJvYcCXuTl9dqI/nAaF/WbSQHf1qDpouscheTgC01MYk+jXB9ip5ippoAJhXPYAVVDFgPi1O7TE7s6YiFIc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ8vARswE9Piwr4d2osP6ygmf27HxVSEYUPpP0sTiQGJr7iqaX
	3AJjzXVS5IjA8kd46BVMipklrnZ6vQJ7Y96GGg03IPtA3+1yxMseDDLx
X-Gm-Gg: ASbGnctcU56/DWktG0vutRkrbGOpMKh01yEChb43sZFNAYV/o5N0bN7nKJYJKBi5r4Y
	MIFeWuFAWRdaZw8rzl1qnjIsE83sAS17V9k1fNHI+gZN7Lubju/dRSepYbP8/K88GHTDIyevgws
	GW0gwPoAeXzcOChD5CdwN3kOWa00VQJO1otUIHfPOoHN0CxqJnhk1q9cjnph+ZTVUQ9hHRDviRB
	osOAT6ZC5Tzb4tb4/iM6oi/eUFKpQNxkpC5vXr95aMf53qvREoZOFjHN+c4ihiXFTqL3vquMqBh
	Ij0U26GrqrRZbz+6Q+kWGzl1ngi/a4Shr4dzseFdLT747Gk8bD+ShSmzHu6H6m618VS8Tz6i5Dp
	JrNNUoMqn7OOj3VKybblX5LgaBn6Pymtz1yywpYwhXKOnY9LkTg==
X-Google-Smtp-Source: AGHT+IF6Zt79HEXygH9EvfjQww7YVx29OAymvSr0uzjmK79t/sPfIN0gA2m0SBb6YfkT2CsUA/urvw==
X-Received: by 2002:a05:6000:4901:b0:426:d5bf:aa7 with SMTP id ffacd0b85a97d-426d5bf0c0bmr6137423f8f.63.1760355367228;
        Mon, 13 Oct 2025 04:36:07 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:6da:da00:22ea:3d6a:5919:85f8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce57d4bbsm18111993f8f.2.2025.10.13.04.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 04:36:06 -0700 (PDT)
Date: Mon, 13 Oct 2025 13:36:05 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
	linux-can@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20251013113605.GA177845@legfed1>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-2-4a9d245fe067@liebherr.com>
 <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_043609_700356_9BF25D62 
X-CRM114-Status: GOOD (  13.55  )
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

Am Mon, Oct 13, 2025 at 11:51:51AM +0200 schrieb Marc Kleine-Budde:
> On 13.10.2025 11:19:19, Dimitri Fedrau via B4 Relay wrote:
> > Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
> > PHY up/down by switching to normal/standby mode using SPI commands.
> 
> The PHY supports standby and sleep mode. Does the PHY framework provide
> a way to configure this?
> 

Didn't find anything related.

> Why do you put the transceiver into standby not in sleep mode?
> 
Datasheet states:

Standby mode is the first-level power-saving mode of the TJA1145A,
featuring low current consumption. The transceiver is unable to transmit
or receive data in Standby mode, but the INH pin remains active so voltage
regulators controlled by this pin will be active.

Sleep mode is the second-level power saving mode of the TJA1145A. In Sleep
mode, the transceiver behaves as in Standby Mode with the exception that
pin INH is set to a high-ohmic state. Voltage regulators controlled by this
pin will be switched off, and the current into pin BAT will be reduced to a
minimum.

I'm assuming that the sleep state would fit into some suspend,
power-off, ... scenario, because the INH pin maybe used to control
regulators.

Best regards,
Dimitri Fedrau

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
