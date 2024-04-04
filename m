Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3ACCD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqJSJZdlgwRezxI0Pmv69qIzbCbP3rzLZl+2Y53dFT0=; b=YevMwr+QXGdTqI
	g5zV4vs+2G4yYKCEXLfMVdTebZYpvYcOyjzgJU8VrpM8GePX/W6wYdEmRkCoRN5VboHgY/ql6EVix
	/CrDUvnLu+3E/sRxrHB7h3pIMNau/UiUo8U+ycHjS48vMw6mTP3TyYHSFEB6wXW3rcJZ7gfw3HgRK
	ctPjiVtnNettPpGwEwW8VjfifTyxRM09m7WuC0fW5z/w9cds79p/7ttmh9S+a4Wkeu12zZW/1jKbO
	627y7GfV7Vx4Dt8pCPu99Mhcmdc9feZivMGzyNyeBD4sZqUX00aJgHdvc2zJCXRL20vsmoehkhf1V
	S+EUA4qElXYcw6Ks5bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMB4-00000002ape-30f7;
	Thu, 04 Apr 2024 12:26:46 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAy-00000002aku-11NC
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-33edbc5932bso670936f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233597; x=1712838397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXdNsPRMeRxKNgTMvoC/YAjHT8cRrzE1LWBWedHVt+0=;
        b=bacqecIMauIOwf5A6tVdIiuA0XWkYAr/cQCw4u7sz8QX31zN8uJdk49ycnLEKthFkp
         3hV2hbEc/2/lTqsMInVJj4Wuu8zLo+TU3H+fbO3qu6s+c5ItzUnkQdLKYAR79/w1AE4H
         oK4sc3YbnNG/5pniyCfwnIhjy6wnreSNFsEHe588UHoJgXJkdhwm94GaAkHhdajCfDW0
         rY5Q0A4Sb12zuUoMvMW6VJew8BezE7m1506NmxQgXr/mFEeg81zU+WZPj86RQgUd6AY7
         jomXccMAT2olhYgxqg1A3Wluj2Co+5m/SJw5laZEHbp2tzMskWqv3mWbLErI6l84azCj
         obQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233597; x=1712838397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nXdNsPRMeRxKNgTMvoC/YAjHT8cRrzE1LWBWedHVt+0=;
        b=bkd3vbeQKgbo0OE5Coj6ZV2FBpGPU0+JN/FQSL9ntxlhheaHIHT12ablkJoimG0qAs
         Z+O0RXXtrQMNRm1Gwt9m9axbIDpWwYgLP+ka/HdTtvshPxNNPRiJaMz+1AHHbFJioKek
         HMMjA2W9ieIpfGUWxsnxOh6MU1O1IlY6W9dzcnKA9JXWZSI1+g2Fx1B/u/3ZgFIrmaxK
         De8HxHmnPSJWZkSrfO1tbH4LzuFtYUWU+gS0ZDMiNMtTXIKn5H+QutTH1bo8/0SSMdWp
         +KNN55yukdms6PeM/LtGFyFN0GUdSNGXl7bJnYWRwrz3pAdyhD+Z0uSCEbEvU05kE9gS
         bNgA==
X-Forwarded-Encrypted: i=1; AJvYcCV8xvgS7/GGZ60mS3nV2RJkxc68t2pfysWSdKv7rN4tqDg8w4EXbbHf3Q+4hPL/BRRyEhwnGv/TRhV2/VxVnf2QyVMjmtZifGxYJQBhvw==
X-Gm-Message-State: AOJu0YxW+rH5aiCKY1HOR7u0EnO0qxoiDleDc7V07V7lcfVd7Ce4WRmz
	9WgPII5gActzp77SSdvrjAdxX8HMotL9qb9cn2T+36JKVtx/5gy+A97L3z0dTWM=
X-Google-Smtp-Source: AGHT+IG4W3L5dd8Mb63CZZWsH81KaevKLECBBmrLli4fW9RjtXnQf5HkEcp1WxySDAX4sVMmwjF8dQ==
X-Received: by 2002:adf:db46:0:b0:343:7884:fb52 with SMTP id f6-20020adfdb46000000b003437884fb52mr1946795wrj.50.1712233597343;
        Thu, 04 Apr 2024 05:26:37 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:36 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 04/17] dt-bindings: phy: samsung,ufs-phy: Add dedicated gs101-ufs-phy compatible
Date: Thu,  4 Apr 2024 13:25:46 +0100
Message-ID: <20240404122559.898930-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052640_852316_2DDA68A7 
X-CRM114-Status: UNSURE (   7.50  )
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

Update dt schema to include the gs101 ufs phy compatible.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 782f975b43ae..f402e31bf58d 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -15,6 +15,7 @@ properties:
 
   compatible:
     enum:
+      - google,gs101-ufs-phy
       - samsung,exynos7-ufs-phy
       - samsung,exynosautov9-ufs-phy
       - tesla,fsd-ufs-phy
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
