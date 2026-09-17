Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 106C1C982D7
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orWIEw3ik5pSHvnasHSut18BWeNC2TEm2U4K7bcWG1s=; b=wwJHpEHyZOSUiR
	YTrhtKhu+l8taDbBxlX+/RHQyG/vzDQ9toBbU0hTDL+/InvrN9PyZtquJldKLV6ecDko1mYB92rke
	rdTj/yitf+UOZd6YDHTY3gwrWAIzOIttthl/RiW69No5+DYDYlFW0EYRcVpRr5JuVF5IrKnkk+qrq
	jTx9iVWN2bDHg4qYoR2xoI0pn967C5LnY5ieqVnRNdw74ynZX5IOt9Wtd6UlnGAHNEowZmHoWMiWd
	9gvJiqeQHVeSoJXnM/76/z7MPSGdtesnbg6HJm094CTjOwQq5F5iXoV4TKPKRdQsQ24tDSeqfBl3g
	kTjLl5/nc5+J7amM3rVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzE-0000000BfZw-2mgn;
	Thu, 17 Sep 2026 15:25:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DzB-0000000BfYZ-354C
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Sep 2026 15:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=/KSIUB5tT00pB2AqcU5tWe3CQfI5ykfAytpgHw+icXA=; b=UCG6wIn2tcZ/n7Fbgw6w5qeYBE
	ejfvCO6eR8AAZrYPjxHdVMXWnBAYYmnCGaohbRdGfdrCHVZICXXsNkjpiOEqMMLJsFV+SpM6BvtZU
	uTUct2TlgKLJJFFMddPyDm15JYHTeAeYf2auQNSKmkKtC8RhNC39lemddGhDLvGnYkeaCe5ShQPwQ
	N2L2boyq5AfCNUV/q6t68yBeVaeabqa3mUvGgNJ8R+Uj4gShhJKS/AE8tIIfX0awMX/DqbzHun4WG
	rQfaIceD0BDVFp/GiCFpyU6SRmytF8QHu57ZUTj3mtIi6LIG3OdAPSliFTunclUOUgKLov1VTQt9x
	ExJ6P0WQ==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7Dz8-00000008zPL-0UL0
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:25:16 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c294ad260fdso156364066b.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789658712; x=1790263512; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=/KSIUB5tT00pB2AqcU5tWe3CQfI5ykfAytpgHw+icXA=;
        b=fORuVt4hxuXRw85DFcEEG+MKAMP2n7S5c+tMSBxC2Tc6ojXI6xekjtHifTswn9IJcX
         4nfU9/gy/cyy+hc3c7KH5ldAGy44MToJCwrJpSX/eXC9JH/lX7DYkrLyj1FSW7dGO/Lx
         I5OwwbjfxhnpyUp1csKiSN322Mt5wDVNC2e0zipFiWONd390zrr95KaE1zZE6jiZPorc
         9RLTSbeUxqHxkp2ODpD7MTbKqaX6ddZjewbKTJHWMnvxbShx1s8X79/X25zutqaT1N2Q
         TYWs99Ppza2uKg6HitC/m9J6xXReL+fQ4A489uhjGqRmGHUZxZL4pmcx3uXQPdLRekgp
         RMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789658712; x=1790263512;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/KSIUB5tT00pB2AqcU5tWe3CQfI5ykfAytpgHw+icXA=;
        b=HdBELOtNIv36v6ryyUnmS9ulvDEI7FkDASvfs/e7ekUg3jmd7TSX+xu2UmOQZCPbA5
         weB6UzpSZ1hcrMgKFfIPaK1mU2GzuSXGsp2co1xgc6KSG6LF8Wc0osgkqDXEXmdCviGF
         S0aIx9rjRqFWcap1/M6n8F9Vk8rB5wxEdv1zGGh71MP1Sko17qHA1pUcH/iccmPtPc3/
         TS4Wh362aDipb4eo5ymo0YTiK+CGfvgA1OF5lLH4ktsQ2D0V7ildz8P+ZFMN5D7pyv6F
         nR4/A8I91T9A++YsJzJhpy2VUw+yaAg2ZQtaEbWD3TjuRdL1YLxa3kr5gPdVyawEmOR6
         RhYw==
X-Forwarded-Encrypted: i=1; AKwUvBwkBuYO4GEfYwMWtSJycMvmPeYn/irEq9rYTChaNZp9sIUVGoYGH0JNmJYIkFqq2hKPWWrqq1VjV7o=@lists.infradead.org
X-Gm-Message-State: AFuF++kXy3wcPwwwxAzVVS5JWuHB0ocz3IJ226EBk0R47eMYfXSCce6j
	YTPLl+RF433C1uQunyoeZ6UrXgt/Dh7a7rxC65SQ9u2nYsD7dB2r4Rd/WujbOXi8AOI=
X-Gm-Gg: AYBFou1WUB1JnDbiTzrP3QS61x6ka1d9QUHN/qRSFxHC8Zx5fcyScMnxy1DJerfmJ82
	pGE2b6i488CmxPDb2hn4Q2P0aVgXoSU0REkO4rIbpMY+geGtr4VVztCYMlSA57JpbZfXQuNOQVI
	cfngMEj5RzKTr15IT2e6ATdoZOxxFc5Cb0lCXD5wEIfZcwWVe/8D09n30hWuCuoPtveSnxLKCKw
	Dh/WvO/QRAAGItJvz3dahWCmfT5tgQaOcFeUuVki9dd4wLiv9W8Tqirnc8eLXthTa1iiqFztPiJ
	m9JWxA+xRh6JjEvA/6O1Viq7HHBfklE3uGtO2ZhkEeYjYzM47Up9x25R8hRF+mlqsVVX8/j0uIg
	ie51gioWrIbhm1RjiV5VPsKd1qt/uVbKmmGoymhsYPWH/u0KKBzxOwxXJ6rlli1updndMImGIUY
	yEQwuZJoZcJ8TqD9+0QJLKRIVxUGGTa4Mrrv5AV6omWNmHUTZoUtBJen7+Lnfv8uxl0GExjoftY
	Hr52evmow==
X-Received: by 2002:a17:907:3e1d:b0:c25:5e10:1ca9 with SMTP id a640c23a62f3a-c29f5229527mr302539366b.5.1789658711496;
        Thu, 17 Sep 2026 08:25:11 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de48755asm310587366b.24.2026.09.17.08.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:25:10 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v19 0/5] Add phy_get_by_of_node and devm helper
Date: Thu, 17 Sep 2026 16:25:05 +0100
Message-Id: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6XTzW7bMAwH8FcpfK4GUt/cae9R9KAPqjWwJoOdB
 SmCvHvpDkM8aBdtFwOS7B8J0f/rtPIy8zp9fbhOC5/ndT4eZIH0+DCV13R4YTVX2Zg0aAcGjcp
 WfZ8PPy/qwJeT0k6BUbJdT+usLsgREECV9LauCh34FmzO1aRJwB8Lt/nyWe3pWdav83o6Lu+fx
 c9u2/2nMmc5VNH6QslbMil+ky/TcvxyXF6mrc7Z7207ZHuxuZasSysGte7scLcD4pAdxIZcXE1
 RN6d9Z8fftgct1IgdxSbnMBgyWdrvbNrbfsgmsZOjYhqYUCF3NsIdNziGo9yJarUxRSsPi72OO
 32wdZkQKJfJWHSZfa29ru96gDim66336GKsyWLDfqJodroe1M127xwRWTcIRL1u7zrBWIgkF3L
 zyA25cIXget3t9bEY4ZZRH3Mg9BySab3u9/rgVLeUtpCrVHDG01/08B/6llPWSNI3a8lUr++CS
 vL6kB5//TOFULISAv+h3263D6zsqgykBQAA
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
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14498;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=rx8muz2gLfTOs5nwKrSsdSEhWt1eqccx2Dfj6gN7cJ4=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrAZTslyYg9gN7JkEgRnyF5kxKYCw3mye8b4go
 cGj6M1n/TSJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqwGUwAKCRAicTuzoY3I
 Olq0D/93ss75/bZ74RIpP30wiJehvVgJ8nn5FIOUltQqkjGtsnTIxCn6c/UjUsoKNL149Ou8YZ9
 3AS9xbXtWck1HRUukHPE5u7aNpXaBTYcRGIlfkmhjhG0dsQiPgWGcefFPFMbz7QMy8h5RBWZrE0
 U92ArdCa6WYpGVMjgjL33SllZbAANDo/tuS3XO0U8LIZO31c+d+P0HcmIPN8NYDQ0uIBJgffAWf
 L/TarmbHnfeAKZM0UXtaUn5se0ZuPa6DEY9SYOvvezXs4HGUJV9yRlCPlfPRKDscbo9f2vL5f55
 zHXJtghGROYDy7yQO8A8VIhL4/+yBPMGqCdUDAveP+bauytxNtvzUY/aI08H0gV0+Vr6AyNWouq
 9+0g3kol8hUe9EyPTwchHM+wMl95sJN8ofQNIJacnV9j1PF2wvwSH+Q75ERt+qtDNKLFzXRHoub
 tVzBRC1Sz3kgPJs/jq9sCzg5oOr1nSZUrLxwWIo2hACa6jklL9pCn/Jb/m4+7WlObHeQQC/TNqR
 TQ1NoJ+caPAz2lRvkH0pOviWLG6t3dVTv0XZBXj5WTagE5DdFYWWfiQwBFc0OpGCeI1oGKN5dZp
 fQjZAthd9Pw3tfyVykpqDGnfMaBRzA5h9JBVMpjkFhQNwJxdR48KO9so7oWlWlSq3j166Hv68Pb
 ajNxwUJjK97n/wQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_162514_435380_8DC056AE 
X-CRM114-Status: GOOD (  29.52  )
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

Changes in v19:
- Adds Neil's RB
- Drops change to comment
- Drops dev_dbg() change to dev_err() in the wrong place
  dev_err() is not the right change to make as device_add_link() can
  legitimately return NULL - Neil, Frank, Bryan
- Depends-on: https://lore.kernel.org/r/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org
- Link to v18: https://patch.msgid.link/20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org

Changes in v18:
- Renames first patch to "Fix race-condition between _of_phy_get() and  try_module_get()" - Frank Li
- Keeps original mutex lock/unlock scheme consistent with rest of file.
  Propose a full sweep of this file with guard() in later patch. - Frank Li, Bryan
- Fixes various sashiko flagged corner cases - Sashiko
- Updates RB/TB as indicated variously
- Depends-on: https://lore.kernel.org/r/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org
- Link to v17: https://patch.msgid.link/20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org

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
      phy: core: Fix race-condition between _of_phy_get() and try_module_get()
      phy: core: Add phy_get_by_of_node()
      phy: core: Add devm_phy_get_by_of_node()
      media: qcom: camss: Add support for PHY API devices
      media: qcom: camss: Use data-lanes starting at 1 for new CSIPHY mode

 drivers/media/platform/qcom/camss/Kconfig        |   1 +
 drivers/media/platform/qcom/camss/camss-csiphy.c | 200 +++++++++++++++++++++--
 drivers/media/platform/qcom/camss/camss-csiphy.h |  12 +-
 drivers/media/platform/qcom/camss/camss.c        | 119 ++++++++++++--
 drivers/media/platform/qcom/camss/camss.h        |   1 +
 drivers/phy/phy-core.c                           | 164 +++++++++++++++----
 include/linux/phy/phy.h                          |  13 ++
 7 files changed, 443 insertions(+), 67 deletions(-)
---
base-commit: 617b69946d330ed334861a3cc2660966e8c14b2c
change-id: 20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-1506f74bbd3a

Best regards,
--  
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
