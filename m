Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC57FC47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha05jvE+BnB0gnxH7becp8G335gQKFPg0sezbj0fh0M=; b=Pj0eE2Uv+xOdjg
	wKrEBkNPeQJtwALdpI7k1h+uGZdZLER5RBrb2xbMXB6vZfK3TyupwGaOCKxH1HtgBqiY6TczbMprz
	fTRVagWTfrHwFHiGhrPd4ESWhQ+QCmFHCFraaADy8UsGCKMBhVU34z5NGHHexSkNQrkiFF3PSka73
	y5tyMW9gDEYRPla9X7fcDgvxDq67u38CVm2xL+hbPmKfBniyDgn0Imk/M893A/8A3K9/rgJcePIj9
	Hfjg8dFeif0jYTydmgz0A4ffXE/z8CcqOFtyEsk5stRLlPUY/ez+rqDeRCLD5IEZ+KCvG6zulcJxs
	BQVkRvjFXcB7uHqQtO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXp2-001sRx-0y;
	Wed, 24 Jan 2024 07:37:20 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoy-001sQR-1u
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:18 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d7431e702dso21746175ad.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081835; x=1706686635; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNpTFIF16BG7YGRQCCrKfm7GwY9WoZx+GmuixbAdH6M=;
        b=y+DpX0vjLt3IFEyJdbq67xUG0l+int8c0TU5ChjHwfom4A67DOx82wEBGbMC6iEPoJ
         rKtsvQp+Gs/ldTeBrFES+9EMSTlEcIJRrxohBVrcFgKlhynwoiBrJahLbQNqPTKhqcRl
         tNK2JuwHruZaECiWYORhTk+QcnLK+XCairk73yT1q81/UdyEYot/+bgsxwTiVtJxRaAO
         OswNSyZSiOQcDdhVUo7OmCrYYFVMpnXXXxOgDxr1/Z+WN08QbEP0EiqjjQRXhtiAorel
         x4ocTd85lDLfwBLkLJIrsZT1sUjKeQ59kgu2K0hP+nhitpCQyI6wY7XWWSrGnX3Av5cF
         ykLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081835; x=1706686635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CNpTFIF16BG7YGRQCCrKfm7GwY9WoZx+GmuixbAdH6M=;
        b=OKgmWQhHYBRuwDvZ6Px8Mpv6CiYUcSN9C0979rIPfU4v2jyABzKxF710qHDmXg7WuF
         UPXT+uSrNhHbzQbqM7QDSDGAE/LBlf4L5xSBtMmLOh0CSyBZum/lsNZ9IL34BXw7K8US
         dr9s694qUhiosGVnnjsC8vfUbL/vM3Fg5bUa8ibrY8Ur4Ysx/hN+tPDkHP7LO+YCr/Iw
         sJF3yBQIlQVjNMaoLoBAr3r1r4dxsMbNkOPCBzrcz3tGtrZS2G+4MmkgGA1T+reDh+M7
         +65XxkOh13ni8dS67BHin24u7qf3VsR6gBlUDnqfT1PZIH90ECPqrb2lAqz5FUX+wgAo
         gLJQ==
X-Gm-Message-State: AOJu0YzrAiVvS7ICvH1QnLW/i1nk5rvS6s/46kUBMgsAdnughZwVT4AA
	5lMuar+XIxj2CwpVnc+lGraEYxXXYk4Api9Rkk8CJE6bCYKi7bisaEdGcPodKw==
X-Google-Smtp-Source: AGHT+IE3jPeSwyuGuMyRlRHopR8kJWwDY/R6l4wnlHb2ZcILwydWkelUDnM75QY0zsO1jxoWEPgN7g==
X-Received: by 2002:a17:902:e802:b0:1d7:6f5a:d390 with SMTP id u2-20020a170902e80200b001d76f5ad390mr360391plg.55.1706081835084;
        Tue, 23 Jan 2024 23:37:15 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:14 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:34 +0530
Subject: [PATCH 06/14] phy: qcom: qmp-pcie: Add a new compatible for SC7280
 SoC
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-6-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=941;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=zeX+jh65HInrDo/RwQDt8aTaE8xiSCz2Utb21fD2lmY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4DPIrhoZpasm0P2lW3phBrp9L8uQenezf2i
 GE6tEIxzAGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AwAKCRBVnxHm/pHO
 9ei7B/9RToHX5l2RmHvp4lJTQYUyyAWAKvGhetr7g8UkSowxxLzt9SI0p28kQVEWSeR5q2TlaOE
 fAwneBwub3bWVMESD+kmppRH5QblNn09PQHyw0yHQat1Zd73WI+qADs5cH6epiSkGxXnbOleJKN
 lD7oo9jgQ2AXnpVt7PU+dKYjgWakTEGwoXwX+Uv3FgbQnU8UonNs/7al7khJ2BPIXIuqUUw8iz5
 vBX8JYDX6nDOW7ER8lYt7R9Ku47EUof15a3zXe1K5et4wHusFYsAt5jKx6XgSzZg7Bx4fjR3YSn
 bUmZ7IF5jCwOuX+6J21ks3UoA4mLdVR8pqbmT5zUMCSxYKfb
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233716_625851_DDED72EE 
X-CRM114-Status: UNSURE (   9.91  )
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

Since this platform requires different clocks compared to SM8250, use a
different compatible. But the drvdata of SM8250 can be reused safely.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2af7115ef968..9a220cbd9615 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3822,6 +3822,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy",
 		.data = &sa8775p_qmp_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sc7280-qmp-pcie-phy",
+		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-pcie-phy",
 		.data = &sc8180x_pciephy_cfg,

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
