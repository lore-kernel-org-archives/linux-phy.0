Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C13CCF9E3
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koCano6PlCyexOci0v+DyYEp7GYJMdXeKJUzjOV4ZPc=; b=DNPGyqYZY2W5XV
	r4c57/OLTOtaGkV6TsyXUTJVQGIL6xIrZIkvfbO3Ri+BJtTMhAoVKlKoEYdhS1C4mf8LV3sbWy8aC
	gONZJjXsoYgAW1p6+fRnUqJ5Q6Gu+P0+kgM1GwHHmZDaSqq6nWX9DyDgekI4ZN3FgKUO/rCCRYrcL
	DyhzNFVtlr3aRaHhHs7hDqujW0QK1yEyweU3Vk194Rlm8RgriESS7nKO69X2W0/KXhUchqGo85gh6
	Q/oZJglSAVzSnEsh2N6VJ0hV3SG0lEwITX+71rnEKI9qHVmIH98mK0CaxIxXixJ7u3l/sPlXLAnli
	QF7I0xq+oD1KcAqw070w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpw-00000006V2t-3JE8;
	Thu, 23 Oct 2025 13:58:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpv-00000006V2P-3bec
	for linux-phy@bombadil.infradead.org;
	Thu, 23 Oct 2025 13:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5v6y+GjI1vQGPmK5PBayMgAyAsV46MUdg+BfNU35YfE=; b=m3ZuUtrpwhjknfjS2O2wq4+C5B
	w38SnixBOwk2XN/HQgUAl2K0Mjl3c7m/LO1e5Nkz8az3As0ikY/z/4A91spGnWJC2eUfARdMs3647
	KjQfoF+Xmk4r0F0c+E+rXDUCAm3ADGVlRJ7vcJ/dvMENXUpB/BYhrHMH36hw4FAShXN0qER4v1KaB
	rsJT8veR55jZgXYSTJJCJZCAv9CHIw1k27dRdGv13aVKSzCQz8yg6KpAMWMqZnU4wSIEYcUfb/yN+
	ZHl+oMUd3ui1bGslhVcH3sL+90TJzKmvjuY1gptzDKnVPWLcKFU3Tc/kJj19r2w3GtyxDDOc87rrb
	lR2/Vf4w==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBuyD-00000001Nj7-3mQa
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:03:11 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b5a8184144dso142134866b.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227915; x=1761832715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5v6y+GjI1vQGPmK5PBayMgAyAsV46MUdg+BfNU35YfE=;
        b=JydEz5524+rhJrCFYi0FLEf9GMUSuT8cC/gyJTm2olWyd4z9QXMZPwgg7WK5DNThly
         0Ri2QXxUsHvwPp74lH0mnKuEzURxM8EuJ12VOIqxviKTS3ERJANEj6+3M1UZwsNVDqTY
         RiUPu/+2aFHiAdXTIqDwuwV2TK0UprZc4pJVByR05MzZ8ACcqZWX+6oktRg2E0iAFI8i
         3XqHQP9IJh2WIgEQZQy9cG12FMXRg6PPdJ6rxHxV8NiWp+SSDQgx1/3HPO9vT2fQn4zJ
         0jW5JsROWHMb8bnEqvTnbuSTCYwMgb1OghzY/azeg/FW+wHptMi0Y9mLgeAxY688lLS8
         d3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227915; x=1761832715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5v6y+GjI1vQGPmK5PBayMgAyAsV46MUdg+BfNU35YfE=;
        b=sK1FHBk6KADZm296NMYJ9qFP6F6nxqo6SXAcTfEV9Tj+TJAoI2gXEtpTB3qDieCMiN
         hzVyIL63TpXSpRVwkIzutwNuDCgwws2eeq2QlMsCNplz9T1D8kVMa+h3cQ4nIYTk3O2j
         ITdYKN7GLLsB+rAs+J5Rcyvuce46O2du2lWP7YdGMiiLf2iprhqAw5pQMYdeBR0tBSjT
         iiGeEq6Ltd796qu/W9LBMIQcjnNTvI48Y6ttmgRxJA0Hy0BmUhmR1h5MuRm4dMo48IFX
         eWbKg1pqxv6ebLKvygeCnz1sWempvaOdNMST8MEhwc1fFmbcgTfHMxFxWR6hCd/2CvbJ
         ojqA==
X-Forwarded-Encrypted: i=1; AJvYcCUmD7qn0iJNYvD7gP8FfZKhVRjyV5RyxfM6emPZjEX3WnPrsBt/NeApuu8fO6y4ZPBtSK94DuB26iA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQDN2DXxIJ78ETBcmjOPpo5LQI+MNM0j50WyyxR2fncWg71YPh
	Fv251BzBTOSf0QH40Z8JxIwsOlmD9hQqvyl/GwEZDKXXLHwpVfI01N+8mIjUIzUR4+k=
X-Gm-Gg: ASbGncvjKPJqMD5neB+9hlFWsyyYN0/qCOnL8wA5VarI2E8Tjk+hQlq4SZ53CXG8/FT
	kZkBJMukJFpELnXQoCrZMlmD+IAk0EzkoX7Ao8iSTuWK++qnhJEhjRoDQPpGAJMIJMVLS87MrzJ
	bHDydo4+StYeiEEZMH1jdhUZTM6R91Ej4yQbfyU7kraZl0VI8xqiId0NKlfp0qKpFP7eRivIl5s
	fvCdgcEyzEV88X1a6WgbDny39UD4FpJmaN8Zud4WGsXt/oSOD8XqAvPWP7F9ZviKRhrh2XyuJqR
	6M8YBaMsIVR7yVi6YEbvhfJDg/UiqbIjBa+TuBC8IgOLKcd9IlUhUwMiChl95NWQS9ylAdqx33W
	peR8FbOYjVBPC4MNzKJ/z6JZkjwYsNBc2+G02KXzoWzf9zf62Gpff+DTv4YpBJaDgyPlQCB5+4b
	i81cp6b6hAitn/4rF6uR87RGqyHqIEQQ==
X-Google-Smtp-Source: AGHT+IEC+rYJG36/rC4PJVSPAIdX4Lo/ftVglMxpEkizTmYDSbvRujYXusVRK/4v8s9FHkKuEzGgrA==
X-Received: by 2002:a17:907:74b:b0:b3e:5f20:88ad with SMTP id a640c23a62f3a-b6476ccc0c0mr2866186366b.28.1761227915106;
        Thu, 23 Oct 2025 06:58:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:34 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Thu, 23 Oct 2025 16:58:08 +0300
Message-ID: <20251023135810.1688415-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_140310_162922_1BAE7C51 
X-CRM114-Status: GOOD (  10.51  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new


 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 57350764be25..1c0424639e66 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -96,6 +96,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
