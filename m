Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E52C8C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPmz9jj+QhPyMpQuB60oNVUB8uzyyKRDpfMKmuRnDes=; b=Wy8gn49QWdJCk8
	k3m9jYV40m7uSRB8rWQu2vS+p0SOZ9EZAAK/uO+YAbvHVB824EQhvwEd3T0+g32esGFObsSsDm36u
	6A2P/7UTSORUI/V40gLwCMGxK7HLaXYfhKZcadzFQp3YBK5DhtWAupCjWPlQf0T0I5VKe66LUj/iH
	jkH9j/iwaqcX9Dk9Figkdoa9xvRsJYzej621/+rmLHgtL+Qb0zd+Dcs4RdXqdJgtgyDNA4xpy3QE1
	KlRHyZXDUw/9FyR/dxsCYW8+x36KPM687eoNRfJo1ItgOF9ePVRXdEs7/KA8rvsF8KjoA9UwpBCS/
	oHAXuVrHR6e8AN2bFt1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDoj-00CqIM-1W;
	Thu, 07 Dec 2023 12:49:25 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDof-00CqH4-39
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:49:24 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54bfa9b3ffaso1255538a12.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701953357; x=1702558157; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ewcCC5I9quh+IScx7/WwbynVZPmtW1TJ0aMAySdLq98=;
        b=xjFfUCYnmzVe4xbe16E4g0TVT5fCKhqg+1OVQPHI03t5DXzSIVbU9dl6ccVGKWYZty
         VHaqhuPCV9U+9LM5SFGk66+S/sHPakgwXRq6tQ55PJo1x0TsxqYzZfNJQKDH+AQYw8Az
         yZeDiKOkQrsRsZFDFa5wNMSMpCszzWtFlgV1X967gb8+lrN7WPWwv6AEaaRS/hgV2MNB
         kmKYG0yAcq0MeYTOwFX+O+d3mJupUp8WiwAOPugHLeVSqB77Du30MJKa2/KXViTq4hVc
         4UQyynDT07Ll3Sk+EE2sDXwWquFIprsJ26ysqcjR2Sj65KGRKfRnLU5YFbvfbDTeEu+H
         cIPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701953357; x=1702558157;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewcCC5I9quh+IScx7/WwbynVZPmtW1TJ0aMAySdLq98=;
        b=m9xseWAtsz/pDPKG6FiGFtNbZ14u+w/cGpmCET+Gs0AuDFpS2PDhawGW0k/SR/pVhl
         FDda04Aucna5WbTkhabqORWVbLVDFZE3AngZHpnGevr22fHSr508BWtJMLmZSDZVlc6D
         ZLFtKISYJzWNj9Fsvl5mdTdxWNIOVwl8pusdWtqNU16m17Zk1vhSovJ7tp553WSrzI5+
         IM3phfBH2Cl/tiieMCjM0p+KIcV02qCKwwSbth7gziJPuKevfKCEgdbTcB1TDvX6iVZR
         n1lT7eYwsAOaz3L/OpiDYxfcHGoa6sU1WnQ/m12WrFURX2ju5XxC+MAMQ/CWp6NB6yXv
         93NQ==
X-Gm-Message-State: AOJu0YxZxT1pLL3LyLa2fA1QaFj+yQhlQ6CF+fcVNhQcI55gajcYHadu
	PlM5zkhmqKXWd3zT3XDiWb4rRg==
X-Google-Smtp-Source: AGHT+IEIAxZFdmx/s3Jy2bRHV0dHvEoeKVHqKLkG1wyUTQE962o1Ihr+87Emnf0MK8GH2q3GIqxMlQ==
X-Received: by 2002:a50:a6d6:0:b0:54c:4837:9a9f with SMTP id f22-20020a50a6d6000000b0054c48379a9fmr1570716edc.70.1701953357235;
        Thu, 07 Dec 2023 04:49:17 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id q30-20020a50cc9e000000b0054b1360dd03sm757834edi.58.2023.12.07.04.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:49:16 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:49:10 +0200
Subject: [PATCH v2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v2-1-3ba9a8e5ade4@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEW/cWUC/42OQQ6CMBBFr0K6dkynKKIr72FYtGWgTUqLrRAI4
 e5WTuDyvcV/f2OJoqXEHsXGIs022eAziFPBtJG+J7BtZia4KBGFgNGs8J6k02EYgKakBCxINUf
 OoaxaqaWqu/YqWF5QMhGoKL02ecNPzmU5RursciRfTWZj0yfE9Xgw48/+F5sROGji9ztihfXl9
 nTWyxjOIfas2ff9C9hQRw7cAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1279; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4k813iq1YF243IH2N4xldDb319+rcBPdboFxnx//Dck=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcb9H1sKM3NbYG3YUetp0CSTKK/tqkdsgIGZA0
 q9OCw7Lgd6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG/RwAKCRAbX0TJAJUV
 VmFGD/sEeHJbe98utJbRyRmNIE2AUOhjEk1mo/7zwwHI1o6zZ/hpeQ7t6eGglJ7owBFZ57PW6xz
 epxya4cNRSaozzkZMX8+Q/LzDW4pB5Y/y7T/cbZ3JKQT4XN0ZKsZ9cwPXUXmWaWz0lVvC7ZLNTT
 BPrMqUrQeqsNKw03/0kQCgVGHtvnezYFkPw+gxFfzTuYSE8rn/wz+1sDCC8jUuwkqptdPGVp3l4
 ozDhIo0p4SOGP69sV5hBat071S213zdwvUe1sz/pC6HqF+Pu36AnfztThrkj5j8QwN2pIjfdmDp
 P3zwobXU9NKt+KTDkeaUwoksgEtFtXx5yFwBozSNoAReVlp09jv3sSPK/k/V0G1Ce5oUOl5qIk/
 5jU9rsQ6Z+Hz4sFI3gvhD8a6L/3k+JB90JgJgA4nra5KvoxVJsvC4wtXWtt+neAql6dVKYheEIJ
 Xi0KTafiX8jspGcS9BMt6HVgeVcJUkhYvLyo2bEo7bXMZbrEfkqf8H69GCfK87mKDAXW4Ad04f/
 83YiUUHJ59fxIF6Eju0RVg5/V+3a7LOIXIMvv8DpCkLLFVAwiFr91ywi+0a5Rc4AWni/VWxlTC3
 A1JWaCENNcL+mwJy3iPzIua3F5qMRDa3cBGIroZWc0wzywXwvbCeQxmO8xeonI8s4WqnvBz02pf
 eXfqXrybMFi+J5Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_044922_028938_A693CE2B 
X-CRM114-Status: UNSURE (   7.74  )
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

Add the X1E80100 compatible to the list of supported PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- dropped the dedicated compatible from the driver (use fallback instead)
- documented the compatible as working with the sm8550 fallback one
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 8f5d7362046c..b82f7f5731ed 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
+              - qcom,x1e80100-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
 

---
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231122-phy-qualcomm-eusb2-x1e80100-36dacab8fd52

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
