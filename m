Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B49C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 06:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seLuyx/42B61om2LEpoVRrRiaSgqIdRSAEnTvft1PMU=; b=UPeulpkO7/e/z4
	J9uEbDMfGA/65r59iVwnslekilA6+m2sA79c/wfsCUv63iWMEKyMUvPEHtQC2fsLdFYERWeQzAxNv
	vtLSd7Bv5tcBnH8cLSAHAfmU9QoFcKpG7HAhMoNyW8Lpv250Jg+4KobqzLp0kt+94nH5gMM3nz5WE
	5/36GEP8T6IlKwQXuNjxspRtSdtKuDXr47Vz7QmJEp8UsTzgrLXBeYYDW3mAOYEXZOs0n2qfwi5f3
	RkBLXAjOSb40pZEtXLHdfMrvwoQt+S3rgHD5V2buMwOTrfA9vv3fVqzjiZldLwWmqTzsRjMADTYLT
	ppTnr/Rek40inYE0xb+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUHO-006Ctb-45; Mon, 16 May 2022 06:32:30 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUHL-006Cr5-5x
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 06:32:28 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 w17-20020a17090a529100b001db302efed6so13390229pjh.4
 for <linux-phy@lists.infradead.org>; Sun, 15 May 2022 23:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QXhchf3VZKM2/quDawnPGLqCcD7r9Df6+XHBYX2DLsI=;
 b=er+husaPM6oUMR/bWv0fOcpxSi2F07vVoxYoQRvWEU20qdK+AHjaR824zZ4BBvjdz2
 9juGiROZhRQy45WF2Py9fdiQnSdtVUta1MELqb0a6ZzRpEyttkF4Dzj1C9EgrSH0sD4j
 Qarm+ZmBChiwCacKzgsCYqDpRrlbyNPBwQBgdp0qcSmDZ/qMs6CMQiTIhs9zME5YV2cz
 zdWgJzYVlei+u7i15OjihA4/RvkrR3RMu6BGx0ecJ8HY1cdvwYC23438yH9lSsTUJKz0
 AD0LuTP8wW6SPGQfZXJDP+bMEgFobLChWxDHqw1GiHIYKKLqNF5mrNIMNf+DFVIDkPhu
 rsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QXhchf3VZKM2/quDawnPGLqCcD7r9Df6+XHBYX2DLsI=;
 b=tGTJP8+mgol8FREyqi9L2Z7BkL6eTfUgpHaGeVIf4lw9Rm3FIn7pndOGX7H0QgzoSZ
 FWHAvgoZQ9gJWkS4ZN/XpOOCvYL/yTo1Y6OIC7Xc1/VFfHQ2Rx6XlHMaXrlvb/3mnxeI
 V3DdtdGnDtDOP7WYO2W3FrkMdQgWVupXAL2bjXsl5SMZKZ4wR9rppmUeqUWF3PvayChD
 QIod9LjNH83hrrYhHTrx80J44HkUV+TC+ppHvAwnrSLwO4TKgEoE9j3kS8pilehdO85w
 YeaWjduE9z5Fh1+98mMul4iRznQWqo7oyJ3WaVKrE01p+XeVZBoTDNI9z1XIMCSshc4V
 dkvQ==
X-Gm-Message-State: AOAM531hsQmHBc5lg6+iugDqORy1Lbj0TB8fuE69iP9s8rqIA9X+MiMg
 hiPh6dVsTu0ZyiZMG076CW2Kmg==
X-Google-Smtp-Source: ABdhPJw4tg2JjTIDpk5FTyBYQIZzrMbZuhGEPyGCIJmecDah5IQiCWbIKNXw1HQrXySzm9W2UOo0lg==
X-Received: by 2002:a17:903:1205:b0:15e:8cbc:fd2b with SMTP id
 l5-20020a170903120500b0015e8cbcfd2bmr16225656plh.99.1652682744269; 
 Sun, 15 May 2022 23:32:24 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:931c:dd30:fa99:963:d0be])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1709027fc900b0015e8d4eb1e2sm6053647plb.44.2022.05.15.23.32.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 23:32:24 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org,
 konrad.dybcio@somainline.org
Subject: [PATCH v4 4/4] arm64: dts: qcom: Remove unused 'vdda-max-microamp' &
 'vdda-pll-max-microamp' properties
Date: Mon, 16 May 2022 12:01:55 +0530
Message-Id: <20220516063155.1332683-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
References: <20220516063155.1332683-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_233227_281784_10E223B7 
X-CRM114-Status: GOOD (  10.59  )
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

As Bjorn noted in [1], since the qmp phy driver doesn't
use the 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
currently, let's remove them from the dts files as well.

Otherwise, it leads to the following '$ make dtbs_check'
warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
   the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+

If later on the driver support is added, we can add these properties
back to the dts files.

[1]. https://lore.kernel.org/linux-arm-msm/YmQhpsmiYJzR99LK@ripper/

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dts | 2 --
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts                    | 2 --
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts                    | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dts b/arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dts
index 9a6faa9393dc..9c4cfd995ff2 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-microsoft-surface-duo2.dts
@@ -336,9 +336,7 @@ &ufs_mem_phy {
 	status = "okay";
 
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-	vdda-max-microamp = <91600>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
-	vdda-pll-max-microamp = <19000>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 4e51a9d6af98..38ccd44620d0 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -418,8 +418,6 @@ &ufs_mem_phy {
 
 	vdda-phy-supply = <&vreg_l5b_0p88>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
-	vdda-max-microamp = <173000>;
-	vdda-pll-max-microamp = <24900>;
 };
 
 &usb_1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 236e53974fdd..e58fc7399799 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -424,8 +424,6 @@ &ufs_mem_phy {
 
 	vdda-phy-supply = <&vreg_l5b_0p88>;
 	vdda-pll-supply = <&vreg_l6b_1p2>;
-	vdda-max-microamp = <173000>;
-	vdda-pll-max-microamp = <24900>;
 };
 
 &usb_1 {
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
