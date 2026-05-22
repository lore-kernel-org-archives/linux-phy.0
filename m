Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC21CD5BB4
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 14:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/JQRl61cfdS89G7DzAFIlJaUCtpV9EL26zI5mVccHWU=; b=MqPI0XjnRiZLF2
	yBueL9gJOcQZ6RbDgmhgJLrz3Mp5IYrnd7/bHs7j4qABeag6hwl/GTxR0jGDokCL/X7miR3+WBJqg
	k/RQMMrWz8UkMYAMDNSImt2k5WaiRUQUa496NuSP9UY00B64viWls3x7fBLHei5rciYdraGtj5XIN
	b52M+yZRbCHiA0/IWPeJofYShpG12ziqEuK7DN4TAqql0F23HeVC/M4SIKX0Lp/3QmF7wKf5Z76JX
	h5M3UtWeRDxOuDBAPeoap3RTUsmpzaDmtku67b75HZLOFXFToGFUHTgglP/U0UBARBaSNL/nRiXJW
	ZrH5AWCBrNmMPtrPMqLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQR7n-0000000BAHZ-27iE;
	Fri, 22 May 2026 14:45:19 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQR7k-0000000BAG6-1NX8
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 14:45:18 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49041e84237so8209945e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 07:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779461114; x=1780065914; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+UV8j+dbRgTzxiwmllf1AzhXJ6JlFchfzPu/b5u02Bc=;
        b=QW2D+rEfm+/WWU3YfoGKXqa4btV3aR2TcjdK4TR/uAHJuAPOnWDLI4nJcYRlZ6s5X7
         yCvulE5sTIVlwcK8hYarbD+RL6wq9rv4A1QInBuEqxq7bfqbupl0ujQ2rHaIlGSV0TBG
         hSiKERR5ZE6BPcZaAVXS5Xf8XFv3hCDLOJwwKvx3ipHilrqTvgIpMuxw4cfsusyWYtAp
         utuGy4RuzyC+bUKIcRR2/zGj1Y1nOdC4Sm6h2AKTSlyOmIY74AS0wquYNf2NfBPEIi+l
         zM71fdIhXlCg65v4lwfpEaMxlK8LYvS3fpQc4QO42JCF8LFY5rpO86221P5j5FaStA4D
         C4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779461114; x=1780065914;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UV8j+dbRgTzxiwmllf1AzhXJ6JlFchfzPu/b5u02Bc=;
        b=fxHY4lw4I8BPeKUenr+BCtiA5/ZTcvaupfk1XnAoly/HC0XWKMuNyXz8C9fOOosATQ
         HKwqZR6b9Nwp20qskz3vpUcxhIoVpZujCgH4X09O815X62tgLw8PMZJHMEfjI/ipHpE4
         ld8ZcLDElk/kk9TCd7Zm5RONMm+5dSwB6VJYBc3Nmj59jikiuZUHwM73n2YOUV5zTeTY
         euhs/VWpt7/rfoHbjnbwyYaLtN2UwffXr53mZYbbLFSRKaAsTplAMfvm+h11246w/yXb
         PTU92Q/acMn1C9ElU/3jQYSJTt0DuWykUmsZshhfYKlQ9VX5TXIqDDbPmdh0EsFNfNRj
         nV1g==
X-Forwarded-Encrypted: i=1; AFNElJ98N+Z0P9GT/qSKyv8mdI7n5wa7pgc+WLGF/AIpd1ZQ3rzOK/A+fSBDKM3f731Ow2cTpUgE5NTWcf4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDvU6dkGRkM9O36Lsknqz5AAyokdlsKKng9v+Y30TptrviqNMm
	JTRv7FjBZHBa2T07c4JW2moGtEIH7WK3BU00Mh+fOz3FmC2ECIZWALD1vAx34I/rfis=
X-Gm-Gg: Acq92OH+178kcQ98Ic47IWwudge7Am/yTfzHWqQTE/9b9R7e+l5S0/T8vlApi1bE6TO
	F8sflNrtYbz2e4Prx33VvXepQqYo6AVHoifvkzKoaf/RmwE5decG1Y8eD0XwJYZaQ7SvQGd93Hv
	xDHtbiOjWx7x6pMTY0eLhb68Lz/6GQjCW7ntBzyndmpgMkcGSka2DF+cooEGnft/trMyEnxDE5L
	1+Z5HTczDt8ldCjNFDlfqE97bpO8qMZc5G+iLLQ77yXCVbkuB1enWpN0d2DImedluADQygIZuk6
	kk6QADnv7yoVHe8Pgx9VyDPqpkG8PWgB1cE6YN3P7RIszA5ta72+BjGQVCnOLDxtpczN9ryR831
	TU5UbHQCq2gQLOuZiK7vg2GFpV4tQeYZPQSJW2rOO+0XCbPknZozYJJnnWq1TnKkj/qMtsWn8s9
	GJJzjlfKXvmSsxFPMAr65GPcNmefugndz0gBQdQQkbmyk1JQ==
X-Received: by 2002:a05:600c:8599:b0:48f:e230:29f4 with SMTP id 5b1f17b1804b1-490426ade02mr36627145e9.15.1779461113724;
        Fri, 22 May 2026 07:45:13 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.110.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490469f61b0sm12216385e9.5.2026.05.22.07.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 07:45:12 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v7 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Fri, 22 May 2026 15:45:08 +0100
Message-Id: <20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XPy2rDMBAF0F8JWldlZvSyu+p/lCz0ciwodpCKS
 Qj+98iBktSiyztw7pVurMScYmEfhxvLcUklzVMN5u3A/GinU+Qp1MwISIFB4BeM3JdE/Dxe+aC
 lkE4rDMKySs45DunyqPs61jym8jPn66N9we36T9GCHLiR1junHGpyn99psnl+n/OJbU0L/WoNR
 GqnadNG6RicNtH2jRavWu+0qBoxauiM6iVCo+VTC9xvy6p78NATiK7rQqPVi262VdUVD94MygO
 2/9ZPrQh3Wm/bwYjQu2AC/X35uq53gfYrDN8BAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9584;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ijE8FotOF1OqdoUIcI++flPFl387vF2gOuXqP/h5gUI=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqEGv2hrOmLYutmEtdqQC/LdmNHHmL28VhI5lNZ
 oGlVEQzIcmJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCahBr9gAKCRAicTuzoY3I
 Or7ZD/0VoprNOc6Ld5d8FeBcrHkRmuBqUnqipAKv5sZ2t5yfWZGFF/9DBXmitRI74s2s/ULSKJE
 A4/omgt1OOHMHNchQSGvqCb2xshJdtfq7YL1Mvr+i4yhWHMTvx3kOeHIGAPg+H+RGe/ggFLPSaK
 5vfnyWC+yDnaCMvIwzIGxgJxWiKnNo7MWDPxtw0kIyr3e/nrrlV3TRVtfXrG8ow5wLrdOfUMNBu
 xpNn9JebkMKODF3cltbH8wlAMsiBlAhZW3RbycZ3EwG7W5WG6V2Y5cbJEsxEnrGB7ncypXXPk4O
 b19wdJGNxod++03pxpst1AoaU5iS1ENecnD2yRA68JSzW1fk6YzAHFLz1LowxdSCg5W1ZIRazcd
 MK/fW+DyCCyhpKroigiDFtepRBWq6rr8SYvDmbegpIIIh3gz/hxUIlAPY0sT8VlHAavlUsubqYX
 bIX49gZVJyRHWvA0tRHmAWJXKTw74jE3sJ5fH/uiBhsEqGxBwyJrHGrrV4aQvnmL+FhefrS7mAB
 BTCzR1tFszr4dGz2tKFbgH31ZePe8DoxlkF0wF8gC81XOAja868d56Hav+CwurLIJ+8/hpIbshH
 +l/TEbsUYf8Hyzku3Xn0C30KC96V5htuN715Q4lM/OGEIFOvDztVr8mrkoGPlfICvrD7nB5VDfw
 IH6Lab81wAtavOg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_074516_442938_0B9E8040 
X-CRM114-Status: GOOD (  36.46  )
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

 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 208 +++++++++++
 MAINTAINERS                                        |  10 +
 drivers/phy/qualcomm/Kconfig                       |  14 +
 drivers/phy/qualcomm/Makefile                      |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 371 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 386 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  95 +++++
 7 files changed, 1089 insertions(+)
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
