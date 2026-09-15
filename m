Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E21D7C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71tEbUu/slZplLMpK8ZmaSysiO7P7PwC+eWUACFIOBU=; b=GxWXrRslcbA7nN
	Fot+z6pskEpEwuLteeQ7rJ310GNe/Ls4sxpMWdrjaFtJmTmaNO30x991XUxUYicpt4dHW6+ZVY8LM
	Rg/2cqm6NK167fs2A8syN3TlEUQB0p7eQA5PBZwY5fqZjzdsf462QwOuDEFnhcr4dXAqrnuDuaEDj
	hiC+MjTx0zJtk45piTqY0qNyTbmOIIkDXfyllAVQmhNEU7KGjh9T8rErYQnl8xK/nHrkigFP0Fcif
	qMfw+04zIb6BV88xD6WOmFNXI0PRlIMiDhC3nft6v9aj7uhlwaO7RUeSJJXgHmpHKd95bLWGmfQok
	WUq8UV5Jr6aPj8xrOckQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdT-00000005xTq-2Z9r;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdP-00000005xR4-0KZm
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:33 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d3920so832215e9.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469009; x=1790073809; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0uZyNoOS4+9a6tqQ5tfX7sqcJOVcaT+yLp/MXx9OSW4=;
        b=igJZJtltHUp8gqDeLlMEulm6BSo5so0MRnQrlANvQxAEWJ2BrV0hIP5/oervlodqlK
         m0BdDMcjLEOu4IAKDim+01yeSQZe3NM8lXPtM6+QaMGtKoTZN+k2Bm13audxHuS92z5O
         FknGvhA489W6REbXTlRGICYkgBLNDuqFQEGvhgvYzeHm/bJBkhJkDE6cRosxkXbU85ja
         LT7UxJquie4pH7jXH6sAoqKyg73S9k+rHJuf6D+Q9vnKl9DoL9WO6RVww/Xz6CfzpU8Z
         o+WO/WD8RDnofaW8F3A6LKvrEF24Kba3yO5m2QLE9huS3/7SZizjStSbKkhh80prqQBX
         f1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469009; x=1790073809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0uZyNoOS4+9a6tqQ5tfX7sqcJOVcaT+yLp/MXx9OSW4=;
        b=SMgW/xQ8Wmr+XbxXStf7ddvoEWmNKZSQRtDRz99Bm/xfW3bPBRw8EXT3VWHpAjAqKY
         G0VL//x/cdrRIDLT1Dp5zadSCeUz3b3wVHCpEm1ZHKn3jIMAiL3Of6K9hi/eg8M19Le5
         wQ689uZwxFDF37UoLA8/Toj0/w4wD0npAAxdzwE2ymLJfSRuzaTPEd+KKl1c9U6W1U6A
         7iUkpv7ykaJGb5WbH1Obstwl+qAv7U5jbeft661Ys+7MCFmfTwT71aCSA510vOsQjhqL
         wouv9xsSgyxe+sZPPEU2qDDW3yueLsCPKyQY7ht9haJfGwya95pwA+yVQPMhPYo664Qj
         Je5g==
X-Forwarded-Encrypted: i=1; AKwUvBznktIQS9xKegg03LJsCsUjH8DZCOTxDNhTK+4R3YPrJTEyRoPPdx7Qn311gIrd/YcxPG5/kUhVNQc=@lists.infradead.org
X-Gm-Message-State: AFuF++kihyssp8SmVMyBPWXg7eFsIdxHPO5j+ypJAKmX5U/ln/kW/+ko
	xB3wA033Bm+CMkoBeazfUtSlfCrLAtJmweoHM2svMygImy+rm0wL2KdC
X-Gm-Gg: AYBFou1JCD23Zz5u95XeW8Q9ZKKCjALj8FRiqhF3sekTCeJDvfJt9eta76uVrJ+QHzg
	ey8C7X3zRSgtOwlFpubKYCtIlcDR8elRnGgtMtA4MFsUV+GLdm0taqqKAiLC9UfTu6GiDGMAch+
	OCQwbHJWyrCsCxCFbtGp1xnrJrMUJCYorGABBwC4fkbb9ymoPKmA8DkWwmC1VzFpvnNb7VBq7He
	K0IpDyxIzutzbcqp4RDloqa3s5AAYRa0K4PVfzgOobYUmOmkipjI5dSLEKlVb2u9NgXQscNFxyI
	+D9iXUfDe93/AbFgdmEvwVJdirDBvhbf/r7nWesrTaaelPHw27b743b7yiBg9OoFGGu5jzbQJtm
	8mPr7+CfezUrdyG50DsHUXsJS/aFiKJkxI382SC39f8EAefClz95wS4tNRDMDYmOkj0tWJad9gd
	sa6n2EMHCp8aIGN6sQgBZqTJhjVWorcowirAIIV8UYp0+VMQADOy/48WYXKZj7bozYl19FjrAKo
	BHA0q96mHf8za8yLdYI5Co2NuYwoOKL05YXAWXSNvhk5aua9NdeDe/WAdt9TnGa0w04
X-Received: by 2002:a05:600c:4743:b0:49e:7cfc:a9b7 with SMTP id 5b1f17b1804b1-49e82257f4bmr8382775e9.18.1789469009197;
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:28 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:46 +0200
Subject: [PATCH v2 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=963;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=OT1ITsHPctK+L8lx0K+iSmC/XdR3PBM/mhi/vcMFiXs=;
 b=xHW4ID866vtDzWpfHwdm1uVBYofPXy1A+IXn6A13CkcRw1xUF5qIJUH44laHofEaIxFhmo/Ls
 upqPyAcWXRQCvLqafGXxKHmCv/ihMy2SrzCuxJoYmPH/nvS2amffFBs
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_034331_137631_422F75FC 
X-CRM114-Status: UNSURE (   8.36  )
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

Document the syscon compatible for the General Register Files of the
RK3576 MIPI CSI-2 DPHYs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7bcb4e2f47ec..e94c83d7c138 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -32,6 +32,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-csidphy-grf
               - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-gpu-grf
               - rockchip,rk3576-hdptxphy-grf

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
