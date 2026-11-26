Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E4B606A32C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 15:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DAKEoR+K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LW1Krcrl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WA8PVucRJPMpP+TSVxIYB+nu8O6SaDWGl6MWRn7sEH8=; b=DAKEoR+KVoUccU500kyAna7vP8
	9ujxGM8abWKoNiTvqjCit5V2uakus896y6L2ZgxvVrzNL1nM4CzZo+D9mAwYCHWPv5FpVBRf2Yc0X
	rDgNPFEkbbmk7MU7HJc0mDkXL5eFVH+AxiBEtP5KAw58awWx6nDUoUzfwG+Ac3Ukk7Mh8h8Vb3Qo7
	3VjvjoLzp5rvRGfhdzJjauvjL3R/wCr57wJelocrfem4mJu2tQJEsxpuhP/d0ClgEg8OB2RVOFUvu
	CtDUDEulCkHtXSuEt1KErRndI4SB9HvAUCruvEEnRQVEPYWy/TmNWMo9SB5zBR1QcUVWnof51AQob
	np3p8imA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWbsS-0000000DpNZ-3zqs;
	Thu, 26 Nov 2026 15:59:16 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWbsQ-0000000DpN2-1VmK
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 15:59:15 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-385c497bf94so5832971eec.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 07:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795708753; x=1796313553; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xdJp+FlW0fAnBajETS7/P+7V0hYHEUFR0KWFN0IaqRA=;
        b=LW1KrcrljqtUkM5HAn0NU+uQ9+9O0HaLbkXH4D1TarjvbTXrEoa/bTzE58cFICb+x4
         93A1T6xWw9uqW7xnM9roIrkaMzw7AH38Gl4wMDBqKEef17tH4sTWRkf1K6qLdapx+Xk3
         0wGsqQYoyf0h/D0Ps6UyEUTS8tj383ueZx6N4DT3TdgW4ohRH89veVxpS0iFp6LuiHnL
         qwQCKyKLDGSV84PjnuqMa08cj1AOtK1jxQk9FcpcVf5NIxfjInPUzcl30NhTyFvCEcUP
         E1KsB3pWAgH05KoSqs9BSxRt/cfYZwscyBdAcmsQJbL+Gx6PtiYwwzIgRkzZqPnACUud
         tA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795708753; x=1796313553;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xdJp+FlW0fAnBajETS7/P+7V0hYHEUFR0KWFN0IaqRA=;
        b=STziMwGJOwDU0l+cjysz05S+PO5zX9BYyQO6MrmsRsz4a31sk7smrDyoVslgkmTVqY
         y19przCHt3BuckEL/pFX3AHwx0Ls9qc5UfGOIUWnPtYLRUfCGL0u+HGsCWnTMYWjA4CJ
         GK4Lf5sNG49nNcHvYeHq9Ftl8UMF709H9Czie5a8X2AoBpJt5Ptxn29THyJm7XbadS3J
         NXIMLaOP9SGIfxfVUe0rckatU0pPUBQznpowsnEU9501/Zb8hxOoxXoCyoUNFQXM9GU6
         ZQtXqHPgdZNwqedgShyJDesx0Tu03ymzfNqoqiHJuiY0PsCNo0i8TU1C6pQ792N5mnS4
         c71Q==
X-Forwarded-Encrypted: i=1; AL+hErGdvXIWDIBiy0SKqgG3KLuErkr8XAEnlu8Z0PQvTDWFDiNGK6KMhHQD6aE9hx6xWHas0PeuXfwY4D8=@lists.infradead.org
X-Gm-Message-State: APuU4Z+PcQqAuJXgCg71tMlfZ9cQRhwJOkVCpS9DXC6j+QhhVUnA9wv/
	puZY68cgcz3qkQA2RU34l91tc+J1jJ8zfQehOKtkQgnwHc9vzHPTZVg=
X-Gm-Gg: AZFdTZd3gWXyJOIxF44Y2fHdeJgUD5HlPhjQTX7OtzdtX2aUwIPFMfTGOytP9Hk/A3e
	nWBMs8ceJK/YDHibcorHo8JfSKKbOSuQLqF4UO9NktSV2UwUAh9nD8rtyy69uHqzMomCPtOJIDR
	foJRE9ny78nzWaTdfTzdf2B3gqOlrcBP+oOPuuKF5xd4eixP/E/sQlmZr3Lhdbw4JnaDCu7E2xv
	TAPyGZ4Hlz72kmitGfvE3qUQAtflzAwGl+PbOzKE5giuAGERoKbA6/XN2ef46/VROCkiAd6NVFE
	h/miOpCS3lTBFki3plMPv8msZINO2x2aor6WDcxjXnCmLyf3nZnnEx4GL0wBJ4nwvALKaYKF1iV
	dUbj8Kco63vKdyIv9itN3064M4fYFiUnBUxgrWLQDwKHgswIrgYNeUZXX9tlDv+sevmGDREm9h6
	sgR0Oftu6XK0GkEzfvKbseYm6j1Sjd9N3hQU6lt2Cgm0uMm01hty520JqAmeAkH9HPUMCVyfVWn
	iRp5NmWBscwjkiRIrhtWG4GYsKi+cVYkCpSclXll5NbX3t+kKYxA6ljuQFNLzx/7+4b3jBVsjRx
	8UN6hBF03VZA/hFjflEy1gj/4shrjYcR/+6ErGdqLnObXIKc6VI/pYhszCsG2DerVyt/JOab6Dr
	HC+f7xdBQpQK8
X-Received: by 2002:a05:7301:6407:b0:386:2300:db04 with SMTP id 5a478bee46e88-38623101ee2mr21471812eec.22.1795708753327;
        Thu, 26 Nov 2026 07:59:13 -0800 (PST)
Received: from localhost.localdomain ([2406:3003:2002:639c:a06e:23f:85ed:4cfe])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aa203267sm35099691eec.0.2026.11.26.07.59.10
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 26 Nov 2026 07:59:13 -0800 (PST)
From: Yige Jiang <yigejiang86@gmail.com>
To: JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: Yige Jiang <yigejiang86@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: Fix OF node reference leaks in enabled pad setup
Date: Thu, 26 Nov 2026 23:59:07 +0800
Message-ID: <rc-b1-20261126-vc-166-f94c6693453a@gmail.com>
X-Mailer: git-send-email 2.50.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_075914_400178_8FAFF63F 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

tegra_xusb_pad_create() looks up the node for an enabled pad and passes
it to the SoC probe. The pad device stores that pointer in dev.of_node.
Neither the probe caller nor the pad release callback drops the lookup
reference.

Give the pad device its own node reference before device_add() and drop
it in tegra_xusb_pad_release(). The caller can then put its lookup
reference as soon as the SoC probe returns, including on error.

tegra_xusb_pad_register() also looks up the "lanes" child. The PHY
provider takes its own reference to that node. Drop the local reference
after successful registration, as the error paths already do.

I used an AI coding assistant to trace the node references and prepare
the diff and commit message.

Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
Signed-off-by: Yige Jiang <yigejiang86@gmail.com>
---
Based on linux-next next-20261109 (630059a5a632).

Julia Lawall posted a separate fix for disabled pads in 2019:
https://lore.kernel.org/linux-tegra/1550928043-14889-5-git-send-email-Julia.Lawall@lip6.fr/

An earlier version including the disabled-pad change was compile-tested
on arm64 (GCC 14.2.0, W=1). This revision has not been compiled or
tested on Tegra hardware.

 drivers/phy/tegra/xusb.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index cd1cd985f36a..aa6ede9f4a21 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -161,6 +161,7 @@ static void tegra_xusb_pad_release(struct device *dev)
 {
 	struct tegra_xusb_pad *pad = to_tegra_xusb_pad(dev);
 
+	of_node_put(pad->dev.of_node);
 	pad->soc->ops->remove(pad);
 }
 
@@ -178,7 +179,7 @@ int tegra_xusb_pad_init(struct tegra_xusb_pad *pad,
 	INIT_LIST_HEAD(&pad->list);
 	pad->dev.parent = padctl->dev;
 	pad->dev.type = &tegra_xusb_pad_type;
-	pad->dev.of_node = np;
+	pad->dev.of_node = of_node_get(np);
 	pad->padctl = padctl;
 
 	err = dev_set_name(&pad->dev, "%s", pad->soc->name);
@@ -249,6 +250,8 @@ int tegra_xusb_pad_register(struct tegra_xusb_pad *pad,
 		goto remove;
 	}
 
+	of_node_put(children);
+
 	return 0;
 
 remove:
@@ -285,6 +288,7 @@ tegra_xusb_pad_create(struct tegra_xusb_padctl *padctl,
 		return NULL;
 
 	pad = soc->ops->probe(padctl, soc, np);
+	of_node_put(np);
 	if (IS_ERR(pad)) {
 		err = PTR_ERR(pad);
 		dev_err(padctl->dev, "failed to create pad %s: %d\n",

base-commit: 630059a5a632377b9b7b487baccde92b7ae1dd47

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
