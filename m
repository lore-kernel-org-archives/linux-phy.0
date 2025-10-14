Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A407FCCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6v0YE/jwseYN+ZssiQdWuafjTYVT2T8SSxXLQGbugQ=; b=Ua3lv53qmD5MvC
	r2S5ZOQE6BaSJeISyW0hKso/fEI2q4778CqGY8qIljDD1wvzhoKlp/AJPzPE6WlaRhr5Qxj1B2Ayw
	zgTiDhV3Fysz42uGZQi9pwfBRPnOgS9ZXgViBdjJNlO4bbhahnaDm9VX1TiSjRG/09honONpDDAeB
	lc4BaQx1GKTKb+jPkNzoa3jWkm/SiQLYOMrNM+e3YYdHhE3lZpi+1BmbartOsASy6LyD/+lauTCNB
	IX0T3WO0wgukmWfCE0ZkSxVrmCrhm7paAuiVHtxanxsCR45+nhf7RiN/TiW/Ad2ae9RgKjxrP5w6j
	+N6OhQZtE2cNqyFYOmpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bry-0000000Frs1-1iNI;
	Tue, 14 Oct 2025 10:03:02 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brv-0000000Frov-1tHm
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:03:00 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-46b303f755aso44617355e9.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436177; x=1761040977; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vaS07fRAp2KaqILcMQz5dgQ+s6oWbriezT3s15GrHVk=;
        b=KZjECUKuhjrUGezFnBX6XLBI8UmwubG6d+69GTYQUP1lgicvmvz/X2qrwXdixO88GR
         9Y74lCDaD2K3s7fdc+Huj3Z+HUelF5V+CF9N/N5BciKBDW9LnqyBIwR3Ptt0+GTiTWdg
         K1eDZeH+L1DlBPCS9jvbY0kwX/2OnRtlJ0IQZfsoSmHkDOeJrB+3TjP0F+6y1de1cyeq
         NchJ+mpqnaYOZIIIezyQBwyr7vFPwD7IbcD7XJ/OR6VSnfFdd4NXjQN5/0xIOY1yvIjD
         b2MOrPUCT9yQtluJsZbBlOuQom5wCdiSkC+3243QjecZtbEKCJsfByHlydfQ2CGQUSj9
         bUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436177; x=1761040977;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaS07fRAp2KaqILcMQz5dgQ+s6oWbriezT3s15GrHVk=;
        b=ecNKQwirg7eNvjsjEYFGf6825M/Rcp3/VdBCkRIYJwRGkBgmtQJfF+r8FnPGIXUOv9
         YKGrT42DVDoxQKRAmu2pGqNEtPA4Qm15IDy6ZSoDQlb4c0TDeiFy4eb+qXIcD5YplzoP
         kXudiDNVordI4tudCEv86vmOMweqIe4KpI/aB+3M1HAlbbi1w05OpEcUPJSxLWX3KuEy
         wAi6hl93w/sE6deMF5oqqRGA6LtV3W83jW8b8nonDDwOUHs5d7xQ95mBbKWhGyMRv8SC
         iJgDIZPwiJLCK/OYgDQ1NjZOgG6/8Vw1ficMdOTl60QHOKMXQ8d4hn86W+VK6Sobe5oP
         nlAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGvqP4MwjLmpjKz6dWnfbmrKwmz6RhQsIyhAn8U2fYpfD6QnyARQh3pnU9ropIr85VsoAoe58yNAA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyalebULieqYCUqjPc7pCJc/rKAy0SyckPnEcJawC+kY7dlEiq3
	O1YL8cAYKsqN84cO7taQSGo0c7OPLFCtUyTHTLgWBT7iFUbTpaxuVrSxupJegwBoZRE=
X-Gm-Gg: ASbGnctgAz5OkU7/Rwq9lxhh2pYAVKQCcmC82N7sm2PVcZjj8NeAw8YU7IQt7+DldkN
	exAa8gTZWgb7McSDEc/C/OuudqiCA18UQia9hZTxE5liuUv/hx114wKiaXtfUtA7yEMi+E7LLrW
	wbs2zsME5CaMzfL1dDLBAvXEWcdUTH+yHhqbqS4SHOUm2uYBI0pJFaVi3naS3KUNOYQdO108NEy
	KjFd5CDKCGmoZ0TzDIJoRHxL870qAIi15CxS01MGK32HNSI8qQB5VZ4MKB/nlmQgUQdNDmF1Mgo
	Yl+4RKfGstoV8T1rRf5wbJtA8tsbuI1K+TdImUFqP/6te5gVtAMj2QgNy7zGQba8aHUNo9n3kLc
	+ta4Na1kQUm4cxrUU+OuEDPnG+gfNTBjwoGpfIj2Dz6/TtMl/OSNRMw==
X-Google-Smtp-Source: AGHT+IFl2VtEUnOc7K7cnKyCXWZQmxxjgC+HM/RYs8PRHoUIntYpayCUFq/QGa3L5ZN0P6heHafASA==
X-Received: by 2002:a05:600c:1d1a:b0:46e:4a78:dea9 with SMTP id 5b1f17b1804b1-46fa9af17d4mr168450155e9.17.1760436177412;
        Tue, 14 Oct 2025 03:02:57 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:56 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 13:02:28 +0300
Subject: [PATCH v3 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-2-2772837032ef@linaro.org>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1247; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=S/KD30P8NP0mNcehUP8pNGC81/R9glKXIgh5wrx2AKc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h/Chm3XpAOoZ+7P1ptsAjAqkDalQY4X3MdGn
 QpOsnA+z8iJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fwgAKCRAbX0TJAJUV
 Vt/EEADIKuOmzt2Kab1SDBpuRUMisq3zDdHGoozaSKWUjDdjzmyUsli4WK+J726o7f+wz/nl35c
 p/kuytzWM6WmVhNy2uKr3bTBevx3TTZ/khpJOTvjXJD88U0nkiJKFKSw7OtjbRDsPfHNVMRckEI
 XmOO5XxbfoXMDIA9zzEL85yyhcVCvSwMxm4Jl90kloBBBIQxQbfQoeSQtvSVtGxSAE6LW30lW3+
 K59yh/TgbMvl6RCnVS6DJPdiHMvJAk0Zt3fW73KrH1m34+c06n0M0495ABtxd9noT7yP5milXcb
 GP6dGequX+u4P/yA3tM9vyd6GgTPHb3TBnQQ7bDQkIPyEe1F4o/vcW9q2q4G1bmFVNKKw+pnvqp
 DSOPcGQ9W/P8RpEoBDU7b4hrVm4LjeNT2IQvjjH8OVXQPzaMDJ3zvAWvYJsJbiXLSak1LyfIXxi
 ryttjR+DDMutxAj5gh/8PLigLof3N8WYn5Caauk361g5UyeS1y1xRkL9QQyeB+/TrRPuXnqy5DH
 6O1uIIO6JmbCQEqTMEaZ7lSouhkkmKaS5QFZQgo8rT7UqNQGenxFOkqEUc5tvnDup5hsF3YGDoM
 DWtAWrgFO65A/6Guiq6jnkc+Y5YXtji5LchjQCmvHYyCQXiCTCL+11Q+GG6JEJeiTg5ITXHTkSb
 sYesTJCzcqS3h9A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_030259_512071_92D1F791 
X-CRM114-Status: GOOD (  11.09  )
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

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..7b642742412e63149442e4befeb095307ec38173 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
