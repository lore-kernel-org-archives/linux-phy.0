Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D692C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jG5kchuIefB4KWTRUXs+VQXt0PZa+kfv9OeRt46Hv4U=; b=p4C0vTTOG/waPA
	jbzrTRvGSuXw/QKdCnbUn9HQTnY5xZsFHxLG1loHM8uT4laaXc+wzehYL31lisduAVsTr31hkzbL1
	R/WL8NhrR+6vmu7LTGGA8rjVvBaKrzuuPOKS5KSEWmntzw5IsGtu/36RKS04qTq6VIogtqSK6Afk9
	2dqyGSY6VZibO9/BKbpmPwrl6fm1Z/h2Gbsv+47PZ5sNE4XCM/SDz5UE7ipC05ipEkLzBoohWcDjx
	6OHdbxi62qMOleJY9hUEQRYeVSaQhzDTtPbIcqtXiHpvXYH7b7jUiqYgsrtE2nMBDztzQiWo5kK7w
	looXjIoIOXRSkzo2VxWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSW-00CKXH-PC; Mon, 28 Feb 2022 12:49:00 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfBF-00CDlj-Bz
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:31:10 +0000
Received: by mail-pf1-x430.google.com with SMTP id t5so1955716pfg.4
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uiCgAku//7sIMuxqYHJc2X9D5M99OLU0HUtVfVHUJPY=;
 b=Nh6OUoqsnLEtt283PlSYofT0UzjINAUBlvDTEtSbmjaMIILGxpKPijxKTImryL80pZ
 DffhZKBm46nxZVmMorF1GE2psWugzuEJSnykI66Ww8RgRt8anmJWTTwulLfrPEwVf8UJ
 9vvgtTgBfrqZnjHKzYBT7bKAaZSrg6izHygsmT3YQGI0bo4mpo6LEqtI5MOoQPY/Kupt
 SQJjJOjHOCC6oLaO5JHkdPdsBY1JkA2vlIKFMd1/GtLVF8nPyJV6OmzVzZ2zf8PKIZYe
 recM9diRzHH6Vh9oUuYEBxy+KPQOP+BHVWYYruQKB2WfVdljcZ/TxBjOPES527DN2yB4
 wAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uiCgAku//7sIMuxqYHJc2X9D5M99OLU0HUtVfVHUJPY=;
 b=vm8g0Z2sFChu6uiUQuG//TYKBC8OpguO8+qE9Vxj3PBScMMgpDiyPhkR3CLOyPJle7
 n4Ziw9dZ4UQP8qcpFYkZrNKHTpp1Rl18A/m/c7KNzbuoIP8OJSrb/t+8SnLWEwREPusf
 nfZ/yMoJMsbblp9nid1IwppbBSIQcnGIm2LEGPrUPfqRJ4mPtqdPUz5fAdVRxnNT1G7l
 d/SnfAgS4tbeKNyii+5ITUxsZYqzyTg3FyE+E48BcVf5R1xN7B88ov3C1TvJw+rnbtLl
 dHBLrAwxk0Vc2hjqSu2fHeSEc7W/GUNwh6UrVp9sgdaYEo/t8Sf+oKpMrcY5hvHh7YMq
 Vv5w==
X-Gm-Message-State: AOAM532DKr9S/9CVgw2iB/HujFDW5OaitsvBcNAYmHQzpi6duJuhDUm4
 iMhYT+dI728K2tK1xcf3xQU8Bw==
X-Google-Smtp-Source: ABdhPJzBpN1R+t/fGMdQfNiAYxIQ/GG3amctANAxG40D5LFiKQhC6nutcyeNhTgRbB1ZD3JHW7BAGg==
X-Received: by 2002:a65:4549:0:b0:378:c0b0:c153 with SMTP id
 x9-20020a654549000000b00378c0b0c153mr1446757pgr.177.1646051468859; 
 Mon, 28 Feb 2022 04:31:08 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:31:08 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 8/8] dt-bindings: phy: qcom,
 qmp: Mark 'vdda-pll-supply' & 'vdda-phy-supply' as optional
Date: Mon, 28 Feb 2022 18:00:19 +0530
Message-Id: <20220228123019.382037-9-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043109_448602_8F62B3F2 
X-CRM114-Status: UNSURE (   7.62  )
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

Fix the following 'make dtbs_check' warnings, by marking the
'vdda-pll-supply' & 'vdda-phy-supply' properties as 'optional' in
'qcom,qmp-phy' dt-binding:

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-phy-supply' is a required property

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-pll-supply' is a required property

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f8a43acd229a..82b102b7d42c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -436,9 +436,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
   - if:
       properties:
         compatible:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
