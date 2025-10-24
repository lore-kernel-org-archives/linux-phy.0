Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DFACCD1AB
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 07:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of3PEC8WQFeuFC2DWE2jOf8BPWHw1iloehmN3/npGA4=; b=V8rB2ZshtfFMIy
	Xp//Z7tZPrdk5rGlehOUkguBjZLCYDXWZrVL7BpepbtBBHzT6EyHFMAaQ6RWGxo/AIQcAqhUlaSWY
	dBKSISkbUcvPHeNp/uSoDY+dzWNFkL3cqiLbGuJtoeFMh5GSuyXJLV2McmfQa90woFvkS4N/b4MoJ
	sW5iBZjd2A4LlLxQmDa1Ctyt40yQgH0kpo3v9vQErguyjtzSBAv7hgb9+G1cZWy3OrLrrBOri4coE
	l4Txcfu8BEhwA1DVmEbbYYCjsVfEmvLfofrrrT1G4RJzjZv0oAkH1XiyRxTARVtFxpnpK7icGd9Ml
	wtpnLlZ2qI/p9/UXHjGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCet-00000008afI-1AIS;
	Fri, 24 Oct 2025 07:56:23 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCCer-00000008adB-09dD
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 07:56:22 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-592f7733dd6so1871463e87.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 00:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761292579; x=1761897379; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxy0zWX1h247nPbsMpYtj4rqvQKsZpsdIsqOdaa3i18=;
        b=yQYlLzMlILoeb2yGQkZuRxLEKny/Bp2odBaeDdtnkPkLPjQmcnvhID8j8JEpTxlPSx
         HYUIoJ51FhnJPdSced7eOdU3eFXHPLgRLmGDdOkIsbm4CvM8I+GNhL3YBWYhPFvQAun3
         /4l3VrvdYW1+TuQUPX06OBWPUOrQ/nTL+nr3/zNwZsnQslPdTyrN7BFvXJfl/TkUt+Uu
         kCEvfkhssdsDMRMz7NSrU8/fsoJaZ4iRKKIuOg03MchvuWdStKyD9rvn81b7W4txrmRr
         mkUsJ9l+sDCk3DRcO+RgqINzwKBG2tG85U8+S8RWNEuxPvsDMIph07W++dzeK/jjYuP4
         +A2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761292579; x=1761897379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nxy0zWX1h247nPbsMpYtj4rqvQKsZpsdIsqOdaa3i18=;
        b=YY/8ZJcpMQVpE3RbRwnNO5GCv89wDgRc75V921kCsWQWpyTsS3dJCkarc30GpMKK9q
         PfHQgBXnMEHOv4hBX2Y7+GFaCKd7UXrMxc6k25lQQTNC716vmtlp3hXyONujNUikQ9EZ
         kfarrKpUCLE03e0LrLTh3Zm6AKS2YRXbmPYoW+aXsQtfwWzW/5uFAG05gi+5HMiBq+wF
         MuErlW1EzNtjdKMWqWHXQHmA5xJX37l0l8Vh4cakoOl9CT1XWPNRPEtb2L4TqPWRKkNX
         WISTanHXdtpXmJ4yzzL0+ZIMeazsfmIHNzY0uVjbdeQYgJmDU5cdaE3QBs1rYsCP68Lm
         Eu3g==
X-Forwarded-Encrypted: i=1; AJvYcCW0+QYS4ynJ0X9EsfG9pUaBdIyMCmSCVo6kgGISNuBOCjDG9scmRaNSRU0guWWhFQxTZ8NR2/SgIck=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQSF6B31KwDymuYJ+c5dPOc28me8HCQPWvN8jW1ylyrGFpxFw7
	upmdgKtLJdhM+AEpmkY73eS7zDUfjTFsXe53Tg8Et4Bb5An5WYtFmSEW41denlpDh7y/OMDVhrw
	f5KHyIYPvAZEgwnbbyIzCrY+tEX/VXjtZU/Z4BnWDhA==
X-Gm-Gg: ASbGncsKaLY5UVpyMj2ImbvAd1giZfKm1/pnDk4J7jvBw/XzhZUsKQA/avjQ1le4ZYC
	UlHGZ1Wb65GpbrT69Cpq9Uu2IBmDd5RKXO9p44qfSYgvnepTIv7/oPc9ivGJyNPF8HShzl+nhA3
	l/+UzN7cVvPn/niOQp75Fq4JDJPgEXzTdgMVwqJB6+H4cjIYwuaEAmrCLGeFs/8uus5cpmmtolb
	/N2UtORTTYqEzfKx0kCXNMJGMQr000y/CsNdYl6UcNZwkKVUWp3QKG42jGfVK6n7SW0d454YazK
	zFVqt1EbngPeDMc=
X-Google-Smtp-Source: AGHT+IHSnXZ/gyOux7cXwXN4jLtleYFyXBIE1/V6t/jovl+yJ4b+HMb04wimJ5i7xVzENgmv7b2GUJ2i/5ONH7mEpKM=
X-Received: by 2002:a05:6512:130c:b0:586:83e2:2295 with SMTP id
 2adb3069b0e04-591d85525f5mr9376212e87.45.1761292578695; Fri, 24 Oct 2025
 00:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <20251023143957.2899600-1-robh@kernel.org>
In-Reply-To: <20251023143957.2899600-1-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 24 Oct 2025 09:56:07 +0200
X-Gm-Features: AS18NWBwXS6t25LKJEi_UKqvj6YhljrcGI4AFOhItyKPndeRwhvu3EmnTJe9vDc
Message-ID: <CAMRc=MdE=1cPDPQwPQA6mdBkbXF2pG=oQ_oR_YuasGzaPDsKtg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Remove extra blank lines
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, 
	Guenter Roeck <linux@roeck-us.net>, Andi Shyti <andi.shyti@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Georgi Djakov <djakov@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Joerg Roedel <joro@8bytes.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Johannes Berg <johannes@sipsolutions.net>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-fpga@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
	linux-media@vger.kernel.org, linux-mtd@lists.infradead.org, 
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pwm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_005621_096256_16A02BB3 
X-CRM114-Status: UNSURE (   9.80  )
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

T24gVGh1LCBPY3QgMjMsIDIwMjUgYXQgNDo0MOKAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gR2VuZXJhbGx5IGF0IG1vc3QgMSBibGFuayBsaW5lIGlz
IHRoZSBzdGFuZGFyZCBzdHlsZSBmb3IgRFQgc2NoZW1hCj4gZmlsZXMuIFJlbW92ZSB0aGUgZmV3
IGNhc2VzIHdpdGggbW9yZSB0aGFuIDEgc28gdGhhdCB0aGUgeWFtbGxpbnQgY2hlY2sKPiBmb3Ig
dGhpcyBjYW4gYmUgZW5hYmxlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0p
IDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCgpGb3IgR1BJTzoKCkFja2VkLWJ5OiBCYXJ0b3N6IEdv
bGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
