Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A136C07E8E
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 16:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S3YN2tzrtC42NabDHdbecACuKqWqyxBsOa64w9Z/Sz8=; b=oePQ4sAkVxIYmn
	r4jTGhe3cWyPHNKoVO4F3mPbbIz/z2rtaswQ08LZzPxDUUduvLg+BF9NAXCXLhl6VIPms5bMNeo1g
	+a2ezQnX1HIowBb8zVqDQr3qB/E0zgGnA7W/2hEth71Ha0OurVmwaJV8XSkED7qSWtEwV2s/3DPzI
	3Htt+dTo07l+hHWYG5/IBjZgttJxycich5QZPuddeQwFx7mfEkZqfv3WkeYykKVZUiDuKCB0q3M/2
	1bNhmlxIaKAniHBvr79YBJLugUL+s4LtT2KZrwq0w7awU+NmnGjEQOIH/hMAYHxX9MNoa+T61MM1p
	WpxShKb/kznH3U35uVhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLF-0000000EFmv-0Ov4;
	Mon, 22 Apr 2024 16:16:29 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLC-0000000EFkT-1t0I
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 16:16:28 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-41a5b68ed85so6795195e9.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 09:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802583; x=1714407383; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bU8SyWH9gVcDdv5hm4dos3A3o5J4VFVoeYlWprMACSo=;
        b=b0brAwTnNhYxBYcQIVKgY0YgujNzgtIj/r82Pg12iT4LlGxm/5iFzhd4rp3QTbYMR6
         vktS+Ei8IklUUxv9e1BIiz18W3MdGvKdR3qbfXMNvQ5H9OdNObe0xznNeVAjK15BKpR+
         5pvn1FcQjr1HW77ogR8qF8NC4LqIgtQwCnLHaik9Z8+5lc0+a2SfnsjYCKdQ89zvomrU
         at3FnIiLWi+7OLh6V9V/G3wA4YXXnSFmgfR6crTPIOzJeFVPC8UbMV9tLKFDhuSJzdbZ
         7npqe676wxVl2XkBjVwZxjqUxqLOSBH39IKv6oRl9R2FVs+n1FvFxpKzRP+LbPS3eISv
         j7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802583; x=1714407383;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bU8SyWH9gVcDdv5hm4dos3A3o5J4VFVoeYlWprMACSo=;
        b=ok8MuwjbZHP1uw/irE3DY551vMwl4HqOQ6946MH8oKLsAeIuun+OLjsY4Ph4UD3v7i
         Rq2hHbBE9NoYQXrJ9eC0bMSlsizjKjQawz01xrq6KxLyk9CBjEvjMcw9qhXRfSkW3NZG
         5yceRK3UpdzaxC/cuHmcn93CEEUUsxzWotMgQ6cQSMXSmP79cCLlG/eyMbfNDx6jTlJp
         54f40JbalVrUVs+bRAqsShS3sO4eWdAWwEavnt85+5Lj+2lZYv6o5bh10Rhn7vq10My/
         +5fZT9OyYWOj0sKvNVxeRBX1WVRCwPzS4oOntFBbxYhE0wtREPJmd1EvCqa/aBRyKaQZ
         PD6w==
X-Forwarded-Encrypted: i=1; AJvYcCWGkkdsL5DuqwMjM46lFkAg2aiYHXFp2ctmRj0KTJEpDvtcCIH8dyScBahct+T+vGdSQ3qFGl3BnUbvZGqMUSwdkcgzshwwfMb8c6PVOw==
X-Gm-Message-State: AOJu0YxRzd3x2k2KGRkQU04vv/t5OqsL+Aw3cCDS01ViXp5jEhm0Ka5j
	BPUojIAd99OY28ki7Y9Aw2yJRZmWPbonay/3uiMRr6o+8O6hK9x6CuXAl7urDm4=
X-Google-Smtp-Source: AGHT+IGQycu7zBCUOYhRB7R+N3JQTO7Wm414XLk995+4O5kncaGlgaSVmV9SUmCLVYdtLHUFUnGbcw==
X-Received: by 2002:a05:600c:4b92:b0:419:f4d6:463b with SMTP id e18-20020a05600c4b9200b00419f4d6463bmr102677wmp.14.1713802582985;
        Mon, 22 Apr 2024 09:16:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a12-20020a056000100c00b00349ceadededsm12463710wrx.16.2024.04.22.09.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:16:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/3] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Mon, 22 Apr 2024 18:16:17 +0200
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFGNJmYC/53NQW7DIBCF4atErDsVDNiErnqPqgsykHjUxCBwL
 EeR7x6STVt1lS7fW3z/VdRYOFbxtrmKEmeunMY2zMtG0ODHQwQObQuUaKRWDqaUmaCetksn4Zz
 rVKI/QSaOoCAPF/DnBej4BWanO9U7K20IonG5xD0vj9THZ9sD1ymVy6M8q/v7j8isQILDPlhvi
 MJWvh959CW9pnIQ98qMP2TEJ2Rsso4kvev70OH+j6y/ZfOUrJtsnTO282iJ4i95Xdcbgz07AJU
 BAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2614;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IcItaCJcy/U1d83MujZnE2JgJWxuhjjJ9qQb/luPL5E=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJo1Us0d2fw4Xht4pMnEl+/zfXvIMBe4eCZMote55
 yjw8WLeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiaNVAAKCRB33NvayMhJ0d4vD/
 99c0TRnK+V+OPuvZR4yC7UKBJflQzJ6ZL/KsUqFc6jFAu5qe8FQEdNpuzgpdLiu5nizNvrukc2zjk/
 qbhntRxtk7/LwGg1McPQg4SfMy/4bOEWnMh1nLw0MG6zTDq2qjxZi8/Dg3fqGIQ3edduWtkel0/1cu
 8PLvLo0UX4jbzMterETkufcyDKnEAr6Fmcs4R1gpKdlhAw80EZpV0Ly3BbNQZK08q4BGu+L46V6KW0
 UbrPNJp71EVlN0HkAPfzqfFbaR8mXfhvOaIZwW/w5pG0/VvCtMH/2FkgMdBof6zf8/pq4Mt+gqRs3g
 O0MEVmsRirMYB2630HKRNdKlGRXDVyJN8anp0Z/oaSk4GQ/snEtnPN/4/fo3OhFhyU+a5k4wZsQQwx
 hiQp9AUOT4/QXA19n1pCnp6uFiGklyMf0KEKIqNMHi6UqpdKN/gaUaYvjTlMCpxdUCUm3LwtaFQ8Qp
 G/DbD9vZuVafgMnL09j16UD9XVe0PJMnBl3hDKL4o/99Jk/sPgpW+Cj8lmuUHdCjZKPYluMsLQg+Ln
 nP/7l0VfaiMlCCBsJyQ58efKtOHsIL61NqbOk4CulauEEupzHRYdkGYWTXdFwksLpeIwv3Mt5bF9wM
 qfbI02+nsJmle+1WLdNHwpoIRUA6JW+VmHTVKKVCy61ML5oaPDnf42WeExqQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_091626_540637_70661B88 
X-CRM114-Status: GOOD (  11.49  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

The PHY driver needs a light refactoring to support a second clock,
and finally the DT is changed to connect the PHY second clock to the
corresponding GCC input then drop the dummy fixed rate clock.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
- Fixed dtbs check error on sm8550-qrd.dtb after rebase on -next
- Link to v3: https://lore.kernel.org/r/20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org

Changes in v3:
- Rebased on linux-next, applies now cleanly
- Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org

Changes in v2:
- Collected review tags
- Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
- Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
  and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
  when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
- Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 19 -------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 8 files changed, 12 insertions(+), 57 deletions(-)
---
base-commit: f529a6d274b3b8c75899e949649d231298f30a32
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
