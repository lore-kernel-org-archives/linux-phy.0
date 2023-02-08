Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE47C64ED8
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bu98wCuWFnrbv5B2cxyhFUg8ixMFjfCYuS8bRRWmh/s=; b=GBhNKkLczJGJD8
	Im3o/FJohtf3LSFJNzYMhoXKZZ+B+jtMn8EsvhacOmzgbQaqENFbl0CDqtUEUuRdPYzh0j2Av+GgL
	1qzpSS9dlNviZODzX6HKQVXdXEb+PLUoKtFXxcFYYQq+ApVGt6+XvaBvpfQLxuWvfuBeq8pDr5sTu
	A3TT+HbiJRDKBTdKmIFM/V/DkwVGKUcfUmafUAwIjb/WSzTYt1e6J/fn66kAbOM19ybcl8+A0BWvT
	1wrKKfUwM00talGZdMwEW+IouROaq2BVNWzNd4H4Z7vSIgkG4y0FJiaG5EUp3eHgYgbvYHl0gg7Lv
	9sxJ5OOK0IW4dxlk5B5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpht-00GhMw-DN; Wed, 08 Feb 2023 19:02:13 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphq-00GhLK-PH
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:12 +0000
Received: by mail-wm1-x334.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so2254302wms.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PXn1ogE9xf12HQp/S/g01Ga91SzlSkMt5w5+myYC8Ik=;
        b=DnNvwM1HNT74gz4mLjUKMjUfy6FtNoVMpbWVmwiMxRZfP80MPZf28EsGdwnVhFbaKN
         nCJP/V94VRMv1jACM1Y7TzBLsfP2o+54GoChiOJRwXAEfVzSeJ5i/NZkLXP4D/Go+/Ck
         zc/YDc7u0ENrJ19WTRFYDIOnTWMvLq363AMG9pU9XSRM1MOT747eD0SNQbvRvGFm0S5j
         09e4Guzk3Jl++8263r27MgXn6COt8vydfpdBGEYIlU1d2aNNyucxTpy0/f9q9zknBap4
         m99KpzFQdiY5S20lSYYu1TyX0VUKRy9JChNwwl5tnILECMP3LXNk5/HGDi8I3ksXi4EU
         t9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PXn1ogE9xf12HQp/S/g01Ga91SzlSkMt5w5+myYC8Ik=;
        b=rAe7yLuff+K9jLx7BoMAFKj77oWMzjerBRWHoTh3/68tzSBWmcfANvpuKknw2Xy/om
         eq5URXWm7+TgXt/9jxxvuKaBqQukQQ0TWORN1/566OqziZwSh1y/VBPgVnGw1l9IxRju
         eTgEad5XWil2/BzXRaguPtOjGwR/T3YkgImDAcxMebayITMSMv4WitCy3s/WFpksRnMd
         pcB11VM/Q5yfC4pp+A7sy/vAaIKh4M7e6NElIkNA+PDbOGtq19t4h3LGYwvoxNpdnDb2
         Tbrhh/DyogGu6Z/rV399LTJRdQVPIXD/55UV6upWfsj7epCTsxOfNxi0172lajRsUeru
         oGVA==
X-Gm-Message-State: AO0yUKXKp6HvqCBsUi7rTdpANa90jqAXe4+Q8AOAZ4YZ62m7HALjeIIA
	YBHlM8OCs7AGR9b7ul0GI00Gew==
X-Google-Smtp-Source: AK7set9lb9+Qa05MNpj+m+C25BEZGPxEGNgImF2JJzfKCaEdItzhfXwChMvflZhKFxUV1ACea0WteA==
X-Received: by 2002:a05:600c:43c4:b0:3dc:5302:ad9 with SMTP id f4-20020a05600c43c400b003dc53020ad9mr10116874wmn.27.1675882928813;
        Wed, 08 Feb 2023 11:02:08 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:08 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 3/7] dt-bindings: phy: qcom,snps-eusb2-phy: Add phys property for the repeater
Date: Wed,  8 Feb 2023 21:01:56 +0200
Message-Id: <20230208190200.2966723-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110210_839696_17A38DBF 
X-CRM114-Status: UNSURE (   9.00  )
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

The phys property is used for allowing the eusb2 to interface
with the repeater, which is modelled as a phy driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-4-abel.vesa@linaro.org/

Changes since v4:
 * added Krzysztof's A-b tag

Changes since v3:
 * dropped the phy-names property and changed the commit message
   accordingly

 .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml         | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index de72577e34a4..c53bab107b6d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -33,6 +33,11 @@ properties:
   resets:
     maxItems: 1
 
+  phys:
+    maxItems: 1
+    description:
+      Phandle to eUSB2 to USB 2.0 repeater
+
   vdd-supply:
     description:
       Phandle to 0.88V regulator supply to PHY digital circuit.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
