Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F98C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYGuTjjOLlf3V6JbJ2vKx9PAu/KmcTaEh1zsZuqDlMg=; b=cTPqZSCjEWWuum
	zlOz4ufmmETFNc7/+OQcJK6z/s1H57cCGTMyB1GKiSHNLOLt0iQ4hhTubfRkcBY8T2iF1fQpJHaXi
	r8u3mJBTAGzyLiioP3BDdVV7mvilXr/VHLiZ53eDNCVZr/INSTZX1P7U8w46gAnbC07FU1TColfDK
	VE5g/eLjBdG84DYz9w9g7uXAPOcKqVV92eFKh6bQjHQWk1OLwbgg64WjvQb5Cx4zQMll/Smz97GNF
	OuaITgPnv3sOQzAwFU7VqBZFNH+pCJzQfNY0a26uPTo/mnQHtycK2MalSzUUNj4gEO8HDoRU8PXSx
	kRSI3jFC9t4s0wXNKyCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajEQ-0000000E05B-0Oaw;
	Sun, 04 Aug 2024 21:57:38 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCL-0000000DzM7-1MtF;
	Sun, 04 Aug 2024 21:55:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5b391c8abd7so9589654a12.2;
        Sun, 04 Aug 2024 14:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808528; x=1723413328; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BxB3Qv/yoyAeLg7hVfHKYNZIp49LSkeK6anrEzvSYjQ=;
        b=UH9/7i+YzyD4yMi7jtLfVk1FMvciQUSOWRCedKZwhqE8Y89447vPdvPMRTPQ66APo/
         71EweDUAW0sBqtjGdrhBpE0NJPoOtZrWWR6HXbq2VWu+JDLlzJVlukj7rWbbI3VHtBsL
         dfS1iFoFe2e0kUdyRUrmysen4wYtcBGaGH1zET3w4hvteih9uN9HHm4W30Ig/cpA6pwr
         iOBrY3D4rO2MDt9xfRaaVygv5isze5Mr4L94LajWatC7ve5vqW0hEPvy8CL2aiMLuIrM
         SkUcfRqkIG89fZagzeCGedunZFIG6dPoID+ucBWq/azb5ImMEU60gbeXS9Y9QMZ1DavW
         gDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808528; x=1723413328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BxB3Qv/yoyAeLg7hVfHKYNZIp49LSkeK6anrEzvSYjQ=;
        b=YUVDq/NC/mUtUPosCk7Sn6samOk0yNrK2Y0mo+KIQm3D2qDyyahnVLXvzPXb7JodMh
         gqKnc0YperUEtFpLqNQBKs7XjXD+wnZHkk3DDjJPm0sAMltJTCxAQlOR9vPR6cMtoFp6
         v3x/M0GOYTkXNSgiT+Ti8rJEdF5mDsULsq8ywBpJ2mGVD/lYgmgXdjKnQWmMBX244a8P
         G9hOTau8F2dY6VnSrUlPdUuPM7lsS856aA9HSZpbIVfmAyjmiBUn1VN2m+f7cWOKZfKy
         7vjp6qR7cdNfrYjTSnCH67GGDpg34nQ3IqMDHa72YTnphXeD674WOv15fYO7R384C5iN
         HMgA==
X-Forwarded-Encrypted: i=1; AJvYcCVK5YW2NZ5GGAyckqEOvsruSztOwuf91vRSaJCJy2zLO7dwOyAG8yxA4vqbOkJi+oDDNyFDJOi3HZ1esgh702jCDBOIkOp/d6uLysElV27i0PmEJsE=
X-Gm-Message-State: AOJu0Yyk2fHuAR4ooOQf03boHFfbAtG/lvEGQhpJCdIqfJHhbZB6kFBq
	AnlEYDryEssybZT9lb2zI5gxZFVZxKM5/+hxNhdKbLMdNCgvcWRi
X-Google-Smtp-Source: AGHT+IHyAbzAXerxEkx8MrhGM6CW/olnYbonBveOzbLRvGzA8ruC1oS65RHulC1eLDFEDhBwULvQ1w==
X-Received: by 2002:a17:907:3204:b0:a72:69e8:f039 with SMTP id a640c23a62f3a-a7dc4da6ef2mr775771366b.12.1722808527755;
        Sun, 04 Aug 2024 14:55:27 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:27 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 05/13] dt-bindings: usb: samsung,exynos-dwc3: Add Exynos7885 support
Date: Sun,  4 Aug 2024 23:53:50 +0200
Message-ID: <20240804215458.404085-6-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145529_520567_8BC81A34 
X-CRM114-Status: GOOD (  12.01  )
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

Exynos7885 SoC has a DWC3 compatible USB controller, so it can reuse the
existing Exynos glue layer. Clocks are the same as on Exynos850.
Document Exynos7885 compatible.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 .../devicetree/bindings/usb/samsung,exynos-dwc3.yaml         | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 2b3430cebe99..3ec849ef4bdb 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -16,6 +16,7 @@ properties:
       - samsung,exynos5250-dwusb3
       - samsung,exynos5433-dwusb3
       - samsung,exynos7-dwusb3
+      - samsung,exynos7885-dwusb3
       - samsung,exynos850-dwusb3
 
   '#address-cells':
@@ -124,7 +125,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: samsung,exynos850-dwusb3
+            enum:
+              - samsung,exynos7885-dwusb3
+              - samsung,exynos850-dwusb3
     then:
       properties:
         clocks:
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
