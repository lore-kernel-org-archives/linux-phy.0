Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E0FC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+03DlssazdPRSn6XyGLkP7gNDWTLjfR7GpcTprtpiE=; b=3DVVx6XGA3U9b2
	xRyqSDyGYcVUGBY/X0w5+AzWxzSjn9Kp1w/IBhtKlQOTahBduaEPVvedOwxHpCp1Ry3Kt4v3qxR2a
	LWwYxCxuCyDlaNHqb0I+Fb/CjNF0JYcLjJQ5Zkoe+18RSY9io1lFqEsmpVTuXGK02/riIaTgMVSm9
	hiztgeP/tDiTa9LgEsT9c/Ld2qD6x2RCHkMMlEOtUchUe5TPXCVVmMJL1rkJyR2ICHMcyzvExo3gj
	9yPb0rkD8Mowy/YxmUvcXNPJppRqlYN1HHmYXbKCJWOJtg/EgxVAFTtudTTT70J9mE8nUzod9IhIE
	/QxJdaC6NLG8bDcJ5LLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwU-0000000EHLr-1p9a;
	Mon, 27 May 2024 08:42:54 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwR-0000000EHIC-0HH5
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:52 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-354ba5663c9so4398814f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799369; x=1717404169; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VaEF4gO72oykFIStkZdCU9USqrBYmrQ/jBFI2aUzk2E=;
        b=oIH9CAhAaNtBUISj0VsiUhR2hoQu3Qn4WT8VY4C/6OPapyLaEw85+XeHjjL7qL1jY6
         PiJjw66gg5B+k9+QgcQZthrbvxqZrVGHZLsG4FfW+WEcy51gw4vu3/2S5sv61QehikVW
         UM7SZ3S8ug6Kjv2R/WYvdV6IyIURSnkVqbIBls3rHpI7cw7C0IOxhvXcrqrdghbGtd2Z
         dNteYwcGNtsOZFIdzG23pYU3bYp2rmn2ZlyZjhUFV68OlXHr0qA+1O39tGUUb9zNhCOe
         BDHDvXKoJZQcYKsTaU0zn23UuC0xRSt7rvG4HsOFfdyl4g0HY/NBg/lstTil/F3QPmEn
         +mVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799369; x=1717404169;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VaEF4gO72oykFIStkZdCU9USqrBYmrQ/jBFI2aUzk2E=;
        b=AuY8DCK7M9xk4PpVCvtvxnP/XH4LocIdqDLPbP6gSUDNSe8S4N81qoTtm9VUFzeYnv
         c0FfDVW8SB7ObM3UQZ9D09xwf2SuzUPrzfNjlgtymY1qCyF9KjczZznQatY30Nffi1ek
         Ch81LbZcx90sLV+ECcIRmtl8oDUyMZtiqDtz3bUimBLSmQJlSJBsWLWLgoxI5pctMYKQ
         yD/ddSD2MjGGZ4XicjKgaRUuFai0oXhk/tN0/9NQ2AKLtmfg7wS2M/x0W3sFBj/URDva
         YCsCzRXUdymjt8r0el5u7/TESmEngY2RzyFd27Ujm3vHuxcXSYxPGTeS2UU0j0rPLO50
         ka/g==
X-Forwarded-Encrypted: i=1; AJvYcCWM+mMjsGQOBbnr3TdijvdwQ64clZHVhle2a8nrg2TdBro87YqpGm2lTKYOP1+tibQHXoBWOkuT3S48VYadJTPJBESkpqcLhnLz/oZmZQ==
X-Gm-Message-State: AOJu0YxoNY1xcB1Oh/COT6CJ03ZdHqdevcHG4KCsfhiAFmVTX4tGIjsq
	k0QlpCFfM7qZIybAzpPTH+k3DN/bOswzbtxvAbOSz0vvnrK3DCoqOpvMLp68JxM=
X-Google-Smtp-Source: AGHT+IFlox+JYA/TQIiL3yZKdwNn/gUx+Gg1nkb+lMnlc1O4u4ePjX9SmBqGsxeiC8TMhuH9h/OxLw==
X-Received: by 2002:adf:b1d3:0:b0:354:e746:7515 with SMTP id ffacd0b85a97d-35526c560f5mr5700618f8f.34.1716799369100;
        Mon, 27 May 2024 01:42:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:37 +0200
Subject: [PATCH v2 5/7] arm64: dts: qcom-sm8550: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-5-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bUymvKgHwGJMNeWdO4E2xoRI1NZeMZTfq1gbdx2kTBk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd/+QFKuSFUK9Ik+eL30bDuvC5I0nJH7qROWMla
 eO0Zq6CJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfwAKCRB33NvayMhJ0Q2DEA
 DNvwrXulOdcNRZRXI8w7ZpiXjlBiyTvyLLHoh4wv+9NlSrnQkFT6jfza8qR6v2QtHV9qs+cJSiVl47
 1lqQ+8yIimZEbAnykiQdlFF39DtdZQQyBibDSpvxFqNLUFz3UXdGj8PFh0cq3RPypNegcL2taIxJ1a
 9lZNNxFhWEuTbJu68k7DkcxiBaRb7LCZFgfNwnF8YsJBXQXB3A/CxpCdDxa3Iavpqm3n5ZYLtEENjT
 U96loPeH/OrecX2XVaqSWnvpBOJPB4N+SbwKYy8ZOZhqZ4wuVGmjL3ZCHIcAhwroTgIWdX31ZOIYSk
 hiZilxmaH7rOl0j2l7UemGBALP4yOnDgFey8g9a99pgXbpXJPEy+IcthMsmgaVScBDRWtZp3QEf5CG
 4LrE3DF1FsKl4kZMdaVV7lOEvFrYPZ/wgK3hdJU5iqbbbaaLqDEIQvdwzTCWcLjiKw5DLmeK5Rv7rV
 r9le0N1HO+F6snQPXI0+VfneAh7gxCvciV2x801DAGFzw2zfX7pMkgDUfj/uMBiqDniCkfFbL3ap/U
 mOcdK+LJJn+lsepGqd7tGUZyOtdTF8TRDQnlTdzYmOaseH4S8ep2AmvKCB6dV/sLg00tUMX/47TlrU
 NVQiPQfoOZ3cSVgn8RKyi2sQdh5x9JCchZHscZvlqiQsTrCHBYB4Ycoxt8tA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014251_173494_3BD827FC 
X-CRM114-Status: GOOD (  10.37  )
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

Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
and allow mode-switch events to the QMP Combo PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 3 ++-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index ccff744dcd14..a95949c01f25 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -941,7 +941,7 @@ &mdss_dp0 {
 
 &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {
@@ -1280,6 +1280,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l3f_0p88>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 39ba3e9969b7..fbac5270b4d7 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -795,7 +795,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1142,6 +1142,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l3f_0p88>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
