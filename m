Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE78C54764
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+suyfGvR+cA/pgMa71pjkjiuhJvvUMj2XpNyglJueQ=; b=1r4qNswXa1IOQi
	knjbATwYiY1tOIg+ed/HXN//W+oeSF80yuGcAYHS5nJWN8WXY64rBWvAH/RMOM1GdF9+UYHsnTKjk
	qKXWBalPVyema9w2wi/opkvySHgAkLAWHlO1RJ+0+D7Z31VQhrwL0PU8IuzjJx8lQXOTrgy2n3ytw
	PCLqdXewDEJblNSwaMX2wJhSSdZ8V3RIUto8AjEindXI7rnpskHw1593L6DGCHyXE6lTdldZUM3dG
	PiV/iknNMPW2WVcoJUOYgTI/g+YtcInnMbQ3r+VrtmhBNJCtpP2I2HgdnFBn3GzU9vo2nAGKav28W
	s5jd7NoCW52cD7O9amvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFE-0000000GJBs-2zDl;
	Tue, 20 Feb 2024 22:05:44 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFC-0000000GJAd-0316
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:05:43 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a3e3a09cd79so327504766b.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708466739; x=1709071539; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w1o5o0rtU3riUEVqHaeM6o4aeQxNzmsXVTdrU+/IBZs=;
        b=Oi5ivNOUz3Y1IaZy9/UiRTmWL2tyLC8NFsRmCkhERnfm1TBu7CD47YyeHrp6I/NCH/
         EQAopFLRjxZSYfj8U1Caf6m3qy6WpCeejFhBCpuzf879Q/5dhS+qO/2pT1mNlW4vga4M
         dGwumUU0NTRrEWTJ2pdm+Ht8nPeH5SjAchxXl2CM9WbO6ko8e+s+isfXMRju8Xeeey6I
         QSz69xuiKs6/PNM1Qq6sfObBmXBn5Jt/F7pxb8W+nAVjXhjliK4MpBkoEnfEdRBodx4j
         tbBzwlZQFbKqVeAhEBtCVIkSE2q4RR9mzkQc/fGpQPBN6IbT7gyViQIJjq6KxHTq0yXU
         F95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708466739; x=1709071539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w1o5o0rtU3riUEVqHaeM6o4aeQxNzmsXVTdrU+/IBZs=;
        b=Kcnrs6bLEB2H5ok2lALTAym3TMasJSF96Z94fKuCPT9dxPDDLMH6ckqTKN0fiJRdSO
         EjMzHIr14b3kadfSRYfOErAOWovV+/RsL2DqbSDaZSNaAwm49YqGqUFdgTLpGr6/DdTX
         UkdpkkeW3/NYboQ3abVB1SP5qm5lpC2LJxYj8sWfYprwgJAdB+gL7iBOW2CdM2wC++QD
         /9QX9lLjAJKBIP6eTYEbxbxLZWEYDt/9WZbxHYlCoZD2MrNQf75WuPNDQKczVBbxGQOB
         oIexlSAlcL3zVICrxvF6yfXfbwaORjLZHbve4cTKlfZkVEBNzj/FETa7vJHee25iIQpq
         ZUYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc22gvGi/E2x1oIGXBfVNALaI0WL7u8pCk4H2iIT6QX52WXTPqcM4KnanbfgzLP4K1Rh01a8WMpYzEzPelwa2ytWRZmTgPe0dkwE3WMg==
X-Gm-Message-State: AOJu0YwUmS8hTEgMd7Ntf0+wGdr010XuS4ayle/a09u49f4JSiaoO+RW
	92cueBAj5cBqjby7ap7MxWmtiE7a4aZTWL7pfCYwoCDalrToW/yzolv4cZq/p8E=
X-Google-Smtp-Source: AGHT+IHmoAPk3JgO9HDpUxponDQuxtT5LOpJhUNhni4/utq2j908cgl2h0aVFjzeI90dynFlCYJC/A==
X-Received: by 2002:a17:906:4c44:b0:a3e:cff1:4504 with SMTP id d4-20020a1709064c4400b00a3ecff14504mr4561818ejw.71.1708466739622;
        Tue, 20 Feb 2024 14:05:39 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id jw15-20020a170906e94f00b00a3e86a9c55asm2716087ejb.146.2024.02.20.14.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:05:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:05:21 +0200
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
MIME-Version: 1.0
Message-Id: <20240221-phy-qualcomm-edp-x1e80100-v4-1-4e5018877bee@linaro.org>
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=765; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=V/CsRJK5dBL6FhEiKdapNWTr3x/7L4biYQT7b7ByxUo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1SIt+7SDcb7BLBsf3Jy6heH1BgMXajZMMAzfG
 5WMTFqKNCmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUiLQAKCRAbX0TJAJUV
 VoweD/9jk35sRLTvDsLKj5i2FKVECAXpkSRrWAZ3x47htTp4PHUDBDfcx6oT7s4iemloEirnJ7A
 zu551cZcYF4JyC5bTDqpw6BcSTwYK3HQwKutZ2bqptUnCu0DXlHW4Dq/EwyOsyOZmic2r5e5myh
 EeA7pEItYot5YI+Ll/eMfjl2LHBAG2d1rQkGzCxKxx4sLq62LdmovzTbJiNqpUrbZ8E4AKDLWuJ
 o6Ssu+wUxB7sYEmkjfCWMU7pfTVJI5eSuuGMRY6oNVT2yys9a5GQAaLs0FD2QcYqr6aqlve6Sll
 f2FXA1Dv3hlROYJGP/7nQJPyV3jmBpMtaXEvxb3iT1MposHhUSg2r+PfJnDiLeETYyzfjSrjqo7
 66/RbhH6LdVJa6za1z0hHL6khJUWSms5qpVEhoO0xmGQVtA0cTeTDe0QdlePxWZhDMdsHJkm41/
 LnhpMLKrcxMT6Qz7HJqFrXzmPG6rhy9H6INusts0aYfgzUdw+/0C2uB9gpjyNeFBdjdiM85GcPQ
 igrp3TxP8lk9dXMmmVSzB2V+rn2x9LYtM4yGhWyQ5TXkAwhBwE1Q10FnylJi9OThbkyXd7Nuj3a
 EILdMAuQPa4m366BhljgWOKbOw3XZZq55+xG27LHugXDOzLjHg7r6VR/YcKfKedjEhfQP3VnhaB
 z52dgvcv7P1tFOw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_140542_275961_15EA9114 
X-CRM114-Status: UNSURE (   7.83  )
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

The Qualcomm X1E80100 platform has multiple PHYs that can work in both
eDP or DP mode, so document their compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..4e15d90d08b0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,7 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
