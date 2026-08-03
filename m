Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EADDC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 12:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4F0MMwYoprIXwcMr8hZgrJBH52Om2CQVqsihLjgtqZo=; b=jox03AzRVe9SBu
	lunJmYiJergetvkCYyODken9rmciluFGlK2wwsaR3zq1KQU1CPcIxgFG2cNEMBcDvqF2QURG37nG6
	xDOEwFqI1MJfSOwV2GLydY31vwkhS7p2wpDEiWgiGZirIKbs5s79aeCIR2IMAVe7o9isQ6f9OPOeI
	wb56Q3trmzIFUiI5BteXnDmzfRW2LZfC4uameM+J1D1RB1UR2rrnCLf4HwtMb8Kb6P1Q4JvrF6wuo
	vRE75Cpc7OhUDwi4rCubqgQDbC2DtSv67pQHVy302Ie9J7iLb4XC5LfYlilvuk034c9mjcOCkWMfb
	U8wvaXhNfqxu/NIEadxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqs0y-0000000H3yz-3bil;
	Mon, 03 Aug 2026 12:43:32 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqs0x-0000000H3xg-1mir
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 12:43:32 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2cedda2ce6fso27222405ad.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 05:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785761010; x=1786365810; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Cw8Ms9Kan2k7tw2PC7Z5aIyl6oywbNO7qN+ujFMHGmY=;
        b=EhevdbmMC6QAsXLcoLvFysh80pahLd6jdt/bsm2cc3gC1Eyc+APWAPBp/15wwmNrTn
         0x9/QQSSOkbIXA8rqCp1d+pes2Qlmvah+1URPxhPRfVPPyXt3Zyi1r2oO9qvf99uihG9
         VshfF8W6WcKTqcm7QvDIcWMHtx/1gNMyyNjYrAxZJZMt2gNq7FmhD5ZYD1o2HZ1+eHPp
         37FGsetcxrHCuGhh+/eiPR7HwhDW63l5Fh2s2r0Sl/xPy73lJ6DN6ITnNA84iZcFTAUM
         jLXzdMjHKKKV6fAMfiWB/dqeFWMuma92Q30I4vzBdPrP0AUllfLSKtNZL4XOJ1gUCby+
         wNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785761010; x=1786365810;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Cw8Ms9Kan2k7tw2PC7Z5aIyl6oywbNO7qN+ujFMHGmY=;
        b=RWOGBcZKU6aUCILXyFmNcJQlVXGRSPgLjpYSRvotSbc1gArdc97KpGcXj5QdwGcm/v
         vrVsHext98ATgZDxUqgD9I9AqaPFk/l2GY/3Olqhe8fClDZadVr140QjSiACpvPZBTqH
         600A2n1yrW3E07SdffZ8ZvT1aQ/JXpd4kEK8pepp5kYKXYmdYeyvUoBqf9X1WTjpsiud
         imOmFuktkKCDVhsjHZH5g+ulr94vq47cMUdy0hvm7ONt1lNhPhuBo9+5jeves1B54jP9
         nt/mBjPYcg9UfHvlnsve88x9Csi2PSzMethgdz7B5hlfXeGh9MK/2ZKLFZjm5JBAWFFa
         759g==
X-Gm-Message-State: AOJu0Yx/jM7oeibhj2CF4RGFTYWNbq7/V2Z5KiOgBg25JIjW3BpJ8+S6
	6vEQzVITpctudkD08qVLDKNJOwpOKq2HXj6P8BBi8LFrDjWqHkfJxYd+
X-Gm-Gg: AR+sD10R/doKfG4sOG3je+cBliqt2tnVU3d9MwQpBIbZ+l2+rCPZefPhkTo+2GO9BBf
	YgnsVXC2IlL+c/8Sy6udAq1GGQErgx2ooNWEoeuEmfCJpbJ4uaHBV4G42zdKqtkvbL5iYRmECuC
	3V4aNYJMwSz5Pd0SEaanbikmxEZHQoYbRf4Tkx6ZqlLzSpYvbqUvBDZTbU+VozCUk0tJrpRi8zf
	wKwqRDqnYJKkoykVgAC8iCQti1Yk+qVA7bLxZ6Dhym39h33Li24IAUArDJpHkFQNzBeXCEctZ0+
	y3lRjNJy5LMfGRFlHfPxQxWoUniYSUEdq4Ve8sMQ0mrqvjs6vBjv9h7bf8WQdYvYv+5utyiuLDK
	1UOkht6Q0kzt0FbeOluoTvhx5vu1g6aQGiuPma1PXhiKQ2FvUlYlqVMePAGAeqcWOLVl3ognJpb
	w+iKTL1gNbZEm+wKZRSPDKAwJbw1KBq29EM4AYEfEjpjPZjLjEGoHFyk8IuB4Sr7Ct4gnx6NGDZ
	v3E3fuA7TUlIVMXtU704pcilebGpLbEQgUGlw==
X-Received: by 2002:a17:903:2c0e:b0:2c9:97a7:71b1 with SMTP id d9443c01a7336-2d0524c91c7mr101881205ad.44.1785761009849;
        Mon, 03 Aug 2026 05:43:29 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04b1216bdsm37869825ad.69.2026.08.03.05.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 05:43:29 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Mon, 03 Aug 2026 20:43:24 +0800
Subject: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy
 creation failure
MIME-Version: 1.0
Message-Id: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAOuMcGoC/yXMQQ5AMBBA0avIrDWZViPiKmJBDcaiZIpIGndXL
 F/y8yMEEqYAdRZB6OTAq0/QeQZu7vxEiodkMGhKrLBQ4jpRE3mjtMURtXVDUVlI/SY08vW9mvZ
 3OPqF3P4O4L4f0rGeA20AAAA=
X-Change-ID: 20260803-rcar-gen2-140f014cd384
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785761006; l=1122;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=tnQVRiKHBbJMgYskau3aHnN0bLEXgSPq8Kdh08EQFXE=;
 b=Dtvb2UdTIMEbYUuPteA4CV5qm9tyMojbVJ/54PyUJ4b/tVVtCnK2SbzUZ+Xhxjf3yqchmGzzh
 2faWgB4i0y8BvFMYCg7LLc4GQu5haDAbQNbKUybtRElA2DHrSYzAp/c
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_054331_471951_CB097E31 
X-CRM114-Status: UNSURE (   9.33  )
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

for_each_child_of_node_scoped() releases the node reference on scope
exit, so the explicit of_node_put(np) in the devm_phy_create() error
path drops it twice.

Drop the redundant of_node_put() and let the scoped cleanup handle it.

Fixes: b64b32791fb5 ("phy: renesas: rcar-gen2: Simplify with scoped for each OF child loop")
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

---
base-commit: 415606a7be939835db9b0d6b711887586646346d
change-id: 20260803-rcar-gen2-140f014cd384

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
