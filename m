Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD44BD0E6E8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2eCkYxe9GsofNez7mnODywPdEw1zDpXDn5+EV5e25Y=; b=Zfkay4eme/2YfV
	SNvJibHqqRPVPEi4FL03xvEzmqRrBkdvkbtzoXsIQ8dKgNZsn5UTl8TvAQTDJY/xN1N+Ew/wFlCuy
	L8ErD6QONwKipYhGpdy2xFHw0v/qLG7wqQpacmgZGnpgXN8Oxf/jooZ+1IyQTA7sccCEj3AnrLE5X
	oWrfIsIlZDdZzO7oihPQoZgg9vSLrjRGoOGkKSqK2e479FD6/4W7WjEoRJcnwLJCvysu/hQR/0ERe
	APMT9tQBfGtBsC5xcMcp8QJzqKuBW2siCaDnFEITaNpmvvw/RPvDJwHnZj8qi+RflcbRcTrB1eSJ7
	14BgbBZB2Ox7HinVS/oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pj3-00000006u1y-1UdN;
	Mon, 21 Oct 2024 10:33:25 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2piz-00000006tzE-0rAT
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:22 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-539e63c8678so5086346e87.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506799; x=1730111599; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2eyUP7PqA7x+pyAdp03ksII8x7mpw580zNqO7054tI=;
        b=XM3P/pKWTlHtNRmRxEX+O3b43/1BaE7GyE5gUd1tkzbeU183mKktHI74k4pMYzfuUg
         cYSGH+jyHL/zx7qFPXuUpO5Qbz1OtRVQQdTgNJNWn6iHPB85sG2epjj2CR+aY8bSL/DV
         t5/Ds1EHkeHh1ZxlHJdClpYfp4IOiI0o/pzIAG8ETlhKllRrVxdcDPHm/xWcybr0T7EC
         hPAN9eNAH78oIg5KTIG4Xzb5jLosMnvM0EvcrgOpQx76nt8ybazbPRNQ98STyUnuL74r
         yImiMv9gvgVjUirFJgxlBSlSj89da6ASo9Gp848I6JxtOOXvTL5Nf0y/hxI5AlgHLDZ/
         g49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506799; x=1730111599;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a2eyUP7PqA7x+pyAdp03ksII8x7mpw580zNqO7054tI=;
        b=woURo7e1L51uvyrLEcYYWUxVB9HKgFgURmMYTYSvAoGRhg+YqQbzGVUgxN7qWBsoAA
         7TIthbHUh0AjhXWl1E/TrsW4y2JjKOzTJtdf5+0HH1uWv73ubuVZ1VPIsg1Rw38xCyax
         pu6Nl2Ocy0UY21F+gxINL8WnwwuAdfZCwuJvFBUQD+g+zKEzpw4jPiGJ5/fMZZ/IJZ62
         JA887/WfJhmnFOdJ/XWN63KNL2I5MYGivHPGJ+bxT3YC8CgjD0EZa5EYzdLcoCMAAIm6
         3O5yfxnq3IVF5a/n7syOSbJ/zH1NfLgiSddpjQl1gQj2DAPoq9pUoZbShsAi9w02wld2
         6wmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNaO7ji3ofGzkLTmIiI5eIlm6eESNNP4O3+1uZcMzlGvtaw6DEWcY56h3/XrH2FFpoknuhSh21qyo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxed2PKqeuEHImSBng2ZJloWdEi1pKAtACOEQuvCX6Vn9Y9I3Fh
	9tD9Gb3R5ZqyvAMWxuBf9dnv71NjvvlAzP8g8M30zoYUHh1uAKflRrgo+1isljg=
X-Google-Smtp-Source: AGHT+IFZo5GW8v+yyp5vYLGPYf+byaJGKXtBt33CKtMNWs/N57lLW1TNpqYN1A01/pdjvy9xiNmH6w==
X-Received: by 2002:a05:6512:31c1:b0:539:8b02:8f1d with SMTP id 2adb3069b0e04-53a154b0defmr5386722e87.30.1729506798993;
        Mon, 21 Oct 2024 03:33:18 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:11 +0300
Subject: [PATCH v2 5/6] phy: qualcomm: qmp-pcie: define several new
 registers
MIME-Version: 1.0
Message-Id: <20241021-sar2130p-phys-v2-5-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2284;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=W4/vDRwVV7Of/fJJlqT46Dx7PzvQidb+t0kRpal68/c=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3llK2VMAdY8RUvXi7sII6DECPUY7pUyprnl
 MYczqI15pGJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5QAKCRAU23LtvoBl
 uLB6EACdoVicC9lvaF5ZXStdqwm5+9LS21uvk3TMKsFB7IcKVYBWkits/r5kFxwVxdZrIpytfdt
 fiRW44IsX3j1xHe8vXD/qDbcuFwr/j1blNjerISF+U6NDplZTuqizqwGqaTF2j3Y9Md4yiUrhYo
 5GvQ9QJFNuw2PMEP4g2Tfoscc0/kAwDahgJn9jHXczG/iUQx5iHy2SZp7rQ7bUXMl09INF1zs5x
 PmzNHOQw8wM5ApBUa6LXdeTeqAWDBHmnumCSIKYXkG9TOOc4IgHPUFUc2Xp3yMA7sjcFOAM4aOj
 xheeF9gObKzuJEMt/GtHsdniLYr25UQiZc2RcK7h0IEyP+FUWKb/4SECx87mzvwDDwVuwF9irHj
 oUI832DiOROA/48Ks2SaOO3eGrVh7nm8WQoKl6XSJBv5FpNSogofrWXGYm/8YE9HQverEaOURB8
 P3rr15TCcrXc10DpSXk5YprHQv5LFbeS44//UnfsYO3tb6Ef8YY9WZDDFcojyNcxpFj5pWtnGVm
 MNqqoMxeq9Du1HLFIZOEOJt9qtD9DuRe7WWUi/5eymvxAK1CAUmByfKE8j4ACh/P3EsPOCGa+Io
 0/xLInDJyIPBcvKgJRQG4yTlk2Bkos5NwU58TSkYhPBWIfOxtwnbarhgKCK7NAaYmvLFocGbhDl
 w2LmihHdr+dm7TQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033321_260526_94335729 
X-CRM114-Status: UNSURE (   8.29  )
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
