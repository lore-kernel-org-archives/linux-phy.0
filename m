Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA470C5620A
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3d0uBm+ihz1sOTLwG66z57ba9ihAFEl/tpI/HbWZBI=; b=bK4h26ud602MaP
	JsH3NHk6jW8CzBL3pJXdXpR+//kSOwVYpxqLWGhAKHPpLSbcUOw3rcjWPdMMAxdBAqMiw5rTNk8+m
	g7x+yNcQ6l80xnjYlj6VPuBVf2DNE8viyVKsVrE8jMR/g3FaW+NtJf5mDmpmYui1tncmr6gWMVFH5
	oCv1AgP6Cjw3fy+ErHKsEOrJ/k36RbMRjqUpPnMwF7A5PYAKvDfZo7LAd5QlZENiUogmTmWLkZ6UI
	9PHeGu2e1Q3mO0v8HObjGsxRzZKxNn558fqHS5fdlTcaDz+xt4n/XJbHHQZhNsKp+hUx8X8pztZ1X
	HdfJvFOq9Ikq8r36D+Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFS-00000005XUk-2Qmn;
	Thu, 06 Aug 2026 10:22:50 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFQ-00000005XSk-0PBQ
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:49 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47f703a9d05so1316868f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 03:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011766; x=1786616566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WwgSPPFxW8r6f/Mf04pgxVIGLx/CCmkzEAjLQ+ITnU8=;
        b=VjN8JJuUW1S7+YNtJghqQPwtyVmK4crmXrsM/6iW/eY1z1WwlEX9j7OPbGQcVdjmnu
         q5TcvVXz3LpBELCSAqi+jtErey67HT1FrjMZKe127jrT+DLB1GAq4eJP/m5AhNmvm/l4
         BVIWYSli4V9v9V+7Ybgmkq1GiSZMTiKlHOKuKI54kCFq9T2JihtpeXFAatoCV5HWbCJt
         GMI+55bPrzCX0CG1p1wwuok1bD9LS8WwzSIwKh+bJvmJU4m2JUIUylsawc/vqKGni5CJ
         9C/D9iA4bJxXjcLbfwTJJyHI0PWdQTVuEThA9uM2DbEbHs6AAtn3OO/fUEkYGwRFKX5W
         OnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011766; x=1786616566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WwgSPPFxW8r6f/Mf04pgxVIGLx/CCmkzEAjLQ+ITnU8=;
        b=h5ma5jAZCJSbdLMrtB248bL5Ndcj47GZT/1GfU7dA2DNaHzfdJIxqpr7XaTbRFk6wV
         f4wf2eQ+et9Z23m+HOb/c/jqxgDgWpeWHOMxeYDKIYIe/OQokQpGZtDODUNBT7x6FyQq
         021e9x1dC8jBJM8Ftb41lAb85xkyDfdUzGCNJhOVwfdolSm01Qi4JT3i76OYrpAiHGsb
         iNLAf4uqhPVOl54C3dKxHbdkLnFrrcd3Frh7UwmKiCFSdHkM2BmVQ0hR1E+pXnrgrCup
         3YWloE15fGblXRfYyK5T7fLkYxeniVuAVaFDg8PQgll0nodUBBsYeOB1ckkffmEpanQ1
         lnOg==
X-Forwarded-Encrypted: i=1; AHgh+Ro8wXBxuVpvWy8HnIECXuY0bPuuZmNXC49pFOhiDMdLhXQex67OxSXWBFvUg1aGX8hnllk7t33xNkw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8FkPWqfstdxH7Ge+8zwfQWJlRw4S7VLbozq6OVxU0IEqTLO5l
	j/l7g19+qmNUzd7JEDnwwBwu3ZmCoqwDB6sV881iyFvoe0SRshKKxvVXyLx/DQ==
X-Gm-Gg: AR+sD12yg9gIowR1+T1ETpkcO7oInE8E5hnBDGK0TY42Pl7OT32U6UU+FlBDjMTvhDJ
	lnXTEsVsN8NPVp4eZ2H4ffCbgAgn1/FEITYasd5P09ThdubZrF0ZlqWOuBguep/iurCH+N3IKh9
	KwemY8CJ7AiHyZ1YbOysyIh+JJC1OHAbEEvIeBy7oREaWmhgXECawfxyPyqr9GZ9Fo0qd4R8o3r
	tEaZHV0uSnFFwVV65fUTV1684yRchzlwhGcQ7XWckwvlNG4w47XCSFbzajGjRCDtlq1iap9yQIO
	boQqo878TRaB3SDBnasyTGEjt/SYGBzgztasQ0a6U7Pkfz9AsMAx6+zuepr8Cy0e8oqkH4cBnWZ
	1wMdHe89XfdeToHLWdx8sN1rmQrvzy960KTt4fqOqcYw6lQtObUEMvKEUEa37OM32ixZjAkSFxg
	P4LeeC8zSrpp91RzigviXUr1cLEIWfKzMBKuJT5bgD6DqkxBLu/skqO+oJle3G1KCGaFX+4y9bG
	GqWg0p7dus9
X-Received: by 2002:a5d:5e08:0:b0:47f:826c:7422 with SMTP id ffacd0b85a97d-47fec532920mr22349820f8f.17.1786011766127;
        Thu, 06 Aug 2026 03:22:46 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a173:17cc:14ec:8d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b183b2sm5634553f8f.24.2026.08.06.03.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:22:45 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v6 08/10] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Thu,  6 Aug 2026 11:22:27 +0100
Message-ID: <20260806102236.149159-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
References: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_032248_150667_547C30B7 
X-CRM114-Status: GOOD (  11.03  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

devm_regulator_get_exclusive() initialises the regulator with
enable_count = 1, requiring the consumer to disable it before release.

The devm disable action was previously only registered when the caller
explicitly requested enable, so when the regulator was left in its initial
enabled state without an explicit enable call, the cleanup path skipped
decrementing enable_count, triggering a WARN_ON during regulator
release on device removal.

Fix this by always registering the devm disable action based on the actual
enabled state via regulator_is_enabled(), regardless of whether the
caller requested an explicit enable. This covers both the explicitly
enabled case and the initial state set by devm_regulator_get_exclusive().

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v5->v6:
 * No change.
v4->v5:
 * No change.
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index d06fb52ed5f1..ef38c3b365d4 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -905,15 +905,17 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 	if (IS_ERR(channel->vbus))
 		return PTR_ERR(channel->vbus);
 
-	if (!enable)
-		return 0;
+	if (enable) {
+		ret = regulator_enable(channel->vbus);
+		if (ret)
+			return ret;
+	}
 
-	ret = regulator_enable(channel->vbus);
-	if (ret)
-		return ret;
+	if (regulator_is_enabled(channel->vbus))
+		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+						channel->vbus);
 
-	return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-					channel->vbus);
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
