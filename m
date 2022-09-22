Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC5ABC6FA8E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 02:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYQSvBQXugAYs7z3bl/YAOlboK0/uKsUXR1rv8Zbo2E=; b=RbGdiHCvLVILqf
	bOTPhA3vyXRF49RXCjAxoRr2fs1jtEPQo/7PMPaGrbGI4w88WW/dbIU4/Ndce0MNnivV8ZqmgzNS1
	E0g8W/nwDRGyhQrWrQ3K2Ml2BLjgRzOTx6mJzyL3QF0XobWwlDbIpG0lcr+w98QTAU6qRf94sC9Ch
	+Nn0k/2s6Xx6SpTAw6k7Zen+QKGqwUJCNVROlLUO54wadekR6x03ikGluThjw5EWE+BJK74D+ZvVx
	p19miWD2n09SnKVPW0YXaucfmVZUCDZkdnEBljqjz1vTDkAeMbo4AFTEio8RQ85ZM2UB3evIalPjS
	EaZBqiugxRgKmTBWrNUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCF3-00DBDn-A8; Thu, 22 Sep 2022 02:47:09 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCF0-00DBCL-FN
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 02:47:07 +0000
Received: by mail-il1-x12d.google.com with SMTP id v1so2108716ilq.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 19:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WoZ4RDOZgigudKSYtBcln06ePKoB/qb90ltGorNHgrA=;
        b=C0mWmEF7enhCNnu0b6IXzGfZld2kFsyA9FpxZ8Nt4QMVxRvW7O/0zFJDyupmNegGF6
         fIv+gHcY8ETuRfSirR/OeWLgRUXmMVBizLCZLjhocuN+fgXZwpTge+T/sG63BF+p/ukF
         fvJPqiOwOfyBIouISgAxOJYroLCkX20SYtSZocslxiDjshy4Mm6rNNiLaRj40xmsS22B
         L4k4vR+cbWzjtubky7SftsjZbkXzUHiFrrv/Sox5lThElbJvdzYwm2HqXDbd5DqERyXz
         pgBuqgThN5XeHaBmE+MW8LPUWejovp2eLVGqUtcRNfdSrLB47fwycO74BgDVggoWhbRT
         bb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WoZ4RDOZgigudKSYtBcln06ePKoB/qb90ltGorNHgrA=;
        b=dvEc04ARIXCZ4hGt4AAXTeQWVV2KVEUBxBP0y7zYFJIPVnpyJasEVLDC97kAA7D6DV
         5bs6Ng7zkztFBoyL4EjgjN8wuBV5FZZyTMOSDO3ChLDE4/slLO5UDxu5dWWYqpZujeWq
         e5I8X/kPb3sn7/iEUeAc4O++RPueP9SiDyrsu/B99xqusGWeBg8+lik0ZuSGZDQb35OR
         DFC0y7uHyljc9Cw2Rj1sVW37IqHimbMUl6ebYjbnt3HLN9qcFzt2b8QtIPld82gOYaP/
         WAkoQiW0GMAdsjTm9M9+TMlqkqL2iEhhSrb+tcht/gD6HR8GzvnoPefz+yPptlNyTDsE
         BNYg==
X-Gm-Message-State: ACrzQf2E04VjaFPIFCnXEyyXiDRgr1KLaYJe1rQboFNnzcJ9nHdXoI8j
	JP+u5ru7qXdUMesIs88Q8xA=
X-Google-Smtp-Source: AMsMyM7tmXGbLK9y74NKX0eUYNRuAs11QWEVR9TseHgKDUbjdoCvt5Z1UZt0hXpFuLtK3fQhU2M0jw==
X-Received: by 2002:a05:6e02:1a41:b0:2f1:cc2a:69d3 with SMTP id u1-20020a056e021a4100b002f1cc2a69d3mr612756ilv.46.1663814824862;
        Wed, 21 Sep 2022 19:47:04 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::61a4])
        by smtp.gmail.com with UTF8SMTPSA id l2-20020a056e020dc200b002f1a7929d67sm1575139ilj.72.2022.09.21.19.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 19:47:04 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,qusb2: document sdm670 compatible
Date: Wed, 21 Sep 2022 22:46:55 -0400
Message-Id: <20220922024656.178529-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220922024656.178529-1-mailingradian@gmail.com>
References: <20220922024656.178529-1-mailingradian@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_194706_528663_B2D0DF81 
X-CRM114-Status: UNSURE (   9.17  )
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

The Snapdragon 670 uses the QUSB driver for USB 2.0. Document the
compatible used in the device tree.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index d68ab49345b8..636ea430fbff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
+              - qcom,sdm670-qusb2-phy
               - qcom,sdm845-qusb2-phy
               - qcom,sm6350-qusb2-phy
           - const: qcom,qusb2-v2-phy
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
