Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C184606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kGi9qk/Y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Vj7Hr5SF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=E7kwHbDtRh+/fa4N90i+BG1UL1U3ICFPpi8LSkpn9o0=; b=kGi9qk/YcpImPlpwnq+Aw5UxSb
	ymi0yKmiUxgOMhOTWY7eSqg/lofFhStaEaVxUkYl0Kbsc8aQ4Tf95Q+YLnsuvTCYvHFt/xnPk8dK0
	AN5fvDxe34t1rWZKzfbOLlMajJWZum6ss+QjOa8U+/6wcSVJ/DwwzZU5dN63Nw5QLFTlXrnVJCdPW
	H52Dhgt2FhDao/eR6A5OBheSavJoxAeJP/Rxys1pVoEqUTg0ubvbA88YbsPxsZF7Z1HOhTdq4iLna
	x61qowSyIbXFTcKrKqVi5JyP03DVH/pGRandYl5dGTTlF/wh+ZCDKsnzd0GgOlELRl/hSWbg5KGWH
	ie6WSfBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Dm-00000003x5K-1WgJ;
	Mon, 16 Nov 2026 21:26:38 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Di-00000003x3V-1ZUW
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:26:36 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-4a33359c1b3so292443f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864392; x=1795469192; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=geDMUZgvfuVvDJzC8y87j2/OgPMLvLdV6dtKH2mcnHM=;
        b=Vj7Hr5SFaM7WselrOvtBFabbNGSk7F5zzB5kGtQuv9dMGZINWhi5VBtm136QCSYgGU
         r64qdcEIV4Q4ZMOeVhzDf1SXmSHXhWjpxV8qjtJiUjN7vnaYdM05RBsojac7Di30hwt0
         Jz7HqFJ/+1vUnAEKVlXPhzHAV7C52lOF2HtSg53wHx0EIE5I5xQzT7hL1hGz42CCFQl7
         7ZGn6eXDGBXLKSERG+XpKJztHXUKaWJbcv4TNgK4uwrwgv9nqcdx8R6MBW8LSIFucgI8
         buMC9KRQP83b9TrBfPLyVZ+5/tFmZUWyFY7IgkRDmg+FVTx76a4vxvw5QUUYEtipWO+v
         A7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864392; x=1795469192;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=geDMUZgvfuVvDJzC8y87j2/OgPMLvLdV6dtKH2mcnHM=;
        b=lOJF29Ti6mF9yfqJsUYkTCtLjvR746dGhTONDv/tpwEJL3UT5FaxRRQDv33IEYPqZN
         7W/TyvLQ2vD18IAuEQJm0mNnaVvwdAEBw58PUQGnEspnlellskaFUhEzuATnPOgagbON
         LoGEvxpBlfCIobswszdQEcR/xmbcNDz3AfJi2dldrgJMfoFuPoiqDjdhNN3BOptuBVUI
         w476QvPPUnPSQr3km5YxueSBAsBw8VpCil7+KM3iOi+o4hnQLthhnFyM3sVP7T0GSmYe
         /xJ0qRAbq5Lsfnn5XTLcKUCSQvwavUHJHCb37Xu3gEBcC+bPC4Bfnxexn5t1yIYPNbTi
         9F6w==
X-Forwarded-Encrypted: i=1; AL+hErG9bbvie8dzGrT9NRSRDXtlm5fETlSG0bhsoC6r7pCDZpZKY2h0wqOZkWyNIfh0JBlqIvyYikrwJRQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z936j5vx2aj9GM2oVI69Ij2wdxeSKI8OmwcNZhWZW/MLIQnRKI5
	Q9fV5z7OTYYmNv7CIriL/HisXwxQRqk4+20DFRq6grilulGBRXdFPNLN
X-Gm-Gg: AZFdTZcnh+VveB7wDLqI0cWp/8E1rt0BHaeL0AKzqjCqsVWzMlhrZufKZ2LEZLib8CA
	foVs3RRYonmWmPknN/10Zqn16G4v+kKT33usOOnIeHaFFIDBgbB0dqX+5RveY5Ic12kHViCY6Vs
	tN+iRNoi7iJ3Z/nswhsTIoM8u2csgYW7Ton5D6QkRPDRalXrdT66GbqDdDa8oQMunUNvG6kkECX
	CquWPjzwTOaTIDdH/YZVkQhgkdHsRLygQRAQTC1yGZthz+p5jZbvXsHDz1MRVqS9R3+AqAndpnZ
	2L9balX9cm/n3VYvN8/gfubmDt199iqqAGGOt+mzDaApVie0yrnbksuYkQXraYXasRb4hBhh8SE
	aBmaO00lBBOwwaoen+t1LzlHOBXNkRQd/xSwK4BjeG3hJrh4XLEkLHbOPMWonSNlCuP3dclgwti
	fkuoVLxaxaXH7Qr6+VL6xBSJ/NUBkepaN+FkfdqjK7ZeC+HeTgd3HBxQXHxDXk9xXA1878FF+y3
	xJ7RRppPUH3lN7/KpoovBkmCRfLBP9g1oXUW5Ss8jamGhG8X4sGKtRjM4nGIMmAoJj8FO5WyctO
	1IBTwtRiC/YXqjpxcX/Dblq30rbqzvj0ZQVCK+vp
X-Received: by 2002:a05:6000:2010:b0:48c:4f6f:62e3 with SMTP id ffacd0b85a97d-4a324348cc8mr2541077f8f.18.1794864392095;
        Mon, 16 Nov 2026 13:26:32 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:26:30 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Subject: [PATCH v2 00/16] Add initial support for Qualcomm Halliday and
 Samsung Galaxy XR
Date: Mon, 16 Nov 2026 21:26:16 +0000
Message-Id: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPh0+2oC/42RTW6DMBCFr4K8rit7sA1m1XtUWfhnHNxCSDGgR
 hF3r0OQ2qpdZPk08+abeXMlCceIiTTFlYy4xBSHUxbwVBDXmtMRafRZE2CgOGc1bU3XRW8u1E+
 JokJfGrDSeUay5TxiiJ/buNfDXafZvqGbbjP2jhE/5syZ7m3fmEz9A5m6vqcBJCsrkSvImgXIz
 93+M7nunZYKuGZBBOn9I57oHFXSSCHAYi31Q5zzHPIxlKN2paw5ghW7z5qE1A19H6emQOPqwPL
 +oABN5blUglXeCGsCKAaaOxuwBHKLrI1pGsbL9pCFbwntZP07+4VTRqHWnAtja66rl2NvYvecq
 eSwrusXJrbDqNsBAAA=
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
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=5564;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=D6pHxmjbT0YQnXObxaMbhJXnWglUC8bGXbRILU/YSwI=;
 b=kLkUaY9RvMn2SFKfEWKUHPt6napWByTdqsO3PWDWJfyn5BbOP9cFbM5QSqDucjMqA+sKciod9
 131P6WbXtcaABhTsVArttw14ogeyJI2M4IyfytTwUN7qU6QUoEuUPxW
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132634_458437_DEA1B968 
X-CRM114-Status: GOOD (  14.20  )
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
- The dts patches need v2 of the Halliday TLMM, clock, interconnect and
  cpufreq series:
  https://lore.kernel.org/r/20261116-halliday-tlmm-v2-0-b4dd502ca142@gmail.com
  https://lore.kernel.org/r/20261116-halliday-clk-v2-0-28208928da36@gmail.com
  https://lore.kernel.org/r/20261116-halliday-icc-v2-0-6df8fc0e0620@gmail.com
  https://lore.kernel.org/r/20261116-halliday-cpufreq-v2-0-e518cc055457@gmail.com

This work was made together with Claude, ChatGPT and Gemini.
Reviewed and tested on my Galaxy XR.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
Changes in v2:
- Order the patches by subsystem, with the SoC ones last (Krzysztof)
- Squash the "halliday" codename patch into the board binding
  (Krzysztof)
- Add the SoC ID patches, which were a separate series in v1
  (Krzysztof):
  https://patch.msgid.link/20261108-sxr2250p-socinfo-v1-0-06244862f5c6@gmail.com
- Move the OSM L3 binding to the interconnect series (Krzysztof) and
  the cpufreq-hw binding to the cpufreq series, so that each subsystem
  gets its patches in one series
- dtsi: Keep the Linaro copyright of sm8550.dtsi, which the layout
  comes from (Krzysztof)
- dtsi: Drop the empty chosen node (Krzysztof)
- dtsi: Sort the thermal trips by temperature (Krzysztof)
- dtsi: Put idle-states before domain-idle-states and
  arm,psci-suspend-param before the latencies, like glymur.dtsi
  (Konrad)
- dtsi: Use 0x0 for zeroes in reg, ranges, dma-ranges and
  redistributor-stride (Konrad)
- dtsi: Break the reg-names, interrupt-names, clocks and clock-names
  lists into one entry per line (Konrad)
- Cc Ulf Hansson for the rpmpd binding
- Link to v1: https://patch.msgid.link/20261109-halliday-dts-v1-0-289114ab8197@gmail.com

---
Stanislav Aleksandrov (16):
      dt-bindings: interrupt-controller: qcom,pdc: Document Halliday PDC
      dt-bindings: power: qcom,rpmpd: document the Halliday RPMh Power Domains
      dt-bindings: mfd: qcom,tcsr: Add Halliday TCSR
      dt-bindings: arm-smmu: Add Halliday SMMU
      dt-bindings: usb: qcom,snps-dwc3: Add Halliday
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add Halliday HS PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Halliday
      dt-bindings: ufs: qcom,sc7180-ufshc: Add Halliday UFS
      dt-bindings: crypto: qcom,inline-crypto-engine: Add Halliday
      dt-bindings: thermal: qcom-tsens: Document the Halliday Temperature Sensor
      dt-bindings: firmware: qcom,scm: Document Halliday SCM
      dt-bindings: arm: qcom: Add Samsung Galaxy XR
      dt-bindings: arm: qcom,ids: Add SoC ID for SXR2250P
      soc: qcom: socinfo: Add SXR2250P SoC ID
      arm64: dts: qcom: Add initial Halliday dtsi
      arm64: dts: qcom: Add Samsung Galaxy XR

 .../devicetree/bindings/arm/qcom-soc.yaml          |    4 +-
 Documentation/devicetree/bindings/arm/qcom.yaml    |    5 +
 .../bindings/crypto/qcom,inline-crypto-engine.yaml |    1 +
 .../devicetree/bindings/firmware/qcom,scm.yaml     |    2 +
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
 arch/arm64/boot/dts/qcom/halliday.dtsi             | 1871 ++++++++++++++++++++
 drivers/soc/qcom/socinfo.c                         |    1 +
 include/dt-bindings/arm/qcom,ids.h                 |    1 +
 18 files changed, 2121 insertions(+), 2 deletions(-)
---
base-commit: eac8f0411262ea7d156407da4baf260291cbfe32
change-id: 20261108-halliday-dts-e6ed3a2b5cd0
prerequisite-change-id: 20261108-halliday-tlmm-f250374110e0:v2
prerequisite-patch-id: 0f6c7c801393ba2d1ed5fc82a65be6b05f0f6cbe
prerequisite-patch-id: 36f2dcc3de10d5ccba9eee25b73736189559162a
prerequisite-change-id: 20261108-halliday-clk-362190f4f5dd:v2
prerequisite-patch-id: 765d40b7543dba6580852939a5c3d177f12d0a1e
prerequisite-patch-id: f12c958fceb125bcefd8dc9de139f30a371f85a4
prerequisite-patch-id: a6559b14fa1badec8e7752940362d68306523557
prerequisite-patch-id: ef47e531053032f65d3d600e2213c8a78e50f20b
prerequisite-patch-id: c4b2cbea76a00aeb699d706e09a899aa18e510d9
prerequisite-change-id: 20261108-halliday-icc-65a5442be859:v2
prerequisite-patch-id: 94cd5dee75e96876c6a42852cf6d1b52df1c7ace
prerequisite-patch-id: 9ad58176d603ffd84e7f1239c3b646cede4c8a3f
prerequisite-patch-id: a5df517be2541ab439d324dfe23ceb4c71a0e655
prerequisite-change-id: 20261108-halliday-cpufreq-1e9c3581e2b4:v2
prerequisite-patch-id: 95b1ae328d8049ecbe450b0f18df15465619f2af
prerequisite-patch-id: f67013633e74af33f78e3ee4d9de38bb2842fe87

Best regards,
--  
Stanislav Aleksandrov <lightofmysoul@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
