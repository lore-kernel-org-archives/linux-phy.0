Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C77C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 17:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5Pra3THzIVOlmRyyRdJIT0bag90f/neDmF8YdMv42w=; b=plEXVhPDmQjMZn
	7amS4I9soi1Zdq/LfDQgOO434N2+mlXzFEhgfna02Q8QKSaUjsHtzgHX8uNE+8wkS3BA0yF2Nsugs
	5C3OChLk6nfv0jIoxZsOyEoVXkHPXH8zWcQjlQLdKOuyYPby9/AfKaOJ3/CS+pyKIGXVgCmzJxCpA
	a4dLuEYcEgUUm4d0Nz7hbnZmvw2OlPJA3C4OddQA5YyF0AQjlMYAdZKNkMCuaKcy0il15ns51rLGp
	7rgi/Xg8i7KTayNDnffg5ZtZoqMeIqZ/PjtcO0LMe+tn4g5+dbi3eM4NWk2ayPIPI2GQdFyA9gHaJ
	ko8HvMnKd0dcdQG9w2Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1AE-00000006atf-3z9P;
	Mon, 17 Aug 2026 17:30:22 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1AC-00000006asc-3gqB
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 17:30:22 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-47f611b3af9so418712f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786987819; x=1787592619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ug6Bnzoc9QivZt6Gh/tEHOb+vmUWZqzOUREdpceQcs4=;
        b=GOlnuA/+i25yjmog5h0TpRAN9sPb48a05/XO48AatIBW+4DV6BUZa5/KFoQCeWlUsx
         TkJNRg5TylTiJXNCRueQzbz8zPHkeMVv7y1QOV5hDe8zS+J+HMdY7VcP150nZroVAD5j
         9rP2+jGMRxkWlFRDeMwwqLcOs62i5E49BbiR5chU2HAL0i0PWh5A5hvPcI6qDSSYHDB+
         Bx95tw1GNTBi3PZRUzuJyYYXZkMMpIESl1Apt99eb1Y9BwiJ5Efkt3NAWVViirBoyZIr
         IbFEoimY4EPSYRa9Lnus4yYHxqbLJ6++NaqOqthqyJ8G7/yDCBj8ZhM0HpjzcRzs5l9c
         ytaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786987819; x=1787592619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ug6Bnzoc9QivZt6Gh/tEHOb+vmUWZqzOUREdpceQcs4=;
        b=LQEjkHuGxeMZurItsOdeeQyU8NOizeXeLsvsq34ivgzbD0hyKKGZoru3MSfm+FNFn1
         UOknNnDylADRjvVq8ulhvH40ZzoeOR9y3uhYgmamR28mcwIeEXHOWzEY0Mg+3jEtsaHx
         smyTe5IETypubcg+++vQoCoK/wpYW2h+iBAK/8kkBxXVVmqKF+nr9pIWtR2jCsQod/eX
         Z/56egaCZmbeJ8vZA0iiHPa/RBNLxzdtIOH63p8Ootjvxg/cEXTqEOpQVZCpb/Uvbd6s
         mNgZ+hNpHqF9U4gDf7PdRn6XrSKlYVIKSQ3waSSIY83oGF+M40GLg0c9O11YSTmvK38H
         zPrw==
X-Forwarded-Encrypted: i=1; AHgh+RpSeGpFHx1gQfdSphL/ys1liqaf3ranlpspzE/U63FkasjnFS6G/KA56fgcCKUS1Zlef7a3Q1D4SrY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZt8XLxvEGoK9AA33TpxQ2T4+WK7McLogKPMWHhBBUX06j6WJJ
	Hgfo0f9VV9flSQ2p3uZWsYiR3O/BYDbBKDhmU09X2u6P+ShH9b+bpTUN
X-Gm-Gg: AR+sD13xP7mDEQK4T2V3J2lzEL1Sb8JGPhNTfeHzuhclgcw6/E01+bOWhW2rTusuVl6
	mp72AFtQ/Xr56BJceekQ046thkIb1YsogfWV6q7wUNaa/sOv7DOM1gmcP5hOyTU/zyshyrDOAE4
	+WiVxsoxuR5LpWGHgMzoCJnlmh5ZU/6XkFmAyrcay8xMHSK1UIamJP71HL57LkWPBSektz2MQle
	3OTyz51tQAPeYDNywKx9ZqJECvg57cICZrnULReQzzDt/Z16D4wGm+8YJfU+B2YTfqH9eQ5p3bN
	udyLcxlqlFYunaQr76SPeJpkep3A9fzN3WJ/OvwmjyaRjUkI8PK+wq3lWIEl+EWZiGh8Ag6jISO
	3KSd3M9HF5Mva+41aAxUkjIaKxkFbrxywPpqLOUv64cEYhk1GMlvSqR79gyMEzL8gSBGp6i6h+U
	fZVoEHsaFBh38/bUBI252b03iVh5Gaq0e1dfz1fdQWzlri4Ppl6qVaFGzBfvCb0zlQSfrRiZauQ
	Jb58nNG8qaFmPK6WMouksY4IcaRNztsfTA5kg0mPwBDXBPtWzVEKTCIrwJA5T7n1avi0g==
X-Received: by 2002:a05:6000:601:b0:47f:e8af:7687 with SMTP id ffacd0b85a97d-4816070569fmr19813569f8f.1.1786987818793;
        Mon, 17 Aug 2026 10:30:18 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8FC50088291D65FF092D15.dsl.pool.telekom.hu. [2001:4c4e:1b8f:c500:8829:1d65:ff09:2d15])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482a5b81748sm5966682f8f.37.2026.08.17.10.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 10:30:18 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 00/38] phy: rockchip: usbdp: Clean up the mess
Date: Mon, 17 Aug 2026 19:29:52 +0200
Message-ID: <20260817172955.16305-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aoM5PBrT5pBPS63N@venus>
References: <20260815121608.64818-1-royalnet026@gmail.com> <aoM5PBrT5pBPS63N@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_103020_934889_0DDF1589 
X-CRM114-Status: UNSURE (   6.87  )
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

Hi Sebastian,

> 30 seconds for PD negotiation is indeed very slow. Usually it's at
> least 10x faster. Have you checked for the root cause via TCPM log?

I have now, and I owe you a correction: the 30 s was my measurement
artifact, not negotiation time.

The journal does not record the replug instant, so the figure I quoted
was deregistration to re-registration - including however long the
cable simply sat unplugged. Today, with the TCPM debugfs log and a
controlled replug:

  [12954.114919] CC1: 0 -> 2, CC2: 0 -> 1   <- replug
  [12955.837527] PD RX, header: 0x2e8f      <- PD exchange running

DRM reports the connector connected 2.1 s after the replug and the
compositor lights the output about 4 s after. The adapter negotiates
at normal speed; nothing to chase. Sorry for the noise, and thanks
for the tcpm devres fix.

Regards,
Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
