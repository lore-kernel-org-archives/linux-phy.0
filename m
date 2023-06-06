Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A80C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 04:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NXtSrv33hANtmv64VKJzxPOPbt6Iqg6nQJlzAccBuI=; b=LeRRkWQia2eH3H
	+IahBvII7A2BTihHBq35zITz6/Q651HNVnSBcymOplwMLUl4vgvbafGOJXh1YBp4DIfnpg1Is+Y40
	HHr0Y5nsoKXhY12MDKfFjG+anCIeZDPzZJeWJ2Wa2BKTY6mdehfskhCrOn15GjkPonXBbriefwvhv
	LITO0FYyjvzxVtP1tpRM+ato1U0zCaLRA9NgsPAC0A/9J3DcmieIoxoXKzo3kB3gsdtkk/OzeK1g2
	eBT9GsIjERpFncz4p2R4M2h750gn47Nctjs+oQ8vq1x7lPtTiqEFWHBopwpK2WqGQyltfQiT0CLo0
	/RPpRagMD2ititDZhA6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Nx9-0005Ah-0m;
	Tue, 06 Jun 2023 04:05:51 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Nx6-00059t-2e;
	Tue, 06 Jun 2023 04:05:49 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6261a25e9b6so47732026d6.0;
        Mon, 05 Jun 2023 21:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686024347; x=1688616347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=hLyGyWV/wGxIlyRivBrflbF+AQbpydmNAc8eXG3Gavq7XrHayn3xuwfSjthktb+cCM
         UAyKKLnEcETGMR93/halHxRTijsVfyFbeGRzssPjqJpm4LIcSKXZ7Isz0rf6oa7//Kg4
         uGdPt1yAyTDjUUdKbFU4GAbwbfyaoJJwIY6LjdVwEm+VPdWMjax1S7EG5AkQAtVE552s
         o5LeamESV6p7DCgXRG5L09p7ttxy9VmayHhhNRkcqE7iyl//4gbjvM3873i6bcmgj7vd
         JqM2/bp4s6ZfoG4edNR/IqVeP4Pds6B3CEhhcrqUXQzcga8AQ0ISPePQB1pROM2jSxGU
         C0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686024347; x=1688616347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=dhLkIX27eYbGgyQ0o14vtuvq51F2kiCXlvwx+SZz506YJVJzr+e/FXnoJqHr0/Hkb2
         iOQV+erwkaKJNf1iKBzFakUJYnVqNX9DwZ/lmTza9cauC/WzVEEZMaCAv75L2+zpgxNq
         5IzpTeyYJ+Ut3L5P12yDCuptwU3jRlb+f33r5SWSTeVNZ2nv/RyHB3OIu7vIffcg9zR1
         Qjr/2kLc1MTEf9y6Le1uPkGyTQUzBQkOpfkvX24DERiPC0bu+AT96MkGJp6sfIvRXhDc
         nz2zNBwoWELTzl/kb5Xt7WqRHjAS/NUH84N6kLWrzeZgFzTB+f8KYZXUzu+4bs2u7ilm
         /Ulw==
X-Gm-Message-State: AC+VfDwQs9p9bz4VR8paI07/L/C/pFT4hNAum3nglLrbz/Y3jVRsFz4i
	UdBvd/ftOgI6cDZ06AaGSfA=
X-Google-Smtp-Source: ACHHUZ7495EQIEA7GLHtQNJCW54CYVAnY5RakUHE5KqDf/3f8O1Dz+WFkoCSBwsXmG5zveMkh5TTKA==
X-Received: by 2002:a05:6214:d4e:b0:623:4ca9:5b25 with SMTP id 14-20020a0562140d4e00b006234ca95b25mr1017669qvr.31.1686024347531;
        Mon, 05 Jun 2023 21:05:47 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:aac8:d62:35cc:958c])
        by smtp.gmail.com with ESMTPSA id e2-20020ac84b42000000b003e388264753sm382980qts.65.2023.06.05.21.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 21:05:47 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Date: Tue,  6 Jun 2023 00:05:24 -0400
Message-Id: <20230606040529.122433-2-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606040529.122433-1-guptarud@gmail.com>
References: <20230606040529.122433-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_210548_857508_50EA4959 
X-CRM114-Status: UNSURE (   8.72  )
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

Add a compatible for Samsung Galaxy Express SGH-I437.

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d9dd25695c3d..133d69b2b73d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -191,6 +191,7 @@ properties:
       - items:
           - enum:
               - qcom,msm8960-cdp
+              - samsung,expressatt
           - const: qcom,msm8960
 
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
