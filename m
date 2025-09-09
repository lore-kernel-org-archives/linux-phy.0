Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080FCCAC587
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 09:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJxKeamvu/r+ws3xYdljgp+hJUSg0fCpPrx52Us4RsU=; b=w4wNDg5/OlTnKi
	GFqMMniOqw8BohQ+9u9QDxAJvSfKmZcPbglBueLfYX0sua7oBYqSTk3nTemGrOjxsw/R5qhJkBand
	ws9EI+XbYx7x52GxpV41lz6jvIdOAswr3a/E18vfwd2aR1aJv4cHHgUT6vbIt9OcJTInkRVsMl7Wn
	D8Zv87DOHm0J3tjFeGT+9JUWB6ms8T2rU8SfqZF0OjUZKA4q0tj9ns3CM8X1A/CynCHbtkKdigx5X
	q5xubgR04Bq8PziUtnS7JJ1EQ9iQkTe3yVrylAGyZ+RTMJHb5C1dPAU0d/AMRFNHxPum4/hB7HwEL
	uy/Mb0zaI6V8elzqGx+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuoc-000000062YE-2wuL;
	Tue, 09 Sep 2025 09:39:06 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsrm-00000005Bob-0xNl
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 07:34:15 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-620724883e6so8822677a12.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 00:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757403253; x=1758008053; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xIWkj5abBOD5CGfZVD0eUu8lpneYawl7S35HHz5a778=;
        b=YmydSRAE+t4msGL2+JZSsE88jRt6spgC7+S3k6x+5ZE1OuCKmk4t20GImVsYJyfTl+
         yfWgI8Kd2PM7smnJNQPrOUYNiUubOjEb2P0DSJ9fEhne8KfJZ76mvP71GIHx9YXP56XW
         3XuclSA56Z72rPu12czxDhrBRDWXfQxS1xwsdGP9FaTlcIf7O8pHySi5G8hhG8CRwmNw
         ctisruNfVzXqu2ISkV1kRfne+lFWTj8/lzE65YL8ztnfNKfHtqrH3YEjZkTJNPvnAFKZ
         YV/N2PvJvKSJHIBLQKJs2zw5NMo1QL+qRNyyMq9R/lio60he6Si6J1QISZhHKYQlmMr6
         HzGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757403253; x=1758008053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIWkj5abBOD5CGfZVD0eUu8lpneYawl7S35HHz5a778=;
        b=FfYDFTT4bjqVz9hbk3CA+cnlHPWZUIfAd1I0E3ybgITp6BCfEBKtO+88qgD+q+ieJa
         cFp6RuGjF6mbV29Dv/G5ktCpKwGsLBK0etGrj70g+dtjaOpP18/Rct2lpGZYbnsjFcH9
         +HwolaE3tzyMg7EUX1cxW1Vic4NCX8wNGqFXbrab7i3c5EO/Zo1mGX5CB+TIqvW/+s1W
         xrn5jhKP6uPYp0qHKGnXukfXmoPqLW/xHhho6FzW1ScYcB9Ws+obNcRVwAPAGDcJk3hX
         PrAtp1jA7+tctCHXMxD8VzqVGMhdI/zMBYc+kvs1vuVCL3Kv1H199CXPhs3ifPCR4Ihc
         6JLg==
X-Forwarded-Encrypted: i=1; AJvYcCX+JwjdqQBpXZnS0rMALy/6NzJpFJ1MEqyMxmOA/umPl3yHGK7DikEeNBuW44YNrxjyY1bJjQ5m8ik=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNVUJDVr1KIsIivhmi028rJ5lWhcfWd14QbPEBguGPtAkfHNF/
	Fi9a9pV/Svm10u94Lgl7qxVPJoP17SdZMLqFRYe2jj/CE720Z/TQXAehMZy4N9bvZ4s=
X-Gm-Gg: ASbGncsIDa5Kq0E1txoYyBNIgkIdrU/DY4duIGhJoOs7Nlt1if7lZ+8gDc/1WRcNul/
	Yiea/mF4wu6hbXLrpWlECroOZuDBV5K+qi+FMMaNOA8G8x8MjWILz9ggJSLUsh5XYpH+KeBT+QQ
	5Ao+KzO5oTVZXM3GNSiy7M3nH01sKrhemhUClxfmItNg32Kfpvjmpbpx6BO36MRQBEJzRJJh4XC
	gqGiWq1vRrfiEUYEsCqRq5NhhPPXr5h9vQrmAQl8qRlqXlM9FXx7Ui44fDQt1xOfsfeb0PIZxSR
	caQo7WtOH46eDe/2T1ZTjMmYFmeyLEVPjn+iHSw8VOEBaeVwaVS6ulzo0t2cJFSko/yTvcGA93s
	3urBmiqIUWVsGIJ+JVWKoqA1af3wCgWFgIg==
X-Google-Smtp-Source: AGHT+IE0JfJPrysG+ilt1P6XQou5Dh9p7qghCInAMInYwMKKh6nyr5AwYwkSehYOlA2CdaSMSROzTg==
X-Received: by 2002:a05:6402:3549:b0:62a:91d5:8844 with SMTP id 4fb4d7f45d1cf-62a91e4cee2mr3840644a12.21.1757403252689;
        Tue, 09 Sep 2025 00:34:12 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c6a264285sm226976a12.2.2025.09.09.00.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 00:34:11 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 10:33:35 +0300
Subject: [PATCH v3 3/3] arm64: dts: qcom: Add missing TCSR ref clock to the
 DP PHYs
MIME-Version: 1.0
Message-Id: <20250909-phy-qcom-edp-add-missing-refclk-v3-3-4ec55a0512ab@linaro.org>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1849; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jhpfAllvRjUQlvp/6puQsgbTZIwx8t1Hc8Kbpiklwqg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov9ho+JLGxomLt25iZX5/tjQqlJECZ8uFp2zeL
 Cl7wISPeSSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/YaAAKCRAbX0TJAJUV
 VuLyD/9OQNNgomIbCRgZHuDmHgU7/hgXhVD19B2LyP53pmSJQuX9lemU59oQC9bdFE/7V6xdrh1
 Z50yP88jFTTR8lZyOOOJs53p2XvAUO6nhURGYwqcpp/Ff+2LCif1YmjDJ0XkElCQhvXG5g3mcsh
 HjOmNn0Doqa/WPo3nqrD3glt629ywhGJL+V1knazqdHeYKxD1itncWZhZV9JL2hp69N6d6q4w8Y
 FIVRbk2x9LsLnwi55yBFBc9TyyP1VGLvdj0sfXiK40neFOlm1m7gEP7i1gZ4cxApLy3Pb6bTuc9
 x8WcopxeCZQk0CPms2xx1fGJHs/ehMnWi6CGx6aPpKuRMvGPE5NfqIVqwpXg3HqJaPjOohYDXmR
 cbnjjvSHe00nDQKfc78qogtuXwzW1R9eYpj26kqhETBxBoYDghOIbyOMOOcx3lmIoLySh9ai62x
 I2FSYg0aDEyudcMjNoD5xLQ9C60Y7cVFvUogx3f1OpTgchckqxoJ5yakVGSEfPwR+52kndrDKLH
 gc9Y/7V5NKRoNL1GLatG8VOfVfds/6XHyoxQnhINTP2p0Q55vt2UgELkNvY6dH7HquMumMQwVI7
 T8fy5Tc/tpV0oAfqEJYExzKYTC3leASB7xzYx4u4YU2QpDWdojmziwVDU0xazZuqLF6Dhdd+5wk
 QLJVT9BLUrxd+Iw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_003414_274709_FF680430 
X-CRM114-Status: GOOD (  11.67  )
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

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 737c5dbd1c808300041cc8897ca1f7450e16e019..551fa270e6ecbe6462ebc1736a36be65534d3ae0 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5670,9 +5670,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5690,9 +5692,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
