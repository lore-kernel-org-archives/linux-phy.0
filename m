Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774B3CD11DD
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aebApuy1ulHDJuglCY9jti4UhkG71Zqlcb5zL3frRqw=; b=b9+C3cHc1dbOka
	Tz+4s0ZR9XPdxmXC0QlMdO6uNRAoGVutthDN9X7MO/FNAY5EQKqs00ApzY6Cp4VN/SBw5kZEi4/nl
	xExm6/FC5Em+EirMhl53+NcVcAvfx5PylYvgz4ODHP+aWDjEtqohJsg+JtUnFw57ElXXrHzKvN90F
	6guY1YzykWRaGij0DjsOqCL/D3kvuzYNyatTq00yx88vxBQXT7HD8fL4n+dNdhcF4V0J9gJ31lQgw
	56ly09nAKyZaM1twJDGcGAPb45Vyc1toT7YvEqy+lt5PK6C5xElNX0LKrmelXsyNmSbKQvTl3a8Bc
	WCgtQmW5l+DWDIQGx9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQO-00000006dXy-0alq;
	Fri, 22 Mar 2024 09:42:56 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQK-00000006dUg-1rkh
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:54 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2d6a1aff12bso17412431fa.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100569; x=1711705369; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q6jwgd2Axk9fB0Aki1YRcqjY/e9Dl6tqP0b8TVLuwoY=;
        b=RSKpM2ZQmO3r7+uxPvZR1Cv2JS67RSr1fRU2lPFPNHbMNEBx9I5/+WmQ6IrXycDkF0
         lsEm7M5eyJfos2S9oYUo0y+btKRUpXbICLRHTfiA4d6VD8seMlIlzUgeOziBECEBhTIY
         YeqisD5YZzS8B481K2bgFbvJIygDPv9WXs5ttYUhIskvHkZOJtUvJihQ9AJ7xHLSq5nl
         d2NWMZk7nGeIhp+qHeKkxyFJ5doytqqC6Fi4QCBGvktkrzQE2YNRL51cibcDcEi+LCfl
         8MHjFgSd6C4q9zlIyTLuwJE/mwP+kJ5Fq9KqKdh9cBDDTxa7kDIfwe4Ty5Y+hmhV+3rP
         BE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100569; x=1711705369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6jwgd2Axk9fB0Aki1YRcqjY/e9Dl6tqP0b8TVLuwoY=;
        b=vYmC6RvhbVoYIkqeLoeJ5nq7/hDdatlBON+YyqwTBkM+FqzRRy7qaCLeagAKD7jpZ0
         y7MmZU9t7USJKP7lY8frItbTAAS8ntEyk1XfGEOEVaX8PZQXG8lDLdTqXReRCaOqdPrQ
         BnNrSA56WgQg7q/t7ASmpGn9OVCNLKwYCqg7qx6uM/IQHCimkfZxtjNJ+FrK2IngKZRY
         kx9ZoFZK2CtiJ883OhCNQLB+jp/wmKdgRinKRgq747jUUecbO33HJSlBrzMDUnqrNYYt
         qCG5JqhwnL/YjBhs7jlROa31TfaVq5mB+Ijl1XJ9wXJdOPFpLGWoasBF24fGl0RKPDSj
         8m0w==
X-Forwarded-Encrypted: i=1; AJvYcCXPE22g34KSp0EqxDsozCYakXTfj6aAhiRh1Xf6MHk89lTkRvhPPvp5+sQ7zENw/1vhxUlqfaVoaz4T2Z0s4KTKLtI7wA5hHyp98aidIg==
X-Gm-Message-State: AOJu0YyhBejyWOJiV5d7z2neJbC86LQrFclt0BGmsktnY4w4dihkZjR7
	qZKXmrCr6cKQYHHlZVgvLe1EwPBmWr7dQ61PjoPo1NVVkMowaEMrgcy8LtqnJPQ=
X-Google-Smtp-Source: AGHT+IFKbMC1s6wqqPUhJW/7GMB8Y7THK880B/b6bjhNmzH93s3LvP0Ub+ycCPoHRdbPHtzxiFVKtg==
X-Received: by 2002:a2e:9b90:0:b0:2d3:aecf:4c32 with SMTP id z16-20020a2e9b90000000b002d3aecf4c32mr1295935lji.41.1711100569287;
        Fri, 22 Mar 2024 02:42:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:42 +0100
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-5-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=AAacFwAsEP617vZeav2SflN/fi/qz19efJB6LuW989g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKSvg7Tvnjp3QY9GSz61hPxi7sEpbaE5DYgzELK
 OhP+/8uJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkgAKCRB33NvayMhJ0URLEA
 CE+/A3kTJC+heZj8hKqmqzp0kpMNxTtOyNuBoV3WwN0siHNKDIN7Eg6nVZCJ4QP7lFI5x21rh06d3z
 Z9vXQrH7DBL1aZTkBdt1HDO2scC+V1gdE1hubNfwFf0xYiJb/L2hXxDokEX6ucKhwbq/UvlBp2WldW
 rkvYUGdBRdBDP32xrpPZ1qZNh+iJNnWFNywd5AFz5r2pwEPycW99Kj05zjT9t06TCOGjyTuaPY4WHl
 Z+FMx8K7hcU19zKWTsJM878uAcCvDENdVRx6WaAbUXFKVHGojzZEl08otuP1eXkUzZcBbKosn7BT8q
 of/m7LwFR1wyDQL4YOhiGAc3un3g7xZfr/V/EiTXeS/lLsqkmsKE3tRVgyRl6FrbYcPyEJ1RJBZZYY
 bJXskGyQal6BznNL2ca7XvDhgdn0NjnHyhFUdYxS4vkccGCpdRFMNPkI/95Z7RkMeGmUJxMyhLu7PH
 pnyLh7jTv5NtUv4ktE96Y47zfM0zrFjntKZiCTmzgpiwyj8xr6Eg7YKrvv29qvHlHfD5HRGIP1TbVc
 SRlayhQqj/4jsStJiBYeR/y7PcjOgAcfmZQXCPjDJtEr/aUZH2BrCpfM6n25qH1YRkf1ZhteVCN3zQ
 RKruGREzYYmM046dRLFs9Q6LqWAfgQdhddZM6dEP/HJ8kQV70uddSYDyaUIQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024252_628799_48C2AD46 
X-CRM114-Status: UNSURE (   8.69  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b86be34a912b..32361af98936 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <0>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1988,8 +1988,8 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk";
-			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			#clock-cells = <1>;
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
