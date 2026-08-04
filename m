Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01650C55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 15:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1gb6wSZZyau/GQlq0V+G0oLuDa8oea6LcsX/rBZZIg=; b=qV8Pvcd+vDcyXJ
	hkGcnLgEYT+UdRl8l1x9dpD72qV62EpJcLVpNCQqY6NmPt0Vx2/J9wc90yrBfYRoG56JHYgzRQ2jD
	eCew84CANcb6sxi7Z2KTLZl48NTlbJYcVLlSFBQ2sNbBoAPFjgua2YdT0+tzvQgqnKVSI4lZkvnvx
	zbemTQh2r8YHElgHnsgPcJC+E826W0SLNDfWiCWhQlWrdNJbme4Oodxa6HYvnsHD604H1tiDHrzpp
	fVGA1N+s2Ia8Gq+mI1tkbzB7AzdPxGAGti8VIdQr2qYDgX02hcGVlgaEw+ioxS/jFGTLEpddOljzu
	y4cuPlbY1+pKmp9C9Zdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0J-00000002Cuo-2v4f;
	Tue, 04 Aug 2026 15:24:31 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0G-00000002Cth-40rN
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 15:24:30 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-8487214ad2bso6658511b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 08:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785857068; x=1786461868; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TjMEIKou8AZx5p3jNLvJo9ap4iKsldeOQJzsD8DXaLs=;
        b=Tdulrb3Iby6pEseQGqPO+skdLhneXrt4pgYIDJWXMVTQr+tOJh8llJNdNFx+pA+BQD
         P8vhAglp5rm2vuId+eV6hW/rc6WEnDXngK7R0NKvd6F9KJihFT23+h5rgUlLtmNrMMmN
         IQ4VvwNrlVEbFSqQHruXDpN3QC8nW3umwaspq5VW1AZkYqLpnPqi0EZ5yRPPHeWBw1tm
         aYpYeQA7T0zNdvTrMcAcmTSB5C8/xlCpK1uPgrzqy3nY8/ZEMW4CoMsWPI17zpFClrvh
         bFznWLoDMpVldfzf673CqKTFIK0gPVriEUYj6VXCCnmCI9cdAHesY+88xoQHhjpFHEWj
         Zqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785857068; x=1786461868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TjMEIKou8AZx5p3jNLvJo9ap4iKsldeOQJzsD8DXaLs=;
        b=iNOH4eyhrt8f54ofNe18RalkZjIheBdBdD4JNurrUGyqtrY8Yjxpf8q+KTU+QaWoLZ
         WyQwJN6T5Gsq9dea7KiG273lc4Jv50aEH7wP9Udd7EY5Yy06011xxwTn8YBB+qmVLvDm
         yUSwH7/8V6L4jLd6+/x6yZFRSxSjZoCZQZBQnktc/mDAINoSz+gsCAA/BTUFC7L9hdiS
         odUAo/bG8jO37lJWz4lWsOv68MZW0aXjYoUAUUxjJc/VifWY8FNg6mUfFEcOJyb1+IqB
         qDypvxNwFWFH9U0ZhZ+6aJAG9Ue0iXMNKYQhxPnux3doCY3WDdyTtkJ3TneMiP3Q1UIB
         Apow==
X-Gm-Message-State: AOJu0Ywu5z5ZkoXMoSsbvAQJVhFMcH95snW2epmfOelvTInZ/6sPBCKa
	HEWlGbsllpytUs4OwSV9jYRHMGvZh6d8v9HQUZFMLNzEEFN6EnXOzsz+
X-Gm-Gg: AR+sD13XLkyAptTOcCqDLEwqKOgX72ZLgeFLjmcZtA9767GpNDw8wVKCALrpZc+UQxu
	JJ6R+d0XOJmJ93LgOMS/Ub4VWxhqknDzrNj5RJnsdpZlT4EJDnFkQqeUwejlF1Vgse4uaOgpK/5
	+lvxCSQ1eWg+tDaM2TyKsB6IM2NjTqvtrkgTl3jny14gIXDjX7ARGSuG3qPOiFrb58uBpiUz1KI
	icDSiXAE1bdfn5GN+3z5Ua5r55W9rvUrl96ji9YoAjdH9MtEunDW3Vw5osKLTJAz3Qc/w59ODrl
	NADZK+HYSbTXOC6DN+vNyzgcJdnioD93PYNDU/BmZdmBf1u3MGv5AdxnjTkYIi704cEbpDpoPef
	eIL8Sseo3jEcsR2Olj8uSjyRnzqxgxCkqogLhr/M3S1xSk8vhkpVUkpZE2Bfa+ZnkQrjUsjjvZz
	IcJ49la+zrWZ5Wm6t2CE3FIKNlZgTYrMiwb33s+162BssmeeDFbmfribnUX2FJQrVJj06EQ/wx2
	iOkG5TMMASxxWha4MbGgunmMu2GdRT6+AYbWA==
X-Received: by 2002:a05:6a00:12ca:b0:848:4424:2b8e with SMTP id d2e1a72fcca58-84ee47e39cfmr13869162b3a.3.1785857068002;
        Tue, 04 Aug 2026 08:24:28 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe564b3sm5586778b3a.14.2026.08.04.08.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 08:24:27 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 04 Aug 2026 23:24:17 +0800
Subject: [PATCH v2 1/3] phy: renesas: rcar-gen2: Fix double of_node_put on
 phy creation failure
MIME-Version: 1.0
Message-Id: <20260804-rcar-gen2-v2-1-829cb84112ca@gmail.com>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
In-Reply-To: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785857060; l=1051;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=f3dBut9WSJ6O3srcSvXsdGYa6Ngpl9cC3b61R3xBFnU=;
 b=gLup/i0APDsOHIFwtl+FN3WpFHapDtHlYLsmr8oH1S5EVBCSC7MGJ7idmHzl3X3W4/ya968LP
 6WC7TgGO/jyCsczkUgS0s2PIUTZyfRacwyMWkXw5eP9cG7cqew1hMDY
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_082428_999436_24A035DC 
X-CRM114-Status: GOOD (  10.02  )
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

for_each_child_of_node_scoped() releases the node reference on scope
exit, so the explicit of_node_put(np) in the devm_phy_create() error
path drops it twice.

Drop the redundant of_node_put() and let the scoped cleanup handle it.

Fixes: b64b32791fb5 ("phy: renesas: rcar-gen2: Simplify with scoped for each OF child loop")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index 6c671254c625..5a272e25e051 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -405,7 +405,6 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 						   data->gen2_phy_ops);
 			if (IS_ERR(phy->phy)) {
 				dev_err(dev, "Failed to create PHY\n");
-				of_node_put(np);
 				return PTR_ERR(phy->phy);
 			}
 			phy_set_drvdata(phy->phy, phy);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
