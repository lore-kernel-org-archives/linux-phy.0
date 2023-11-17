Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB35C5AE5B
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRJaOfbVHaIz3KSy7ZFyXCvOL0IRN470tRSobfk8RYA=; b=Pdx706pKVU/mNu
	ZDVGgWfRmmykE/nD4Rp1IGsvbcvBk6nvoBIu7+TII+akQAl85nNjG7Lk8bTBNMnhD43QPtbdoWR9a
	3pcHcb2Gw3fYAPr5Cmf1FAosJzr91TE3yD+E93+CU0dqg9jYOrm4/cee/B9tEn7nrMTCMiHS6gVeH
	6cOeNcpaHMN37UMvnlNd1EQ3nAxo53iz1/+EJIxMdoVAK8mwKe9sRBAphKPe3jtKEHXINiSEQR3+5
	mYSKq4MlEabrMQdmsXjOq6awyLK1cuYFlQnygLdOsrTESXnB2ps5TvLmxwkKIpTXCP87zyxguIXy2
	mUYq8E3wnuoEvbhdVonA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hi-007DnT-2g;
	Fri, 17 Nov 2023 20:17:50 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hf-007DkA-1T
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:48 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9f2a53704aaso313549566b.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252265; x=1700857065; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AwQ5/SyDH1GtZNxQjHNPZv7NfjgdWC/XscIu7KZavV8=;
        b=Fsz/Eghbm1MpelGGW0SR7LLEvSRjVy0IAEzUZ/Vo7ZisqJEVeLkZXHN7pAxj1/v6c2
         J9LToovnhqyt+wSoKEApt+kIiUN/UaGTvMfFwsr9xLl3L07q22y79bOXSBXANDA1xaNY
         sJXu9nZvbkfl32tRQwOoFf4CPaTW9vPHOxR/DaE4gw1J7YRwByCmlaO3H7tFAwntdkvQ
         PgYiK4KDFCOo7duK3rdIKf59wQn3YydsUlF8F/Z6yeDbUWFyC9hnEXsPcdPnCbWqD4ej
         Q0A0WgqYGGa+QkrBatAZFemeRY5lyO8fkstJTqzmHRIcLSAhOrBXyu+fbNIeKDEo18Ve
         Nj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252265; x=1700857065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AwQ5/SyDH1GtZNxQjHNPZv7NfjgdWC/XscIu7KZavV8=;
        b=oGCBMfUH2tCTX4xmERM5wvJdp7R4WtNqocrTb1chYQL5IJjfEwLuIoHMKzsosHsJC9
         0j2tmMX11hMb6nhHUCd5FhQ57m8IsRH1RidE/OuSUXwX0y7dc+EaQhzMX0RwY9rtJsn7
         bE3jhFGmFspT2A88lOostfjBpiO+crmHlRW6bu+Y+d4GTPQ5PRRsUSDIvHmOfGiVBdoF
         /taDlhcDFA5fbImmRrSPQnhdS7Np/o/Z1Wi7Wb0ulkJBBxMxskM0cG1XB6SbSmzmjgba
         YT4M4H8QhhNf8daEJvlo2+0Goc2l0bsre44nzuShttyMDN1vitcncwRURhbbphzlgTEg
         yqtQ==
X-Gm-Message-State: AOJu0YxDUsyNYmHuCQmcVcRiQOma2MKg4Og89P5Y8YlBRkUN+c0IKmkd
	cCQA3njknJiG5KPg8qgqMcQ=
X-Google-Smtp-Source: AGHT+IHFAfP6OfNo7QloA+j9CMWL4Ji1GKo+VCAC3R+zjElUahqMCLXDXvEROjygi2X0j2Hq5EGNOA==
X-Received: by 2002:a17:907:7f28:b0:9e4:67d9:438 with SMTP id qf40-20020a1709077f2800b009e467d90438mr192022ejc.56.1700252265458;
        Fri, 17 Nov 2023 12:17:45 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:45 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v2 5/8] phy: qcom: qmp-ufs: Add SC7180 support
Date: Fri, 17 Nov 2023 21:08:37 +0100
Message-ID: <20231117201720.298422-6-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121747_500985_533D3586 
X-CRM114-Status: GOOD (  11.13  )
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

The SC7180 UFS PHY is identical to the one found on SM7150. Add a
compatible for it.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 5f79d188b435..be7c21858d69 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1870,6 +1870,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-ufs-phy",
 		.data = &sa8775p_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc7180-qmp-ufs-phy",
+		.data = &sm7150_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc7280-qmp-ufs-phy",
 		.data = &sc7280_ufsphy_cfg,
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
