Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA986C982DF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WHVzCY4Q893ZWqqdoVTeQMMKJ27YLm5Y0NH+FgZe0VU=; b=aICQZZM+vOwRik
	9MefgPsQ81GnlCHS7HrRNrZAnyKtPRa2ubaCh4UuVIae/hpczTxJNi+gh5h1hN6Vvj1YKg9Il1rE7
	fUcAx1YrC+r++uYu3qyNralsPOWvAynzsqt813XgfR98bn/X0tH/jW6Nf1YW2bONUeRoI1wOLVHrQ
	c4gXhaaJWoBAMe41G7sDs9BkYBybiI65e7gCjXZ4GpUHvxjwp/gD/SLTDHbwEZ5YdKj6Qbh/7o0zh
	XovqFRr3rfDgWdjGDvtZmWyTuQuxaM6XdiiecR3pzkwfhegx6sLKTksCvhwTKDz+TzXl8Zw4xm70m
	MlDLGLxjv74p7FB+0qGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5C-0000000Edu9-1xka;
	Fri, 18 Sep 2026 13:56:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Z5B-0000000EdtK-0CzX
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 13:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=qzd8QPGMfIG9OoOFGT9r7QqTnqSaLuUNULltzLXACkQ=; b=jH9tm0ZEA622QZz3ntBxf3nCvF
	NkBz27G85DzELRXLRfR2iPJO7yS/vV140CFVUPEoinTbGCG9Uc5zYIO6YqXOjdDydQrrHA76txcGm
	4EFY56e43udK5T50NfE0ucBQ8MCV7L5M8HUGUn5dhJtafWj8QeTnLzJdFPIP2ccy+r/H4bMvPO/sp
	KW1kiVxeEP9z/CnYOKkwp2IXMk7ss9NQCIjy95nX9625XAkYPvD9aLjhPJQmDqSh73Brf23CpEJsb
	LYUh981x1RGP+NglyJyK6NoWC5Ftv7z7SZJCaBajwrg5quG7dzwxVu0pX/5I7Xf4h6aaojAmBuMln
	WivrTD8g==;
Received: from mail-ed2-x0f.google.com ([2a00:1450:4864:33::f])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7Z57-0000000AAZP-2kUh
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:56:51 +0000
Received: by mail-ed2-x0f.google.com with SMTP id 4fb4d7f45d1cf-6a60591ae54so1118889a12.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789739808; x=1790344608; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=qzd8QPGMfIG9OoOFGT9r7QqTnqSaLuUNULltzLXACkQ=;
        b=i0r2syIqP+9BRloT2JKY6CpcotlCRiauf1xvuT0zCzWtKU0WXujttW6a0UsjnuWghN
         YZAUyUcz0fJp3diJ0iDt3++bRYcHCfyvQfIv5EP3lS7NXDOzCxREBn2OmdTjlQ7jvVr/
         ondUEojpXYFtfnbaT43bAtmKOqYHD/up4VGQU52RrnXYPhFxyvlx7cjlk5qekLCMdkeb
         eXkxW6j2AJRpOfoG1InpTWEcrhELVey60ZCOUUjOCI56G/YlNU4vHEjDS/IvBc++rRJ0
         NDzAjj7pcBHd+EMoH4L2xd/jU7lIRy64mC9qIrjHusp2gAARX4bBjzO+T09OSiFeIEz3
         P92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789739808; x=1790344608;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=qzd8QPGMfIG9OoOFGT9r7QqTnqSaLuUNULltzLXACkQ=;
        b=Vz3RCDgKCWNi3eCixSvkS5FDObFRjf5zd9siZUlB233HyfZFFpCD5xp4B+3UeOwYrp
         BIa41ZbnwdiXB8smCZmX8xw+u9j/0YOGebf6/auFImrZsRxfCsNgMZd8RjPVPL6094Ln
         uXtJz9QI9JeKzNIpZuzSPey8jME5L8cXBsnl8jjrOJv46eOsRRIbsgLJObL5LVO6i6kw
         NAX8WEqES5TjvyfM/+Tgi9eJvrg68roMjNqsIl4WQaD4OKTnRSzp++xnhiJ4EX540box
         iQD8BMlpNrqJ4jdpVxCsfmWbwpp1HYvMe+R7A4miVaAHUs7HP4RmMSfYI+nRr6Fg99I9
         HdMw==
X-Forwarded-Encrypted: i=1; AKwUvBxA0IKSRVGQLgGe1HLLVs4IfTwem0d+09I5hIOG10ExdDkQj5fVIGi8UgJ9dCzXg/6Lm7Klsen7qQc=@lists.infradead.org
X-Gm-Message-State: AFuF++kM60KvyGirLw9GiM1hbIz3mFsVQtJtP3aBJtA8rzYGWJ86XpIa
	CZhhucYW7OsGWOrILoNAKBbjKbJ1VW1+sznuffDGvF69HTjJTldkomuQ0ZojxPpz/yo=
X-Gm-Gg: AYBFou2NEZtX33eAowe2DhebB36aSpSia15HjCoNrulgIk1BV0o0b/jaj7UUS57r+gn
	iYkSidTPgvbW4hGzBswOL7SiMYMaeggoAohVpTQP/FJPtl1jdIOAWnYR4YL3CLDzvPzs50EZtTK
	Y4N3RmF1KMn3B2qOewNgP5RmxSteJzcM7OzltTPmWFMrYtJP0ywgPOLIVlj6gdln9UUbIB1SMz6
	p1EqqlQp2wElLYpM4e2AgGNwQQPhJgp+SRxr4BV9Dgq2oku6fR+s3CewnG8CFuRlA+iZ0k3XrUm
	TZZBqCAXzg/8iEbirN4I2PliaYZqYDvCHwbPeB78MvDrcl0f0Z+9RBxqwD8KuSxbe+5TXrjSw5w
	neTjqZx/14w73xBTJ1lt8oCfZ2S7UxPGmJ+QXBKl+8vmYgO3VkW4ptgIsOFUFiwXkGv1BMAH1Pm
	d/RaC08QMxhzK0iz3tMXnvat6lqkLYvmnM+RfuOtzmKM1igO5giCP5Y0bVqbAne1ARBX9rE4T2W
	kkna36q
X-Received: by 2002:a05:6402:23c3:b0:6a6:8dd:c76b with SMTP id 4fb4d7f45d1cf-6aa52651434mr3708494a12.1.1789739807570;
        Fri, 18 Sep 2026 06:56:47 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59730866sm915455a12.18.2026.09.18.06.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:56:46 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v20 0/6] Add phy_get_by_of_node and devm helper
Date: Fri, 18 Sep 2026 14:56:35 +0100
Message-Id: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6XTzWrkMAwH8FcpOa8Xyd/qad+j9OAPuQ10Z0oyO
 0wp8+5VuiwT8F7cXgK2k5+Elf/7tPIy8zrd371PC5/ndT4eZKHhx91UntPhidVcZWPSoB0YNCp
 b9TIf/lzUgS8npZ0Co2S7ntZZXZAjIIAq6fe6KnTgW7A5V5MmAV8XbvPls9rDo6yf5/V0XN4+i
 5/dtvulMmc5VNH6QslbMin+ki/Tcvx5XJ6mrc7Z7207ZHuxuZasSysGte7scLMD4pAdxIZcXE1
 RN6d9Z8d/tgct1IgdxSbnMBgyWdrvbNrbfsgmsZOjYhqYUCF3NsINNziGo9yJarUxRSsPi72OO
 32wdZkQKJfJWHSZfa29rm96gDim66336GKsyWLDfqJodroe1M127xwRWTcIRL1ubzrBWIgkF3L
 zyA25cIXget3t9bEY4ZZRH3Mg9BySab3u9/rgVLeUtpCrVHDG03/08A19yylrJOmbtWSq13dBJ
 Xl9SI9//5lCKFkJgXudvqFvWdWYakzBd2m6Xq8fnrE7IQIGAAA=
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
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Oleg Keri <okerixx@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14975;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=hpN/lFr9TQhl10TfCPiVVbhyjme8PWNFG2s3xnliXZM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqrUMaPF6JpZ0ZXZbZ4/R/UoNxl+MP5LQedDChx
 jkfLPnCr1iJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaq1DGgAKCRAicTuzoY3I
 Ou+kD/99E/vRjpLd5zd4ApGdG58sRjDnwVwnamMP1eID2nfBQTnwFTQeGFJQ+8m/r98RRwwS1QZ
 UKSYObtnNrEWaXoSIQOE02e8DiKfd4UGeOVDwjqJxGjPrPnv/lFcHeVfoyz22VXUqeUKI6mfuxS
 sBPKGKAaRKFte4YFacWMHpP9nGmpieapo582qjylqVnxWwBchFbDHRBpbtpqdixsvVUmCib3qKx
 VmtBMNksFde/JtLZ+7o/AlmexVlLVmds6nS8LsW+NWNKDkUSUwz0LTRKQODdJK34voMYqQSb8Kb
 8N+2+3QxsvoQOIpTfK2LktB588iWdCXX66HMJcGQBBfaSEZ5MP3py578D8zECXeery7URNqkqlX
 pw97+EnFGlw6kDWHuKsjGyyZfBrhNECCWu/xuU4MHpYtzOtJolVYl1IhbLfgW+q7HyrUXnbFbmA
 RMDC5Tphrbai0Y7VmMIwmgra4AI98afGNL2PdOKyH9Z4ynK7heGOI0jf2GZ9+40qZ95X6L+0HPb
 WwbpkqmIbgKnQIG9jOW9P8NXEG3zhzXStUdSN0WVyz9WcDKJxaOgHfYkNOMPG7TvRwKX62DN8hp
 CX5K/r+IB60sydJZzgK8O8TVqqvza97JdO410WwdpgBusrjZY1LK9mQ1dQYBY5khoTqDsIj1YcV
 QnTZDJ4sNnncSOQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_145649_907604_3FE6BAEC 
X-CRM114-Status: GOOD (  27.49  )
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

Changes in v20:
- Implements "Returns:" flagged by Mani.
- Adds RB - Mani
- Adds small patch to fix existing missing "Returns:" - bod
- Drops np check - Mani
- Removes \n as flagged - Mani 
- Depends-on: https://lore.kernel.org/r/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org
- Link to v19: https://patch.msgid.link/20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org

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
Bryan O'Donoghue (6):
      phy: core: Fix race-condition between _of_phy_get() and try_module_get()
      phy: core: Add phy_get_by_of_node()
      phy: core: Add devm_phy_get_by_of_node()
      phy: core: Add missing kerneldoc colon in two locations
      media: qcom: camss: Add support for PHY API devices
      media: qcom: camss: Use data-lanes starting at 1 for new CSIPHY mode

 drivers/media/platform/qcom/camss/Kconfig        |   1 +
 drivers/media/platform/qcom/camss/camss-csiphy.c | 200 +++++++++++++++++++++--
 drivers/media/platform/qcom/camss/camss-csiphy.h |  12 +-
 drivers/media/platform/qcom/camss/camss.c        | 119 ++++++++++++--
 drivers/media/platform/qcom/camss/camss.h        |   1 +
 drivers/phy/phy-core.c                           | 166 +++++++++++++++----
 include/linux/phy/phy.h                          |  13 ++
 7 files changed, 442 insertions(+), 70 deletions(-)
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
