Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F8CC5AD5A
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjhN4XwQlJQPSPfElBnzb1PDADWSWVszRMWdhWplT/g=; b=1J68/4O8eWJ5li
	jJ6JeHd8/yQqBU6R8qHg4vp0oR9hyYuhySOfH6EEjZBp+h14p8rflnYt1kV4EHJrXBtax0zqNLDr0
	3sa2GDSgMj8vj3iqP5xYSseBwWROxZamyqUC4gnQx9V75G+QgrSJ9juA9st1CLZU3vOe45DCxm3HH
	KWA5UD63Tj0SNroxXZp1PApAWunQkgbjXC2+KpCgvfTf3fYseuDHTzPewQSQTN8ObhynWhPzcT419
	YvYFLlTOZwzgtgV+XDjprcrgMPgeXiqcD9V1J0SQkDZbzKZ6Hk5aAekWYplmIb8MeTDvDbJ6124SV
	oGU/zsCHGaD0cBidaE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPX-00000003oTW-3men;
	Sat, 15 Aug 2026 12:22:51 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPW-00000003oS2-032j
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:51 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-47f502ff678so221393f8f.0
        for <linux-phy@lists.infradead.org>; Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796568; x=1787401368; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=I/WlMcSBnSbZ9FCqQHpxeYhwldsweLXA0EE4nCt4++ZEN1AoWT3wlclmR6ogz6H768
         Rx1JkDX2QBC8Exk/LdX6GrhsR8fx0/DmW3TwaUetMYDecR3clyvV9/POJ4IF7O9Z5igR
         gZXWrdoswZCLkryiLbEMANKPMrje5IXkfQDPT3DsDsmCp969P1w/ev1culBjzegYdOp+
         FsRkbVMLZGgdm3eOKSvawApXBwxEBhvzdk0fcr9F6tx58sBCgEX5QwYNC2ShmlLTF6r2
         Bl2b/trKiufhfPNCDuHrSXXwd1nHBXfDrBhvjB7lJYxBJFxSqduK0WkXJfE7fmImnE3Y
         JHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796568; x=1787401368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=ove9y5JoRGmcDItoARrUEJlIWRjkToaGGH4C/TB2t6OtIg0UAAfveFH0/Mo5RbvkB1
         U59cM6tyL6I8ue2aPJ3go+aEmiQMiXxBOE4B327z/oTgwxvcDoamEzjpjma3FZGOWbJz
         wMPtEaSeBnfltz6wPdx60Xyk1XSCFEnIS9QgerAGXozmcSKihNospq2pRMOOlXHTQGne
         j0MJKrelrULX6dMgiUc8xAaFOlB3B8wQgqV9wwHEbqwLPAvNjR50xB7svVHp4dS3nW67
         in8/6/RVQB/V6PNSTu+B5QnA3jLvDgO+n0bfQ6svGPErid+rUH6VN6/1oroiJ2+4/+Jc
         WqDg==
X-Forwarded-Encrypted: i=1; AHgh+Rr78iRu+bwP53CBfHZvgX1fAwW/5uKlMXTMb6buKoH1HX/Q3bi6vhjoXl7yHFWxhuuN9mZl1ry2G1s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9WijjiBEdxLekWDge4Zt7YcWXyp/4Sb96amjvbFR6AYWeV4Fk
	KuBh7eIWZRAO75MmbkeGmW5Kna/kCRTp6Q8DbMJzYFWTm7bTrMNGuwEZ
X-Gm-Gg: AR+sD119z8AiXWLPiVUL22Zz1owLKgI+bO80Cwc3oFvpWYPrqoYckwOzV0o28WUoNZN
	A9VkCNQkmnR9EFhKwOKSqOktBWf4whmsZ47tDqUySvqGb1ni8dtisOcvQ5XTAkYIBFsmuzLAzAd
	pjo9X9fODdv11tzAVI0ucu2UAlfHy0nUeiDmF2rS71szxQuHd0vu8RSobm6EqEiDDQVnHeIxiUS
	yU8R2UKzLNF49JbYWKJBxHV+4v0i/8jmSh5EY68VKb6GtvZ1nM9m7Zpv0KC23XZ3jAXEE5GNIm7
	jQUhriiWx/N2EO9pPzHV5/lnpLc/gJXieIIUEfQVbONeT2qPzTtxFUuVtaXmu26JBqmrHJ2ci9A
	YBg/HWyVcqDcBtS7xqgeJNtGC4eeqeWAGX87quuJg3JetaUuAGJZBZJGJQB68g14xRxHZDu+iyh
	vBw9tWCNOyzg7nCVITFS8XhQINQ+yq4Eowg5VcOu0mIwYHvEyw1bZVHRs0Nd2ODKM4fUqS3+sOW
	KYO0tH2nuBHhYMmjPSnxu3La9lknJkyBS2AkezisE9lqXWVIJPuCYM/6tGhmSWq1LaF
X-Received: by 2002:a05:6000:2603:b0:47f:9256:52c0 with SMTP id ffacd0b85a97d-4816075e57emr8437144f8f.3.1786796568008;
        Sat, 15 Aug 2026 05:22:48 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:47 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 28/38] phy: core: add notifier infrastructure
Date: Sat, 15 Aug 2026 14:22:31 +0200
Message-ID: <20260815122239.65405-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052250_056219_F7E152CE 
X-CRM114-Status: UNSURE (   4.29  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
