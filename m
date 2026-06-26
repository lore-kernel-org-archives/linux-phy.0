Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44C45C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 16:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTCe4FaqkbRMykmVWgS0Uvmw2nOoXGTjUa0uTCTyI2A=; b=4P9BMAb2oOx6c1
	4qBnjbcmqNk1GxnxDJSZ/VqLtAMKycUo5AHObmOEBU71tDjGwHsHtXXLWLT+jYgsi9rOPB7HJ5Vf7
	CPMm1kWlUU2bKHO5ZlQUEGU0N4t/nMv3vQpbrbyGN4GUOA28MuGFkKr8hUMbbJMfVobHCB8MfWuLB
	LG+ZkCcao/0RTK/r8UH/PhK6M+KTsww3ai82hfyfCojkQbZiCJp7mT61W4e/Gz65Q0jLZdoMr1FNr
	TDhb2Hhcm68TK7WGpOGBvCTVUw/X6d5+CpMjPP99XVfTPetb7KKRgWbss++jQZ0wbJfh1B3mDbWMs
	Mny9uZwVInkX2z4KGTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9WZ-0000000Bdpv-08JQ;
	Fri, 26 Jun 2026 16:35:27 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9WW-0000000BdpX-3TsZ
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 16:35:26 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4924f8db066so6013295e9.2
        for <linux-phy@lists.infradead.org>; Fri, 26 Jun 2026 09:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782491723; x=1783096523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9JIf9OJEzVS6CWv1FSk8ReHN3mioJ8+p1Xh5mgkJRk=;
        b=Ro4Dhh6SwQuVwYPzrN1PbpdCPYzAePhCFgBVkrJq6/xia7255AWko+ZmPwxEMiKArW
         WTP87CnQ+vwgTHFCs5/TD8aGi7qlvQIOk3BjnCb8JTv9efO+VvA3fUlEmZ/QMYwyeacS
         4sK52LD4oFPifA+t+4mQRYE/qla5TD6FxTDXIGDP5iPaw6WP+HX5TtVVxQ7nLZxeYy7k
         TGch7fAMPfCVqeJSM3b2MVksdvsTAy6DH0H0vYNSi/mokJAsjea6+Uub+oU9xE2enEVO
         tHAVtNv23YwlOLLB6k82gpU1/e0DDxssQAdo4gNU6xHUAy/hOD9XnOOOe2jyqWsqMQ6W
         PwbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782491723; x=1783096523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/9JIf9OJEzVS6CWv1FSk8ReHN3mioJ8+p1Xh5mgkJRk=;
        b=BE7ztSdpsfOqcZh8B2ITViH7TuY2et41lAflWMvY8oyaph0q/gIYhkVevh+A6c4+7g
         8deWB+w/Q2geqSVR5N8lYtZQ0jKboEz+C5VdGupmlTzN7oVbIlu3YdV0Fc+Gd56HXgXO
         agQ8nvRE0MGwkchNqMaEjLdd7PsPKwy0FrGW9H3I2I0OJS10ESdpFfcOhx8xqU5KmSaZ
         EH0nDo6DYO99+6SmLziv89GHaL6GIBwJvwRb3t+pC90ol0vhbHPvtIjf0Iufk3/ESybq
         1KyMVVAnAiRwwwM2kPStJqZYNmf5JEv3WP7+euAGSXe7YYUMES72gH0TF0XeIgDgHgXl
         UZtQ==
X-Forwarded-Encrypted: i=1; AFNElJ9IJGPtj7pMvXZbVr8UoAKwr5wRU83EiKddD6QV+i3Vyitz02/lIOb+6rXgXVDqU68WkNPzGhOPDng=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvSgF21/PL7MHfsD/zzTghvw2B1/Bd4U1Farv2ohx0DjxPJUOz
	A2aJsINHJBRHiUhZZbPhI6YWQJoeSf7xAgOQT8jMzhKGQ/VzkZ2knctr
X-Gm-Gg: AfdE7cm5/qr8wj1A7jjAKOBqsmkkG2nEnR7BxuPDkcB0/W5m40M0xxoJBFM69pgNfWG
	p7P8TY/dJZo4jYdgOEo8qwP/hlHiSTtRgpXrjF6XH6vozPU9B7HVaZAS77zFXDbI+3cxiu7j/1E
	KFQuqad2QXycQ0rzqaEvXJFe4FL9wehZ87iDgylv5eAfjSrJxSvtBbP1vW1+unS3nlr50ZAFWZW
	iaSZbpxaFdEQu02mYP7VozIeYYzUtqLDZojNSRX7HjbvMOhBnO+2uGsWGkZLt2KFW0fwzVvQp5L
	koZDmoI9deVBau0oygEJfO/t1Qp2SkiGm6QHE1dhjDnocQyxDOTD54tsBpl0bYqSXwJ1J28K+B7
	6FBqKUwrAF/vWUdPwOddNFpzWeOxS8eGuhCiN5smLY+ieoL1ChZq2DCnReEtCjOfcNMa5LEiqZX
	tao8eOmJYC7isYM2mTG070KyQFFRGyo0GPDizZO7zq+Bdc3a13tWfdY0c5F5Enirqt5U75yeWlM
	b3KGYpehp5106k32A==
X-Received: by 2002:a05:600c:34ca:b0:492:58d6:2565 with SMTP id 5b1f17b1804b1-4926689dfe6mr106861335e9.25.1782491722478;
        Fri, 26 Jun 2026 09:35:22 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49269071e49sm89894875e9.10.2026.06.26.09.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:35:21 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: maxime.chevallier@bootlin.com,
	olek2@wp.pl,
	linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	bjorn@mork.no,
	kabel@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: Re: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Fri, 26 Jun 2026 18:35:19 +0200
Message-ID: <20260626163519.10678-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260624084814.20972-3-petr.wozniak@gmail.com>
References: <20260624084814.20972-3-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_093524_908503_4041E54D 
X-CRM114-Status: GOOD (  13.65  )
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

Maxime Chevallier wrote:
> I finally got time to test this with a RollBall module, and I
> confirm what Aleksander says, the RollBall module's PHY doesn't
> get detected even with this patch. It does work on v7.0 though,
> so before the bridge probing was introduced.

Thanks a lot for taking the time to test, Maxime - and Aleksander
for the original report.

That settles it: the deferred-probe approach in patch 2/2 doesn't
actually restore genuine RollBall PHY detection, and as you both
confirm it worked before 8fe125892f40 introduced the bridge probing.
Sashiko's static review flagged the same thing (the probe bypasses the
PHY discovery retry loop for slow-initializing modules), so the static
analysis and the two hardware reports all point at the same flaw.

I only have RTL8261BE-based copper modules here, not a genuine RollBall
one, so I can't develop and verify a proper slow-init timing fix
(module_t_wait / a retry that waits for the bridge) without the
hardware to test against.

Given that, my suggestion:

- Please drop patch 2/2 from the series.

- Since 8fe125892f40 regressed genuine RollBall detection and the
  deferred probe doesn't restore it, I think the cleanest fix is to
  revert 8fe125892f40. I'm happy to send that revert if you'd prefer.
  The 5-minute RTL8261BE probe loop it was addressing is handled in our
  downstream tree, so reverting it upstream is fine on our side.

- Patch 1/2 (the mii_bus leak fix) is independent of all this and
  already has Reviewed-by from Maxime and Larysa - it would be good to
  take that one regardless. I can resend it standalone if that's easier.

A proper fix covering slow-firmware modules really needs a genuine
RollBall module to validate, so it's better owned by someone who has
that hardware - happy to help review.

Thanks again,
Petr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
