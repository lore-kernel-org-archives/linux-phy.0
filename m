Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E2AC5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdzVnkFrdSPHSwb4XgPBzwh+SazohCamleQC/HYxUlQ=; b=HP6YImX6YNKTZ2
	j/ZFr6HeF96o2sKaW/3wLHtUV9Xzmrvh15YZTP/FVxokpX4jj2qo1pIyZWBAHs94zJ741AL58Jtmx
	ZXBlPAkAceFvrtB8LxOyMhd9G0uYcAVwWiZJHWU7gIpqRGpIK6nZ7IZ5tN6ZlwHpCOUkidRKaaIFw
	UP66afHCzvCGtoKfnwHzu5JYJwIwd6XRItaimUNprrTCCS13onEKKNZjpmH2VTItrBn78tmBYkbI+
	R6j261afX/RvRX+oydxfStThr1d9acLdh0qy+j9Re4ObBc79ykfYA957KtZZGofBTrni2URZaQnn5
	6GBXw4yqJ6s/leXq73vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Ko-0000000BeXM-3ZkH;
	Thu, 20 Aug 2026 14:01:34 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kf-0000000BeOE-3fUa
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:29 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-499a4d1d7f1so19194495e9.3
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 07:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234484; x=1787839284; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bLaEkJkOM/bblPdjJj80Q8FaxdewKpE3ij2aO8k8oV8=;
        b=JIEqrDH3D37tC0BlBfl44zucyXTQv34mQfu1TjbLUprDYbLfLj7QDOwAVgX+VYnOi+
         lBHgJKMja8rbXxvWsSg2XgmyZ5s0mFCYkqaSFNmahGFv7z9V91c9XMQaAcpTefelaMNj
         whmF2oeu2bfdXId0vrw2Cvy1cxj+9Wcoe1KZYEOdi1gjxDs4kH5/4kMIb58wjhNnuKqk
         3nD62u2gFy74sJVnfUwfk0hadYs640Z8aDUyJXz7XARz9FVfj9ibuMR+9mKIDRlxZIRC
         MS2h76GsSQb0MWqSvF53JIC43g2ZuOB4pp+kI5kivQ5ZFNFsLg0q2l2qivl3tmY941cV
         kbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234484; x=1787839284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bLaEkJkOM/bblPdjJj80Q8FaxdewKpE3ij2aO8k8oV8=;
        b=niP4/aXytqReBrbNiyTpEzdTRI+MwBo5FD9N3KIjoe8Bii8REXFyO4q4voYLGFYvFM
         QFFyQS4UoDh89fhbz8M9u7jyeTD56YhhgWlcZ3j2NnZG89OvavZCATzCG7h15LmqQbyi
         cnGahDhS5js96lQ4v5FBC7BWl1nMwzOBd94UYN7u3ppmaHmIe0IwsrQbpUZaGEH5ihPp
         GIwQr4phMlUhS+MfeQwRlpOmdK1Wy1hlRRJpN0OV/hB0uayjcyaQNnMHA35SN8gmcxDE
         VbPBXLKsR1KSRZPY9m04CyzjHVm7Ai2GmCH4Ta+xJpLe71tsiz42rZdMHWJCg61mtLAG
         eu+g==
X-Forwarded-Encrypted: i=1; AHgh+RrCjlkN97dD1iineb+WfUX6KJFzUTGnvB/9we4u01xUw8cv+DFCNObGI/RRUK5eZRxROKgt1RZf/Co=@lists.infradead.org
X-Gm-Message-State: AOJu0YzABpu9svfV/K0A++QcQyZ7oZvk3NTHW1fVBuCB4FEqiGLvFovn
	BpMRwTis5RMFFZdVxRMKHbBExdmAAzk4KhAqgU6+Byt+0nGCv3BfhkPX
X-Gm-Gg: AR+sD10WKgGuwaKi+OINfoGjSqPzV+fIjaQTf9gaFKED/rnMcA2Is1B4LRfe/1qUoHw
	oBrFE3NL4dMn8wfaFHfa40hQXxytmLaCLMwsER+m2CJIj6dTaSuvP5C+6JhGVvyavqjgCaTvEaf
	xo04BcA4zr2OQ9AK2x7juwv+LWPoOvZwKYOf/t+/AFBDWqCkrdxvUOANwGRkwcoPElj9wcXINcr
	vgoVS7zSJUk1r9kNjui8T2msLod+EKjN7yG8Yz6LIn+bGJQUdU/RgoOorjEDwtip8FAQ1EKR62j
	MM6QdzMWkMdujpiNtkOi+dDTvJmNZzGMKox7e07yM+u/pQjmxgpryi/UeOhqv2iWzL322rns4wE
	1DGpoufRPRwELvHcujiCdeNfk7NBtwCYV8k/DZGQ1jTuyU+S4TuT7FRL9A40KgIH8eNFnFklthB
	7+IEaiQmzNkycDc5XZK8Kv36BgcfwOao0mxLGcfpp1hWvbJkrLDG1TUBR92TxfcsRl6XOPFj3Ep
	kn06o/VC1LP2UtDWj66uHlazdwPSFtC4NHAhFW3ro6ck4a2
X-Received: by 2002:a05:600c:1c22:b0:499:9240:9a1c with SMTP id 5b1f17b1804b1-499aa1f5589mr213200385e9.15.1787234483988;
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:01:09 +0200
Subject: [PATCH 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576
 variant
MIME-Version: 1.0
Message-Id: <20260820-rk3576-dphy-v1-2-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
In-Reply-To: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=1206;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=PQU26xP0GCgU75+6oYY/FD7rSTDen5UQ3ddMVoJKHtk=;
 b=vVatJWe+TLIe1CZEaI6WT0B5tUQdWfTEoBKH00j37Vospx7fXC+76eafe1vUDln3ztYdagCAm
 IVW7y6akOZjA+GI048Dv150feOuZLDXjs8YFPTR6f8zv8l6/jhXfJoD
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070125_958688_2409638C 
X-CRM114-Status: UNSURE (   9.59  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
binding. Unlike the RK3588 variant, each PHY instance only has an APB
reset line, so add the new compatible to the single-reset group as
well.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index 03950b3cad08..92d0c961f4c4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3326-csi-dphy
       - rockchip,rk3368-csi-dphy
       - rockchip,rk3568-csi-dphy
+      - rockchip,rk3576-csi-dphy
       - rockchip,rk3588-csi-dphy
 
   reg:
@@ -89,6 +90,7 @@ allOf:
               - rockchip,rk3326-csi-dphy
               - rockchip,rk3368-csi-dphy
               - rockchip,rk3568-csi-dphy
+              - rockchip,rk3576-csi-dphy
     then:
       properties:
         resets:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
