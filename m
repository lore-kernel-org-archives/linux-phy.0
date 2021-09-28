Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F84C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BBA66135D
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:20:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5BBA66135D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQiQTXQXk3Nn20yiblwaNSakdTJKdfL1qo8eM/lPgnk=; b=3IWlvk/0aJKlvS
	flVlVMleoCZx1kNlHDIowcf3adCEX1Yu3WaKb1a2uTWB1jkQZbwILV/XhhdqlZtechssOogsXBSZ7
	0waqUQxD8VmopcAmPzKQVtAz7akziiXefEEGdd9LyQB9awHu7OM312uvcYNzc17Qt0vOdyuF+O7IF
	KzzYTbA/arnIdqb/V0E+/5ix5g1doiLqbCRdx0ElSU9lKT0ZtG1DHqKTkCXVtkN6kHEObhC1b1CI2
	AKz1x6pa6/5ZTVeVEa/ZWwv+nhHEE0FA4k1s7BC+m+m+QZ5FWjWUe2Y9V1ISGEFH/fHMUqT71P+Um
	H8NGRt9NcxqD1BLpB1MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV2jK-005Fcu-S1; Tue, 28 Sep 2021 02:20:26 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV2jI-005Fc3-DX
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 02:20:25 +0000
Received: by mail-pf1-x436.google.com with SMTP id k17so17612574pff.8
 for <linux-phy@lists.infradead.org>; Mon, 27 Sep 2021 19:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NYqezzVsApLcG6o8A6nHf5azw/hdK7Hyfm4V2m2anYE=;
 b=ktEgcMjNRerbDRlQjW54gIRGhF9RrTp5S+D9vZR7qXJhk/vYJwKDeewlR70iO4VsmR
 HShmITge9HqC/yfj4wq6+pqlvXlFf+fM6Znpd68LvZ3M77397J2/5xM9LdJL/C5y7Xt6
 an0j2Ge9ID6jmgvOsLXLCkBZRffpNPYdu8D5GcS0lK7fIgULZqB4EfgUo2v0OQdqFXzR
 hIuUq7G9mHjL/p7gUW8SQPz8G1CGymjtuA94xt5YfkJFK40FijiL6VoB7DNmBYaVPyfw
 nd+C9r19WRK+LUHGf09jyMsJtKxnci9oQt+1+dK9+VABpLgSAexdXIvyjkJo7B1MZONk
 s61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NYqezzVsApLcG6o8A6nHf5azw/hdK7Hyfm4V2m2anYE=;
 b=UgKy2y4ru4Cu65qEkkiCyLMyD5LVX+tVfo7lxDh2DUlaUyd75LbhUZOchC0ofAqVPF
 ydFlTtaUIvgUqxfV03eReDnAyFA0uBSr6DIzCA699cLSZGkMUGU8k9lTNoqmtcldwRA3
 94mYIUQ7zbGXkJBPBy8MU37i1wpwuYCLiTVtODgw2NjFi90tjMr5KYO6UAAmqae21llP
 6NjDT6O1eZnelhBKAZ517m6X5dPmZJ0feMrUDcisnD1/KXJhQInlgOA1D63xzhvX03Of
 xg/y9nz8IkHa1PsQ5XAEG+1UOF2pXox562+5UWMxxcrpPgzSNlTpSaa1FcbaGIrghzfr
 9K2Q==
X-Gm-Message-State: AOAM5327KR52P83KAampUyIY2M8Dod/d9raZCxoRajxPVXi6OyIBUsCX
 kcA7ktwuOpdswZjG4R0TY7XJqw==
X-Google-Smtp-Source: ABdhPJxtkhkcETWROWusxFox1a51j3uHtyRo8hzT6t77fL1kJ0MDx4Rzp4PMmrb6aL2EFka98H0kUg==
X-Received: by 2002:a63:6e03:: with SMTP id j3mr2371457pgc.465.1632795623623; 
 Mon, 27 Sep 2021 19:20:23 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id u12sm19178729pgi.21.2021.09.27.19.20.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 19:20:23 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
Date: Tue, 28 Sep 2021 10:20:00 +0800
Message-Id: <20210928022002.26286-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210928022002.26286-1-shawn.guo@linaro.org>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_192024_482679_1FB5C248 
X-CRM114-Status: UNSURE (   8.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
PHY digital circuit operation.  Add it for correctness and completeness.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index ec9ccaaba098..e49fa4ce18c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -50,6 +50,10 @@ properties:
       - const: ref
       - const: iface
 
+  vdd-supply:
+    description:
+      Phandle to 0.9V regulator supply to PHY digital circuit.
+
   vdda-pll-supply:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
@@ -156,6 +160,7 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
+  - vdd-supply
   - vdda-pll-supply
   - vdda-phy-dpdm-supply
   - resets
@@ -174,6 +179,7 @@ examples:
                  <&gcc GCC_RX1_USB2_CLKREF_CLK>;
         clock-names = "cfg_ahb", "ref";
 
+        vdd-supply = <&pm8994_l28>;
         vdda-pll-supply = <&pm8994_l12>;
         vdda-phy-dpdm-supply = <&pm8994_l24>;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
