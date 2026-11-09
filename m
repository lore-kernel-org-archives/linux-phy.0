Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAAC606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zgiRN+1r;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tFISt0a5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=tosPa1HV1nUekDCckvUPjqNrG/kSIJGnyWABgEHJBEw=; b=zgiRN+1r+mhJWGEb7dc8huiE9J
	4HMYbntQg/iAYTuYtxKUHHqyOBaEQ3BKO3O9C2d19v40HTYschpenxz4S1NFbQUQmTTTaGux62lQZ
	EBGwu2RhNio7XNY4U6ebQsQ5bka2JgCvV8gAvKQmEcLnottGgOh0F8KGTK9ud0/s6q0SL18eAGrVl
	XCs8z6A0AlQbtM0RVap7vFg0cELFKkYkdJFsPsgoIgEBGQuIBEEyHknvMq6TDBmSGeEEefbCLiwWp
	ysuAflaqjXuEmvpcRLw/DTjHWMppbfmS3+ioh5DD4QDdAWealZ7CwNZLRdYjgcORiS00MhbrRqUhh
	khj9jTMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKA-0000000Gxwi-0jQ1;
	Mon, 09 Nov 2026 00:33:26 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDK8-0000000Gxve-1Osa
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-4919a880834so164852f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184402; x=1794789202; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=T85WE9/4pIgxBclKw2OPnN4ipy1Bde6FK+pcC/DL+nU=;
        b=tFISt0a5K9pVkbjvjy7g7d0TTKVYolY4N+P3I3PbdKWY143foOGTQ1pQigRD60Ao5m
         JBELZf/WgBC4jwPKTyR8dzycy+Uo7mZchDAS85CE+wKmGRoQTeCLbp9u4IixfRRWthzM
         nEFGdoqxDHNajtoITb5uUY2lYndXb6GdfeCDM6OMwOShKU1iyky51o48jX8S4wmBXSJy
         z7/JelVuGh5Mh+/D1xooVwrsHRcVZilPd1+xrE5clB7R98w3CMy9nnxzKsH6j2CBFPdk
         k9ajhI51eoKmt2i4s0Ntc49MiRw1ixRe+dt2xnzQ261P+cZhAsTBTgvy9XQo+GoP/KL1
         l2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184402; x=1794789202;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=T85WE9/4pIgxBclKw2OPnN4ipy1Bde6FK+pcC/DL+nU=;
        b=cpCNYvoUb7yjlFbnhkH9jMLJEi/MFYRRYxat9bXtvmZSOgcgvrnUWvfJh1mzdfimLK
         g2gbcxhoRgiBX+pTPYAvESC5OdwfkCzt4Mh8YYINbyclTrDjaCPAtAcEDOEH0ZGHCTsy
         VnWhaF2SSclPtwQJSXCSnFPpzTo+A/sR+UoRzbJxDg+Qw7U/SdKe3MN66kFasBmiGVjL
         pEcs5KN3ggr530JXpZRGhf/j9zexdcVwGZnc4aqpbWdm0CNGrdcRdmtUIIeqTaQ9KM+n
         xCatdR/un+1bSSxsoeZrG/hSaQ32AQ6aWxT7GcrFdcK5zbicLAQWJxZ6T34JwRr7u39F
         lejQ==
X-Forwarded-Encrypted: i=1; AL+hErHwcT6YggTmZ4BfXSNaRG1GSG2Z9Srvd4YoRp+NjahrHfZaE7RBjCROq2RfKhuD6qsa7u/S+bTCELs=@lists.infradead.org
X-Gm-Message-State: APuU4Z+wkY6lLKdjixeWjLyy56IPutZaa4/CRu+mFI9LyTPgaxGnp4+T
	VuZF9ddDyFgfNmkPRf66mfrI44PUbfpe75w1OUnO52KIfUGAuoBRaCI/
X-Gm-Gg: AYBFou3oPN9OBoVJ15KaCGntzpJH/9DqU3UCdR4X6YkKIQked02NDy2CcT7+gWsfpWg
	RztlVz7zlNPTEEbCjNzamU9aFA0FcEfGTtTRurDcgfxzrbR8dkAnwJ3Uxi4J8R555I2cy8Nsg3I
	k3CLjYhzeuu5tSpLzPG1kFJTKECCiK1vWspwrugrJ/dXafPZDI15U05pS3PWCMav02mdqv16qHf
	7E9qqXUH1tm5dtWFrq69kuKP3P2xD3zCPw/EKxk9QdkndWUBIm+C5yQThfBLYT/CXKDebS29OpP
	Mp0zb326K3HHYqgSCYK+4Ix0cyQjlOXRJvMsvtEMivFbH/ulUlEd907lKTCxEvU5H5+MAcUrM5s
	Gh4o/8cMTfzH2VCy4+ICyPEE1z89gfQp37HgTY3B92Woa+o/O29R6IMLBfMX4DybYi2/iHkLScE
	TXDAOC1mimZmX7ufqKIIXmTjg7SV+UATBJmoKde6TNbAm8EGRO3EFx7uD+1BxSvDTQJQJzpGQDg
	mmBFr+akvB0QjPMwf6BX31SY2DmjKeVA5db0HDirTXMpbl2K4VccABoNAykIClihrvwJRPUFirQ
	bNuXeLOeHdKqqOqlIK99A06F3q12rt+5BxJPSOjF
X-Received: by 2002:a05:6000:613:b0:48e:1b11:7ed0 with SMTP id ffacd0b85a97d-495895866c8mr4919311f8f.33.1794184402019;
        Sun, 08 Nov 2026 16:33:22 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:20 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Subject: [PATCH 00/17] Add initial support for Qualcomm Halliday and
 Samsung Galaxy XR
Date: Mon, 09 Nov 2026 00:33:12 +0000
Message-Id: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMgU8WoC/42QwW7DIBBEf8XiXCRYA8b+lSoH2F0aUjtJDYlaR
 fn30iZSK7WHHEc7b2Y1F1F4zVzE1F3Eyudc8mHfhH7qBG7D/oVlpqYFKHBaKy+3YZ4zhQ9JtUh
 2TH2AaJGUaMhx5ZTfv+OeNzddTnHHWL8y7o6V306tp95sPzVT97ekzssiE1jVD6ZdWE1nLX7/9
 h+E86vsHehRJZMs0SNMRpTOBmsMRPZ2vDMxFJZ4WJZcp8458DyQQRfBoiftk+6N5baAItAexhB
 4YCM21+sngQFSdFkBAAA=
X-Change-ID: 20261108-halliday-dts-e6ed3a2b5cd0
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=4240;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=pd8aaBJfTnst2NyWFbIqqoDWH9f0rsjbQVRvbO1ZvfQ=;
 b=ziCTgeR9INftAl++nhbHMRN5UuuOAe9O1l8dAZyqzOQeSOXOhqEJoZb8ANzg3vCtU6bUiOnMC
 Z8pj2yNgEeLD2PYELXx3W1Ha0kiVJJto65DrQYeecHZpxNAkqkfVYCX
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163324_421853_11238213 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series introduces initial Devicetree support for the Qualcomm Halliday
(SXR2250P / Snapdragon XR2+ Gen 2) and the Samsung Galaxy XR headset
(board compatible "samsung,xrvst2").

With this DT and the driver series, the headset boots to an initramfs
with a shell over USB NCM.

UFS, cpufreq and the thermal zones work too. PCIe with Wi-Fi and more
will follow.

Dependencies:
- The dts patches only need the Halliday TLMM, clock and interconnect
  series:
  https://lore.kernel.org/r/20261109-halliday-tlmm-v1-0-a181d54214cd@gmail.com
  https://lore.kernel.org/r/20261109-halliday-clk-v1-0-20c3ba8be0bd@gmail.com
  https://lore.kernel.org/r/20261109-halliday-icc-v1-0-def7cf786f75@gmail.com

The SoC ID was sent separately:
https://lore.kernel.org/r/20261108-sxr2250p-socinfo-v1-0-06244862f5c6@gmail.com

This work was made together with Claude, ChatGPT and Gemini.
Reviewed and tested on my Galaxy XR.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
Stanislav Aleksandrov (17):
      dt-bindings: arm: qcom-soc: Add Halliday
      dt-bindings: firmware: qcom,scm: Document Halliday SCM
      dt-bindings: interrupt-controller: qcom,pdc: Document Halliday PDC
      dt-bindings: power: qcom,rpmpd: document the Halliday RPMh Power Domains
      dt-bindings: mfd: qcom,tcsr: Add Halliday TCSR
      dt-bindings: arm-smmu: Add Halliday SMMU
      dt-bindings: usb: qcom,snps-dwc3: Add Halliday
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add Halliday HS PHY
      dt-bindings: ufs: qcom,sc7180-ufshc: Add Halliday UFS
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Halliday
      dt-bindings: crypto: qcom,inline-crypto-engine: Add Halliday
      dt-bindings: cpufreq: qcom-hw: Document Halliday CPUFREQ hardware
      dt-bindings: thermal: qcom-tsens: Document the Halliday Temperature Sensor
      dt-bindings: interconnect: OSM L3: Add Halliday EPSS L3 compatible
      dt-bindings: arm: qcom: Add Samsung Galaxy XR
      arm64: dts: qcom: Add initial Halliday dtsi
      arm64: dts: qcom: Add Samsung Galaxy XR

 .../devicetree/bindings/arm/qcom-soc.yaml          |    4 +-
 Documentation/devicetree/bindings/arm/qcom.yaml    |    5 +
 .../bindings/cpufreq/cpufreq-qcom-hw.yaml          |    2 +
 .../bindings/crypto/qcom,inline-crypto-engine.yaml |    1 +
 .../devicetree/bindings/firmware/qcom,scm.yaml     |    2 +
 .../bindings/interconnect/qcom,osm-l3.yaml         |    1 +
 .../bindings/interrupt-controller/qcom,pdc.yaml    |    1 +
 .../devicetree/bindings/iommu/arm,smmu.yaml        |    2 +
 .../devicetree/bindings/mfd/qcom,tcsr.yaml         |    1 +
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |    4 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |    1 +
 .../devicetree/bindings/power/qcom,rpmpd.yaml      |    4 +
 .../devicetree/bindings/thermal/qcom-tsens.yaml    |    1 +
 .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml |    2 +
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |    3 +
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 .../boot/dts/qcom/halliday-samsung-xrvst2.dts      |  218 +++
 arch/arm64/boot/dts/qcom/halliday.dtsi             | 1859 ++++++++++++++++++++
 18 files changed, 2110 insertions(+), 2 deletions(-)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261108-halliday-dts-e6ed3a2b5cd0
prerequisite-change-id: 20261108-halliday-tlmm-f250374110e0:v1
prerequisite-patch-id: 5a614cbb038d4083d1ce56b413923dfb4e7c2fd7
prerequisite-patch-id: 36f2dcc3de10d5ccba9eee25b73736189559162a
prerequisite-change-id: 20261108-halliday-clk-362190f4f5dd:v1
prerequisite-patch-id: 765d40b7543dba6580852939a5c3d177f12d0a1e
prerequisite-patch-id: f12c958fceb125bcefd8dc9de139f30a371f85a4
prerequisite-patch-id: a6559b14fa1badec8e7752940362d68306523557
prerequisite-patch-id: 3574a3f99dc1a987a61b4e4a73e0204142604a73
prerequisite-patch-id: 5ff25f591783dea61a6719bffe3961070f7167e1
prerequisite-change-id: 20261108-halliday-icc-65a5442be859:v1
prerequisite-patch-id: 94cd5dee75e96876c6a42852cf6d1b52df1c7ace
prerequisite-patch-id: 730c6d80310f7472ecbcfbdb84dff4cc864d99af

Best regards,
--  
Stanislav Aleksandrov <lightofmysoul@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
