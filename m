Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A995CC2A09B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/P0S1zhjiFg3WB9wfWzeTbilciSgpX8ItlOAdlVOrw=; b=OUenoy0Wel6yo2
	BPit9mmESV6yvQXnn9fyRFYqEQneGZ+FIM4wxb+XtDP1caMkc1Wo53Rsf9sZ8R8wJdyHsRPGS2oE0
	iA1Wj1h9aRN1+HxK4I9mslwLxzqs0TT30st1rXZ9ocUG9QFQAqe0oD7OGF/Xxxoe3AHFbJKpbv0e1
	1K/JsUaC+y0AVd0wE+nEcItMvCrJPi8KzY0RYgZ+9JiolMDDa2njcgw+64qc3I7tenfmgZvwhknYn
	6H6GJ5HMMFOKDhkZZwwn35u6oW23/Heoh7hT7KPbIJMn5GVSzLLZRN/4CHkYBlPSFiCsozfrozZn4
	oVsMK0Qe2s0jIA34JLzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRg-000000086sx-1oKG;
	Fri, 07 Aug 2026 13:17:08 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRe-000000086s6-2PXD
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 13:17:07 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2cc61541f8cso23080285ad.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 06:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786108625; x=1786713425; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a5DNBHQ8kwvALaaQk9FZvB6Fx6Gz1mPuyoHY596D1IA=;
        b=OAdoKIFp2rcRIOfkpuMtwaZmacVJnxnNN/N1x8dh0bR2ZDh1utdxe50RQGxBv8MRdc
         +VBihochXy/+vgPDa/hOrBdSWs+PX+fpJz9XRVxHGGVQ2n88ZfrLq2WaTciVRQeQdUkW
         4gKJHf8QhnyLpNW81NtyX6UehccNC0fZf4hQv7ae+xb5TRySFR5pNwbjVfnCXon9JhVq
         XCjn9S8uz7Ook4HmXSp/5HF48OsZhAvE52cvBWDnBw9jjlJuoOWILycw7yL/8Ip+Btim
         HSpMfXTmktU4wSZE7IlcobqjBBMMobAwDi5s6HJKmlOEbMazR9kVA+Aj5pKT3CPsQAvu
         RbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786108625; x=1786713425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a5DNBHQ8kwvALaaQk9FZvB6Fx6Gz1mPuyoHY596D1IA=;
        b=XlOAk08RmlcdCaI+ywI0z/zjKeil1zZQVr8wmkIFTKakyVZ1fMT1hIFfJmBx12P2At
         Myk9r7flN5DJxQaJCBvoKyXWd1Xg6zg1v3GyXVUaKyGltATmex2XMtax4eVWgVG1jivG
         3oOBtV2AKn01xhAuyDwrMO3XFS2McaHgCP/yKQs3rI9tey2gwZHe2VqmQ9wDkxt+Ntbx
         i7rCWLZ2SM5pVR5VV+fiKccg6t0yd8VCleEHm/yR4eLdepZN4oB8FXezYAcaP3MAMab5
         Uxvg/VzlDgkF0JOuHLSeViVSQcKx81rTyDPTZdegX3vd0Yz5+QwLso8Dhr8eABMaBz7/
         Z5+g==
X-Forwarded-Encrypted: i=1; AHgh+Rpppe2T3R4DHV/fNA6c7yauo8xrFeW+ZV4GiOhdvKgThPx7hlgW7FseHEbEAf0gSX9UzRRTQWW5dYo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfOVUrfff0SUo+97KmsTtFC4pokxdE6ybZky7+8h6lDFzs408V
	Krq+YRF+uzyrGb0mzNt/TnBs3aTOPZucrYhdbEaIfjJCgTXPlX6NyEWq
X-Gm-Gg: AR+sD10CfVMvULZWFhKaVgPdHIMRhE8nC8lOGZi+g8Wp9kyXePQnAQzgk8WcV/WPTEA
	+8HY2qhGWwffV2lw842OdlbX4o1VUSWhh0bs/whidj5mmehTwOY3iFF+ytaocavZvjeUHB34HHx
	0hA7ylihrWg1YXnMxbEWayBwvm62IX/7DR8Gld2WCPmEOOgbrC3poFnButKOnBsNidYK+xNiq8H
	1+tX/SdZ55+ftLlpehREIS5uCYYCyVXR9V3ILNjBTg+FLAGKPrV/iLvvfrmK782dFSHp1wPtTan
	PRu75pWyj2KU6m60qn6sxPu7lYJkheEQsXOIZYDaTC0lBGsRMzHu+Qe9wFJPb9wXJOzCRcYnCAS
	vmEWFN1nHBFZ9hy6VJ1UvUIGPZ6ZfaCPD5pAKYz7WEUH/qpEYZdKHRy+HFzfVoM6wLKzuqqsZyr
	GAFrAcpOvaPlcjIVMxDYCESo39/fgXR50e4F1BfcjavRpKIb/icHjNZ/fu+5aiARkAWzBgtBzPO
	3qSvO7eqeCANHMyoBXHS3HRjkpF5CnTRowqKhUzLAvvB5dJvcogMkaY
X-Received: by 2002:a17:90b:3ec3:b0:38e:7f22:f674 with SMTP id 98e67ed59e1d1-390897b18cbmr1926165a91.11.1786108625368;
        Fri, 07 Aug 2026 06:17:05 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b33225e0sm1300528a91.4.2026.08.07.06.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 06:17:05 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Fri, 07 Aug 2026 21:16:59 +0800
Subject: [PATCH v2 1/2] phy: sunplus: fix memory leak in update_disc_vol()
MIME-Version: 1.0
Message-Id: <20260807-sunplus-v2-1-d5379c664dfc@gmail.com>
References: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
In-Reply-To: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
To: Vincent Shih <vincent.sunplus@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786108621; l=1371;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=xPOjbbNpgv8zBNu5HQrbZZTFhpVmNKz9dXE/JT36uuQ=;
 b=JTW1v+NrEfG3ageF7YydDhzejNQjsmSQNOjuS9Rl9sKfpRSZRI8b0wJEZGfP37nq1LPK5ARM9
 aoTNAAX+FkvC2CM/DiiP5GLGGoaQ75sakF1XkYrhKmXJf6IifiqgIvK
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_061706_618806_D679DE41 
X-CRM114-Status: GOOD (  11.17  )
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

nvmem_cell_read() returns a kmalloc'd buffer that update_disc_vol()
never freed. Free it after extracting the disconnect-voltage value.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 637a5fbae6d9..842087bdfba5 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -81,7 +81,7 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	char *disc_name = "disc_vol";
 	ssize_t otp_l = 0;
 	char *otp_v;
-	u32 val, set;
+	u32 val, set = OTP_DISC_LEVEL_DEFAULT;
 
 	cell = nvmem_cell_get(usbphy->dev, disc_name);
 	if (IS_ERR_OR_NULL(cell)) {
@@ -96,11 +96,11 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+		if (set == 0)
+			set = OTP_DISC_LEVEL_DEFAULT;
+		kfree(otp_v);
 	}
 
-	if (IS_ERR(otp_v) || set == 0)
-		set = OTP_DISC_LEVEL_DEFAULT;
-
 	val = readl(usbphy->phy_regs + CONFIG7);
 	val = (val & ~J_DISC) | set;
 	writel(val, usbphy->phy_regs + CONFIG7);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
