Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73606C77B6C
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0DN9bF1rqdbFk8SRML+9dIs6yh/14w+k3FsySvMIn8=; b=zvlZut7NeILKM5
	pDsq2MYtH9wR3+pDBRvrOl/MIIxrOUgpWBEhMnfgi+LWx91N8/I3oObdfkHe6Ebabe3LP3JvGzzsR
	B0y/Nx4nC2ad96VHGI1wHtUdbq+4tirz9yx4u74EnggGmi7zF6UshIfPlUjap6H1w/IEeqWkT4KJA
	2LapLSWvIWyVO3GgyB6A1Et/604Y2s5FA7TnVFG57/MFddzuPy42wMeIwQ81wmOesbZ0diPGaFkCn
	Gx1QhNno6ChwLNG0j2aJ46TykErHIozfmSdadTqwYjk+Uoo5MpgjhRJOQUniqVI6T6AG4IsQ4tF0C
	+OUrxlIvZJf1DTDPI0Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuP-008h4j-0C;
	Fri, 31 Mar 2023 19:59:37 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuM-008h2u-0s
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:35 +0000
Received: by mail-wr1-x433.google.com with SMTP id v1so23578706wrv.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZ4tY9ZYWjx+L/GieKh5Pi36vPyy7QPV1ldHuKzb5+s=;
        b=L3lmJ5z640wRzUBye8uUTVuzCzoYv4SJvO8Se0nlyyvbcnVcRskZ0cG5JeZbxW+GCH
         5fdlaKsLiDHgPWuMqm8GefeOXEHENJZanI4inA/wabzA/ncA10bbj5i343n1lbUxwDNC
         eMfKlH8HXgU5L3erhaIpY4mXcLd4KttOuvoGOyqbIUWDDCx6k4EwHf14rrS7MvBuUYOw
         z2nln4YQ69ilNrUY4VFW67QyeaYzK5P8TE8h0eRA/gknWVC4jR33obiB83UF2+1v5hin
         XXGj37mnQyb1yin+aS0atsQ15cDlQ8HvjUT0QwluUvIpdo7RT80R9HlIZoKtQZWJAk05
         qEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZ4tY9ZYWjx+L/GieKh5Pi36vPyy7QPV1ldHuKzb5+s=;
        b=182j5TFnwgxX4WtQIe6GRlHYrhABUHD/2vMFoDH5R/NVXZqTI+Ex6Twiipomfkm/dv
         BTe1eiodZJD75AXl3iAIVjPYIS4i945xo/UW62sfbzY+T79AFQ6w2T4QPhzFsygjxfE+
         I+3sNJKDy2pxOPSX+k9V6IrPJCk3ENUM282l9aYj7S4kl1FpcU1Q6sjaM5PqjDnQUdjJ
         2r2WN0Y/nCr7Wq3eoCbAxJpac7tXcy8F06IsQPW31x4Km/Vs0fwxCWiKmikkZTnL6otb
         TGbO5GIFT6uSPaajJ8Gug5jZLiRww7RAVpZAKo9u6elxK5yiw/miwmuo3xeyn/HI4EXj
         1YIQ==
X-Gm-Message-State: AAQBX9chkw/Ojhe3wVaTCjuF0RGHXdmqj2+KNybFffA27W91Gm0E4jff
	MfvEi5IIczuIXY6AdJ+xGXBPYw==
X-Google-Smtp-Source: AKy350YvQk00Iyf+Kahd6DxXZ7ieQXGXto0RYjH8G4uQwsyXBRPgD3ySLFWoWor+u6jzuP7Tjwr/HQ==
X-Received: by 2002:adf:eb0b:0:b0:2d8:4e4:8cf1 with SMTP id s11-20020adfeb0b000000b002d804e48cf1mr19296816wrn.21.1680292772089;
        Fri, 31 Mar 2023 12:59:32 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:31 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
Date: Fri, 31 Mar 2023 21:59:16 +0200
Message-Id: <20230331195920.582620-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230331195920.582620-1-brgl@bgdev.pl>
References: <20230331195920.582620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125934_309842_69B006ED 
X-CRM114-Status: UNSURE (   8.35  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the compatible string for the UFS on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index c5a06c048389..4abd3c0950e2 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sc8280xp-ufshc
+          - qcom,sa8775p-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6350-ufshc
           - qcom,sm8150-ufshc
@@ -106,6 +107,7 @@ allOf:
             enum:
               - qcom,msm8998-ufshc
               - qcom,sc8280xp-ufshc
+              - qcom,sa8775p-ufshc
               - qcom,sm8250-ufshc
               - qcom,sm8350-ufshc
               - qcom,sm8450-ufshc
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
