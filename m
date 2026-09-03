Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E5CAC624DE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 22:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I/3ERM9AdR80uHzYrwwXWafu/r9SqeqBgwfrMvDCQpc=; b=dXOrr45Krc5fhL
	axurBhvVg/KXxEpAvl8hTvrT1AyCp4+8o3FGmtMauuM3r74msWHB8JX/tg56wEnn3m8uYFsnIWX0M
	loVOYlabT120AX17tBc1rB/MOCYZSm5ormOSPznzjVTmd19LYHYEutN6f8PZsXsZA2Iy0G0H4YStv
	9522cpEojBhdOz1tWTEiCyieBjHzibtf/8slkNsvXXe+Mw5eF5rD3SZwJam66mgK1F3fA97gLPQBe
	Xtwk/MlCf0e20cHco/N4JmqxSj9xBeI7Dd4gD2DHdKC+U3v9apNb1R78VEyWcD5QtbB3e5Ba5pc+/
	F1QVrTVL7xXSf2c1CSMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GP1-00000000ju6-2pAd;
	Thu, 03 Sep 2026 22:59:27 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2GOy-00000000jsu-1SSM
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 22:59:26 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-48444ec4fe2so262828f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788476362; x=1789081162; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2Axg1lDBpFbiojgb7yUMw1qWPwTcpwvkNI5f/ccuw5w=;
        b=w/VZjSUT2sNKgCPQeqa5+vfVR4MbBaHqh4kBaAcsQdI5mT4LS8y7tcqYopHW2+BpH5
         J+5mWr2g3BMhTXzYcf5GCw0W5M2+Pukv3lXvxE5kyX6DKmft/QnXu0MlzXRk6aWzupVA
         i3/6mi9AoFhNTpBJbmPVJRkiR9sWd+OMk/HsRXoY7wq4mYRYy+cWphfh64+OTLfbTJsc
         oagwsElSt5YRoZ1Abi4MhN7n2q38Qd3w5tyu3ESYGnRFBgMxXj5W56GHiOb7XDJRoK8U
         qxQSO9Gjw6lw/ot2/cEhnxFInsxA2r9vzNaCimMT1azv59YFfM7EPG4k22sDyQtXSS82
         Y0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788476362; x=1789081162;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2Axg1lDBpFbiojgb7yUMw1qWPwTcpwvkNI5f/ccuw5w=;
        b=jyC32Urzh4iIZOVHwbz0gggilTGmSIXYgxoQr4PdJ7sj7BhFsnvYAzMFQr45j7/pYA
         xODBOrkuueSveEubxnf8f2E21i+rPj3u+e6U2m3zlaVix7FRAdIER5jBVA7UmiVMplJe
         3IJeLLJf2k0Ot4mnT1OWF76ewKMLRoanYr9U37mvR4AmdMKUnnYH/dgkMwWEejW/MQO2
         hh5rFS+yKzfbCjM+Yu8AlXJTcvt3QWY7bbQo+Gcr1z6kAUi8R0AqKKqA7mQFogE68vL3
         5Bz9I8HKh7v85b4BCpel5aW3pMm7nD3A3xdwgnHSfls7fdEZe1NWId+2TUIHUpFcLoad
         5T5A==
X-Forwarded-Encrypted: i=1; AKwUvBzSvVmSbcWX5C1hlb4D9oYBWrfhhtMtOX2fXPp/A8CIkS1ztG+lquSpMCGzDOaHx1emNHDW9MphH4U=@lists.infradead.org
X-Gm-Message-State: AFuF++nwF+UQjkMiz9D1AxAX7AdimChz+Io9v71FPb3q+g515Rjfh7JF
	RzoUUaWa01c3UJtZVbAEEwKFAb0YctHY7FLe2/KlNL4VbaihXyyv/KlrSuzDOh8uG3w=
X-Gm-Gg: AYBFou3XAhbyZwQHaEQcNPHdEwvU0L17XzOMtew3Q6J69CDR0o2pF5GwSj29yxtwvrD
	8XopLOwVqhwDVF+S1OW7U9vnd5dW8pIF39luDUlpPbrPntAK4DLdp+/XR3kf5dELPwqKCPS1k/x
	5HxUXlJWbJgGvR7AcctBds2KvHFQ+gakC2ym0TcF1aJ+tTocgf5piQUaEF50DCgdw+xmWqYhizW
	1bOiv1YjheFo7s8udv+Ysbj4KCWMjNUgupxycupD6fupk5bIFKKzLzndW6pdKIsxfnXlkiO8yob
	1I9qcwmcn8K8P1uLZF5sD/kMWSrOa2odiLAE/6ETgf+4zOWVRKB05hUWolCoimDkC0bR667EP0p
	hzzVQ3zwB9YJBfcLxlwZ/6215IDTIq3UkUzUM2LoOohYrSyrusPc9LfAedX6HHGnS8918LuV+5p
	HVu6A6G0yCSMgVsY3u6TyzN4LpCcPqxI5PBsXJYV2KGRnYDYMnVdVFMmhPpZk1kBuqp9+m
X-Received: by 2002:a05:6000:2c02:b0:484:3604:c7bd with SMTP id ffacd0b85a97d-4858708c895mr3948505f8f.17.1788476362112;
        Thu, 03 Sep 2026 15:59:22 -0700 (PDT)
Received: from [192.168.0.35] ([93.107.91.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9a56sm1448006f8f.15.2026.09.03.15.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 15:59:21 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v14 0/4] Add phy_get_by_of_node and devm helper
Date: Thu, 03 Sep 2026 23:59:06 +0100
Message-Id: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/53RS2rDMBAG4KsEr6syo7e66j1KF3omgtYOdmpcQ
 u7ecaDExSt1I5gR+v5Bc+2mPNY8dS+HazfmuU516KlA+XTo4sn3x8xqokbHgSsQKFiQ7KP2Xwv
 r83JhXDEQjNrpMlW2YLaAACz6z2liqEAXI0NIwncEnsdc6nJPe3un+lSnyzB+38NntXb/FTPTJ
 bNSR+e1dMLbV3rpx+F5GI/dmjPrrS2bbE12TjHwWKJAzne2edgGsck2ZEOIKnnLi+J6Z9tfWwM
 nqsW2ZDul0AgnAo2/s93W1k22I9srF0UBYRKEnY3wwAW24Uh/wkoq2VlJh8S9jhu9cXTaEDAVn
 JCoQtYp7XX+0A3YNp2vs1tlbfISC+43imKj80ZdrP+eLWLmBYxzf/Tb7fYDEMvvg84DAAA=
X-Change-ID: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=12381;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=iuh4776VDMlWkxYhUqdr/Gwr5qfpxrc+MVsg2m6Uyu0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqmfvFqFGDkL5wUEo6w2zJv5qZ0jxWEP+16anPT
 VYagCughyGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapn7xQAKCRAicTuzoY3I
 OkKGD/0el6VKvmvve0utw7XVry2wQB7GiRj2b6EFmbzppzJQKyd9coWrz5XezWlV5OALFHdgkb6
 VjwJT/cQw+MTCql1jeyL/fH8xdZ90Z64J5PVid0Xw3xsPRm8kXcHxMDkUxdRbhilkwpdnMjevPt
 mcOuUQXTjC7Cnu2sHBE54XDgpI64h+Gh95cpxFfNfcEzSbDHIuPXOf/pMjP13MLa/qpEDGRVWab
 asUFbVuDMtjOq5WIw7dbHY/04JJeaJTlLOpSHsTgsY3YaXzvamSEXuvbW/Q9OqhwDf66yOjCrVg
 BVaxB+X8ktL+o/R8e4mfUUXxZjcjYYsCZcyEpz/34G8AYxcWrrAvzp24B9seGqpId9bzyNSS7oe
 s/Z3ecAD6hwsgS5rz4XaMFziivwzyy5vwlHFp+OFp6qlMvR5CFBGH29L8jPXN+NjxyYVxnBVCfR
 3x3dyI3VIQX55Exmg530ATKdpc0V7OfcTP1ZZ1vNxwsHwQ8PCO/wK3tmu66uWwLIniBi/oMrJyr
 CL+WEkrf/VI+pVAsOwkTKc+SfRIwOFecBXYX5Qe2V8qgTZ+Q8kNl52cFkRllu0vMCRpnubnKXLr
 eF8nRvITXETc1GbChwQfiXueD62Df7YtannYZwKRh9cYeue6lxCCvlXrGxwZ84kwTwGg2LjaU4H
 YcpKFhzUhvhLTYQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_155924_548080_E02F2051 
X-CRM114-Status: GOOD (  30.11  )
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

This series has evolved from a CAMSS standalone series to a series that is
mostly on the PHY side now, so I've split the series up to reflect that
fact.

Starting off by fixing a long-standing use-after-free race-condition in the
phy core flagged by Sashiko in v13. While my series doesn't introduce the
bug it seems appropriate to address it anyway once flagged.

Once addressed two new helper functions are introduced to the PHY core to
enable finding of a PHY using the media graph.

Finally the usage of that new API is shown with CAMSS.

Changes in v14:
- Fixes existing bug highlited by Sashiko in v13.
  The bug has appropriate Fixes: tags applied for back-porting.
- RB accumulated from v13 for the now standalone CAMSS patch.
- YAML changes carried thus far will instead be posted with dtsi changes
  where they 'feel' more logical.
- Depends-on: https://lore.kernel.org/r/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org
- Link to v13: https://patch.msgid.link/20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org

Changes in v13:
- Introduces struct device_node phy helper lookup.
  This allows for finding a phy from a device_node entry.
- Uses media-graph exclusively to reference phys. - Neil, Vlad, Vinod
- Performs runtime check for legacy v non-legacy phys - Krzysztof
- Link to v12: https://patch.msgid.link/20260708-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v12-0-f8588da41f16@linaro.org

Changes in v12:
- Updates camss sensor find method to find the sensor in the CSIPHY port. -
  Neil, Vlad, Bryan
- Drops dependency on passing polarities and positions. Moved into CSIPHY
  port as agreed. Neil, Vlad, Bryan
- Omitted mux to CSID as discussed this will be done when splitting CSID
  out as its own individual node. Neil, Bryan
- Updated Reviewed-by: - Loic
- Link to v11: https://lore.kernel.org/r/20260326-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v11-0-5b93415be6dd@linaro.org

Changes in v11:
- Dropped simple-mfd in dts for devm_of_platform_populate() - Krzysztof
- Pass polarity and position for data and clock lanes - bod
- Remove check for PHY_TYPE_DPHY - PHY driver validates its own mode - bod
- Depends-on: https://lore.kernel.org/r/20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org
- Depends-on: https://lore.kernel.org/r/20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org
- Link to v10: https://lore.kernel.org/r/20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org

Changes in v10:
- compat simple-mfd added to CAMSS allows probing sub-nodes.
  The other way to do this would be simple-bus however, CAMSS
  is really a collection of devices in a block as opposed to a
  discoverable bus.
- csiphy nodes are sub-nodes of CAMSS.
  Sub-nodes as pointed out by Dmitry will allow us to show some love to
  older platforms.
- Depends-on: https://lore.kernel.org/r/20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org
- Link to v9: https://lore.kernel.org/r/20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org

v9:
- Adds phy handles as optional nodes
- Adds minItems: 5 for iommu entries
  I believe this should be acceptable as maxItems: 8 continues
  to be valid
- Makes CAMSS-level rails optional for x1e
  Similarly I think this should be OK as the legacy binding
  is still valid it is simply optional instead of mandatory now
- Supports CSIPHY nodes adjacent to CAMSS while leaving
  csiphy regs intact.
- Pushes dtsi drop to another series everything in this series
  can go through linux-media
- Depends-on: https://lore.kernel.org/r/20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org
- Link to v8: https://lore.kernel.org/r/20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org

v8:

- This version rebases on latest media-committers/next - bod
- Adds support for "combo-mode" PHYs in the YAML.
  It will be possible to build out the code to support this later - Vlad
- Maintains the upstream model of connecting sensors to CSI decoders.
  Every other upstream implementation does it this way so
  CAMSS will do it this way too.
- Reduces the number of IOMMU entires in CAMSS to those required for
  CSID, VFE/RDI/PIX respectively.
  Including all of the IOMMUs implies we will also "stuff" CAMSS
  with ever increasing lists of registers but a better approach
  is to have individual nodes for functional blocks.
  For example this series supports CSIPHy as a separate block
  CCI is already a separate block - and we will add ICP, BPS, IPE
  etc as additional standalone nodes.
  camss@someaddr {
        //existing bindings vfe, csid, csiphy go here
        iommus = <just what's needed for this>;
  };
  bps@some_other_address {
        iommus = <bps specific iommus>;
  }
  In particular this model will save us from going down the same
  path as the vpu which has ended up tripping over the total size
  an iommu entry may span.

  Nobody really likes the legacy binding much so instead of
  continuing to bludgeon more entries into it, I've conciously
  not included BPS, IPE, ICP etc.

Depends-on: https://lore.kernel.org/r/20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org
Link to v7: https://lore.kernel.org/r/20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org
Working tree: https://gitlab.com/Linaro/arm64-laptops/linux/-/tree/qcom-laptops-v6.19-rc8-camss?ref_type=heads

v7:

- Reimagine the PHYs as individual nodes.
  A v1 of the schmea and driver for the CSI PHY has been published with
  some review feedback from Rob Herring and Konrad Dybcio

  https://lore.kernel.org/r/20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org

  Both the clock name changes from Rob and OPP changes suggested by Konrad
  are _not_ yet present in this submission however stipulating to those
  changes, I think publishing this v7 of the CAMSS/DT changes is warranted.

  Its important to publish a whole view of changes for reviewers without
  necessarily munging everything together in one sprawling series.

  TL;DR I moved the PHY driver to its own series review comments there
  are not reflected here yet but "shouldn't" have a big impact here.

- Having separate nodes in the DT for the PHYS allows for switching on PHYs
  as we do for just about every other PHYs.
  &csiphyX {
      status = "okay";
  };

  We just list phys = <> in the core dtsi and enable the PHYs we want in
  the platform dts.

- The level of code change in CAMSS itself turns out to be quite small.
  Adding the PHY structure to the CSIPHY device
  Differentiating the existing camss.c -> camss-csiphy.c init functions
  A few new function pointers to facilitate parallel support of legacy
  and new PHY interfaces.

- A key goal of this updated series is both to introduce a new PHY method
  to CAMSS but to do it _only_ for a new SoC while taking care to ensure
  that legacy CAMSS-PHY and legacy DT ABI continues to work.

  This is a key point coming from the DT people which I've slowly imbibed
  and hopefully succeeded in implementing.

- In addition to the CRD both T14s and Slim7x are supported.
  I have the Inspirion14 working and the XPS but since we haven't landed
  the Inspirion upstream yet, I've chosen to hold off on the XPS too.

- There is another proposal on the list to make PHY devices as sub-devices

  I believe having those separate like most of our other PHYs
  is the more appropriate way to go.

  Similarly there is less code change to the CAMSS driver with this change.

  Finally I believe we should contine to have endpoints go from the sensor
  to CAMSS not the PHY as CAMSS' CSI decoder is the consumer of the data
  not the PHY.

- Working tree: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/x1e80100-6.16-rcX-dell-inspiron14-camss-ov02c10-ov02e10-audio-iris-phy-v3
- Link to v6: https://lore.kernel.org/r/20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org

v6:
- Removes 'A phandle to an OPP node describing' per Krzysztof's comment
  on patch #1
- Drops Fixes: from patch #1 - Krzysztof
- The ordering of opp description MXC and MMXC is kept as it matches the
  power-domain ordering - Krzysztof/bod
- Link to v5: https://lore.kernel.org/r/20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org

v5:
- Picks up a Fixes: that is a valid precursor for this series - Vlad
- Applies RB from Vlad
- Drops "cam" prefix in interconnect names - Krzysztof/Vlad
- Amends sorting of regs, clocks consistent with recent 8550 - Depeng/Vlad
- Link to v4: https://lore.kernel.org/r/20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org

v4:
- Applies RB from Konrad
- Adds the second CCI I2C bus to CCI commit log description.
  I previously considered leaving out the always on pins but, decided
  to include them in the end and forgot to align the commit log.
- Alphabetises the camcc.h included in the dtsi. - Vlad
- Link to v3: https://lore.kernel.org/r/20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org

v3:
- Fixes ordering of headers in dtsi - Vlad
- Changes camcc to always on - Vlad
- Applies RB as indicated - Krzysztof, Konrad
- Link to v2: https://lore.kernel.org/r/20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org

v2:

I've gone through each comment and implemented each suggestion since IMO
they were all good/correct comments.

Detail:

- Moves x1e80100 camcc to its own yaml - Krzysztof
- csid_wrapper comes first because it is the most relevant
  register set - configuring all CSID blocks subordinate to it - bod, Krzysztof
- Fixes missing commit log - Krz
- Updates to latest format established @ sc7280 - bod
- Includes CSID lite which I forgot to add @ v1 - Konrad, bod
- Replaces static ICC parameters with defines - Konrad
- Drops newlines between x and x-name - Konrad
- Drops redundant iommu extents - Konrad
- Leaves CAMERA_AHB_CLK as-is - Kronrad, Dmitry
  Link: https://lore.kernel.org/r/3f1a960f-062e-4c29-ae7d-126192f35a8b@oss.qualcomm.com
- Interrupt EDGE_RISING - Vladimir
- Implements suggested regulator names pending refactor to PHY API - Vladimir
- Drop slow_ahb_src clock - Vladimir

Link to v1:
https://lore.kernel.org/r/20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org

Working tree:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/arm-laptop/wip/x1e80100-6.13-rc3

v1:

This series adds dt-bindings and dtsi for CAMSS on x1e80100.

The primary difference between x1e80100 and other platforms is a new VFE
and CSID pair at version 680.

Some minor driver churn will be required to support outside of the new VFE
and CSID blocks but nothing too major.

The CAMCC in this silicon requires two, not one power-domain requiring
either this fix I've proposed here or something similar:

https://lore.kernel.org/linux-arm-msm/bad60452-41b3-42fb-acba-5b7226226d2d@linaro.org/T/#t

That doesn't gate adoption of the binding description though.

A working tree in progress can be found here:
https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/x1e80100-6.12-rc7+camss?ref_type=heads

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (4):
      phy: core: Fix use-after-free in phy_get paths
      phy: core: Add phy_get_by_of_node()
      phy: core: Add devm_phy_get_by_of_node()
      media: qcom: camss: Add support for PHY API devices

 drivers/media/platform/qcom/camss/Kconfig        |   1 +
 drivers/media/platform/qcom/camss/camss-csiphy.c | 177 +++++++++++++++++++++--
 drivers/media/platform/qcom/camss/camss-csiphy.h |  11 +-
 drivers/media/platform/qcom/camss/camss.c        | 104 +++++++++++--
 drivers/media/platform/qcom/camss/camss.h        |   1 +
 drivers/phy/phy-core.c                           | 166 ++++++++++++++++-----
 include/linux/phy/phy.h                          |  13 ++
 7 files changed, 405 insertions(+), 68 deletions(-)
---
base-commit: 2e41fb778334db3d260c52c6be4c4d44fbed87ac
change-id: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a

Best regards,
--  
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
