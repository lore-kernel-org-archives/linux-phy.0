Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 359B3F30283
	for <linux-phy@archiver.kernel.org>; Sun, 15 Mar 2026 23:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BWD6yAWukmfg+HdZP9L/JfvhryLLXr47dljyXabcPOE=; b=TIP0utgEMNNIoi
	PE/tX9irL/yzYpeBTAEDlUEW6ywei7uUwoL0QBWCEQO+rw3nmfJZBNM0kF8nM9lajkp88uN+TKZxM
	fVPsVl+05Tc8cvQOigVQdxk7nAVexVQHucDwIwpcq8hVXl0k9HUdG+N+jB9W0yUhstsmFjira9JQi
	/vQoj3khk/Qi/ukBY7dmworUqnAP6G1tuvLcResTdkEbjlFmCxi1LuIUD8EFYMEnycAp/YC8TJsvG
	Eu2tSBEUOKpOlJrXpxT/zbm7kmPq7fm2SLGcwApuLx8mQ3NT7QtKXTP5e8Xcuvmt08QIjMVT5RIfb
	O/lGikZaQqjHokyHJxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1vFe-000000031kE-2q1H;
	Sun, 15 Mar 2026 23:52:06 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1vFc-000000031jd-0WFu
	for linux-phy@lists.infradead.org;
	Sun, 15 Mar 2026 23:52:05 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48534237460so44174975e9.3
        for <linux-phy@lists.infradead.org>; Sun, 15 Mar 2026 16:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773618722; x=1774223522; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CeAP1oP3Dnt8GZq/o666y9/izbW8uVxcaynApzkMhWk=;
        b=ecmx3gVu4awsC2BxyhWs5ceb2epr4YyOnZgbSLedjG9DuVPEOiRYImcJrktLGPoCeV
         Q43t2Pntlvg286bQ6/mn2lDeMVBP+HZTJLumOUtprjh8QPn3j185p6MpPsVm+SIdi0Wj
         KlGG63/HWDKIDhbDkj7VPH2rzsA1x/g2BKuMqrIF4KyLLywCTA974sVMuH9XCjc9vJsy
         /VZXFlano4sbzPanyBqEIJET3tPfnrip5ESc7WV07XdATIGz8xdjusstxRrltzzTEch2
         QDbXDNpckDqapUTZ/P2jwpPTOGeuCq+m/hggC5BK/XIB/nPnnWBYtISChIMw/YEW2R9N
         vsvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773618722; x=1774223522;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CeAP1oP3Dnt8GZq/o666y9/izbW8uVxcaynApzkMhWk=;
        b=WczjoKdgGENCIFaTnP/DYUcXwULkEA+0zPh5BI7kv9Pz4UgtDJE8PI3aZs0Suxm9LL
         qloL1Pjvanp2dy22TxPDrIH0C6yYYyccGcX2w7RTcpkESA/LYeR/18U7eLcz8GLpQJR+
         IT4hsz7itEfFOcX51Gfpz0lVzKvwRon9wGJ5/vdIJTLPNFXZYUD8WnuP5OZbkIzouOhv
         DIItydVfOKnxPbTedBNYJb9xvwnPc/kTz4HAUgFtbFGRIUtUw+4nEpRABwj5rcz7bDqp
         7b6eTJ/aQSu7FNlcQ0DkY7Hqo40jkCugSPNoVnIeLInrjbmoRty7JwYdaEdK+5KGSoey
         1tlA==
X-Forwarded-Encrypted: i=1; AJvYcCX7bBB85zVE8EP73J6WEVMMo/eP6xv1t4frG5mlrzbd8HdNQOabInJg9DTHOhy/6AdPLo26W4xSLbg=@lists.infradead.org
X-Gm-Message-State: AOJu0YybUWRj9MeXsNPpnoTNeNxx2VB1BNeH6POurBeyotv2nNLOqK9u
	wUV20iJN9N01V8x59qKuIcmAp11VwywcZGtrnbwzVK6o3Y3kejrKS595ucgafy8Tcug=
X-Gm-Gg: ATEYQzy+I63YRFNgT2+9yygEbFtreo5wc5ywPMLCWJJBAD0gIJW9P2leufHVdf3l2wk
	FfKbLFZfrRThBN/dohfOKawUYFVRthmapNR7/NG1niGmC8bbw69ucnRgO4L0mVgFVXFKJM+hRWK
	PW7NRX9tNfmG/RIE+Ah9s44ybcdml48/RAS0JQ3CjB4fLzs3WcGTLIeOUw/0EJ+QUZzuKu5vLN1
	cXK4af0PYNfuSHFiGAAJ4KBnvBoeMlLnTxPsQ6s7frUgqdIiZexRChIUJO1Do3ojHvVcfj/eDVv
	UkFdNMEATCPD6k5mz+6ODVFjgjoxW5LXIC5Yh+8yIXr6DgwkABbdCzqJ/5/DZl5iuqCQg7FKy7+
	uK7+ih1wMTT2odyLav8Y6Gg/Nz/h4gXYyHWpUK2nNBTs0BK7x2EB3jThAZkd3xFUwtPxdonthxP
	sE0Qri8xBCGLJ6YqC54Nlr4t7QPZ8w/kKDYq0=
X-Received: by 2002:a05:600c:8b72:b0:485:3c2d:d02b with SMTP id 5b1f17b1804b1-485566f7a1bmr168448495e9.22.1773618721582;
        Sun, 15 Mar 2026 16:52:01 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b544sm38233082f8f.20.2026.03.15.16.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 16:52:00 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v4 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Sun, 15 Mar 2026 23:52:05 +0000
Message-Id: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACVGt2kC/3XM3QqCMBjG8VuRHbfYu8/qqPuIDjZ91UGobDEU8
 d6bQlBGh88Dv/9MIgaPkVyKmQRMPvq+y0MeClK2tmuQ+ipvwhlXzACjIyAto+d0aCdaaymk0wo
 qYUkmQ8Daj1vuds+79fHZh2mrJ1jfP6EElFEjbemccqC5uz58Z0N/7END1lLib60Z52qn+aqN0
 lg5bdCef7T41HqnRdYAqNnJqLME9qWXZXkBiH9GFyUBAAA=
X-Change-ID: 20250710-x1e-csi2-phy-f6434b651d3a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6513;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=sMMbQEiUeWf+kDDlhoTkTh5kwD/XswPnWe+ZNrnBHTc=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt0YnD2CZhIxL5ri2NHRVe2dtspeGez/CD6B4A
 FkX+F4xz+CJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdGJwAKCRAicTuzoY3I
 OnhFD/9c897WAlC1Ggfrv6XTwPfftsSynyU/kXgUm0Xl83AOAUrc5O4gC4bwlYtseFiUD64kqtf
 FW4QJgbx968EfZR82DhHgIojGU4WQsfrXfT0VuKzmYqGBpSQkjrzo3afGrzMRcEONg0JULz5d5v
 TiEAgjvJR0/nethpfExOItB4nSj9IrlyLzRp6+zN4A0lgvhe9mpUP/G34h1TjJMY817AjN0B7So
 KcvSYBjE1B19xS8zpxijdz+5n+FbeDnv0Ny5k/S+9+ePUXlvs3k+8+QKEvfMD0WV5J1XJy7bYRu
 qJxx6chxqWawgM8iT/3NplLl4f519B4a6u+rtBNq4jshxUEbzmbPuj0u3CExx8epfj/YgVL7aJe
 Ed2xN2FosVFYgzvqHqmfxilcG8jZSEuYje5QJp9x3IFvtbdhlbeoJG+Ji75/DgLG4ljOz7JYAAR
 xYGnH2lKBhvAIs4N0YucJMNvt8GZb1++gDfAR2e4Tpj41ZJfF0BiwJ55xDfr2yv1Yu4Wv0pTOoy
 pVs1iqQ5W1EzJTQl9Klf7ZmMB0T4imRgaknDjIJFky0KmZZwx/1uQmKF4bIPXQ/Ry416THX85iR
 urE0BtFlAQuFZCv4VPHnty1hcUt/IdcLbTRYqTs1DA8HhjIXwy511L79n4HKiOHXoWRQIKUiXKi
 M6DySzzJY2OxGsA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_165204_225650_9F701AAE 
X-CRM114-Status: GOOD (  24.50  )
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

v4:
- MMCX, MCX and MX/MXA power-domains added - Dmitry, Vijay, Konrad
- power-domain-names added as required - bod
- opp-tables amended to capture RPMHPD deps - Dmitry, Vijay
- Switched to dev_pm_opp_set_rate, dev_pm_domain_attach_by_name etc
  dropped inherited CAMSS code - Dmitry
- Amended parameters structure to specify power-domain name list - bod
- Removed dead defines - Dmitry
- Noted in CSIPHY commit log intention to rework patterns of
  PHY lane configs into loops/defines/bit-fields later - Dmitry, bod
- Lowercase hex throughout - Dmitry
- The yaml and code in this driver doesn't care if the node is a
  sibling or a sub-node of CAMSS confirmed to work both ways - Dmitry, bod
- Link to v3: https://lore.kernel.org/r/20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org

v3:

- Resending this to make clear this submission is additive to x1e/Hamoa
  The existing bindings and code will continue to work 
  Bindings are added only, nothing is subtracted from existing ABI.
- Link to v2: https://lore.kernel.org/r/20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org

v2:

In this updated version

- Added operating-point support
  The csiphy clock sets the OPP prior to setting the rate
  for csiphy and csiphy_timer - Konrad

- Combo mode
  Combo mode in CAMSS yaml has been added. Right now
  no code has been changed in the PHY driver to support it as
  I don't have hardware to test. In principle though it can
  be supported. - Vladimir

- CSIPHY init sequences
  I left these as their "magic number formats". With my diminished
  status as a non-qcom VPN person - I can no longer see what the bits
  map to. Moreover this is the situation any non-VPN community member
  will be in when submitting CSIPHY sequences derived from downstream.

  I think it is perfectly reasonable to take public CSIPHY init sequences
  as magic numbers. If someone with bit-level access wants to enumerate
  the bits that's fine but, it shouldn't gate in the interim. - Konrad/bod

- Sensor endpoints
  I've stuck to the format used by every other CSIPHY in upstream.
  Sensor endpoints hit the CAMSS/CSID endpoint not a endpoint in the PHY.
  Given the proposed changes to CAMSS though to support "combo mode" I
  think this should achieve the same outcome - multiple sensors on the one
  PHY without introducing endpoints into the PHY that no other CSIPHY in
  upstream currently has.

- Bitmask of enabled lanes
  Work needs to be done in the v4l2 layer to really support this.
  I propose making a separate series dedicated to non-linear bit
  interpretation after merging this so as to contain the scope of the
  series to something more bite (byte haha) sized. - Konrad/bod

- Link to v1: https://lore.kernel.org/r/20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org

v1:
This short series adds a CSI2 MIPI PHY driver, initially supporting D-PHY
mode. The core logic and init sequences come directly from CAMSS and are
working on at least five separate x1e devices.

The rationale to instantiate CSI2 PHYs as standalone devices instead of as
sub-nodes of CAMSS is as follows.

1. Precedence
   CAMSS has a dedicated I2C bus called CCI Camera Control Interface.
   We model this controller as its own separate device in devicetree.
   This makes sense and CCI/I2C is a well defined bus type already modelled
   in Linux.

   MIPI CSI2 PHY devices similarly fit into a well defined separate
   bus/device structure.

   Contrast to another CAMSS component such as VFE, CSID or TPG these
   components only interact with other CAMSS inputs/outputs unlike CSIPHY
   which interacts with non-SoC components.

2. Hardware pinouts and rails
   The CSI2 PHY has its own data/clock lanes out from the SoC and indeed
   has its own incoming power-rails.

3. Other devicetree schemas
   There are several examples throughout the kernel of CSI PHYs modeled as
   standalone devices which one assumes follows the same reasoning as given
   above.

I've been working on this on-and-off since the end of April:
Link: https://lore.kernel.org/linux-media/c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org

There is another proposal to have the PHYs be subdevices of CAMSS but, I
believe we should go with a "full fat" PHY to match best practices in
drivers/phy/qualcomm/*.

Using the standard PHY API and the parameter passing that goes with it
allows us to move away from custom interfaces in CAMSS and to conform more
clearly to established PHY paradigms such as the QMP combo PHY.

Looking at existing compat strings I settled on
"qcom,x1e80100-mipi-csi2-combo-phy" deliberately omitting reference to the
fact the PHY is built on a four nano-meter process node, which seems to
match recent submissions to QMP PHY.

My first pass at this driver included support for the old two phase
devices:

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/a504c28d109296c93470340cfe7281231f573bcb#b6e59ed7db94c9da22e492bb03fcda6a4300983c

I realised that the device tree schema changes required to support a
comprehensive conversion of all CAMSS to this driver would be an
almost certainly be unacceptable ABI break or at the very least an enormous
amount of work and verification so I instead aimed to support just one new
SoC in the submission.

I've retained the callback indirections give us scope to add in another type of
future PHY including potentially adding in the 2PH later on.

This driver is tested and working on x1e/Hamoa and has been tested as not
breaking sc8280xp/Makena and sm8250/Kona.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (2):
      dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
      phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver

 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 ++++++++
 MAINTAINERS                                        |  11 +
 drivers/phy/qualcomm/Kconfig                       |  13 +
 drivers/phy/qualcomm/Makefile                      |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 364 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 289 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 101 ++++++
 7 files changed, 916 insertions(+)
---
base-commit: c824345288d11e269ce41b36c105715bc2286050
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
