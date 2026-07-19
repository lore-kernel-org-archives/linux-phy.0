Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB80C44521
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 13:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zs9/pbXDTFLqvUGgLfA3I09zULL8kkws5bD8AsuGVBI=; b=cqjMNwiaivRmhY
	aukQwwL1DLzBgmAbTBP6tKPRnKqccCdB2jG/f3kekj9Fv/64IJLy29IZCLXuxB3P9NGqYRDTr6hiq
	gUdQ3sD/iiNB1RL6DHeCsl4CqWQ9xIgk+YPO2BNR+82WvnXs9ymxrCEtBHjCviGI1Tlei/IWkVjTB
	/YdpeuHo2Eaf31WnjooMu3xKLQ9W5IerNdR6a5Ha68juJJqqKDxL6PRGhCuoJzcKdNzGHvWXfEKSm
	vWB5uWWHmbEAgJbgtmd1DA4HYafw5cOVpvsgMWLPR9u38JKh+HpjRV75xwtR1rTzYJ6a4XIQTVdZq
	wzTRXvkxB+ibqenkp0JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlRrz-000000052hj-2tUS;
	Sun, 19 Jul 2026 13:47:51 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlRrv-000000052gp-0sKj
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 13:47:49 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-493d92b7db3so45014585e9.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 06:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784468865; x=1785073665; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=5lxUMS2l1XU03/4zQ7dCUuH2TfWFULjnfTYIK6r4O6w=;
        b=XMDD+qjZMqKVws23RpMZ8C4Wnan69yOrylo4Qg8q4MDE6ReTv1sassKhbMHmAJ7p5r
         hOoaxxNj8gEIJhuqjynmhlBMBgJXF4UB12PzufcYkQNomEjw7kwjpw/D438yGCRQxjXU
         yludsQS5FNOW5JxGtlg+lmiBZXej9K1Otvs/XzzVMZpazmXFgr3cfXUBCJiLT3w7IXor
         wXw/Nvb8zAGSys1uMrogjqWVbXsIiG//6ioM8/UiT/1G/4gBJLmkegNuBupAvnse5Bsb
         hRuf1Q4RISiPxV3saWcGMaf/gztQHZ2a+1HC4L0Fb0BoBJWTuzZuxwdb3onWVNBgI7jE
         Cadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784468865; x=1785073665;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=5lxUMS2l1XU03/4zQ7dCUuH2TfWFULjnfTYIK6r4O6w=;
        b=gbPGD3440vRHCl6Lj8KlfJ3Dr2k3wIEHGqmd4F24C21B6Q89u2FQ/F+/KNy8Jbhkyb
         yh12xNBKpuJoxhJARxobqH8wpchczPk8pkV+jzZUA3FXfXf0R0ZpYfOcupRWMZQ3d4DM
         3M6YokvXGK9pC19IfXOgZdEiIt97z8ypcMUrQUejabtECOu8uaS4LLTketF5Xsu7MV8D
         oQfvwRTweo3AYa5HZzNPZzKzM6vT2xBO2rQOyA4UnpIJbluZ8OGkcEMwK33IgATEux9i
         iWKfw6vVCBwIGVUw69SVYTd3KJt26DsPpnZlehs0xjknp5+2X7MOEWnX/fWSq2BU4xRl
         hnsw==
X-Forwarded-Encrypted: i=1; AHgh+RrCiWsEWMoGC+yYBPt/YEWiLbzXMXf/OpMCx1WcYF3yOz8RxKKjACiwB50G+Uc2NhZQXmChC4z4eOI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxazdxSq9D4tECvhxI6e7VDz/k8YL/agfsEXcckB951IqhQDREH
	Hsj4XCBLEy7GarlLGN71fuFPjOl0yDCnO1Cer4frySSK7hAM+EHjTv7jW489rZ/6oO4=
X-Gm-Gg: AfdE7cns3/nHTtaIsUWmIxAoBxYOUeKTuLEwx14IIklRIvmycPUk76mD7NdQVhToVoM
	D+W7brLpGarVGqcNgD8+g3OIMowpNVfqDbGbbfDS3qL+Zyj8pSPeO5w73LfS4UQ+/6bSaE14rBT
	6rCe8tjleT/ScAWYKAHfo5mRgDek8qgPmlDnBVJaowPT/ErBOPTnptpTIkYuxLBQXtMIXMtWQod
	JbohD05GX5Y3K70aBeT6qFNmCZ69+I9ODmkNG+7j43dtDFnWVPl5bfBDaxqf6TnmJSxNV34qREE
	UJ5P1tzKxkrOx6pA4340uugg4SbmzahN5FseWccj51nBRpE3FS6RVfeZ83pKThf37DF3cGHSVY/
	ANhwTICwa1s0+RRTzzEEnu3t0QjWxXXFsRrdXByGLwiYcGxLVnMD40JFs5xgmIluwbtTMOzxq4j
	UQ76JEoAgUgpGa
X-Received: by 2002:a05:600c:3553:b0:492:3773:a230 with SMTP id 5b1f17b1804b1-4954a50e75dmr117554875e9.27.1784468864853;
        Sun, 19 Jul 2026 06:47:44 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.79.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm22345902f8f.22.2026.07.19.06.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 06:47:44 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v12 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Sun, 19 Jul 2026 14:47:39 +0100
Message-Id: <20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XSyWrDMBAA0F8JOldlZrT31P8oPWhzIihxsItJC
 P73yoESV6LHGXizSXc256nkmb0d7mzKS5nLeK4B0suBxZM/HzMvqSYYASkwCPyKmce5EL+cbnz
 QUsigFSbhWSWXKQ/l+qj38VnjU5m/x+n2KL/glv2n0IIcuJE+hqACagrvX+Xsp/F1nI5sq7TQr
 9ZApBpNmzZK5xS0yd51Wuy1brSoGjFrsEY5idBp+dQC296yagcRHIGw1qZOq53uequqKx6iGVQ
 E7PfWT60IG6233smI5EIyifrJzV5To812NRcDkoXBJ91pu9ei0bZqb5XWVipXR+u0e2oDttFu2
 5sQwnY6GYdOI+w4trz+H+DKEHhTb+6U6D3uvWs9Pi4HHnMCLejvq63r+gMqW1ZVGgMAAA==
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
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14131;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=lAUK9ZlVmeEOmQD2PA/HAlZmcqek0Kfk7XBL7SChjYQ=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqXNV+lxYQ/w8xnu0tAu7dVPZiDc0zmQSGYbaHy
 dzARs9On7+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCalzVfgAKCRAicTuzoY3I
 OnpmEACK+hpK7NZzs179n/Rq3WC64sqlzRLDAopX2haur9GLRWHu5084l4q5dBhvbScTAmwbBKX
 ffQb1teVhw5mgYvYC7e8de9kEEvlSe7pyRTQ6ErTZwFwp1G1u21mgZS92XD+t93eKEDMWjsEEOF
 ylpYLwSbt6Vz8IrxXzre6Ii2xIgfwBF8JHlO6G9sbczZ3ral9OaufGOFKMYH9MCIkRxE7CYhgDc
 vwmEBREATSBv8qYOZEAGpWUWIcqNufth3rLdX8BWaYq+4ZJPsF7Fx3QNhaUXjT8W18V8L7X70nS
 GfxmjzYxLLKIewXVpW/q5n+b1p1oQNd3By/ctAYQzD486KucwoB306WR/hSHs760VGmijiQBxEN
 yIKRtyAHVGQUkkXBiCAIppv9jd9voaGL7latrmJmnc1jOHUoqQAJsIR0uHWSgBkn1lyYsBrQ4gu
 7Ua78vD6nUXgs4BdwBJU8IOwqx64qH4nmhoxcQCwETnqKmG/9R/6sN/KMy7Xs6bAYhfQGI/x2NB
 gXQNn5Hofb8ibtvwTz8ITWjriQELFsnOgKMmWFEq6wchJt1ENViQtpoJxFr+h2YyWYG4npJYz+j
 bB5WbD22XvzggOoDn9kcrZYXYW3PAli1ZdVeDWTTc93NTP4nmoWDB4o8Tv6DHMYd9m5D+qEUknR
 b8SgiXahCy2FMig==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_064747_427122_9933461E 
X-CRM114-Status: GOOD (  34.91  )
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

This driver is very critical to several SoCs being merged and CPHY being
added to Qualcomm SoCs.

It would be very beneficial therefore to get this merged in this cycle. A
lot of other enablement code depends on it.

Vinod, Kishon what do you need to take this for 7.2 ?

Changes in v12:
- Fixes indexing for data-lanes = <0 1 2 4> which is out of range - Sashiko
- The rest of Sashiko's review rebutted on list - bod
- Link to v11: https://patch.msgid.link/20260719-x1e-csi2-phy-v11-0-9d0a1ed0632d@linaro.org

Changes in v11:
- Adds RB - Krzysztof
- Fixes div_u64 to div64_u64 - Sashiko
- Fixes pos * 2 reg offset - Sashiko
- Fixes devm_pm_runtime_enable. Missed in v10 - Frank

- Link to v10: https://patch.msgid.link/20260718-x1e-csi2-phy-v10-0-5720a7888953@linaro.org

Changes in v10:
- Rewords commit log of yaml schema to read more organically - Krzysztof
- title: Qualcomm X1E80100 SoC CSI2 PHY - Krzysztof
- opp-table: object - Krzysztof
- Example opp-table in PHY node - Krzysztof
- port@1 uses stock graph.yaml - Krzysztof
- Dropped redundant remote-endpoint declaration - Krzysztof
- vdda-0p9 - SoC pins are vdda-0p9 rail is l2c_0p8. Named as with pin - Vlad, Konrad
- Retaining #phy-cells = 1.
  Rob gave a steer to have the consumer configure this via DT. Not the way
  Vlad suggests but I'm sticking to Rob's guidance for now - Rob/Vlad.
- data-lanes - retained as per CAMSS existing.
  Nihal suggested, I agreed and Loic added his assent too. Vlad disagrees
  with this. I accept Nihal's suggestion though we should remain
  consistent. - Nihal, Loic, Vlad.

- pd_data = {} - Sashiko, Wengmeng
- lanes_enable() failure unwinds - Sashiko
- power_off and error paths drop OPP rate before performance state - Sashiko
- probe returns -ENODEV when pd_list is NULL with ret == 0 - Sashiko
- Move to devm_clk_bulk_get_all(), timer clock taken from the bulk,
  clk_names indirection removed from soc_cfg - Frank
- Drop static CSI_COMMON_CTRL5 (0x1014) table row - Nihal

- Link to v9: https://patch.msgid.link/20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org

Changes in v9:

Key advantages of implementing this logic as drivers/phy:

  a) Per-PHY power rails become declarable and enforceable on a per-PHY
     basis.
  b) With future adaptations of CAMSS routing the PHY output to something
     other than the CSI Decoders becomes possible.
  c) Standard framework contract. phy_configure(mipi_dphy opts) / power_on / of_xlate.
  d) Introduction of CPHY in this driver will elaborate CPHY for Linux in
     general as there is currently no mipi_cphy_opts structure.

- TITAN_TOP_GDSC retained. Further elaboration in below link. - Vlad
  Link: https://lore.kernel.org/all/d5407ab1-1af7-4678-ae67-5cf30ce8fa4b@kernel.org/
- Consumer selects PHY mode - Rob Herring
  Link: https://lore.kernel.org/linux-media/20250710230846.GA44483-robh@kernel.org/
- Incorporates two comments by Krzysztof I missed previously - krzk
- Changes 0p9 rail name to 0p8 - Konrad, Sashiko
- Uses port@0 and port@1 to denote input/output - Vladimir
- Label phy@ instead of csiphy@ in example - Sashiko
- Drops additional entries in example opp one is enough - bod
- return 0 on timer_period_ps < 6. - Sashiko
- Use power-domain names and a "scaled" bool to flag if
  a power-domain needs to be scaled or not. Allowing the code to
  attached to all PDs, GDSC and RPMPD alike but only scale the
  RPMPD. - Sashiko
- Fixes error cleanup flagged by Sashiko.
- Checks args->args_count. Sashiko
- Performs checks on pd_list == NULL. Sashiko
- Makes opp-table required. Sashiko
- Uses const "core" and "timer" when getting clocks. - Loic
- Adds AHB clock - Vijay
- Revert v7 lane-enable change, BIT(pos * 2) is correct: data-lanes
  are logical indices, CSI_COMMON_CTRL5 is a physical bitmap - Nihal
- Adds a comment to explain clock-lane - Nihal
- Link to v8: https://patch.msgid.link/20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org

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

 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++
 MAINTAINERS                                        |  10 +
 drivers/phy/qualcomm/Kconfig                       |  14 +
 drivers/phy/qualcomm/Makefile                      |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 386 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 446 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  97 +++++
 7 files changed, 1153 insertions(+)
---
base-commit: 8dac27bfa2f994ecb11f01a63641527d17d48fc1
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
--  
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
