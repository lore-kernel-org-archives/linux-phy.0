Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD73EC5CFC1
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 12:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjhN4XwQlJQPSPfElBnzb1PDADWSWVszRMWdhWplT/g=; b=AGaD7yjhFxd8K1
	KJ/J/Zex53b+pQkAlZ/rgAhJ7IuaXo8nJ07YV8y6Jnh2nXMHQR1fKdN8PB6gTn6ueELLVKh/SKN5H
	hobZybkUKHsrWGWlJn+xVrFDlCeTgtF8Wr3f8+PMXIgCXFDGhjZCE8/xjEDJxerbOfCWigBsd7LGg
	fqoioPnHGx23NOGnHQcmGo3PsPmlFcWWneBu24EOXR+24RAilT9MXLQoZPklH4q+vNPQ6Z8cmLuaW
	v+2QHjOoeta1AmT1wLlQOThSK9ER0IS4HXYn7vlZ34NmSScA9gAmSyJQm/fuMFERwvnaZVbHB1UM8
	RMaYhOhe/rq0bgmi+b/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPe-00000003oXx-29bo;
	Sat, 15 Aug 2026 12:22:58 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPX-00000003oSe-3HFY
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:53 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4956d1d9fb2so2634765e9.0
        for <linux-phy@lists.infradead.org>; Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796570; x=1787401370; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=NiqxqjXGFjmfvb6j4DVCwcOlyNHkI4Fceni/OlgHQyWmP1MrvnByXzNz2SvpB+TV15
         8fr9rzvaBxIplq2CJ2F6BdJNp8ZKrDd0ieDmgkmC5aemFqjiU6GuC1rOts34PnIFpW2E
         PlmUhK2vZgTrzgeyscm5i7Ocz5g/X1l4Pw27uFeBMT6qcgiPwyQoAZUGjyCoRTigU92h
         nNG3FEKnLMnu1dxrlBeYURU2Xu3sTZ7Q3YHFw/TldhFmhEEYwn7owolF31fynv6koBKT
         0Z1KTyhkfeWDHge5+UNm1YkJAlpfRqPafCx6ymI7/Bn88+ZJAhP+RSxzcLL2mv9phRV+
         qkyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796570; x=1787401370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=Syj/acctQBBEFRZ/U+EYxvQ/I9QdNGvqmySRerQDbw7nKKLHUX/jry/VlM1+F/Psxl
         /E/0ujhZe6sjTRtHqQTn3cEOkW/WpIZfz4x4swNg+sStDFlqSgpg+xXPgbTS8hvqJXyu
         dg90wghPT4wdGm13BFLAQ/43awKm8Hp5CzS6xFG3obDE1Cr/LLchFVz35iL09YxY4Gf1
         ct/8bwH8L86r1ar2cQ1UQzxdiq6c3knzWIJrSh6rtg8bdpSx0iHY8+G391FZ3lM15yF+
         nLJn3qHj+MdAjrSpgAC2hvs5+spZXukydjK6B95LAKqFv4xMjz6sQP0+Ei6mgUoEgfxu
         K6hg==
X-Forwarded-Encrypted: i=1; AHgh+Rpssl2NoR/6L91eN0YWgsDyNDVEBIwYWh4Ih7zbVSr9SGywj581L/XhuL2EXyNP1JOrJMba5PhdmKw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzeJjrr2A/Z5wF/K+LZFM7c/EKfbNp1l9YBV8RP76whcBdxAFPP
	amU54K8oaWKB97qVQiCMWctz1yICQ1UT/lrH91GZbsB2R7L3FZdr536U
X-Gm-Gg: AR+sD112UVnPeEhDMUHP6FLtyB9TfovQni6lbl4S/4fHVsmX6cEfjo8SHWq9ahG/rAD
	P35WHgA9p+GtD/OIQUpirI0tPm7Dfy4nZgDWgz0FMTTrTyHsmcM9mNprUZ3lx0/YIr/7eils6xV
	vksCVi6BLdyqhIMXFcKu0pS7eqWJx/RBOFEj/wY+mmZzeK8TsOyBdgXJiUt6Ehue7LGxNXfA6Xr
	zsiHK/zx3nDwxIw815REBLmInH3mMaI6r/0H6V1RyvlC6L5ZiyCxBGycaJe3sADhfOs+wNc+e9a
	tmfm+wc7Kjv5yn4GhHsJkw2+tYdx4Um3giYTkyIR0YkUpoM2zGyacsVk61HlgyPfcwVLo+dfz4U
	MgEC7oe3NRvIE15u5bkOKFsL+UTpxi1Yo3VAtHN7z4H1sYhDov1K+0Ws6tmWwx4zfYEOU0S6rAC
	0+UCH49S11GG1F8fq2qqPsFbjgdHf5kFnmsKl5CGjfpoaywHEQnrvMy90A6A/l0fcAb9bysuE4q
	APELfgWmUuTQ+GnyG2cjbAhGhztk/0L5WiGR/PKWSX4mycUE6EwgYecMNuntMRo3l7Jkg==
X-Received: by 2002:a05:600c:a47:b0:496:bbce:ef with SMTP id 5b1f17b1804b1-4998796ca48mr90983305e9.3.1786796569782;
        Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
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
Subject: Re: [PATCH v14 29/38] usb: dwc3: rockchip: introduce glue driver
Date: Sat, 15 Aug 2026 14:22:32 +0200
Message-ID: <20260815122239.65405-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-29-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052251_851206_7BF74DFB 
X-CRM114-Status: UNSURE (   4.40  )
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
