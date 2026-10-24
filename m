Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE206606A31B
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 05:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HeZTAxAz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mg-crea-com.20251104.gappssmtp.com header.i=@mg-crea-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=A0Ne+Oi7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=2bNP9OVDW5fSGZmpkGpvfBXHD8xepf1CW6vQz8kSX80=; b=HeZTAxAzH0imuHJ82m0Tmf9qvO
	VU69gcY7GyMJD/5Q0fCrBjqrYB5IUaw5I4muz/GIV57NqO2409uHQEKluGTUOTchyO/JHLvvwjgob
	FBLZfYDNY0jJ3ceFNQ4Aof4X6lM3qoJF3c9gmr4RX+Up2hhSmTYTzpYq/o/8QV8CvBOFcyWcmajTK
	Ew7z9VYOb4ZmkPgoWDBYN1rrttneENXX7VfoLPkT/C9ZkfTA91MBGHpm+rZq8AuD/+/aIuUFvZVjw
	NHzl3YDKH71pD8wQ9s1QoGi/9qcAHm9RxFehj50lOOVtZuxONGGQamlJJPKVGyD7bpVkrKJQIJcYq
	yci+oasw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKUA2-0000000HSMU-1rGA;
	Sat, 24 Oct 2026 05:19:18 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKU9z-0000000HSLy-0wSh
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 05:19:17 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a214c5c4c0so9975345e9.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 22:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mg-crea-com.20251104.gappssmtp.com; s=20251104; t=1792819152; x=1793423952; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jkumkssa/J8WgHOu5OVjv01fzxPb25j59RB9TTUY5mE=;
        b=A0Ne+Oi7x6V8yRp2lo19D5Tm9BdgNKpAfyrMPzY+nxVQ6otVHFBFWLtGaxQLYirBhF
         a5Zemu5NOg8PeNoAJpA+OxuRU9LQ2hsoqjj7bevkX1ZYGpbo4EqI0Lr5ZTsp/f6v1cNf
         tW3sEMFEzZoPqmnNRY0zR4VW4BJzQ9nRbmaBg6OwsR1rgXOY2Tkzx34rqgVWhV8HF/En
         zgknf3ul4e5SUVLgyzdctjGMjLusk7JZGm34O/HTkslfsEglrCvW20FoGydyrh+Xxn80
         Ze3EnKi92/hVNhQeK9rkZpPQ9tCD6tMClAwZxehnbsAx1cHVvnTCDaTJPpQKi4aIbgRQ
         4pXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792819152; x=1793423952;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jkumkssa/J8WgHOu5OVjv01fzxPb25j59RB9TTUY5mE=;
        b=hhq+V0Fga/LynYoIy6AyGq6atdbsZLlqm3UbGXyBH52EmscS8SlEIOUVodhy76PIe8
         d/7S+v3/K5QxZJkGjqZO7RoxFvLrDClwx2+UDWCwsWnMymea9ghTDjs6AKNRDX+yJLUH
         E5SW+SrB+J4KkBHYIWWN8F8dJaAoG2lPYW/kicdjYj+b/jAmah9smSaoG4X509XXDfQ0
         bIPkafUKMFgSjmZUm9tya77zAg8v9OQje7WF8k/ztdiitTb9VIW1Iq+ncuGq2NbvFNUK
         eoJnDA3c13ZRmYpT8Jp15iyJ/7TOxeAMVuEsA0VCGnXjkrfDHdbrvFD7HsCTGdbDuIKj
         Z/0g==
X-Forwarded-Encrypted: i=1; AKwUvBwV9WJ+uFvQ5E4+YUwcIVQ9QxCnEn7uAvUJckVuvWCJvxN7jVRL8oZ9NUFJV1HrRWGxaTpOnzPoe8U=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ4bBJ/YSe6q9hEeSbOjs3KiUHNIGd0uQ3BN2QAxmt+Ltbx62fb
	/i+iBqZwYuDLYnVU0KgnXpdUUu8RnLJ1RcUGeVD2dRvy32v26e2CoK2mipWFu59Eiws=
X-Gm-Gg: AYBFou14E0o5NzYWf8SFU95i5fycFccyVW+wdJIG0SIa9M+/OeOLokPu3DYhXDn1BA5
	WcCZs0td/8caCSJxfeqeVzBTIZQ8CsR2xZQT0JLQtAj4x3mU7hMYWonZfGSBmK/dy8zGj5rNSqA
	xmHLril24pBAUyEL40CJeDgn45vL2WXd3vPxLdWBbyVAYyCX5FoQtQY0WclIlXg5I3MYR4C5C/Y
	eqwdQ52tPI9JrhuqINBo8y2SXNoPFXV2qXifMWS3sAhYIAZMqkbc/5DIuhHjUvnfhRMC8Y8EhkC
	/+vpXIKDHW+xIx1ALz2HRs5xYBpghKJ07s6Y8LOAX2IJrEDZZFl+CW2M86xJex0k+tYtrjxfeq2
	YLY+SRlYW6Hi0LuY4G7/BWrJtqzwLEX2XE6cdRjaJbpw2K9z30m2ZoB7Q4D2FbbEn3Y4H/U2GjY
	OKciLSzyYcg10u7pHmI5YsI2CqsYeFWfkojpSPF0K2pyT8kIGvAw+Jv04zxMV0Q02rm4RXVgGMM
	mpwJ4hXE5ls0+cgPqtpmigXMZ86mdbXrx7jWa0H0y3SmP6MJ1GjKU/TQb9D3gGmVSb8rFq1PIER
	UYVAGQpiN7BBVJ/HczYGb7b1VZ99YdSuTQ==
X-Received: by 2002:a05:600c:83c7:b0:4a1:83f0:7c91 with SMTP id 5b1f17b1804b1-4a35aca186amr13037915e9.18.1792819152402;
        Fri, 23 Oct 2026 22:19:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:9c3:9990:89bb:701c:1852:56c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a35a30e11bsm35997685e9.1.2026.10.23.22.19.11
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 23 Oct 2026 22:19:12 -0700 (PDT)
From: Olivier Louvignes <olivier@mgcrea.io>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Paul Cercueil <paul@crapouillou.net>,
	linux-phy@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Olivier Louvignes <olivier@mgcrea.io>
Subject: [PATCH] phy: ingenic: Don't disable the supply in exit
Date: Sat, 24 Oct 2026 07:17:56 +0200
Message-ID: <20261024051756.79342-1-olivier@mgcrea.io>
X-Mailer: git-send-email 2.54.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_221915_278595_D991B547 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The supply is enabled in power_on() and disabled in power_off(); exit()
disabling it again unbalances it. dwc2 powers its PHY off before exiting
it, which warns at every probe on an Ingenic X1600:

  WARNING: ... _regulator_disable
  ...
  ingenic_usb_phy_exit
  phy_exit
  dwc2_lowlevel_hw_disable
  dwc2_driver_probe

Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
Signed-off-by: Olivier Louvignes <olivier@mgcrea.io>
---
Tested on v7.3 on a HiBy R1 (X1600), whose PHY supply is a dummy
regulator: without this the warning above came at every probe, with it
there is none and USB still enumerates at high speed. Build-tested with
W=1 on phy next.

 drivers/phy/ingenic/phy-ingenic-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
index 7e62d46850fd..d8e5ef302b74 100644
--- a/drivers/phy/ingenic/phy-ingenic-usb.c
+++ b/drivers/phy/ingenic/phy-ingenic-usb.c
@@ -124,7 +124,6 @@ static int ingenic_usb_phy_exit(struct phy *phy)
 	struct ingenic_usb_phy *priv = phy_get_drvdata(phy);
 
 	clk_disable_unprepare(priv->clk);
-	regulator_disable(priv->vcc_supply);
 
 	return 0;
 }

base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
