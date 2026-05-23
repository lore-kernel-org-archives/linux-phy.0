Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB0CCD5BB8
	for <linux-phy@archiver.kernel.org>; Sat, 23 May 2026 02:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQR8lV/CqTlGmsVtaXu42+lSNIpoyCXom6XAOiALHcM=; b=vDbfkj3AVhn3VI
	SglCLPpRj8GnG4HlJaFk3aF3R7lli50LpXUfNVKOYZC8vLcxbO6GOrtoZNYLSSO68odzGT8nsPYHN
	VX05U3g14m5TAhQL4QjD/R6uIQTiFtPVAspSWwMniktGXN176R4sJaD7K+Qr5BWU2mQhBf80/T9ed
	ScJdaX+PSVC60HwpuuAtp4vVaHzSvG3tcCzJXnTLrCM44UWg65SLQlXia+bP7UGbZiohivCIE5/B0
	vSmKlsv4saqrU08qZmLokk6Zew54DCXcDXyyfRN5dDN6Qk+JCADFj4zXM6Z+j5hkCYWOAKJu0eeVm
	Yi6O4G9ojmF3gufCQrow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQcQ6-0000000CYq3-0oDD;
	Sat, 23 May 2026 02:48:58 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQcQ3-0000000CYpG-10Eo
	for linux-phy@lists.infradead.org;
	Sat, 23 May 2026 02:48:57 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-48ff4f8ef0dso83340565e9.3
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 19:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779504533; x=1780109333; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BExoLbiODonMM4G0WFkJCuEkkOxAvgNJFQq4OgtjaUI=;
        b=Z/TBCrGUq7vgr4F1/U3x2M3iFw0BLKiPURbIDV7uVK59pjcQ+0e4KJGHVoQkX3KsRD
         Gxy/75tEBRvt7bO8iR1kK1f49jyimu/y6oG6zTbU8XZbd/5IMemAAktquusf81aVaGdo
         luv3lCDAbVuj+bIAG7l0KLZQmJCZw6QtIqGj8YbhvLCkVuXynis4A3o9wFFBd3H6vieq
         k90We8QqFQ+4TaMRZ+WrlyEbxUm3SaTufJlGEM4fjH4bvEGthguyevV/WETciiRszvwg
         JHz9Tc+Pgna6W+Wu6bBBzLb1JM2r56s6g2WCKO3gLvB7JYrhkRQ0VUxuNo/kKYqIRtSf
         a9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779504533; x=1780109333;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BExoLbiODonMM4G0WFkJCuEkkOxAvgNJFQq4OgtjaUI=;
        b=NTHLJHK3yFewWm7ceISF0WoSCL2TXo8rmPnxmArVTL6uTpYvz6Q3srE/flNvIXTtXY
         fLFXkzQnRI/8p+gsFmKVjI/9Oa/iTQiIQEAgj0JGsYFRAOCuzrF1y1FoTIxgk8mp+Vks
         fxuhWQdhFntHPRmb1qFUyauCH3BasqE5FQ7DvfCZdGgMRxv50WE7ZLfmjL+ZdVijERah
         gemKeb1mXx0SJdHdqduNwGt0f5q0IkmLuUUNv3oKBUGrLHP6Av2RkytG5egw3UnbdTz9
         SgtTM5ybrKfpG1AeXQxYwL+coQUKWRMS/nTM4PpcPOMW5Jq9lUysNThWPwf32zETU44F
         /DBQ==
X-Forwarded-Encrypted: i=1; AFNElJ+wgl2Z9+WvpDLUCiSBOEy9M7ImWDXPyXI6Go6IvxRCDkqKmmT21eSC+9X6uNWLk1wlKkAuzTBpOjc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGR/ViSjDG+c0CE3a58M+9DwDmtwjhdTcqcmk7osNVhYm6rEpp
	e3Bha2SfgY3RWgbJXr2MJdJeL/r1l7+UJGasa9wliyKYZ6E4DOKZ+uTKA6btRvchvU0=
X-Gm-Gg: Acq92OGWBMMAus6buEpMZdqkXy1IAVoOfzppwTyCJA/cLyLvlNT/CiFooMp4/22gyU2
	vLCdel5/gihCa7g8JeBL1yw6pL34wrkdH8GGIOP6zMtZs5jGn5BukyzUSddzCeTntjd26h1bsak
	uegz7AVhECMrMBW7euYqGmX+86nS/gi+9e219RhuHrCE8iXUgU3qxKbV3f3tPh0civ0ZRNskotw
	YhancZA22t6zQzEuLRP6dsUwGZsjM1UUOo4X51LElyoGrBkjybp8fADh4y6aEwWp0K9ZJT8JIac
	d7+KzJURRNCnbTsvzM9XORIZMpkK7vP96Kfrw5N6I55bndgiZ/JM9shsFbtnZ6UH+E5RiDHd0vC
	YmCCbL6POH/qLw1dEAbpb6zkyuyxPEPAS4l6LB4ovBwyufZueUhMvPWTI9NRh6PFJhN4X9hWjKq
	4mjDA34lgvaDePoZeI5KmBSqMSFWczjlyHmw==
X-Received: by 2002:a05:600c:4652:b0:490:3b84:c106 with SMTP id 5b1f17b1804b1-490428d3b7fmr57208975e9.26.1779504533073;
        Fri, 22 May 2026 19:48:53 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.145.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904526ca50sm77938765e9.2.2026.05.22.19.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 19:48:51 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v8 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Sat, 23 May 2026 03:48:46 +0100
Message-Id: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XQy2rDMBAF0F8JWldlZvTuqv9RurAejgXFDnIxC
 cH/XjlQ4lp0eQXnXkl3NqeS08zeTndW0pLnPI012JcTC0M3nhPPsWZGQAoMAr9i4mHOxC/Djfd
 aCum1wig6VsmlpD5fH3UfnzUPef6eyu3RvuB2+k/Rghy4kV3wXnnU5N+/8tiV6XUqZ7Y1LfSrN
 RCpg6ZNG6VT9NqkzjVa7LU+aFE1YtJgjXISodHyqQUet2XVDgI4AmGtjY1WO91sq6or7oPpVQB
 s362fWhEetN62oxHR+WgitTc3e00HbbZfc8EjWei7qP/odV1/AE/WSp0dAgAA
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
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10133;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=Nej0oQa3vqYl952JRaqlayT9WNmSkPnhMmSkwYrr22k=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqERWRQUdZn0i6DI4OcmhVnfl4oKWY1AWsL7xiz
 TJsYOcoiFyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCahEVkQAKCRAicTuzoY3I
 OnFBD/4612F/OeHPQBZvfUwI6U3PHVOwiB8s3ARcAMrTp/9Rgko0qeNAAZ6c712nZiSP5kYp777
 mnBmlWPyY/hKLKhZc+2Qprs96xywXSqFdBgY3l1ayBkoH6rPPXzEtyOVKOU6jxID0Rczx5JA6pB
 fKjeFovnz8oaDBd4F43FMyep4/HxV0xq5zPbhT/6vPj4/W9ja0KDUEDwadfD/KctXUw/G3Qc1sF
 4Fd6t7gAkyeCUA9kp4Twzw4PdO+bBKlu/3Z1U2+qeM6WDpGG7YM8Izscdk0EIeeMtIEC0ZJx4WB
 oBHu7weby6iwmB8wk0oTBDFUqtFNNuhcGF1wGDzrBmmldtXkHnW8R+D+NpF0tT4bSa5dyliSqn0
 v4aowAGuzHfD0X7S1W6ji+tAS0xhWx7y/0ac0aDaZJnbAG5c2DXcWaJ5Y6D2UrYud9pEhyhWhdW
 AKC6dP6wLBzKoxe4/2vCFGoWJ83ki7Z9R6D5QX0pec4Pq/onla/HXFjV42E/yX7m2GynuspyZQP
 b0k+ma5lJKa7IuEi9zpTxn+zNGkk6S6pXISFB2JY52pJgASsYUZvgq7+afZZf/zbEig2Idp5aTH
 c1ItGUdlTo1pRnd42WUqJOvXrDDdou/m5NKQTLIB7JKt9fX7XabAKNsozUAO5+MYHGCyzz/qUWD
 yP/xGtTeVyyoyeA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_194855_355711_F5F7C6BE 
X-CRM114-Status: GOOD (  37.85  )
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

Changes in v8:
- Fixes two dt verification splats I missed by passing the wrong yaml file
  to my checking script :( - Rob's bot
- Fixes the polarity offset error - thanks Sashiko.
- CONFIG_PM implies CONFIG_GENERIC_PM_DOMAINS no change - Sashiko, Bryan
- Implemented suggested unwinding by Sashiko
- Leaving the flagged settle_cnt alone. Requires invalid DT settings and in
  addition the result is just a long settle count. Not real bug - Sashiko
- Link to v7: https://patch.msgid.link/20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org

Changes in v7:
- Made CONFIG_PM a dependency. Sashiko commented on the pd_list being NULL
  and suggested I check the pointer but, we need to ramp the rails when
  switching clock rate so we need CONFIG_PM full stop. - Sashiko.ai, Bryan
- Added unwind operation for performance state error path - Sashiko
- Made clock-lanes genuinely optional for the supported use-case. - Sashiko
- Fixed the enable of lanes. Thus far we have had forever it seems
  val |= BIT(lane.pos * 2) which I've never looked at much because it
  has always worked. But looking at how to switch on polarities I realised
  the relevant register is a linear bitmask without gaps so the correct
  method is `val |= BIT(lane.pos)`.
  This needs an update in the legacy PHY too in another series - Bryan
- I opted not to do any of the "but if DT send junk into your driver" fixes
  from Sashiko since TBH I think the code would be Spaghetti afterwards.
  We trust DT and if DT is wrong we fix it, we don't try to graph its
  relative (in)sanity.
- Fixed my example in the yaml. Sashiko
- Link to v6: https://patch.msgid.link/20260521-x1e-csi2-phy-v6-0-9d73d9bd7d20@linaro.org

Changes in v6:
- Taking feedback from lively debate added ports and
  endpoints to the PHY - Neil, Vlad
- Detection of split mode by way of which ports are declared.
  port@0 is always a sensor input.
  port@1 is optional and if present implies split-mode
  port@2 is always the output. - Dmitry, Neil, Vlad.
- Split mode is left as -ENOTSUPP unless/until someone with the appropriate
  hardware can take on responsibility to drive to completion.
- Extending phy_config_opts dropped.
  I think this is a worthwhile extension but this series no longer depends
  on it so dropped. - Bryan
- MX/MXC.
  Two OPP tables one for CSIPHY0/1/2 scaling MXC one for CSIPHY4 keeping
  MXA at LOWSVS_D1 - to be implemented in DT not here. Taniya, Konrad, Bryan
- Changed MAINTAINERS from Supported to Maintained.
  Hobby time for me right now. - Bryan
- Link to v5: https://lore.kernel.org/r/20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org

v5:
- Adds support to apply passed parameters for clock/data position/polarity - Neil
- Drops GEN1/GEN2 differentiation this can be reconstituted if GEN1 ever
  gets supported in this driver - Dmitry
- Drops camnoc_axi, cpas_ahb - Konrad
- Renames csiphy->core csiphy_timer->timer - Konrad
- Renames rail from 0p8 to 0p9 schematics say  VDD_A_CSI_n_0P9 - Konrad
- TITAN_TOP_GDSC dropped - Konrad
- Passes PHY_QCOM_CSI2_MODE_{DPHY|CPHY|SPLIT_DPHY} with the controller
  selecting the mode. Only DPHY mode is supported but the method to pass
  CPHY or split-mode DPHY configuration is there.
  Since split-mode is a Qualcomm specific mode the PHY modes are defined in
  our binding instead of adding a new type to include/linux/phy/phy.h - bod
- Depends-on: https://lore.kernel.org/r/20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org
- Link to v4: https://lore.kernel.org/r/20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org

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

 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 209 +++++++++++
 MAINTAINERS                                        |  10 +
 drivers/phy/qualcomm/Kconfig                       |  14 +
 drivers/phy/qualcomm/Makefile                      |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 376 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 402 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  95 +++++
 7 files changed, 1111 insertions(+)
---
base-commit: a1db83cc6f7e88a166c77d9060507ec01d617784
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
--  
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
