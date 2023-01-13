Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E5EDC54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj/OM/kCOma++L1S8x9pr6A6OWFTNHnHY3qEl8e2uKE=; b=R8wHNvnn+nGKr9
	3333AaECtyDK5XKI3cWwi0P4xPRsS+bw6cB0ckZrKYqOQ+F04Kn2i/62v5z4M+CXVqiyCSPhta5Vd
	POFB+XjAEwvSjBKlZGjvzvDJwVcT7rDWmOuTaOlK7KPlSUUpSt6fIuj7sKMvPBdoz3HIv7DCYMUxb
	agdCWEJA2j19HYNNxNAOWQlyDt8JUWxBM4z5AJnuJegx+9CFZPa8X2FnnGvcndIk9iTjjIzJwX0nM
	1QecE6mjSc8jZkbMU1GfHtTLkYy+VRpsLpisI6CsmYrIC8mMjP5eg1fI4qLEAj8rrKNPOMVuPn2JC
	OksZ0QqlMHVZSHaWwPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOp5-0043Hl-Nq; Fri, 13 Jan 2023 18:30:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOou-0043DX-QU; Fri, 13 Jan 2023 18:30:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 46793622E2;
	Fri, 13 Jan 2023 18:30:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1073C433D2;
	Fri, 13 Jan 2023 18:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673634627;
	bh=ToSg+pXn4myckS7D915n3Oz7BkfcPSm3uUn+TErDm54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VUjubtgM79eXnRDgPch1IO1TtGwmcdJT1BD6Ls8VauaJd4ZRCoBIIIsXYPkp8zMyE
	 xA+SxE0Nzkh/amOddNn5M5UrYkKLcskCcNqcSV0ngLeF8n9a7LxQnoig+WGks5ztcU
	 SDpK7bjsE3RIXBNUOL6poMPujzFmpi6rwnwsEljsZTv3WRKybXAMUpJ4dLYZ9eytHc
	 nC+A9fpscDhsDpknRMMYgKKSXFvAN8VKa/GhI4vV9Tk9GXk8rdzojOqmoWkIJUfaOA
	 L3o+R2+xRucBbneNNyXRMdivl49jIyrwFZb0BM8/dAEowSMl0YtXYqJi3lofDPG6Gp
	 f6c2UdMmj1pvQ==
Date: Sat, 14 Jan 2023 00:00:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org,
	netdev@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 08/11] dt-bindings: phy: convert
 meson-gxl-usb2-phy.txt to dt-schema
Message-ID: <Y8GjP14i+/Q3L1d6@matsya>
References: <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v2-8-36ad050bb625@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v2-8-36ad050bb625@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_103028_913367_7D9D80C4 
X-CRM114-Status: UNSURE (   9.34  )
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

On 09-01-23, 13:53, Neil Armstrong wrote:
> Convert the Amlogic Meson GXL USB2 PHY bindings to dt-schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
