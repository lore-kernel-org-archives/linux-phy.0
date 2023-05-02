Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9286AC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4jZS264YL+BTq2Chyd5FLU2h9TczHN+TZQVMWt0huM=; b=w+jtf0APIGXKFB
	DfpcYnGrspfXSA6YIqzH2pYzYaVjFxxgaq81hIQFJLQKCUBLEq3dp82jgv92mkas5yDqbqlCaPsb5
	XVlFKI9nV+Mk6NuEoHDFQtHVq81yozvOb6RhfydfItniKUErypATJxRnTFT0rk27Z+ZxLlDA5k1Ut
	i64Kn8Z76PN29uVoy4gdKfJqft7aHTzipX2RWPYW3JbPMIemZRxpJVDyB9MjKERvN+jxSKUZQplaM
	UUDmfMvNGLEwZEFrxG76vxVo+zPCdT0kEb7kkXrvlPfnJtrzI9JtMaO8KLUyaWlwKbhFezXeUEklj
	uNONKC2McCZclS7S22QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigN-000DIN-0k;
	Tue, 02 May 2023 05:36:11 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigK-000DEm-2l
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 05:36:10 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ab0c697c84so1870635ad.3
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 22:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683005768; x=1685597768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5pQrJTTCZJZZKPmjIiq+X+xkUImdFCCiZ3e7a6lOiY=;
        b=fZP5Z2rmGEmEpMy/cc4ZqxwatyLd6N1517X/g3uf1SrKVGaZW/O0PmycIWhrUpTajl
         r3ICQ65PAG96adg0yLWV3BYu8Io1tOKqCxKo7QyouVeng7Uv1GnYf6luRWhbqcvKo0Y8
         lhTMNeAxOgQ/96CNfMBQNnGTEesOCzfPE6rTpr3653xNSDPZ3CMKcO0xdx8TnyKG0u0y
         aeHN39S3FzCqWfdH7hBmIl+aMdj2+VIXsJkCCix5kialup04MsjsUmv10/3nBUqlrErr
         aniplwSJ3sJvvni0BQ4M67c2ipOEpcTZyBYeojhiWj7MwJYnSTFiPDGSqTGERTeMU5u1
         HWOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683005768; x=1685597768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P5pQrJTTCZJZZKPmjIiq+X+xkUImdFCCiZ3e7a6lOiY=;
        b=cvZ3uN9psWGJyjPDM1KpZMRIRnu2OLaJyE/2+oJkUh1mvgzUzDM/fZRKSkycP2YM7M
         ggoCUcL2Xo1IvSl7ZmALxSY7+4w4nojXv6YZQspSRr1r2womzxsHVDoqZpzes/rZYFw3
         wNV3x1woX+ds1ANeuxccfnWyv9crGj/b6YPrXPgVxt9DQkfi7eYepKuicELZUTAcSwVx
         KDtfPFn3ttu9ILcMH6XRzMbNyd65HRZNvcaogQ0S0k1DChMOVSMw9iHQuvFove3eF4eD
         7J5wFs63Dz+dOsliNTCPcf6l3XUmv4QID/W33zWl02IJMtOVW5ZXLGwXqHiQXYMbOFbn
         bF6Q==
X-Gm-Message-State: AC+VfDx5xmZM23exbpj4CN4HAaGz1ZZ2tLDaZs956nljjMUaAmZi3Fin
	rkMi8hid8APL1bpficzswiEMnQ==
X-Google-Smtp-Source: ACHHUZ4tSd8e/JnDsfq3JN6L/4ZDpvPlKlRCROwvaxatf/we7R8ZNaa88ly1NpuHJ+TXY3Txe/QJRw==
X-Received: by 2002:a17:902:aa85:b0:1a5:22f3:220d with SMTP id d5-20020a170902aa8500b001a522f3220dmr15482431plr.49.1683005768487;
        Mon, 01 May 2023 22:36:08 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id j12-20020a170902690c00b001a6a6169d45sm18870369plk.168.2023.05.01.22.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 22:36:08 -0700 (PDT)
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
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v10 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Date: Tue,  2 May 2023 11:05:34 +0530
Message-Id: <20230502053534.1240553-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_223608_890645_7A5AFFCA 
X-CRM114-Status: UNSURE (   8.57  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
