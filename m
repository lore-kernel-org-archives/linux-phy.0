Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDDFEC79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 14:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2WrzM5OG/v711oto0gIohbCsRkZhuGdWVYOgXdf5nsk=; b=Z+eRw442l2RDSA
	z6LTPLf9/OQOPU/p3tgHjh7x8cC1e7PrqVOl/42jUwpgF+mYmm1fLKt6eEUipjUrnOXCuDZW1132B
	Xz4WUaXbQK62Jv0hgLYgUpG3Mo4UfGdj7mOvupBXC0NHo/giYcjuTSN5sAqWtT4KxSvzKjD3Iq8VL
	1G9w1TX0vvRgS+hg2I6ZYg+ERzCL75JrFdoRRQiC1jE/6bGemRKj2Mtq1al9lUyX8JxWFzdzVlmWr
	4vldfyTSF4AeS3Br6+/0w+fG4AFds7x6mJP6b9VYI8YtHgXCHFrj9e/NsZgwniJuZZjSOWKta32CU
	ApORCjIu8bOXNs0/o4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgP-000000054tO-1MyU;
	Sun, 06 Sep 2026 14:17:21 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3DgK-000000054s6-3p7N
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 14:17:19 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-48442ea8f59so3046078f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 07:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788704235; x=1789309035; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=+Q9IesXl0s51rpgEUizCvjpTb7zaidBWBRjceEFg5+0=;
        b=wwrfRr8K6YuWVQKBy+0dIxUMhStZnA1/mZ1NHyp/NzflQKKzTv/C8HwQEN+OKIZ8Dm
         InPwPemELRT83/wzpnR1IH+TOyI/++Wnqa6JsvR89pyhrTWfkzRoRD1AwbVit3k0YxjJ
         FhPbocxQId+bUo4L+ypiX86b4E8KXCnrXr61Yvt3Semluxe56h8IbOhzftyTVDAqfvgt
         t5l859xNpnBFDepDkdabb4H0WiEswqD7y6HgJ6bjmFXiTMWSI+gqaUJLFZpyOgnzVhT1
         P75+GI3ix74Qhrv4KS1MLtDs0q6K03IBBubzH4Yl8suQ5QTeEymgFW/YhYe8YJkjSVI9
         byQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788704235; x=1789309035;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+Q9IesXl0s51rpgEUizCvjpTb7zaidBWBRjceEFg5+0=;
        b=W/fpVwHQ+Tc+EvNixNRSmNfCRnyh985ZWno/qU2uvjTkFxyR8XST4ZIpoVN5qRD9Pn
         xy8uXslyFjmtwgrpfOsY7Hn8KWjXBlWAT0/zd8F67evZ3Hn8vHHo7bcFMshyH4i9IQu5
         OvABpQBOsOtupxtqFpenGNvB5soTINQM2zxgnYqM0TRGa9MPsNr4tOT8kehS6a8vUyBI
         yNmQgYOLv5NE0T1vcwae8gKydf5J10NFdyJbaJhtn0zjIJ59LCzh/MEQMjkFddgvs7LB
         V4F7znV3+Y7H1hqdvbl+eGrQepM7DcPKkkprBQefHCJ7vyIvw/B3Mo3Qgl56pJvA6NR1
         FADw==
X-Forwarded-Encrypted: i=1; AKwUvBwBlPVJYL7XiOrfD0vFgstYz2/V00iotkP/NBL0QvewuRVxj5Gb0w/PYzCLMWu2iKfKOXBTdQg2yC0=@lists.infradead.org
X-Gm-Message-State: AFuF++myA1xtcl4mpigguRgciGaT9ELtQ2exQPhLN3UXBmeSCIWAhecz
	ep3vRITPKRWIh7usvo6uYnFQXWXAkRwRyJUq5K5U6cFa6AOOwrxA9Wo9kRDW68OA11s=
X-Gm-Gg: AYBFou1kSNoWInT/JzLodz4KF2b3/XWe33GScH89hV3thoZuZ5n95OdsOY9TI8V5wc0
	HkZ3HdeAQUn7gZ9STFui9hBTLBjY0Bj1aZCwoWakOE4ANBL+t1kAXRdsKrZ5iDugT5dY/eaPYdG
	IeFgvJ+hK1oeDiXkWJCLS65aKrszfA7ReL8YYCvq3XbvaRkQGxmhv9OngVjDPOUqr94S3VzZmv+
	NAU0Z89hMD3ZNwvHnpM5qZclb/WoXypNT6IHDAYSeArJm1zRO0YRVhI3dSzWpKP2DJG9yVF8DkV
	7WzQ/+imDBuIrJ3rJaDLJLoDVeiyBCNHb7vPuuzT0qzqM4rvpwtb6ch6CI+SndWO92XGS5E2dOG
	RJnX97jdaD+Ol6n9b+TUKyxGrIpzr26cKejnuydM+uLTFTMvZ+6m19sg6wUMJ9GLkaPGXRyNtGG
	3m/gQVn+LOyvPZ1o8TU+nDgQMmGwAb3t2ANBMP3R6yI+6TO7tzTj6chT0IAIsUyTZUFbx1vOZA
X-Received: by 2002:adf:e18e:0:b0:485:82c0:190d with SMTP id ffacd0b85a97d-4858922dbc1mr17917815f8f.20.1788704234778;
        Sun, 06 Sep 2026 07:17:14 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.250.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm21669763f8f.7.2026.09.06.07.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2026 07:17:14 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v17 0/5] Add phy_get_by_of_node and devm helper
Date: Sun, 06 Sep 2026 15:17:04 +0100
Message-Id: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/53TzUrEMBAA4FeRno3M5D+efA/xkN/dgrbSrqWy7
 Ls7XZBWcoqXQCbkm2GGuXZznvo8d88P127KSz/340AXNI8PXTz74ZRZnyjQceAKBAoWJHvvh6+
 VDXm9MK4YCEbhdJl7tmK2gAAs+o95ZqhAFyNDSMJ3BH5OufTrPdvrG93P/XwZp+978kVt0X+lW
 eiRWamj81o64e0L/fTT+DROp27Ls+ijLZtsTXZOMfBYokDOK9vstkFssg3ZEKJK3vKiuK5s+2t
 r4ES12JZspxQa4USg8ivbHW3dZDuyvXJRFBAmQahshB0X2IYj9YSVVLKzkg6JtY4HvbF0mhAwF
 ZyQqELWKdU633UDtk3nW+1WWZu8xIL1RFEcdN6oi63v2SJmXsA4V+ty1x20LRHtBXUec8EccwK
 jal0d9bY1wm1HtQ3Goc7Gi1Lr+qg3TnXb0mJCogxKaPdXv91uP77OWMLoBAAA
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
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=13429;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=QzfDs6k5TFAeL+vuY8sXI5YQTonsepH5lY/SYALUrTU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqnXXmyouA6F8uefUYfdXgQJaSPG79TdiMB1BY9
 5WE2hMQXhOJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCap115gAKCRAicTuzoY3I
 OrguEACz9d5o9SvKLiQI3TYE8Yip/iyqya+v2K0VsVrMiiQbMBzl5czHMrT2GeaQ4yoZugWKQyR
 8lC/QfTULxCSng7vRHQUnf1Rz0vndzTrGObBI4O6JfAHWneuRkf5JiKaU5j+M8HC3hn7Zo2kbgL
 6k+cLjcGwPVxkdsafoVoiLLqShjcSv95ZKrNEcc7Scxa6F2nP3Z+ShTb/j+qT+I2DOe+X36X5fq
 A1Dso2c9K1RfpNQQzVgj2ckHapjp803EWueo1G5cRECyR9UQnKEBnFb7WuGfyGsskIH6UFWrdqF
 9n74IK05TlnPHtcwxeZX8I7NHzzBvPc6yUacVsrcyEZz1uGzzCGqL6U+f4kIMWjHtiaskEdidf1
 GJ8FeuIwLm+ULXO//DdtDe7+TZF5aEivwUXi+52jGhIhEUPzu8yWDxFK0yuvMTiedasifP/Og6n
 IjoOrf2g6UHLE889PtqZvkp1fJHTBE3QEce5lX1VGWshW/MIaYS20XvVT8gcw9/kHRM2bO3vmxM
 wcFAzu+t6rMTcVCh8oip1nFmLmCosdp/vqtz03xjCpWLe3AzVrdH1z2lBytKq+3k/L+t11zXM9e
 sftpi4SrnUGlVBjEhYjCZL16gMTAPIZuVdHvRuQ3D0K+cxZBHiNCgEKn3wEhIUw2il+Zm3fSESe
 iMLmyzwfigMbXFA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_071717_121588_4389ADF3 
X-CRM114-Status: GOOD (  30.18  )
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

Changes in v17:
- Cherry-picked the wrong commit for patch#5 didn't compile - fixed here.
- Depends-on: https://lore.kernel.org/r/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org
- Link to v16: https://patch.msgid.link/20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org

Changes in v16:
- Changes CAMSS CSID to enable lanes based on indexing starting at 1.
  Since the new patch depends on the antecedent patch bundling in this series - Nihal
- Depends-on: https://lore.kernel.org/r/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org
- Link to v15: https://patch.msgid.link/20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-0-68b7916e7a3f@linaro.org

Changes in v15:
- Adds lockdep_assert - Loic 
- Depends-on: https://lore.kernel.org/r/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org
- Link to v14: https://patch.msgid.link/20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org

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
Bryan O'Donoghue (5):
      phy: core: Fix use-after-free in phy_get paths
      phy: core: Add phy_get_by_of_node()
      phy: core: Add devm_phy_get_by_of_node()
      media: qcom: camss: Add support for PHY API devices
      media: qcom: camss: Use data-lanes starting at 1 for new CSIPHY mode

 drivers/media/platform/qcom/camss/Kconfig        |   1 +
 drivers/media/platform/qcom/camss/camss-csiphy.c | 177 +++++++++++++++++++++--
 drivers/media/platform/qcom/camss/camss-csiphy.h |  11 +-
 drivers/media/platform/qcom/camss/camss.c        | 119 +++++++++++++--
 drivers/media/platform/qcom/camss/camss.h        |   1 +
 drivers/phy/phy-core.c                           | 172 +++++++++++++++++-----
 include/linux/phy/phy.h                          |  13 ++
 7 files changed, 423 insertions(+), 71 deletions(-)
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
