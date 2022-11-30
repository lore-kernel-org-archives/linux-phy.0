Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3E2C4708D
	for <linux-phy@archiver.kernel.org>; Wed, 30 Nov 2022 08:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MwL5/h/SIjPOHwKmK3nq2Ek/dPBUK7y89SYZTDpvbAY=; b=e4GyqcqrV4iLlt
	9w5uWnnnp8Vj/bs59HkTcC5GbMfrmGYHTSYVa7cocvd9UMZkqPZ7ITGWjBLzO5ZXRlfGqDLh/30hc
	OBLFyIPWgQZOvVFPfYqcEjixqq6WcvubP9sb9W13TxdfkHru/gw5iapYlWI1sNiUWfiBzN+r7JpIp
	52z+/2KfVFoOUtGyNFg/hcpxG+I1z1uiFa7Odc6BHNz8ubjpb46nfGDvHgDxhKbi/Zc23CiAUw/9E
	yAiwWfanfvB85upZ2oEftg8h5xCsRMgIYNkuTMy7q3yDTnfMq33pZrlT+ywYqje3Re32hfUNDuSai
	bNwu6s8NhmzLQpcAXW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0IFO-00EQwa-Uf; Wed, 30 Nov 2022 08:15:14 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0IFL-00EQrn-Af
	for linux-phy@lists.infradead.org; Wed, 30 Nov 2022 08:15:13 +0000
Received: by mail-ed1-x530.google.com with SMTP id d20so12221649edn.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Nov 2022 00:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7I8QL/Ha6XNxxvmNTzLyv0oQRFX98817UR5iIbDrCVQ=;
        b=kS+qJIq6r6/vc7eM30tkz54Wl55Mxc4lv9TYRmobJOkFt6bNF+mGS+FJ3ADfLhPF7/
         ik4Nx5pCBc7+RUnPPbKUs4GNvEMChCnidsydxLn2vpBBcYp5Hz9DmHzH5i41is21ThLe
         WJVSnZO+bKsEo698Qc9K89iJI4hNLUSUVHNbQn6vz7K0X6Bm7TzJat093gF64Unc2qo1
         tG9qKKGN7bQcQITRknikMkJ68UUME/wf2oz9ah0UkaTwCyGDAzFYgFVFYIRgMUo/U6no
         ZNqOB3apAZ7Jr/0n6sHlIzBCBzJRNWvuLsZbUmnoNM5sn/8DZGvwNCe000o0JbG+Ms9z
         86eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7I8QL/Ha6XNxxvmNTzLyv0oQRFX98817UR5iIbDrCVQ=;
        b=NuXuS5SOk18AP3gIVMGSNXA2JpTKB1qSU3+eKZnx4VwpV+F+vIGFSSUV5PMECYmlL8
         JIT6wgaeKpz72R1RYUyOQ4C4cd9uKFvjg8r8Zoj1Mt+uN8sLkC060XJvGU+aVz7NJbl/
         2JH+y/0LYO2pctV8jlIVR36RKj/j6zlEZxxV0Sy6aIzGOSbeAFPPuo56JyESi6iPl8HA
         mtWcBCCTCzIQXnV3S9wUnLufsO1EChaggeQYeA0n/ABm/gY//5xGseV2mMit8shWTRTT
         fTi32EIIsS/3Gn3s+NbEUVzR/tjs4FwM04hAR4VMsxijPeWfsssXL/dY6s7CdiFaEKYI
         hmSA==
X-Gm-Message-State: ANoB5pk70qOPTE5vPRl90/XMjP8m3YtmlT8RGqLbnQ4SxNlaaL0XIQH5
	NGvY8nrQ7n1W9cxXkChmSUmiVQ==
X-Google-Smtp-Source: AA0mqf6ekZ3WI2ZeOyGg4/cQcagTfR7iRVKn6AvHqe4HxRolvXty3ci2rlrW2ysTZbYBzBtDdj7zyQ==
X-Received: by 2002:aa7:dc19:0:b0:461:f94:913 with SMTP id b25-20020aa7dc19000000b004610f940913mr39800501edu.102.1669796106723;
        Wed, 30 Nov 2022 00:15:06 -0800 (PST)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id jw11-20020a17090776ab00b0074134543f82sm358285ejc.90.2022.11.30.00.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 00:15:06 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
Date: Wed, 30 Nov 2022 09:14:27 +0100
Message-Id: <20221130081430.67831-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_001512_232610_24ED05B3 
X-CRM114-Status: UNSURE (   7.85  )
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

Add the compatible describing the combo phy found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes since v2:
* Drop misc schema changes again since same schema applies to sm6350

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..0764cd977e76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm6350-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
