Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2296BC32771
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 14:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB/1J+mrBLR+p7xHrVorUpFVnclO+QyjdzodnZG8ZPU=; b=Oksw7eJn9W+Rqi
	tnLDgtEreFoXZuU1HBNYMgXX+6zPwdGhMjPkjCJtR3h2rjCBGGmeujlS5XIL9c4oaKkd70QzXSyH6
	3wJAWrq6eijExbA/MzowplH5SjWup85MnmhUJ/wXP1pq54Op1nfyU/ju03mk1exZZx7abhiJxSwDH
	+ikvcWqX5MK8Rxz/JPDMxihvqTKVfUMtuzmtVijtWNT83z5+j+bgBcN8HBLS2ifVpvkFaalIUyWEX
	3EKtSodG3ZLriaVP95dNsRtSvX2VXGCFKWsXsNedQNzaYkcs3AKnAy/G789EQ/CJVa6yLNYZ8EFnL
	Opjy0FZf+r1FQ51qLqFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwk-002nbe-HZ; Wed, 17 Aug 2022 14:23:02 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwh-002nUT-66
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 14:23:00 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i19so901556lfr.10
        for <linux-phy@lists.infradead.org>; Wed, 17 Aug 2022 07:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=RLFtxKe+OhZckW6UWUlO5nQyi+aAQydRisAUQ2pGnOo=;
        b=xqUTUYdhUtcYoktp6glAcArIaK4BJecsnSG+eYbnh+bBkTvA/igs7Cm3Y+DX06ff34
         dH2MyV38XqULqXLco2U2xv1SzQW4kIGxdd6Yr5ndocQeuOPIdzCOBf+mPnKhaHhJIK7R
         v3C0R2bOJqjJkKxbVO32Fr0CR0uiyiiKpunD9GkSut+dTB8sN0z4eCurCYaFedel0QQJ
         bMAW+47BHd6JipjDY0MEgyU+Jwrpeu13lLdT1dDlYk2OqCyP/ImEgeXKNAxAJ2BCDm+L
         B98+zNRAbeao+uDz/LV3hmSOCH+zyLHlnA2HeDVdvtDl98Z2PCB2i5rqLz2dExWHwN2I
         ua2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=RLFtxKe+OhZckW6UWUlO5nQyi+aAQydRisAUQ2pGnOo=;
        b=eSZ/g3aHl4H+3rDkuDkx+2OsLvFiCIgzc8vKiEv5bCVqENtbASZrU6AnT4HTHqFHDp
         24s8ibxgz0AOL5lJJ49nNnyftAOY1Bk7K93EhRdpg8Y0nOLNB5f0oBuqQcfTZS3o8OTF
         Ngz/jfpfLGOasJhmpBr0DbGPVk5FSNd6vyb4oZQ4m4vA+/GPh/D6k120EbOINwzRMcQg
         eOVtPImbDrp+e9J4iB1CpUkAE5ZeaVeZkb13JJL4+7DWrxlplFTfRx53QflXh2QrFCpE
         9yj+wx7f1v6Ue9vGx6ABy6RO1Cc9Q7CZz+vdJO2VM5df5VnqbrlYY0XSXIY0w92Pprf5
         su7g==
X-Gm-Message-State: ACgBeo2x/etA5nePU2AUEaRy0idPvD8P1A9otZ7BuSF1bSx6VEMMuF56
	k7y/zirDEur4FBXBt/9IcjFq/A==
X-Google-Smtp-Source: AA6agR59CBGcXaV0hie1fj1kHHlCqZogn30/K0KtyO73p7KQ0SRzgXOusSqZ3nNin28PDKqXiffn0Q==
X-Received: by 2002:a05:6512:1045:b0:491:f371:ad5d with SMTP id c5-20020a056512104500b00491f371ad5dmr5839628lfb.425.1660746175435;
        Wed, 17 Aug 2022 07:22:55 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u1-20020ac258c1000000b0047f7722b73csm1704647lfo.142.2022.08.17.07.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:22:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] dt-bindings: remoteproc: qcom,pil-info: add missing imem compatible
Date: Wed, 17 Aug 2022 17:22:45 +0300
Message-Id: <20220817142246.828762-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_072259_250186_EBD9E35F 
X-CRM114-Status: GOOD (  10.36  )
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

syscon and simple-mfd cannot be used without device specific compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml
index 9282837d64ba..a7711e3c998c 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml
@@ -30,7 +30,7 @@ additionalProperties: false
 examples:
   - |
     imem@146bf000 {
-      compatible = "syscon", "simple-mfd";
+      compatible = "qcom,sdm630-imem", "syscon", "simple-mfd";
       reg = <0x146bf000 0x1000>;
 
       #address-cells = <1>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
