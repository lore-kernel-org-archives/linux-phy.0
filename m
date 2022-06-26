Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36860C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jun 2022 17:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kA0mEyYbPEpsPOgT5BgVo+T7g5+UVhuEs5Pq8V2YQ14=; b=0f7sV/bapVOCjT
	sY8TfxJ3poX4gsXV21l5h0RUXdzJuWlAUldJRbsRrph1gSHwAgt6K1j/7gPq/b3ZnwAwZqc9qMiPu
	lZgW9we84mHKFqp0Ybj8ZIpokhu1tlLaYYbjV1ZBRMiNoPWokVlxE0oxRFDPoqyOmaMzz48iA8X2z
	dMkb+qPDQHQXkw8LMYsBfRsUzcMGPK4ug7n8bZYBrU/n99qoRhmWLOga3zuDZWmjFzK02elt/+CzZ
	npahrKiploZEbCGmB7hu0/nRFD9Yzgf0rafQnX/TcSOer12x5ZSI3XutZd6UWZ0FOul9Dkp9TAFh7
	mBrnXE5GHWQiDkIYcV7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5WDP-00Cthj-Ct; Sun, 26 Jun 2022 17:38:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5WDH-00CtYS-FK
	for linux-phy@bombadil.infradead.org; Sun, 26 Jun 2022 17:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=sVuYX13nI5OGMjjEITD7pC0Wd81Pv/YPWpmj93LvrA8=; b=iYh9qhzw25mtQ36ZzN7Jb+MhBj
	g+oOIs2HoSBXNzbj4jwQ5B8HMbvYQ/fd9xfq5CO0DB97luyFzCOVli2ZihS9MFsP9xAa6eUT1cqhq
	amKYAtmzoQq31p+6WXR6zPudXppyKe7XeSRo54EUU6JIo7fQNiKaJt6A3MCoajM4DABTq2meZEMm+
	9lLLRIS7DDrCXFDGHrI6BML0ZI9+qgEX2ilpyj9813OzPosWgbrPuElzqn3ohdtl/Lv/s7aPv9baT
	VqvFI/kycDp333RXV+ing/9/d0/0F9fjTjORh5Zakp4d9JWOhs0Yh4XkWbv2FIR9g0L+aAxeFe50s
	H4jWHRZA==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5VCf-00DAJV-32
	for linux-phy@lists.infradead.org; Sun, 26 Jun 2022 16:33:44 +0000
Received: by mail-ed1-x532.google.com with SMTP id r18so2084607edb.9
        for <linux-phy@lists.infradead.org>; Sun, 26 Jun 2022 09:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sVuYX13nI5OGMjjEITD7pC0Wd81Pv/YPWpmj93LvrA8=;
        b=WQPH7TPAF5nk0M0CIiemSalGkHAQpRXBYySfGbh8M92ShbwCKawZTWlZumKpVTA8ah
         2sHzR+Dvct2Tszp0DLViGXmm+VbQTTUjub/XvrjDSMy/CRwHA2TH5HMeSBa8yegZvb3p
         IlKqqHlfWBVNPsVOaT7hSh6fboWejbSz1LE48v+ZmoD5ow2ru26OmluujK+kzfldpTEP
         7YJdXI67F5Rp7wPmpUOPVTaZ7YTb6PjH2TUUHRRyx4vvsDGYsvJ6pnxwOiiQbc/3pSq/
         wY960MNg5DmHt8ehTFfyW7JHNwk92jhQlhdrLJlEFz1WK9Z/1zqTD2k3GDJ/xbVIQbJ9
         Uomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sVuYX13nI5OGMjjEITD7pC0Wd81Pv/YPWpmj93LvrA8=;
        b=37w7sY0l0IiDojcdF/YkyGrbGH9OSgZNLf/9wi9ZMsrNzLa7XTC2TW76EcSjldWIok
         WKEcRNTtxmFva/l0luicEk0xtuL9Ok/Hcey5xAN54R19Bdq0bp/d/lsxvlreVVgr3gHM
         CPYr7ah9Y5Zc6gey29s075Ufl0srWef5xnycogS/cwb6asVPVRHFm0ep4vmGMOuHZAbO
         aIgFZTKFUGTStzc7rWSfhZL4sJuNMFWo2POohhXxWNjladUhCzGnTj5bvps07DmdBZv5
         /4YOWxTDHn/96xVX3nIWjF1shrSG9+XENc1UB7MZkXoUSvi/uNOiAFyaAF31rgux/VfI
         j0jA==
X-Gm-Message-State: AJIora+r+LDr591n0wJbF1UDu3pXaBem6hf/gE2BlZG54d/81DIJfhyt
	SSY0mhFQGB/iZJOqjw/TkrCF+A==
X-Google-Smtp-Source: AGRyM1uJs7rgZJoZInvDvRsjNQuVqjd/QN9uwVR+kEH4w9BGFiyiQCHnGTed8Gkp5FmJ9A/WneZopg==
X-Received: by 2002:a05:6402:3708:b0:433:2d3b:ed5 with SMTP id ek8-20020a056402370800b004332d3b0ed5mr11863215edb.246.1656261206306;
        Sun, 26 Jun 2022 09:33:26 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g5-20020a17090613c500b00722fb3c99bcsm3930403ejc.203.2022.06.26.09.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jun 2022 09:33:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] drm/exynos: MAINTAINERS: move Joonyoung Shim to credits
Date: Sun, 26 Jun 2022 18:33:19 +0200
Message-Id: <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_173342_596794_55B9CD1B 
X-CRM114-Status: UNSURE (   9.45  )
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

Emails to Joonyoung Shim bounce ("550 5.1.1 Recipient address rejected:
User unknown"), so move him to credits file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 CREDITS     | 4 ++++
 MAINTAINERS | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/CREDITS b/CREDITS
index 7e85a53b6a88..91a564c17012 100644
--- a/CREDITS
+++ b/CREDITS
@@ -3491,6 +3491,10 @@ D: wd33c93 SCSI driver (linux-m68k)
 S: San Jose, California
 S: USA
 
+N: Joonyoung Shim
+E: y0922.shim@samsung.com
+D: Samsung Exynos DRM drivers
+
 N: Robert Siemer
 E: Robert.Siemer@gmx.de
 P: 2048/C99A4289 2F DC 17 2E 56 62 01 C8  3D F2 AC 09 F2 E5 DD EE
diff --git a/MAINTAINERS b/MAINTAINERS
index 19875f60ebb1..d208bf3b6f11 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6695,7 +6695,6 @@ F:	drivers/gpu/drm/bridge/
 
 DRM DRIVERS FOR EXYNOS
 M:	Inki Dae <inki.dae@samsung.com>
-M:	Joonyoung Shim <jy0922.shim@samsung.com>
 M:	Seung-Woo Kim <sw0312.kim@samsung.com>
 M:	Kyungmin Park <kyungmin.park@samsung.com>
 L:	dri-devel@lists.freedesktop.org
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
