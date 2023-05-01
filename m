Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85C62C7EE24
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PB1xtMPZwaA0bmg8l136dXf24SA81Me+FA/CSQoxxN4=; b=FKtdZWHGvrk+Xf
	uSSpLM7qOHnQzQxmWKfdts/9m9s0E15GY9PvbXhXfX4ui2G6j3z0mzaM3ILwpRRhPTGe5cQzGgniS
	e+fdUuHEpvnouRaaWziz3vk4mhcwrFGweMm6d/1BIUA/tw9Eb2bTvwTAnN1f90lUI/R+Si20SIWSW
	NWC7HyoGoKWxr8Stdq9ZW3aALnZ/pvFl5NJLJ5x6SJKmRCWF8HQUDzwTyI8d0HoPWRI8wNvDr/GaU
	KvduCypv8BOdsPrvlGq+L2/PzUmIreize85OXfLZW/7qGbdmoaHTxwMvsvWm7+qUG9aFa3DJA/HvC
	kFvrtcL4K7ala+RaGUKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ91-00GgMN-0b;
	Mon, 01 May 2023 19:25:07 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8z-00GgKr-0u
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 19:25:06 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-63b4a64c72bso2016659b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682969103; x=1685561103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G+pBeS9Hy93exDLsefkYuUxrFqOWBmhI2jVtFARaSEE=;
        b=AtgDoBpxQSSDh44UdQty/vRuFhtjwIi1zEb7gyHEee8aUWm/K8YfYJM9CHrDpODjT0
         TbBMQEPZ7HzEHk3F6D/+K3gIJOXGljPAQ+G+a8TDomSKajd+E8OaPNrV7JrKrsKrC5PI
         ExR3HZmpzOvSlLK5R9XcpI1WcHIHZ1/UDP/Jl1xaloym8h9kOmm0HaM7t0rnkfrYhnA+
         6XfpXA7JIsocxXAp/kZAjzeZYwa+5tBnPLP9kjJq1I6C40dRtKuEROkqpJQYJgjennxq
         J94v8LRftoRudirrGwZPcGMcCT2KcFIwsoqa1Ivbdg3t7jlqGgPq/S8uFPmG9Pa/YZrJ
         lF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682969103; x=1685561103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G+pBeS9Hy93exDLsefkYuUxrFqOWBmhI2jVtFARaSEE=;
        b=ClRcKsqLBHA2kWVMLmqv0m33ac2P+2TxKAINZ5D+J/2AwT39Zi3TDkYhR9Ru+xBWby
         ElCwlmopN6VSZ1vC5cJK3brGD6CgE2aHM6UlWXMzgi7pzcsTsMIWR1lXrvuNStBxvvl1
         v8JqAp76BBM43jwB3LXjmfCJ9nHCUMwqP3WOR5zxmCEEs9giIchsCHlhQf+kK0eCbi9+
         oOYajbe2ACLJYiGzDiiGmyGdiSfo3O6yWj7/Ci9/5cVum13JXlwTmaPdVy4udQLR0EBa
         YWw2qFvpy4PVaiWo9UPgan8vda37CsaX/nsMBFl6IkqDX/XtQIyT/keVDD5AF1imDcM7
         YSAQ==
X-Gm-Message-State: AC+VfDxKmwGhX3z9VGp2e23VgrAdHMwuia6nnI2RbZezQlLUFvFbb+7A
	U5mtxwwXBEuZxhdIHFH68rjS9Q==
X-Google-Smtp-Source: ACHHUZ6xyg2O1/EMe1Wr477hSgi90x8ELhqHkP3l2KJE5og8af3/3zXZQdVNa2e/Pud+s5N9uRkw4w==
X-Received: by 2002:a05:6a21:1584:b0:f0:b6e3:90f2 with SMTP id nr4-20020a056a21158400b000f0b6e390f2mr17699356pzb.13.1682969102858;
        Mon, 01 May 2023 12:25:02 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id 189-20020a6304c6000000b00513cc8c9597sm17459144pge.10.2023.05.01.12.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:25:02 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v9 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Date: Tue,  2 May 2023 00:54:32 +0530
Message-Id: <20230501192432.1220727-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_122505_324592_986EDE91 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index dc80f0bca767..eae3024ce003 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -222,6 +222,30 @@ &uart4 {
 	status = "okay";
 };
 
+&usb {
+	status = "okay";
+};
+
+&usb_dwc3 {
+	maximum-speed = "super-speed";
+	dr_mode = "peripheral";
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l4a_0p9>;
+	vdda-pll-supply = <&vreg_l12a_1p8>;
+	vdda-phy-dpdm-supply = <&vreg_l15a_3p128>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l4a_0p9>;
+	vdda-pll-supply = <&vreg_l12a_1p8>;
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <19200000>;
 };
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
