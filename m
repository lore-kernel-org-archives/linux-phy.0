Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0769AC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aw3VE5SWjR5/RUY0sU2P+dNLhhiwGkm/el073meoL3g=; b=jKzdS0D110/O4c
	NbidPYg755Q706Uw8jJClKPfapw4wmzW8/EqlCf1q1DzBoTU/MTmyVmQ3zWCtOW9ihualeqo3OsMi
	3MQYJqHYldqqI/z6kFsZhnczhF0LPxmwu/dDBfWwN/01BbHtnig/N2j2a7tNv7+fP6EZZGKswfTYr
	/kf5TXt74gwNidUOSuMLP48aOZfuilddacKpBGJlL0GXuNiOnRfQKo6fE/nE+ONwJMRtTYcbJLBxr
	+2xFg9v8sol+YBTP0cwotcZUYlk7+E7fD9T8MeGMWFX+fdZN/957kJ7P0LoD8/mZV34FO/v9V6lRY
	BQw4b8hZWlomVaxQe9dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gwM-00HUZx-EH; Tue, 05 Jul 2022 11:42:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO4-00H219-Kq
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yExj8cHNbvvV7b3um3jyXB20bN84gzvW/TVXOoLL9Gc=; b=lFxTOt6xCpceXq0fkpHVgSz0+F
	D8smW/hr/2MLjhqv5G+w6QC8T7uCWC0MNnuh5404aKPi5w4igsZaDoZcfpXFUs9q1JpprweSwsvic
	gwJdlTCRc7KicSyHFjogEyErYz/3edjkhJNwPmjagyExAK+Uxp3rdRpIaLnMitEGt1pJ+j4oHk6hD
	Yid1ImdtJHZXGnqZ1zHlTajWfaonm27dhzUFQ394YDLP+j+piVIBcHm9FHlwsBCSpZ5TjgMSNsUHN
	NDrTy+ZbRoQ/FnSb01N2asF9pMISQH+dBlE2aArdjHiSFFpAPUGL05ke/hbKMm+yLcgV1xRdGHCAr
	Pw+lwMWg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBE-00HV77-SI
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 85B4461950;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A89C341DB;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=tuoEnZLbKbLZ+g2dIuP0Vqx9Bsaroi5FmYSfg9SAq5Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I5hOA2wdu3ATaSbt8tsgCkVgPJCHome5X3T3x8JfKjPNJnrvXw4ggO/m8pEeDhVmo
	 iolqHCVYQc/cEzItSL8Z9Y/e13T9s/0r6wZWJiDHV7+VBizGf8ysGehUhVtx9kc4bl
	 ym/jTPZfQ81nWHPZ7Cd4uA/YNLrq0TlTjUUPFR8blJYR7ymJXYUiEz/9d9Lwh2G/gA
	 uK++S7KDVwvevVCixyt24gjOt56kxv8HNDT4h/Il2ws2+SMXLYcm49eLM1bv+JEqxV
	 DhIkqjN7q2ZKGbAtDikr889euW34FOQ+FHmqmPLAgcerbHcDzzyThyf8nCo8UHdnbF
	 KfzN5NdE4GulQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YN-Cd; Tue, 05 Jul 2022 11:49:05 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 32/43] dt-bindings: phy: qcom,qmp-usb: drop unused vddp-ref-clk supply
Date: Tue,  5 Jul 2022 11:42:28 +0200
Message-Id: <20220705094239.17174-33-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104917_614099_80D18290 
X-CRM114-Status: UNSURE (   9.79  )
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

Only UFS PHY nodes in mainline have a vddp-ref-clk supply. Drop it from
the USB PHY binding.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 3404ad7fc6db..76979aff086f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -74,10 +74,6 @@ properties:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
 
-  vddp-ref-clk-supply:
-    description:
-      Phandle to a regulator supply to any specific refclk pll block.
-
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
