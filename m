Return-Path: <SRS0=tIkt=K3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB790C4708F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA44E61263
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA44E61263
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOnAVYaMN77pycYsjD8TlcHs5kUj9mkTKDiACLsFzkY=; b=izSHWJslVQU8+G
	fLglWsDv6Z69UKldiBCA1vUMU6os7yzttOX00HP8M5Msr9APTeydRpG+Uc8ABi49P8Z3gBv1Le0Mn
	nnYuyPQbiuv7IlSGGDgBU2wdjq3vCJY3rAQNKYQDNdxwkA61XChJzLEkaESJIa6BX/C9HMlR6fANJ
	5u1qLNS6cmz+VyI8HC5n+xVO18no+oE7DyFJAa5tKGPEO0idzaQcBNa4sTUmiGVgiQ6UEs6YEgqsI
	BgkUVsFtyv5LVakXJ9nky9wcb2/2rSrvBiE7ie2/HVlwMSm18B5M5j3E9E9vhwcbDNVYZZJ3VmuKl
	eoXVkBTWjXtotv3iZUIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7ZM-00HXgt-8M; Tue, 01 Jun 2021 16:48:44 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yr-00HXSH-7k; Tue, 01 Jun 2021 16:48:14 +0000
Received: by mail-ej1-x631.google.com with SMTP id qq22so14493731ejb.9;
 Tue, 01 Jun 2021 09:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g6VRk7pLTv14ZqW4HS/uJREzcuFALmE6Z5eWW3DWvAQ=;
 b=MpgOrNRFTId0SN+tfPxA2A4oeYOe4Gnn12I4uLktM8/O/NTHrIOO5eVna7lhRSQM1N
 sw0W/mOxAgk0NfXR3tnkJE1VtYTbT/VWFGbKFsw27C1U+IqwjHepwgxyaYGT/vdUZ0k2
 vB1EPiW/Z+nso1GKUcDFBPnaZLzQA6EIruY8dtOvoEfr1vfQ5/o39YIRqca9ct5MJO3k
 V2kl4LHbJhxhwAEiytyZjateCV2BAKynR7q6UAMjosv2Bz/nHuXh56p6gPn7bHVpSGuZ
 o5YAyZTbvLHI5zjWtGjUWK5tthZDhTHib+cOO7gZG89A2vdazzYN/FHEXYpYPrB0Ul4G
 CsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g6VRk7pLTv14ZqW4HS/uJREzcuFALmE6Z5eWW3DWvAQ=;
 b=boFcyLqeknmpBhl6SK19hcFxDH6K+LLVffWgOqvjONy163RrvjG123kdzrIrX0wT33
 p7o+xdaRE5qcTFqzqWcySd5LMs21/yLqn+Js0VWRnYttMxDYVwpdAIg35XxJfZcFy2EL
 BFSs4APo64UKLSEcaB1hzQDMehx5LhfnWUVHOD0eKfTNTtQ6dNWL14dvc4HGEsFhUknr
 uo3bDqENlczkjO8jb4qSOJLS8ERwfNr+JzaBA/nTmH8r4gbHZp/GAIhZLiU8pspesb45
 6sWNkcxt+y4fUJoqt0M4wBgIiq48FaHxbGfDS6mx9XVHlYKI95qz2wq0cR6icSRSAjpz
 f/oQ==
X-Gm-Message-State: AOAM532Rlo1zEV7RezuFd4fGvxhSaTpgF8okHNeWI2i1F8AuI3xnbj22
 mPXJCu79gMyhNkEy3vlYTFs=
X-Google-Smtp-Source: ABdhPJwNuuIuSL6mm3XCOpqcPdvbFx0jNg1gsdx1EYhm+NAhvjfe+/xP2OtQtG4scGTDm84L44FLIw==
X-Received: by 2002:a17:907:7749:: with SMTP id
 kx9mr30893200ejc.90.1622566092137; 
 Tue, 01 Jun 2021 09:48:12 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:11 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/5] dt-bindings: soc: rockchip: grf: add compatible for
 RK3308 USB grf
Date: Tue,  1 Jun 2021 18:47:57 +0200
Message-Id: <20210601164800.7670-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094813_312393_C1D70E24 
X-CRM114-Status: GOOD (  11.70  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Tobias Schramm <t.schramm@manjaro.org>

The RK3308 has a USB GRF.
This patch adds a compatible string for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed:
  Add "rockchip,rk3308-usb2phy-grf" to "usb2phy@[0-9a-f]+$"
  patternProperties too.
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 43c288708..8c1c46fef 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -31,6 +31,7 @@ properties:
               - rockchip,rk3308-core-grf
               - rockchip,rk3308-detect-grf
               - rockchip,rk3308-grf
+              - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3368-grf
@@ -174,6 +175,7 @@ allOf:
             enum:
               - rockchip,px30-usb2phy-grf
               - rockchip,rk3228-grf
+              - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3399-grf
               - rockchip,rv1108-grf
-- 
2.11.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
