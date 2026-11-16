Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC82606A32F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jC2wuwUz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OOy0CCUo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=T3x4wZVhgiz8by1Y9KOB3PcRlUHyylsh/sOFkWY0IL0=; b=jC2wuwUzCHjSN+phPJfsWZpgDP
	yhmsMNXPf+RTzyhZHAOhRJKvU0vAdN3oyeO8vbZWK5P/U/ErV4X6UX1AR8wUm4TH0P7Gi9xe9VYmI
	93o8wEo3NSylwgXutxUKTI3+h8YsrgzBwPTFazl3aYfpy4NcdDhVyLbMxq1OguGYfONKLDOL3weqj
	9M7VMwbUuxhSefLCG5fK7WEv6bNT+Nd4JPBJzU992D+S6OntvmRNnhzWMtpCTZU/O9Snzt9Lv/fXM
	ApCmDZz9+x82iGNu3J58Kzqb9cWFRzx8Bs3HOg4VOG3oMknrR5lIXMJJXXXcwZHrz1vrVCojMBKcp
	Dsi0PGFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EX-00000003xfR-3ZxJ;
	Mon, 16 Nov 2026 21:27:25 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4ET-00000003xYC-0EE1
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:24 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49d05d51553so22763105e9.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864439; x=1795469239; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w98VdCA9EtnwfzZZ4SHf5Gk3YVXSBdJ/uT/O1NuBZJI=;
        b=OOy0CCUoFB7+2c44IXqhqWUEcwkmysxCzPXUYnd1ScKZaWK3MhrIzH3mq/PGNy5os7
         NNYNdD8EMn4Z9ziCMXUQgZlvw+4UQwPzMT++o7I8L0orfNqSX/4g76mSmrz6zlqg4ac0
         tt02S0wkrZn00d4LHSljtf6x6ljK+c6ua0NTijo7BEnmf02aCYwal3A0R2/rwcH6IHIK
         2w+fKSzFkNwyyip6dtGssL57Ph5jImNfl3kHj7NJzoHvgJWeM4aVugUjxy3ifxuTkGHJ
         2AY6J8IZXrqUPqPTOBGfnSjaYzHU18SZnj+GekPGnzKjCA5B+66jncq4kUd/wVqVf9Ad
         rF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864439; x=1795469239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w98VdCA9EtnwfzZZ4SHf5Gk3YVXSBdJ/uT/O1NuBZJI=;
        b=rbasxBJRnW9R7W6O8m86mjs26BfPpWlGF9Ymn5IbiVo0CWezqynt8T/K2xJCJ84rMg
         Ql96Avvcq6PMQlxdQPjvrmr477Xbq4nNpEsN1gqa+lJ62gXp/sAL08O9Bi5WlQIEmQZ3
         2yVWp0PvGerC6pFtP5uCeaR3oplm6Nq76OVlXfCZdsB/p2IW2ozF2TGGXskfinlIExxq
         VRDYLExPQpI8XkwL5wuAm++rRst6yxek9xoniwOtKPJOguW20zoilPYmj70E/ECxndh9
         PrAlSAMVbkVQeLXv6FMWWxNf7UBJMhqGEu2VAqNY/li3pcf4XdTT4S75OM7NHdgJI2wP
         mqKQ==
X-Forwarded-Encrypted: i=1; AL+hErHO2UyeuTNnfqUStQ+EczsUBTbjw6TsUVmZJ7AF4bgdzQYj/2tNMiQho2F2V30FDtnGCTx2RhnKGfM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9BZsbss6YmYdiRtAUlaVfBYr7d1ikW1ELxIphPS4Yqb+L846At
	sXAH4t9W8bRNOresON9hw7uUDrX5NZPFWVaBx4oiI/uwVf1L6vhQxbLV
X-Gm-Gg: AYBFou0OLNkJ92QsWi4mLv3NIP3n0Rr5eyI+y6w5dhhqiSbRGk2by5QJaXIgIq7NbC/
	QIFq+tUxT5x1qi8WRKc/VW2CVX3VIAu3R1MLopqemnN3bKpx+f6unc7VmiZJgnqRBin9Jf8/aDR
	QqNqv535C4KrmlhHt43bG4nRiAJ+wO9wSldR7fK5F9jeb0Lh1fW+TUYwS5R4yqajE1okanFXkDD
	pafJcCExcKvMd6t5EhLiCiTlYdt/WhtnqAXkdT18eTAFEMvh1ybZlFH0+806Z0KnEowQvuUkFaY
	pnQHnFaqSXlrBhTbolYn0xip/+eA7ykPz0iSsCtU1FnqzwF2tUu6zW2zH6dty1/bpguKzb2XQnU
	fnTj3CRKNIfitmaek9JIMZDpjUZWta6xemSGcRDad5RkYDVu0L1s9iP2n2U8mBf5IFH5VgOUw16
	6a4pL8rPtK4qIkZ98oQ5n8OXxMmdcaIM0128Gsck2pzliAKVC4sFFWfSME35z6+bbe8Vnpx8gky
	sakzcSBVQ9/dElalXZLlMBvjGV7wCOrwyYN6hNB87vtEQawrANXEpLgSUgyXnxzof+AXANq70w1
	jhzVB+kTexv8OgnDZEoAPTCfd9LhIoiy5+RcHK9e
X-Received: by 2002:a05:600c:3487:b0:4a2:526b:d410 with SMTP id 5b1f17b1804b1-4bb55a4f1b4mr255653315e9.13.1794864439353;
        Mon, 16 Nov 2026 13:27:19 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:18 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:23 +0000
Subject: [PATCH v2 07/16] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-7-2c92438c6c46@gmail.com>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
In-Reply-To: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=993;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=Os3dtyGi4Umq8bQ7AEz34h0NK9e+Ws6GY42XJz6qujA=;
 b=JAnPagjMpge0X10XiR/LbxFcl9vIwvXlY8rdMR3b7TnG2zjS5Ef/3pOUFBSYZcopY2HJ+t+/s
 qtEtnXV/IW3BvhWLgk5yEo8YJikc5cpwNQrDqesXNsRHoPh2k6l5Th3
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132721_274530_056D9A62 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the QMP UFS PHY on the Qualcomm Halliday SoC, which is
compatible with the SM8450 one.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 10435a0b5230..a42bba9b550d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -28,6 +28,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,halliday-qmp-ufs-phy
+          - const: qcom,sm8450-qmp-ufs-phy
       - items:
           - enum:
               - qcom,x1e80100-qmp-ufs-phy

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
