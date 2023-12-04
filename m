Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C861C10DCE
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 15:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GioqlZYmV8KaD+hI9l4pw6HbJ/f57hCGjJSgh3tHUXo=; b=mg1V5M7jSfhGk9
	+UCcYZW67/h9zmeP+oJJiZjCjYUVbAQU5PkT6eeHCac28h3HFAlZgrH+7oSfyRZjwE+F7Gu6Zhpve
	5S7hpriM/8zT9xqJCUYf7+UTa4+vXbGSnBestgKGcswYmqwljCHtVEUxndcFBaLtv32Fj85Enl1xI
	AtPLPOWGVO4+87f4gZj3XJHtSgzq1dT0uTHsY5jPgz4MHL7Yy5szKPC8/AyBqnZ2+yyjN07C1L4Fn
	0bH/NXs0WUXNOoBznIR97d1Gh4JGJZiZ1Wkvme65hxRMHG12hno18WS+amfsQit2GApfRya9MsC6z
	ZGmoOXU/OMkJYZDwnjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASK-004tcK-2p;
	Mon, 04 Dec 2023 15:01:56 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASG-004taJ-32
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 15:01:54 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c0e7b8a9bso6343355e9.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 07:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701702109; x=1702306909; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWbBa0ReExpsmict7ITA3I0VpWyJPT/FlFWn3p8tlj8=;
        b=dntmKZKNuMIxgWhX0LhBGRbnn+NcHgrJV5YloVvC21YpkwsyFF/h2GIZCj7Dy4hH+0
         S+/33qx6PAaDY4EzT499ql+OPGqk6P1SWMKWEH20jqX+LzYMSzY7u+A5yvh//0uSA1ki
         0pQ/7nHi+IcQp9f8JP/rfU/06veU1rV9k03E5jjgRs7K+4tX+YnI9Hi2SXAiS/iGDnhw
         Uv6KAeNRjREKD6wUmlg6k3t7iqm7MHaM5snZWd2k3EBfXzER064TD+qcrnIoT+SMiHWs
         UTRp9TmkQajgUCtihI8iaz1/0ZcxONi8gbquCWFN0qT4KCpXhmRgEqnC/vWv9km44lau
         5sYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701702109; x=1702306909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWbBa0ReExpsmict7ITA3I0VpWyJPT/FlFWn3p8tlj8=;
        b=jl9xSQAEJM0KDSYfdJmJQ/14Qwg1VdPA0fIv144Go3cncRyu3MEo9yLdkG6LhfRMwl
         AdGfJi3RonQBjlM00SV0TLX0QVZhXzqv1Bjg3/XMRt+haRr3CkJUbm37fEFYIPWgEMMc
         Nf/76fVqaH+//0NVyAZ9X5jnvH0ROCgsLQ3MhNE70qwE78he0toXTeMj9bm4VZTSTBGK
         /+yr21GN3C3HvTKBxEu6jXUhh3WtAbn3Kk88gM8wuN6O3pB820xUpgm+mmwj711tdk14
         pczfjkfbjnzyQfjWsEFTrQBfSmNUEQ+yODMxrsTaMLDuTCL1fe8ad3MkTiG0kZHVdQUa
         kmLg==
X-Gm-Message-State: AOJu0YxoCQpCAf3P0L8+rZVkppB2UnBL5hdw5NxMdVM9uLyiNpPHaeSY
	rfNV/A14RwkeahX/pHewX+5vPg==
X-Google-Smtp-Source: AGHT+IEwIC6vXXbVTi6NK36/kTonsFMuP+PTB+A5z3rkJnjXjI/eyj+SgZJE0cNKSIYyAqdKtGIFrQ==
X-Received: by 2002:a05:600c:3151:b0:405:95ae:4a94 with SMTP id h17-20020a05600c315100b0040595ae4a94mr2718520wmo.5.1701702108849;
        Mon, 04 Dec 2023 07:01:48 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c501000b00407b93d8085sm19041661wmr.27.2023.12.04.07.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:01:48 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 17:01:36 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v2-1-114e789f0195@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=863; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=/RKolC0eaD6D7ihdm0f3OOPC0biviJAmJxDn3g8AQXg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbenXaUhKXlXxblIx2B61hGtqjMC+izDudMYTC
 UUgtIVeY2yJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3p1wAKCRAbX0TJAJUV
 Vu5sD/0QmzEbI3WInenNh97jUg2XOrwlIB3t1sYhODV9W8lUTFZrIypkRVNOFnY1JkR6ML/iQLs
 Btg4efQQ8Yk5DCqZhhUmkG1L1r++Fylj9E2dbWSHfxE8p4hxyc+lq6ijjcqd1XJpr9/NmlHV6Vd
 m/Mt5vYng8Ik3PMewU87dFZll4iGyDwagUWAZI6JKwbbuKKF5jwJrdp0A01w6vHQ5PhK/BxMmJ3
 Q5qtYNjXjLzmmVfWt8X1bdUj990Z1wUMSwerkyu1K+zkBdU/hTnmEbFeD5nAgoFcrGiqTQRiHYB
 0zTdJV9aPp3crrrjcpUsDVQpZ63mesLMMXxDMztk/OOI03GuACIlFqBJrSQt7f4Dzcwx6LAWwuO
 MsunekMcDPT+ZZBCZRT8UzUd+kZJzoAyfO/wJIQnXQfXdWdj5Xc4jPmobODcqR6W6Ui3I0WD6Vc
 HPVfeNO6Dch3Jqi6KaMl3OAWSwVpuHTYUHtqWREzOrDLuBiz9HE5oOaYgIpEXmD+g4LGu4rx70l
 ZQfmUrg8MffjzHY0vgC+HFqPLiYITTtfMwdtQZnrZtyLtGuymNllQmajOrlGSi2dE9r4NqZbzMi
 fVm5S9L+tbLc/RBj3HwRs6lXXD5EgkOwv8sy7hACsLy6CQOxYQk7/9Ps2wUVSK0/NF3y/9CjODs
 jzJGLgj88qQ6V9A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_070153_027852_454FA679 
X-CRM114-Status: UNSURE (   7.93  )
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

The Qualcomm X1E80100 platform has multiple PHYs that can work in both eDP
or DP mode, add compatibles for these.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..190f61c1d0f9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,8 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
+      - qcom,x1e80100-edp-phy
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
