Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73602D15D8C
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 13:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FuvuLTteFGq9W9pcqIqPaFXBGv6YX1eavkPxl9cvj1Q=; b=x3fNVUyh1SwDAI
	JpUHtcg+17mwX9cZZJdzV18EzBZ43SlzrCuFltSfZJKRgACy3MqHuOOyxn7Uw6TRop9sycUpCBFIR
	N+psvjBpEQwvc6cO7NzbY2YeKEB40ZOBt/kdlxf/rU/ipKMO8CuLuWzctcbzcKuelamZqbxI4mxCU
	hm+lWmjULC+JuCoWlEhgzeUFLAqwUQ8MPVpxT8D4M+9qdohXWoOUpyc6ylM87FvNyFVaYiNGWTGpo
	QVhwtqNXM4glesR+DSymVpBWNQe3powIpwEJaf2PHUXqRQj4bZquSiqlafJppWYGH4hTiifQ7dWVz
	hskpA7JTe0g0dfi2fF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sXk-00000007Qmp-0Ixm;
	Mon, 21 Oct 2024 13:33:56 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sB7-00000007NdR-41Ga
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 13:10:35 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-43161c0068bso30654085e9.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 06:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729516232; x=1730121032; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYbCfssml+Vu66NamN6anRmgpqYBwgmPLsHuVShZzT0=;
        b=k7+dNiL6QHw8YDaF8OUCOygDjZnlF5Lmub6V5Nps0ArJKxiIOH7Gc+Wgd/qv+Qkqj5
         iH7jbwgIAKoqRQE0C2j1JDFdI7n4S01NUVFA5GT9GFn8Xjc6il0N5MqVp861BGVvmqVp
         cuwfuEXB0JZxJN9K2YvcOvHg6/jUAMzSyKc/HokGv2MK3R2DpJwZK8FtzQIXvcpIh4SS
         cIyBrYw7ExS7T/2l3Jvt/iktKWkNy5/b6uuvAQUbaV0FIy5CwwbQS4Ma9u1vnFtZCXcq
         GJzbCwBIvq5IYF/tPPoNK7ttw+I79bHxLtnumn85hNkDzXUOe/LeX5KBmQHBw5IdnRvU
         cwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729516232; x=1730121032;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYbCfssml+Vu66NamN6anRmgpqYBwgmPLsHuVShZzT0=;
        b=CageCnjYw3tecqO/rZW0MhfDAZwB4hfimk+YOtAAQmf9nN6C9xRzmL4mugB0xvDf4F
         WD89hkJNgeRWniBCBwMGxKABt5axoE1L4vhNfxL4ZzvEoxLS0sNW+8q1nS0LkXOGP4sr
         k1yfSL03wCHPNMN3o7lhlE7GHjLJ6u7JRHTxL+BPThte0FlsZhv5JMtTy9ZC1Jgp7lOE
         6+G4ebR5NEMtsRN3TKwoWR2EoASwLo8O5+6N7HjgeUSZ1RZuDny80QwWRk5eBTYqq8MQ
         TgYiGFBywhbxH3Fx0Ribvi6xqoiNI704lamzCTkrgJQXiXIz9qDwkPfEMiwaHLLIox0J
         2JCw==
X-Forwarded-Encrypted: i=1; AJvYcCU4A03AVDhyH63mjgLl+2/27trmU+liCXRb9+clX3gC9ri3WmKrbHFh1Sy655hOCwgBaur/ZuqwxdY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA1zlQVpqr5Vj1jJBuj0er/TFIE7KPWiECIWbcLmhpneZWFS7m
	Y515XNeQtEJ/E9BEjldH433JfsG2kwmL7Y9YvOIr1IPyTeEpHOWTooD5YpdcnZ8=
X-Google-Smtp-Source: AGHT+IEkYfAg7B2wd/HLUSjMsGgkpRPQc8ZS96HCFk9HhQRU2OLSa9AkuW3QWYcBX+c1+hZNlRSGEg==
X-Received: by 2002:a05:600c:1c95:b0:431:6083:cd2a with SMTP id 5b1f17b1804b1-43161659c02mr97462325e9.15.1729516232387;
        Mon, 21 Oct 2024 06:10:32 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57fbe8sm56677015e9.18.2024.10.21.06.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 06:10:32 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 21 Oct 2024 16:10:21 +0300
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
MIME-Version: 1.0
Message-Id: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v2-1-1b11a40baad1@linaro.org>
X-B4-Tracking: v=1; b=H4sIALxSFmcC/52NTQqDMBBGryJZd0omxmpd9R7FhT+jDtQkJiKKe
 PemHqHL9/Hx3iECeaYgyuQQnlYObE0EdUtEO9ZmIOAuslBSaZRYgBt3mFs7wTw5cC0T9LzBhlR
 IlBIGMnrT4CnQEqDHRmPzTLM8kyIqnaf4vnLvKvLIYbF+v+or/tY/QysCQp/pVD3yWnVd8fqwq
 b29Wz+I6jzPL39O9ZvpAAAA
X-Change-ID: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1929; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=w04B4+pdnZp7RHySWs5qTnwOJQqR6aB+TK5PLU9uqBY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnFlLBOKta7vfpFMzvXPZw/TYT8ZlGIupVgWT4k
 5qVaZMgZiiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxZSwQAKCRAbX0TJAJUV
 VpAFEACiBRTxKvXnP2CGLo98QkHfqAue8u2DvOC3XEDkJCFJPEtUutbr0FL8vhEksljR1ljUIWs
 Ns1d86fiHeaKKs2587qL/qIVXcfbwVm89k340Z6yM65cFxPKC+3nms749BDbd/d6ByuCqlRg98s
 2bsTuiC7O4c64n5AMCfhZE+2YWy+rVgXPJhS4iR1aGBsBwnHVAqjTWwXiJd2F973KR+c7aKb7j/
 lz0YYgLc+kT/jXxkmNl/7fRWLGkOdsdmgCXFTLgdXGCr9MfdmAvmAEkjTm91yxk8M38/edprC31
 s/omCW70PLqMkj1dq67uMmXkSNSJnH8U0FRLAoIlnguSYsA3CML7ru3owudfDSsJ2GgN9kFbnZI
 BkMN47GSiJmn0naUFqqu16b0pAecQ4tHJZHqAdyOgJ9b16rBd23+VWPvSbqrtwxED7e3lOZFjop
 t67hEkj5GUUc+Om5TWtsSLAqExzzQw7Bxe1kUODl5VlZjXtPJweq53bVGYnR44A0wMSnEWwEKsT
 oGdZ8A+ZvDKlgRgTtW7mBqReqUXFD6wurhtYojFPZkKLhpvfFfC7U2aAjkEzgxCLo8bH28fFBeh
 WNPuJolHIuzpyatPbbtzh8wCD8tSbaJREfOq9/Zhy/pFKf000AdTKcklLd1Td9s2dWJENUQZXVW
 5A3beXTduDYxlwA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_061034_051717_AB9211AF 
X-CRM114-Status: UNSURE (   8.22  )
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

The PCIe 6a PHY is actually Gen4 4-lanes capable. So the gen4x4 compatible
describes it. But according to the schema, currently the gen4x4 compatible
doesn't require both PHY and PHY-nocsr resets, while the HW does. So fix
that by adding by adding the gen4x4 compatible alongside gen4x2 for the
resets description.

Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Picked up Krzysztof's R-b tag
- Re-worded commit message according to Johan's
  suggestion
- Link to v1: https://lore.kernel.org/r/20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index dcf4fa55fbba58e162e5c7bebd40170342039172..b5bb665503c86c79940031bcb58a36a833918a4e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -201,6 +201,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:

---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
