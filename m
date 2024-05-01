Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81458C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zc3dBR8XFNiooiAawaG2BppQY+2IE+XEHAGE+zWGrUM=; b=p9o6vBc3mJEvcC
	z6Qs2wTCqaqFJgPquM1pCryP3sleDzB/WtSg+a0HVNMiGU6owiFQD49aCcJwjsqz9wMQuSIqTGB/M
	+Ksm9PKIBQFHdLA8/iz1eXIPV/T0lC3hrnrF6aaqHaxOhZ5NS9oS9wOhJT/IEKhxdpLm+lMepOxpR
	+oc/+Er3qB0dOdU31M1SnJ4gkGAUYB3fkQ+LEnBZQvAJKJBrdW+mJTj1mN1+1CoDgIA4IOzNZXxfJ
	cV2VppiPJdpXcp38gbRnbPKp0AY9r9No+StnUegeHe20unuMiLsBGmsZ+WFQf8N9jiXrNTagPTvCG
	3nuzsvsOkvwqRUt8AjLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aZ-00000008XRI-3uJq;
	Wed, 01 May 2024 04:29:03 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aW-00000008XPk-4241
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:02 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6ea2436de79so3386505a34.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537739; x=1715142539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzHEIPYot6c8NAo7TIBriZfyyuOfBQrBEKWQMBGEIB8=;
        b=hBoHQLYozCi9tr2HmtiiwI4jCyzKHykNgjuTd3DRr8cxYFyu0nxzJhPSDGnbJXfd17
         nTxHt2YhAnn4kO00B7yVy31wNDp+2Cu77kVCOFfhuSs1xA8MG+Z7kzDHMjhooiwllNoI
         dy6QoeKRGQ329wUmY2sddNQmtHvodn5vxlVCSRhr3FbMJW+52So2Ldyh5wpEtM+xjmzM
         NltMWITQkIS1trS2YRUf3oF5hqDBS3RNn1Rk9ZgjAZdMPtcSQIRBem+qLaLOPvyd42ZE
         vcgLhJkQ65ZWDcr/Io7QCy0BseDXQvLxHDywsLc4QRAQcI9m0jRG1ze31J7VLhIECG4K
         2QtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537739; x=1715142539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xzHEIPYot6c8NAo7TIBriZfyyuOfBQrBEKWQMBGEIB8=;
        b=cnjAHIfRizAbItRwwUiqsifAwTRcj5tHBxMYBntGeCIfXFy4fVtzougHgznpRPaovR
         l5/QyvUshhRtLBeTBJXzg7cC37jATLOVpBF/UYOoNU1504GzpsqHOF73KKoRpZmL7DIK
         G1sQquzGCDGFC4nencQS5X92auASfypwr8skpVQbHs/uDgeS/L8i6HjGnkgC51sZ1h1Y
         QJxsAdZl775nTFm9TncDqCR9tZJWRXj4kXZv0KCHjI5rMQsjgAAk+owqEJ1kfTvn6Ht6
         zkQvKHbdM2px+HpKptX3AxrYtIbLCFix/unmId/YOWcxyYgWfjQ4nhYIUNDdDnvisdbh
         QXdg==
X-Forwarded-Encrypted: i=1; AJvYcCW9AoDVV4F6T2ZeO7TdfUaWitW74NrliBOkyHC8pgrHjaZgFZjHXfGiXUgU7eeoqwhRov4PeCF2vIukJ4DO/SocO+WzEE6E4Z9PFJpkcQ==
X-Gm-Message-State: AOJu0Yztm8GDp/7yy5uLun7xuHt15JCpThBN2FXie9FzgyPbqwU9zngs
	lsQ6Bk7I+Wwwp0HDHIO8DbdtoWrRBFho45Z+ZWCaUE39U+kvVazU
X-Google-Smtp-Source: AGHT+IEmyJf7Jwh5D7YCDTLEYHtmkrkYz3klIOpR6Wwg/J4Mm0QRdxvlC9SkbzpsjHk0Akh0G0kQ3Q==
X-Received: by 2002:a05:6871:7409:b0:23c:ed7f:d9d5 with SMTP id nw9-20020a056871740900b0023ced7fd9d5mr1565796oac.35.1714537739302;
        Tue, 30 Apr 2024 21:28:59 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:28:58 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 RESEND 2/8] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
Date: Tue, 30 Apr 2024 23:28:41 -0500
Message-Id: <20240501042847.1545145-3-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212901_015855_029FD4A3 
X-CRM114-Status: GOOD (  10.15  )
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

The IPQ9574 has four PCIe "pipe" clocks. These clocks are required by
PCIe PHYs. Port the pipe clocks from the downstream 5.4 kernel.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-ipq9574.c | 76 ++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
index 0a3f846695b8..bc3e17f34295 100644
--- a/drivers/clk/qcom/gcc-ipq9574.c
+++ b/drivers/clk/qcom/gcc-ipq9574.c
@@ -1569,6 +1569,24 @@ static struct clk_regmap_phy_mux pcie0_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie0_pipe_clk = {
+	.halt_reg = 0x28044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x28044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie0_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie0_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
 	.reg = 0x29064,
 	.clkr = {
@@ -1583,6 +1601,24 @@ static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie1_pipe_clk = {
+	.halt_reg = 0x29044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x29044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie1_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie1_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie2_pipe_clk_src = {
 	.reg = 0x2a064,
 	.clkr = {
@@ -1597,6 +1633,24 @@ static struct clk_regmap_phy_mux pcie2_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie2_pipe_clk = {
+	.halt_reg = 0x2a044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2a044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie2_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie2_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie3_pipe_clk_src = {
 	.reg = 0x2b064,
 	.clkr = {
@@ -1611,6 +1665,24 @@ static struct clk_regmap_phy_mux pcie3_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie3_pipe_clk = {
+	.halt_reg = 0x2b044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2b044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie3_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie3_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static const struct freq_tbl ftbl_pcie_rchng_clk_src[] = {
 	F(24000000, P_XO, 1, 0, 0),
 	F(100000000, P_GPLL0, 8, 0, 0),
@@ -4141,6 +4213,10 @@ static struct clk_regmap *gcc_ipq9574_clks[] = {
 	[GCC_SNOC_PCIE1_1LANE_S_CLK] = &gcc_snoc_pcie1_1lane_s_clk.clkr,
 	[GCC_SNOC_PCIE2_2LANE_S_CLK] = &gcc_snoc_pcie2_2lane_s_clk.clkr,
 	[GCC_SNOC_PCIE3_2LANE_S_CLK] = &gcc_snoc_pcie3_2lane_s_clk.clkr,
+	[GCC_PCIE0_PIPE_CLK] = &gcc_pcie0_pipe_clk.clkr,
+	[GCC_PCIE1_PIPE_CLK] = &gcc_pcie1_pipe_clk.clkr,
+	[GCC_PCIE2_PIPE_CLK] = &gcc_pcie2_pipe_clk.clkr,
+	[GCC_PCIE3_PIPE_CLK] = &gcc_pcie3_pipe_clk.clkr,
 };
 
 static const struct qcom_reset_map gcc_ipq9574_resets[] = {
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
