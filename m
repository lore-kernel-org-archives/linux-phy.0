Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D46FCCD1BE
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 15:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUFEYuTrU/v3ugHJOM/8s5Lq3ewes7ooo3G8PBWBO5Y=; b=oG36a2ZKw8ENnL
	ohTdHFCFPqzEGT2zNQWbT0Yj9WCEnPqNx5qU7Tr+lcaHG2C1csDZ3ADyM6zIZPJ1QoJFs7dLC926h
	FkFj2UjR3WfX0uL4KjQze7uovmk3/0UFCu96d3A2NE0xbOBpJSS2BWbmrtR3OQRgLFnayBRb9c0S4
	QPE/cdUb5zNL3hmVTVEtBn5weIzycvdmdB01w8AaNXqFEbCHgwKSwD9oMVioMKuHOaWmTg/cFfRs/
	ml9c2KKw3Xgq9vCSoekw4xAwbb8me9pBAJitqlHIkUB239y0lMRl0dqb1pGkn+pSr6pwi047JzWoz
	fwxuZA/hkhoWKKhkeRGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxYU-00000006o5o-3LNq;
	Thu, 23 Oct 2025 15:48:46 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxYQ-00000006o3W-3dfL
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 15:48:45 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id EE6961A1617;
	Thu, 23 Oct 2025 15:48:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B456C606DE;
	Thu, 23 Oct 2025 15:48:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 10DE4102F2426;
	Thu, 23 Oct 2025 17:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761234515; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=c5OIwrk8ZYMRus5tNxvO/HZcrC4w4hxD32jLIzwnS4E=;
	b=h9Gt9+D8l2ZUFtDurQ3rHUOM/IhPtThzsjP+mR+mjk5AyxaUF93Z4ykKZEQtkJqay1AD1K
	sIZcj49FoFIFL78j+4y//Caq8uWZOfmRglEOU4aUkZkYq9czQUwcjjyrWn0KqptVZxF8BM
	G2f3UPyVQ2K4G7ln7m29ljbih+NvODUNsCNkGEAdDq4qtwEmS7yBe+WAgWCHK0te73pNNm
	OF2ATyCHjMJh48CF7+MgqUNCmXvheA24dqHYr70xHnpvQHuUiVDelup2TIFyQ0RpD+mw7X
	FxasBSnooBbZvMJZAHlWKT9tXo6yRXIIREu2VDg5LgqNfAKMvPPM1pwR7HD29Q==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Stephen Boyd <sboyd@kernel.org>,  David Airlie
 <airlied@gmail.com>,  Simona Vetter <simona@ffwll.ch>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Thomas Zimmermann
 <tzimmermann@suse.de>,  Andrzej Hajda <andrzej.hajda@intel.com>,  Robert
 Foss <rfoss@kernel.org>,  Vinod Koul <vkoul@kernel.org>,  Moritz Fischer
 <mdf@kernel.org>,  Xu Yilun <yilun.xu@intel.com>,  Bartosz Golaszewski
 <brgl@bgdev.pl>,  Guenter Roeck <linux@roeck-us.net>,  Andi Shyti
 <andi.shyti@kernel.org>,  Jonathan Cameron <jic23@kernel.org>,  Dmitry
 Torokhov <dmitry.torokhov@gmail.com>,  Georgi Djakov <djakov@kernel.org>,
  Thomas Gleixner <tglx@linutronix.de>,  Joerg Roedel <joro@8bytes.org>,
  Jassi Brar <jassisinghbrar@gmail.com>,  Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Lee Jones <lee@kernel.org>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Andrew Lunn
 <andrew+netdev@lunn.ch>,  "David S. Miller" <davem@davemloft.net>,  Eric
 Dumazet <edumazet@google.com>,  Jakub Kicinski <kuba@kernel.org>,  Paolo
 Abeni <pabeni@redhat.com>,  Johannes Berg <johannes@sipsolutions.net>,
  Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
  Manivannan Sadhasivam
 <mani@kernel.org>,  Bjorn Helgaas <bhelgaas@google.com>,  Kishon Vijay
 Abraham I <kishon@kernel.org>,  Sebastian Reichel <sre@kernel.org>,  Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,  Mark Brown
 <broonie@kernel.org>,
  Mathieu Poirier <mathieu.poirier@linaro.org>,  Philipp Zabel
 <p.zabel@pengutronix.de>,  Olivia Mackall <olivia@selenic.com>,  Herbert
 Xu <herbert@gondor.apana.org.au>,  Daniel Lezcano
 <daniel.lezcano@linaro.org>,  Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-clk@vger.kernel.org,
  dri-devel@lists.freedesktop.org,  linux-fbdev@vger.kernel.org,
  dmaengine@vger.kernel.org,  linux-fpga@vger.kernel.org,
  linux-gpio@vger.kernel.org,  linux-hwmon@vger.kernel.org,
  linux-i2c@vger.kernel.org,  linux-iio@vger.kernel.org,
  linux-input@vger.kernel.org,  linux-pm@vger.kernel.org,
  iommu@lists.linux.dev,  linux-media@vger.kernel.org,
  linux-mtd@lists.infradead.org,  netdev@vger.kernel.org,
  linux-wireless@vger.kernel.org,  linux-pci@vger.kernel.org,
  linux-phy@lists.infradead.org,  linux-pwm@vger.kernel.org,
  linux-remoteproc@vger.kernel.org,  linux-crypto@vger.kernel.org,
  linux-sound@vger.kernel.org,  linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Remove extra blank lines
In-Reply-To: <20251023143957.2899600-1-robh@kernel.org> (Rob Herring's message
	of "Thu, 23 Oct 2025 09:37:56 -0500")
References: <20251023143957.2899600-1-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 23 Oct 2025 17:47:55 +0200
Message-ID: <87h5vpr55g.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_084843_030551_7967CF66 
X-CRM114-Status: UNSURE (   6.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpPbiAyMy8xMC8yMDI1IGF0IDA5OjM3OjU2IC0wNSwgIlJvYiBIZXJyaW5nIChBcm0p
IiA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKCj4gR2VuZXJhbGx5IGF0IG1vc3QgMSBibGFuayBs
aW5lIGlzIHRoZSBzdGFuZGFyZCBzdHlsZSBmb3IgRFQgc2NoZW1hCj4gZmlsZXMuIFJlbW92ZSB0
aGUgZmV3IGNhc2VzIHdpdGggbW9yZSB0aGFuIDEgc28gdGhhdCB0aGUgeWFtbGxpbnQgY2hlY2sK
PiBmb3IgdGhpcyBjYW4gYmUgZW5hYmxlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5n
IChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlx
dWVsLnJheW5hbEBib290bGluLmNvbT4gIyBtdGQKClRoYW5rcywKTWlxdcOobAoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
