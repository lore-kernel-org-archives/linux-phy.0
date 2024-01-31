Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA0DC47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7j2jY8yN1evtj44cWTSPeQOyKjpvNZvFEJFMR4ICw0=; b=k9a3a1jbjQBfZL
	t69/LjiUrZ15P2R11cbTNifNXhU1fNjj9ufNEvd90c6txne7Ms0Bk0jwQ3uz2Aeie8kscuFEDU4ZU
	fBImjZSQEtRy606MVvn8sVclg9KCtfTgWjPdICBjoDW7n+guaL9VCg1ERTpNCunlH23Xy23WNGHvd
	zku4zl3pix3Ud8qgc4p5sZnnrCfyDEX1MR5U8EuCJun00rXiBcuu5zbIsssW+ZwmKcLlLIkikTFYO
	6fMIa4CiWGcR0PkiAP44WQ2eL5SN8JGl+yEkJhX2lkJkTLSE9Awvcvl2WCLAgsOWrIY6WVeEu0ZhG
	O40FzGcBAY09EwxjFkvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ij-00000001jTq-1S54;
	Wed, 31 Jan 2024 07:09:17 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4if-00000001jSK-3eWE
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:15 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6ddfb0dac4dso3442481b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684953; x=1707289753; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cb96/441ndpPUn21lCcgixKHWXNQ9RDVKXguXeEmJJE=;
        b=z0Drmbe8iGOrm3QoztGTuQHNTah+ABmClCQw0HgLSGnBOnR/sckmwDeokVzc3hXPk+
         Jb096C1pVxyDhZ59fVmJbRvbTkYixIuzs4bsa72Z+oItBMQdBckgjrfpA3HvwEGzLNzh
         nKYi/XFuN2tLqsHzrDzFi2mgXvSivAUGjKqpE9Utu8rvDTa7GyTLooEhOA1nJxosH1GQ
         fK7QoblefkForUhKu79l7pBgkk30j0rKZD+GbblGsNsdXWaUmCVimQUB4atZ7tahow82
         nj+t2rWw3AZIAP+c6pOe+WOezy3r4KDw/ACrgSZTwdLY6rW6HTnjZlRAZ4ge8CFJdBCJ
         0Sbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684953; x=1707289753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cb96/441ndpPUn21lCcgixKHWXNQ9RDVKXguXeEmJJE=;
        b=xJssG0ML+1Np//fEFMMAP/ovQcNwuIUm3O5t+7miEsIg/lBhMuqSdS6FL37hwKkZPb
         bLfcBSW3r4rtFoltAFIt1FBpwMjBXYdquw5jfKGUsSFZYUUYN/Z41PVDkVmfqPhAGDfx
         HoR95Iuh7eans5JskZ5n04a6ZjmoFyoy3tupE8u2Mj9+/Zw83hw+BVRUJlhyuOnxhWMM
         u833XIU3l87ED9HftYt3vH8CJpVRhe82q5UvR9mXk7T8UGttR5O+tP4BrrJp+J7LXt3p
         ftXeTMzCWyBy4nOBODhc/GzZKZVZBz85RcSDzP5MS6vp91GPTTJ3VAJ8rxG6DwlWPXP4
         fRVg==
X-Gm-Message-State: AOJu0Yx+f7P1DsvAgdTD5XdYhijIgVxT7SEuQf8m7WKSKPQ3JYoce3Mh
	wP47Te6fU9EzvYMsQhnl5Nc9yY7xPSNkddw+ZOrBIITeOxcbjwNzwEqVaypWkg==
X-Google-Smtp-Source: AGHT+IGYbL2vMpS8vGC9dOjcjL/U6cd0tTuoG6q869OwplKynYvz2JwfetLb10jXjfd3P4gethg+Ig==
X-Received: by 2002:a05:6a20:47ce:b0:19c:9219:f3eb with SMTP id ey14-20020a056a2047ce00b0019c9219f3ebmr720400pzb.37.1706684952909;
        Tue, 30 Jan 2024 23:09:12 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:12 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:36 +0530
Subject: [PATCH v3 13/17] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-13-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1123;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=wK5tqh64wjjHKC01oRXS3I38BrjvpCIIBSIYFkTgDwo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+pb5oFirLIkRag4f9F9BpfPO1+LpFuO1p3
 PRwRvgLcHWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9Tm5B/4iM2TOXXMQNHax1JAPT4o8H7oYOeV1YgRiWZyzGV2NzMJlegipoZaFPuAjiwEFJxwcF01
 xpsD5b6ca2EAiKbyINLFqLylGn27COU+9eNgmCN3covcFXrIyj5vNQWDo0XR5cpYXyCUwgyb7Ga
 X7gGWVQkBHvwZ01KeE68ZD95y4biicfoqc5yzPsrTcMH0R173tTvIMKCZQddJEDuyOg9+JaVtUD
 VA4KYJf6lke9GJpG7VI09J4Xs4qwJCmJhsUZjubKUfwal7Nfo+WX4Vo64u3XY1NnnY7CtoR9/fk
 +6SNY00kwnwqS4EmK5TY8UbjWOGb7ZwzjDZL9gLAUnlRPcot
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230913_949440_79F8AE0E 
X-CRM114-Status: UNSURE (   9.09  )
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

QMP PHY used in SC8180X requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index c64625619a65..45d39762fb27 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2140,9 +2140,11 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			reg = <0 0x01d87000 0 0x1000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
