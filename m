Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C897FC55ABF
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ickWd4wEDgqokk1ms998w6DntjI7ctSJ+XBdN+e4Cw=; b=TJfzRW88gf3F/V
	4iCV/ay+mGUIkcUfT1M0B1sjOh8K2IWlDJ6TwyQH83qPVgWuVbBcHnCike936r3eLKCgRv8h+vAWX
	p2Yr/gx8JpVkJ4PlrS9IlwCjzdCX3Ie6voGr//Uf+fXmllODpY7yuGEGCP6pwUUeq350NzTo6pwy1
	/ejH452Po2/SjKAYTfk/T2KREdo1ltSCG8wKEjUEaQbSPfwpruEKpzIskUqQuU+LQzP+pa1YIs8wd
	hPKG8GNPkaOr/uWcdvmk/8geVJ6tHVkO6Ngjg7DgBw+zg3yMoN78Aa7efUj+m6Qjmom2wwQaFdFu+
	Y7jbhtbl0LmhfiId41YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAu-00000001fOE-29Mi;
	Tue, 04 Aug 2026 11:19:12 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDAq-00000001fMT-17kC
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:19:10 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47fe377a217so1184660f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 04:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1785842346; x=1786447146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r/Pn7fYrfwB6rmj/rjlsk7/vDnAshiosKPLQwaQozE0=;
        b=qZDT3H9CFIBZvdpvRGwpfmr3XbpjwHZHtBIUO1HAEcs11ZZ70CoWW4AmfWj2trGPvG
         7lHzTuNrfgbC2J6uExw1oQEefv10+5Bv/jCvT02T/OFYaexISpZbR5HCHY8Q4s+ud9BY
         /ClsQqNaQbcL5B+1wpeoSXUBtrZgkYDQncPIzcOLRDpyb4GOScZl2o13wm+5wbdO0HGm
         FOkMHB35ht91Ie2R14F3EuPyjOtkX2BkpYQipGY7lb6nULbrrDcwyvxV9D8NshF/jSQO
         iX92dWkgoTyCXD/nalooZp8009ouaBMpi6/Rs6hWlFhuOCn12t1C96K9QpqasUIZM3HO
         ShBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785842346; x=1786447146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=r/Pn7fYrfwB6rmj/rjlsk7/vDnAshiosKPLQwaQozE0=;
        b=cD4LfFgkZLMfnINJrR6fV9VRfQVhvwa8DsTVM7mmWcprrTfLrK+1rcR1WaNtrzCAbe
         geLTRZzvF7A+mSUUAnchLM5qap0+ZRXrRcBIv2VB4FSmBnB2S3xzvSzID+rA2uVCieHj
         SbjX6NrDgjfcxjXh/QExMXmfTNs34C1TvUtBxcFVoiKlcu6FZdBuUIjviKxt2FtyA7XP
         720k3tebfUfsuICQZOX3FLIHiWFF+n49X7xJ/hdjmLzeJoeBZG3RilyF6ds2IuvZBL08
         Xr4eUsP1oUJ9tzskdgG9A6H6PpCAz6SQTfgmJ0sdZvYEzPXrDHcXNFlbvNKlOy8Ws31Q
         JFlg==
X-Gm-Message-State: AOJu0YzRF/FEgmQzUGmDvcnae+ffT03EqFXDE3asgpGYkNCmh1pc5Ou6
	x8roiFIHxdRXrpfurRxUIp/zNogOYur7nSf7J3+oZj3q7FCKDTEXrCgQAz1axsnkex97sA/DaFW
	Tmre7qY3BCg==
X-Gm-Gg: AR+sD10B2b4l715rU2yl2kCn6epzZc/NUsUiMeJ940tJsf/klp9AwUJBqjfMhhI5zZF
	yBoykyTivN77s4yV+KcJ2ViDfp4zwOnHvFi7ZshxMjjHH2RHn5VnGPvCY6Kkq+8EtG0OC0o8zmh
	vzw54qEGMmkSv9cY6Izc8zBLrgaXrF5H0kQ9EUcufQg8TZDYcmGCm9bAl8wOXrM9DRgRspkWRq5
	6VjpODBsTRvomtEP5alugtdlxZAm1ySdswzEiMI65pszrRWZuvKFhvZnwD5Fru2KeKBd30c2Ivl
	Ay9QzbZRP1ZNtuNmtQVh95SJ3JkOqN7cyditOXIanQga7cr7ApVvJQK1zg9iENRagVkhrSn1I/X
	jDqCknKCH2tPv8v0trCkcuJTagQxdh+z/DA1R4e+tXDdE7vaE3IGviE/MnEZbK61penDX5Uopka
	LKOqIIgmNv4oOU1wMyKHccROG1Rt/sfDdtXpykP5PpHhRDL6ATfwOmWPpPlW3KgxRTO/+HxS9+N
	JKBu1cPJRhx6Vn6+5O5oIB6MwPU
X-Received: by 2002:a05:600c:4685:b0:493:e365:7630 with SMTP id 5b1f17b1804b1-4980eb66053mr241139075e9.14.1785842346425;
        Tue, 04 Aug 2026 04:19:06 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd458b05fsm44414682f8f.28.2026.08.04.04.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 04:19:06 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH 2/2] dt-bindings: phy: ti,phy-usb3: document aspcie reference clock setting
Date: Tue,  4 Aug 2026 13:18:49 +0200
Message-ID: <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_041908_329463_E0CFCD2A 
X-CRM114-Status: UNSURE (   8.38  )
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

Add syscon-acspcie-tx-rx property to the PHY bindings.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
index 84f538aa587c..4fb017df2898 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -52,6 +52,15 @@ properties:
       enum: [wkupclk, sysclk, refclk, dpll_ref,
              dpll_ref_m2, phy-div, div-clk]
 
+  syscon-acspcie-tx-rx:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_6
+        - description: Setting for PCIE_TX_RX_CONTROL
+
   syscon-phy-power:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
