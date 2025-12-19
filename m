Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64F16D78797
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 16:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UKkH4aAPXq1iufStVom/u1jw94LPXhf8H96+2zHMkjk=; b=YNPQDRw4sqIPKR
	GTXXSWY0lmuYD2YTm2FEO06/DBYOnPUFVAUP7NgKiFPla0NxDQFQ/LeBHA7PJt4Me89pwgmQgu1yu
	KeQ9gKQ85S192WGXttjDTqJ6Ky/Tj0zBb4+pjgp0CLWD3SNMjxzYpjspRpdzRSZ6GoStW9xkRaXjJ
	Wg4s3hcM776q/ziORhcuhty67gHGZLgms00i6f2PgLyELLrKqBPtXBgtKdbsXwwceKYuJdQEieFZd
	VFqb8awIjizPoYGWYDMuhArv4q0iYveqHNZzyGUE3WuY9qvZnxAMUwMDNztXIGSRyy/aVe1OUSX/p
	e823IUEWjBfm7uUu3sxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWd2j-0000000AcZI-048M;
	Fri, 19 Dec 2025 16:09:25 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWd2g-0000000AcYf-0Rrb
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 16:09:23 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4775ae77516so18186105e9.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 08:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766160560; x=1766765360; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ehay3M186LcXUFYG3p9/ITKJQ7Me9IhwqSblYo6+TlQ=;
        b=IEs6WKnkj7+23s+R+PgqbLvoCSvQY/FYNRxGbZCBD1GOMTLSfXhrygs81iAeb5lH6g
         YPfa5uRYSIlo/NRbUcK2h0r0HVDXsc2cDmLtWONMGOQZV6ln9qaJAFiCthLg/MvvUKID
         w5oyKLPTS9Wpbx/RkuxIlsjexZjyNuMd0bwnhk9KzYChGY8/eTM5RGjcIi7nLWXjshih
         HPZotpyakT0QQOeAMVC5SBqnV1cKuJPR/oF26xlRka2cFbsHMyIfpLl6hZ+IVfYu1YOw
         DtQfeAJWLfAJPivIJ4h8zvCLqv0RpNtj/pf5BX5DVzGCtoVnDlRejM7i/nRZh6Sj2rMa
         Zsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766160560; x=1766765360;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehay3M186LcXUFYG3p9/ITKJQ7Me9IhwqSblYo6+TlQ=;
        b=RAfAqyfiHFIl5eJfaOCQJ1PTifT/wW4nb+DKBQ4K7kYvgD2GI/iPF7a7GdL9xh29vb
         yW+V0kZSVV4r4x48UNDZ2KwVPUJ4BbXzAXd9Bi7wCZeCea+y3yDTHdIGhNUXMdnF1/y7
         z3hx/1oklSQml699P8nkMROT8eig69SApgrCYNCwXsmuXSKFB94XfNsb51tGVuvHsD5w
         njjqgr9oG6evWOWUmLkuSyoZSx8xYQ3TwoxgGUgzrIyu+/7HBPJ6Z6lXmMeyS3VfurVd
         U7cf4acjdfkqY40Mi4RTrByO1ho26kBwBUBvu+nAPVhNTzA+Y8uheb3SEX+wG2BCgXFb
         SFIA==
X-Forwarded-Encrypted: i=1; AJvYcCV03wt6rCfn7q8EsHbKEY89zfiiBN0nI8X8aCF4U9iKX9OxImjnY7UzFgTPUf1UZTWnrLqctmVCswM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHjTSLcZobtJizoVmui9C1wi9hSREAYyw+9my96o7mGR5J2hM7
	Q/Ou7PEjqUWE0WnTUxbCpEPmhx/cTzKY4KU+dslXgR/w11oAluH9elZS
X-Gm-Gg: AY/fxX4N9oAbV3VCZfINN/+VvOxSJz4rLJsFE0jIuLseUAaVdpoEa8dsOiPxN+JdZJq
	jxfQxYwaZXobnsMpeMtUttrvo/obaa57AWmn/K/MRv3w+pytvXox7AyBJw5rsQx2mFPgBSlNfT5
	0oFurwvD8uakhK4jhbkOJYk52gd2MmDzdnWbgSSS9D1WKY5CCYlIjWRukkJ3RPRDlqz0A3BP/LH
	Oog5+xl3WcuA76iEFVK2Kp0VF9SMU8+3D77ZY7/NJ9zAyvrpsyGnz0eaRFCML1366b/UL2ZeYhi
	e8HKREvBuPVFfa863KxPqX7gG2PCG+UrrLGBPbHaXJarI3S9E//KwabkxvPtO3L6KrCNXix8yVM
	rixxjvI9+6wxmLb/vIL2kd1roIUeqMtlrx2apqq1Atuyc0qrJLwlK7djNwesja+2dJIKbWJEh3R
	1NqHIh20ALAkVs30Oz3lPEOBc8H1zMjNqvA+1cgswJil4YRxEXT7WlYIR+nU9vFhxYIYJLd5egf
	4Mu12zEXpMTpxA=
X-Google-Smtp-Source: AGHT+IFZw56LBO5z3Wi45JPES3t//vnNXh9tW3SPvp6EG4Jj1i7soALK54FoiiJGWBVoLxuqYK7Ueg==
X-Received: by 2002:a05:600c:c08a:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-47d197f67edmr23573275e9.27.1766160559997;
        Fri, 19 Dec 2025 08:09:19 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193cbe58sm49840975e9.9.2025.12.19.08.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:09:19 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	j.zink@pengutronix.de,
	linux-kernel@vger.kernel.org
Cc: xu.yang_2@nxp.com,
	jun.li@nxp.com,
	Frank.Li@nxp.com,
	haibo.chen@nxp.com,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	Stefano Radaelli <stefano.r@variscite.com>,
	Leonid Segal <leonids@variscite.com>,
	Pierluigi Passaro <pierluigi.p@variscite.com>
Subject: [PATCH v3] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field before using it
Date: Fri, 19 Dec 2025 17:09:12 +0100
Message-ID: <20251219160912.561431-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_080922_165527_0CB3E219 
X-CRM114-Status: UNSURE (   7.62  )
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

Clear the PCS_TX_SWING_FULL field mask before setting the new value
in PHY_CTRL5 register. Without clearing the mask first, the OR operation
could leave previously set bits, resulting in incorrect register
configuration.

Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
Suggested-by: Leonid Segal <leonids@variscite.com>
Acked-by: Pierluigi Passaro <pierluigi.p@variscite.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
Reviewed-by: Xu Yang <xu.yang_2@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
v3:
- Fixed commit message line wrapping (75 chars)
v2:
- Improved commit subject as suggested by Fabio Estevam

 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index ad8a55012e42..9458b6e5fcf4 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -504,6 +504,7 @@ static void imx8m_phy_tune(struct imx8mq_usb_phy *imx_phy)
 
 	if (imx_phy->pcs_tx_swing_full != PHY_TUNE_DEFAULT) {
 		value = readl(imx_phy->base + PHY_CTRL5);
+		value &= ~PHY_CTRL5_PCS_TX_SWING_FULL_MASK;
 		value |= FIELD_PREP(PHY_CTRL5_PCS_TX_SWING_FULL_MASK,
 				   imx_phy->pcs_tx_swing_full);
 		writel(value, imx_phy->base + PHY_CTRL5);

base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
