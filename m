Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC151C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2Q0mmFr7eazau6GAk+yew2LepfHvFIgmj8pfvgQi2Q=; b=hdF5IydGdEdVTK
	rxjhl2YdZaBnZS311ybQFIxu5bwKfM8xOvB8nHN3O/f49isUF55ewgJVGZvYujcrXt2K0z+XvN3gk
	UrruzU0RHpuDeNkbbxbT2Np1arNr3yGlUnYci+hjgVkrY2weXJL8+qi2m2Xl/sm5nGMeXNEvNV1se
	fDmRjAT1pS0rnps4v33IieSqcWW71fz+Y4PxSzhQfi3+RBaZdtJoWLQVNxkcXVPjsG5JhY9ngG6ok
	c/8qzOcIlzaDM332IsDnywtm+TqQLLRWcr+WPSJ8RPwx+EqdzJov93Y6TT5sxjOjzh50F8OLP6uoy
	hO/CI4BwnsHsWRhn4S6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpb-001scI-0y;
	Wed, 24 Jan 2024 07:37:55 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpY-001sbg-0s
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:53 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d70a986c4aso22723255ad.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081871; x=1706686671; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x/+eeHXYW9j18ErdmeKAUblHZYPts3oUBFN9HRjn0+o=;
        b=AgXFUzNAdkBn+6csOZeK9hLamVKL5DIj2gIrL2So8NS1GiDtQ2pPGgdi+yBM33sKSe
         X79xRZdokMaf60r/iaijzKQyOPTU7iyw52kCo+NzIaBCEDk4/bgdhCjddT8hFQEchihH
         uw6xLwkpzeszXGYRiqHI2PjxJSFnpuPqxl4fdJ968SjyyP+zQXW/NS/8t8QifU4Lj6nH
         P1mzwKWx8TnWX48J32IWcP8FEG+mNsi2cOsqjebswhByJySJmn7l1gefceYxdVMEeR0R
         OAFgLx6ACIyTSlwXqPaC6te1q2lWWxmdC0Krf5iQNTksF1Vlw0PplZYBH1+UBKoyV8N5
         6ZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081871; x=1706686671;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/+eeHXYW9j18ErdmeKAUblHZYPts3oUBFN9HRjn0+o=;
        b=R3YT+7DAVRjHdC8goTeVcjoAyiouMCYUD25cOASAXFd+JGndNtC4jHJDt8EVit5t41
         BcCBuaUFlt2CfMGCpDIAPKBO5bnQQYLfNKaCKMdW6CKKuuGhgos8Rj4UAgGYfYTb5cYq
         LAA5SZvokxZhNHPxfVNNFHdWiB6fRmkua4c+KlO8/S6IYVz3YyS4FTEhNrLccLYsyxqs
         XV2tmpY30YMOQrL+X+qNbf7ndf+tj8yEVfXIUTJIZDkGWsY2yiFpaTRyMDy4VLqSuP4V
         XVtPcO7nn5eV34FTPtjlc88BW7KkLOi8xOUooXBNHNAWyJktglzU1D/GV5cS2pXjMHpr
         jeFg==
X-Gm-Message-State: AOJu0Yzxm3TOyA2TtPPybh3pKeuch0Ym0xSOJISnu3NVftohcuA7cvKE
	QCeaXUyYmwMKjEVxd83sdHAfGBFJ4qT9fRZiyI/XNbsNSyp80s33BAW7vAsoEA==
X-Google-Smtp-Source: AGHT+IGj8U0OzY/bykwYZTLT4LfvcdMXaEwp0Y2P7Vpl0XFVBweFCBMR4mKw+7UkPyjrZCQ91xNUoA==
X-Received: by 2002:a17:902:f687:b0:1d7:4c1a:2058 with SMTP id l7-20020a170902f68700b001d74c1a2058mr253915plg.105.1706081871600;
        Tue, 23 Jan 2024 23:37:51 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:51 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:41 +0530
Subject: [PATCH 13/14] arm64: dts: qcom: sm8650: Drop PCIE_AUX_CLK from
 pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-13-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1080;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=xR8wvtP+QITH8T8kLA9WFdRX9QC0BEnzA8VfMLDLOeM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4F9I2jnHfAODN1h6LhID1P5M4ffX5SDTNOK
 tmbdlVDGn2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9e9HB/9IOUcSo3ViZRQJMCk/7G0FlXlhNFCiC5rUFKMDKuWujGHro13gDGJjTczje/BKnWxULGQ
 xvxbYT108gLh5mEcp90g5HVfToMp1AArsS3Fqnai8z0TkKnd+2dfxOFFow35x16YJnZmlE502Ae
 gw/DKa8Yi3+H7Pogj6id8NcfMHlRwkwwzBE6psr1YYv4uIIdIlKAqJvtav8irLGgRCHnD+IfL2L
 wYgrv/PZB13YCBXxVS2lSTYEgTY9HHM2SpVutjUixxncsHPi+v+Ic0I6Wu5T8Y+f2yaBax3w9Ll
 E80RfnrBnVFBA/a+DyEiXU1+AXBZ1W0D07uUrZBUR2iYa8GH
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233752_309200_0D942873 
X-CRM114-Status: UNSURE (   8.88  )
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 2df77123a8c7..b31e60599891 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2276,13 +2276,11 @@ pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8650-qmp-gen3x2-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "ref",
 				      "rchng",
 				      "pipe";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
