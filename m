Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40449C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 07:45:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F246361355
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 07:45:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F246361355
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gk/zNNAvk2KArHLGPzmQvNEKxKddzkdUuVd/Qh52ILc=; b=YKvJgpfCfgAm/mkod7hz1Lwk53
	vshQ8HUTWHE8OSZpdhp15bkm2ZMcyBWAprnlAe6gyRIGkzS03wyVnWNRdMDEPxl2CWZFrstktBxVW
	AdcpgObAAJTzogfYzPsl3619uN2+YdbsCHS1uWGdfTpspt+gKQAU/IJ2DmGx+xO1NqeTx1jw9CsKL
	uqJhVhITesu2rKSUCYFtkaEddDvDPDzfQY4dlqpyDAkal3ViKZwjeKV1xhrCzYAoE+wW/ZZIo6Niu
	ew433sg3kkCgUC3R3xRohs+/Eu1QEisXzcolP5S5O1Rez22Xtst6K5d/ZPtg8bTrfcOWJiBRnQsm5
	y77BVA0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md6Hq-003hRJ-Fi; Wed, 20 Oct 2021 07:45:22 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md6Hn-003hQ8-4R
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 07:45:20 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9670B40257
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 07:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1634715917;
 bh=hn4G6B24NKuuI7XYmyB2qc+VHWq7V63yNRCu8uWR8QM=;
 h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
 In-Reply-To:Content-Type;
 b=dclNfgrNNjwMsaxAuNfmH/6ouGqq9wnCS2pl/SXvv6dtckG85jx04ddYh6hHt42UJ
 p5GsRRWECvv+yes4oRFBch5EP047RBZrwq5Msqz4OGJA8x+DZs7hvR9kf1yoMH8VnF
 reznLsm/6Qyfc8NcIj26b3K+0cFYb/h8mv0ASwKq+i22b0MR7UwlQG14ilTDDqGYzM
 oJ1Idd8+JbsLhaR62sinhUTwB99XdEwz/o6rXJiGxLurpLfhRAePlPolAznFMjATEI
 rSSyD205qylm4XQzMePQ6wZZGO4EF5CHUXN7JOS5OOCrQXdhCTx+7TScip/MwDe+B4
 vku0QH0E3pYpg==
Received: by mail-ed1-f72.google.com with SMTP id
 i7-20020a50d747000000b003db0225d219so15516487edj.0
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 00:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hn4G6B24NKuuI7XYmyB2qc+VHWq7V63yNRCu8uWR8QM=;
 b=MEZyWfoNcYYbhjIK8HPYV48t6Ny4xJm9xgMC8QuLXrc5es9qBzU64caZhbbHYq31Fn
 Z1y0Z72hPlRDmnzwnamoDiJR1Dqx8LvL69GlNezpfUpJ59fo/O9S79Sjmzke1kzbqi1t
 U8MwyikOpdf1rkKLX7S3VerZkrz3ay4EdOwAD+ULKKBcK7F2UY7AEQETAQDl44Cr6yZx
 huchMWJQSo/2/fTn5YMy6KQcEmph2sVYuwPyjg4JtTP+xLf/Z/CSvm5vU0gn0v9BxpmJ
 CpchAZ4C9egXkiEyKhOrRPN074dr820znr0VRIbGV6+/hwIDe4uje6wbEr61HvREU/VM
 c5Nw==
X-Gm-Message-State: AOAM530T1VbVaXyrrFhUZTsLQRjLTA8s2CNQhls4/XwzWmNZ6q8gftbT
 07EbOvIg1XKhunnmLjdfH0D7W9cTI59tO5N/LT5ECRQlqGmuf2LO/YijWl6qcFCWvZJpFYlSRv3
 eCDg1mMyrlkOLo9XxrSrODgEXtKPFl9oWNCvcYdzBpbM=
X-Received: by 2002:a05:651c:10ac:: with SMTP id
 k12mr11579141ljn.296.1634715906847; 
 Wed, 20 Oct 2021 00:45:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJylw2trvF0ZXu7khnQZx/gnaE1TXWFJT87p6K5VtMB66Foj+aVE5ln4wd6dcSv0cFlFYuFolg==
X-Received: by 2002:a05:651c:10ac:: with SMTP id
 k12mr11579071ljn.296.1634715906590; 
 Wed, 20 Oct 2021 00:45:06 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
 by smtp.gmail.com with ESMTPSA id s10sm127484lfr.172.2021.10.20.00.45.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Oct 2021 00:45:06 -0700 (PDT)
Subject: Re: dt-bindings: treewide: Update @st.com email address to
 @foss.st.com
To: patrice.chotard@foss.st.com, Rob Herring <robh+dt@kernel.org>,
 maxime coquelin <mcoquelin.stm32@gmail.com>,
 alexandre torgue <alexandre.torgue@foss.st.com>,
 michael turquette <mturquette@baylibre.com>, stephen boyd
 <sboyd@kernel.org>, herbert xu <herbert@gondor.apana.org.au>,
 "david s . miller" <davem@davemloft.net>, david airlie <airlied@linux.ie>,
 daniel vetter <daniel@ffwll.ch>, thierry reding <thierry.reding@gmail.com>,
 sam ravnborg <sam@ravnborg.org>, yannick fertre
 <yannick.fertre@foss.st.com>, philippe cornu <philippe.cornu@foss.st.com>,
 benjamin gaignard <benjamin.gaignard@linaro.org>,
 vinod koul <vkoul@kernel.org>, ohad ben-cohen <ohad@wizery.com>,
 bjorn andersson <bjorn.andersson@linaro.org>,
 baolin wang <baolin.wang7@gmail.com>, jonathan cameron <jic23@kernel.org>,
 lars-peter clausen <lars@metafoo.de>,
 olivier moysan <olivier.moysan@foss.st.com>,
 arnaud pouliquen <arnaud.pouliquen@foss.st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Lee Jones <lee.jones@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Matt Mackall
 <mpm@selenic.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>, dillon min
 <dillon.minfei@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sebastian Reichel <sre@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
 Lionel Debieve <lionel.debieve@foss.st.com>,
 Amelie Delaunay <amelie.delaunay@foss.st.com>,
 Pierre-Yves MORDRET <pierre-yves.mordret@foss.st.com>,
 Ludovic Barre <ludovic.barre@foss.st.com>,
 Christophe Kerello <christophe.kerello@foss.st.com>,
 pascal Paillet <p.paillet@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Le Ray <erwan.leray@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, dri-devel@lists.freedesktop.org,
 dmaengine@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-media@vger.kernel.org,
 linux-mtd@lists.infradead.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20211020065000.21312-1-patrice.chotard@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <22fb6f19-21eb-dcb5-fa31-bb243d4a7eaf@canonical.com>
Date: Wed, 20 Oct 2021 09:45:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211020065000.21312-1-patrice.chotard@foss.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_004519_326860_5E18D3A5 
X-CRM114-Status: GOOD (  14.31  )
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

On 20/10/2021 08:50, patrice.chotard@foss.st.com wrote:
> From: Patrice Chotard <patrice.chotard@foss.st.com>
> 
> Not all @st.com email address are concerned, only people who have
> a specific @foss.st.com email will see their entry updated.
> For some people, who left the company, remove their email.
> 

Please split simple address change from maintainer updates (removal,
addition).

Also would be nice to see here explained *why* are you doing this.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
