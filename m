Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76720D3C91D
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2eCkYxe9GsofNez7mnODywPdEw1zDpXDn5+EV5e25Y=; b=ejBLpR9DCMM9Xf
	++NKm6XfqUzarjmm2NqyuCV95LNf9urKN1lIMs+m4Dn+2R5yAoPzenrABNjXN/x3UBXJhU9iFozmx
	uyN/9SIuhuk78XceDKeI/oL2MsRBiYl4NDlkU7VLsm5kgCQfL36glwcOIK5LClhwZfnTwqF9P3BaV
	dg9v14qqeUqISfJhkMLgUbo89Mk0Hv/gz47zwy4DXXA463dpE3Z4fDKIShPLY7jdP2trD+20F2ZHG
	QfCNI/nmTsJ0L1BD4biWoSwhfsFdaPqiNpk+5vLyFFVjlEcRm5egnrVWz1CbLheObivJsOeL2Lxfx
	4n/9Y7hUAWiXhG2y4yDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bdf-00000003XOh-0bGA;
	Sat, 19 Oct 2024 15:45:11 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bdb-00000003XMh-1qNP
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:45:08 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so2836646e87.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352706; x=1729957506; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2eyUP7PqA7x+pyAdp03ksII8x7mpw580zNqO7054tI=;
        b=mDr+K4dN7E8fPzh7UlnCqbzZBRIgQVhMVSo1rcvbbZ8L6MZFLoiMRCZfT3dEESLut1
         fKX8LNHsJGBAxFHf/UX1eAuWxzhxLzQ5Kng12YA6joGE9fug0BN0QeonsPGJEYOH8kbk
         NzwHwWzMyz8W4vIV7SK6IEh+BM/+bIXWTPUaNeA7YmWNshwTk/OPHKaFpolW/V3kix1y
         ljWZ6ULiOSw8uAIb81Wp0kxWsY7sWqAJ7+2litLfGDbgabMDw0BQ4fwvu/Pxvv8ZS0OT
         wFQkS9TsqX2DBe08HdKR8oKXIiHXwc77Tp2lNtiFdj1BpZtQbc1f7ktVRJTpUdJgte1G
         8Bog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352706; x=1729957506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a2eyUP7PqA7x+pyAdp03ksII8x7mpw580zNqO7054tI=;
        b=wM8ONFQYVN1k4mFPyxByoyG3Whnx30Pn428UJwIGTIwkZxNTnE7QStRsa3Dx8MdJRX
         OQyA9HhuUyESn0zCgqD9G44vgXtIl2xNxsunwulTnTzgN3GwH93Qh9maSIWoR3gknl5y
         +St6D9alhHII2z5IJBXyD9Dw7rLKixRSYh6aJb4kKWhqDXfePp7daDmny047fxAPAPum
         LUlQFimU41ZAGPIfeFSahLBpJIqiFxvu80IixJsgHsgm4aBVAotrXJ2AMpv+XXogzw3i
         yfa0+zpfa42ZV3/nXg6HiiFizoKQ/ox/rrPZ6kaNkTPYKp6cKDPa18Z+7joEs16YvAZK
         NPOw==
X-Forwarded-Encrypted: i=1; AJvYcCVKgMp2+zCQH6Sn8uvPfvZYPAZMbCbI7mSLG0YPVKySfcN+dCgZE8hT1O2I9IGH3FkKCd9q8ehdzJQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxLLf/6e0hxVHEq6Db95O/WOzyPpWAJ/lBE654qYTGzH3+1+53
	5SV0325aMyjLVrJmML3SYZUzk+CggaPeYiagXkLFZIRvyyFFonFBK56hC58stxU=
X-Google-Smtp-Source: AGHT+IHYkxaqVw5cjcGpwc15iXsqxdS1REG0bROkgUTWFdJwNDtdPJFkX67nBhyMkA+cVatBoV0POQ==
X-Received: by 2002:a05:6512:3d23:b0:539:e5e9:2159 with SMTP id 2adb3069b0e04-53a1522a8d6mr3648948e87.31.1729352705832;
        Sat, 19 Oct 2024 08:45:05 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:45:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 18:44:54 +0300
Subject: [PATCH 5/6] phy: qualcomm: qmp-pcie: define several new registers
MIME-Version: 1.0
Message-Id: <20241019-sar2130p-phys-v1-5-bf06fcea2421@linaro.org>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
In-Reply-To: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2284;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=W4/vDRwVV7Of/fJJlqT46Dx7PzvQidb+t0kRpal68/c=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9P11KkGH2U3FfSVJk4GXFitZtpTXBBZzkDtV
 X5dZJTX5mKJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT9QAKCRAU23LtvoBl
 uNRiD/0ZwTFkuQxkkN7LyCCEOioAKMZH5mREhcnSqNdH9AXwgMFg458S24lOEL8+qMDN6Jw4hv3
 KGJVUkKe9RvHoV1+DH9EzeJ9a4g4dP4lOU1CB58hgyNSACs6p1zXGld2DgrBH+G5R+vyZf/G+t5
 nCE/cdQ5SMHDSqaOZvs/vgjOXDyN/DbMrv4kwO0mb+sUaoiIl7Fjlj8ZQdX0Jmyv2hy/NDxj3hL
 WZ2ptAkziXlieQiV31phKG2xzVx/HfF/fLSs9zWSU2Kh2bDK8BLMchFYQsPQwMw1w/12ccaiJxy
 RWTE0y4CCmWdcEZQtT7OSvRFEKxkzszAduFKp27P4Hk9J2ZtkqVKn1zQQzI7zurMmjTzMrwGKrt
 YMZP7xEhElvVBH4Ljlimcn/T2wVGYenE2AJnv2DJ+XTvpQghrSQsRJHLg/QXJPiwO5mxZHHnTU7
 f/HIaFev5UcegC5E7Zb55XBErHGJv4PWZXhA2QXcKZjIMIBHW1LfFzP1QFN9oomEhqmxM1wxMal
 aLh9GQhYd5RvoDV5jGhh/i9a4u7M8eP5gBYxsh9YJMKFpA3qLyyxJxlhcQ9EJ0RrbgKwb15lGs1
 AB+PPB/a8RHn4P4zR4EUQKZdrWYil77tDytAjuuQdVuAne6lWQ/MXx2dtei8qA+Au1EFlkJCJK6
 rENgrAGiegI9QXQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084507_531195_B5A2143E 
X-CRM114-Status: UNSURE (   8.44  )
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

Define several registers to be used by PCIe QMP PHYs on v6 platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h     | 3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h          | 2 ++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
index 0ca79333d94261610f7274968c96362dcfb1f354..45397cb3c0c6fd2cd989ddc600510589792a3b1a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
@@ -14,4 +14,7 @@
 #define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
 #define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
 
+#define QPHY_PCIE_V6_PCS_LANE1_INSIG_SW_CTRL2		0x024
+#define QPHY_PCIE_V6_PCS_LANE1_INSIG_MX_CTRL2		0x028
+
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
index 08299d2b78f096fa5f9388a4d54ddfa85667b18c..aa5afb921f12c07e0648f69433a2e6e2fb756c07 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -17,6 +17,8 @@
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0x0d8
 #define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0x0dc
+#define QPHY_V6_PCS_G12S1_TXDEEMPH_M6DB		0x168
+#define QPHY_V6_PCS_G3S2_PRE_GAIN		0x170
 #define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
 #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
 #define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
index 23ffcfae9efab4a9e081414f9b3bbd0079d34f18..f47fdc9cecda8c4fe46c83e6449d68c033cd7fe2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
@@ -6,6 +6,7 @@
 #ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
 #define QCOM_PHY_QMP_QSERDES_TXRX_USB_V6_H_
 
+#define QSERDES_V6_TX_BIST_MODE_LANENO				0x00
 #define QSERDES_V6_TX_CLKBUF_ENABLE				0x08
 #define QSERDES_V6_TX_TX_EMP_POST1_LVL				0x0c
 #define QSERDES_V6_TX_TX_DRV_LVL				0x14

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
