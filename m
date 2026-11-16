Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52E4606A336
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zNBAQUKh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ViiEHNyi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cBk/g5C19r3A4imOkLrKEupv8YvhDZiNBY9F3m1+evg=; b=zNBAQUKh+s9f/8RieQrdbpQiQp
	s5ooqhhfTSiRJ/yB/rpV+w/Wu+k7yiKNG2/SHuAwxmJH9yo/S1jHI8YCy50mZI2DDuIBLPMNf1UyM
	kZhe926AWOZ+sIVuM/fORp4ctPB3VPWHwtT0tvMywtVgOvV2wkczFOISpfdj/lx9COYaY563StLMi
	E8iAfps3IXzJMWR86kc2/inCDUWKEXtSowJ0Srnj5AUVw50eSEzwoCvub1wmZnnu6NwLQKnRG1rlK
	NEmJRzYng1TvadV7FyG3csEuYrsFS2ObTXaegJt4GCaUput/t7vTJkMLcca1srCwGaZ/cOeDh6mJj
	T58MKu9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Ej-00000003xrb-1ggU;
	Mon, 16 Nov 2026 21:27:37 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Ee-00000003xkW-0Fl4
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-490585eddfcso2811481f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864450; x=1795469250; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UNI0IawohcjDnjoicCHviRRe2GFEz6OyLASUQR+3Ovw=;
        b=ViiEHNyiYaXdcXUxoJy62pQJQdPGphE1TzHraJKb5vXaWXRm9ZDuj/0jiB2IxcFwX5
         65Szp1YPHJl/YiyEuw5O8rpMM4ai8IUd5grc/fm9V+Jc0C8F0rDGUwFRUkm7gCsOnOOp
         ufSlvKCFE1E3BZojw0VLXdDOiLriykxk415YaBfOWLA4L3EvGkl35b7g7GOhUmVHiUpx
         BSyGvqa3KVJHMpPFjx9NQ+QGzw1vYcQhisQ84a0PADIAJEqmJdTEoa80RCJGSoqNxbqu
         nqVqrrcjJITxybMBsVVKmrdpuQcyh5pJxgozDOLxxI3XQ9YYu/+Z0C7FiZfUXG8da8E5
         KL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864450; x=1795469250;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UNI0IawohcjDnjoicCHviRRe2GFEz6OyLASUQR+3Ovw=;
        b=lye86xY3Mcc1JPh5wVGan2Hb4lgZV0YRT+6Z0YbQGQVYmpLmdWVejU4NXFqoXjf2wB
         2NvuGBYlimZ+CuQdQHIeHX009qGWui5Y/Sbq0VG0Bd1oUeX+dE5v7AtioNPbp33n5CSn
         7yOzWoKiA7EI5ELRkU1Gw8NipCpA4ako1/SIpMW81cEChJUIvHRpJlcUVUI/hiE/YkK4
         wuJ8NuivgirCicGGaCtrQ0LlXBpqIKS0cxPRRI/gCAOxCSDqJPahTnPiuBSvKcxiQE04
         5MWNZg1jUM6TSPpZuunh6SsqaMcrecaX0JkaUTZZvRT4BpBJLvnLVUV06cOqD+zDrwds
         zJeA==
X-Forwarded-Encrypted: i=1; AL+hErGeAt+r/oXcPesD6VD87YRjzGgVnDOtHPI9D1SZkhDGBueaEtxmLtWIv0X0tbiJoZRr5Pc43fMz1Tk=@lists.infradead.org
X-Gm-Message-State: APuU4Z/uLg4He5T7xW4UZMrw9KKDa1VlnOwK36DEUMbBoDPM9mJMu+YS
	i5tNMpayZUXP4yZIPfOU824iOq05+Np3mIcxwe3O8lhrYatGAvzO2t7J
X-Gm-Gg: AZFdTZeFFHBDZGpV/93KCVPw3t29XztvVQHDHzOPpcDd+7TBcZ8gG+tlr0xg2rpOr3m
	yWm1OZZXuJY8VdXRRjcRfSXGB5u9VVozGysujsDrSAaViXk8eKGqoPG7DDj2d0bfG/wIopWV+sE
	vzURkgcLFu6/RBfldx0nI2qvwwSoHvcNy3vvK3R06yItHBS4BFJYBfas8K/oH4a1OayJSzKvLbm
	Q11FjxPdxJyAxmGEK/hoKaSxP1N1ZowrERZtaSP9erpS3cur9p4gYRb3yA8s5yirTohYiQz8Zyn
	mAcIp6aiiY8mLjHo2sF2QWhQdq2dSsNlGW1d5qM2jWQ4q3bxdy2FnIqrG6X9nJQ6vZJ6x1KGuD4
	I3w6sW/epYLSmSJHjEftUFDoGM5PEIrmkrErW3Fers7mCB3dGx6/5/MhUkTdwCDoeiuqXsRD4gm
	D+YPMqjgIui1vMQg4uyERmTzCYuYqdunuWGpTH24xMlnuVG686cUskWPOxj7xZZO6a2DZ0suzrZ
	rY8rKmPB8yH8qPR6do84OzHyp7SDBfW2tF8DkRDTINfcXYR+ruAQID+bs4HreSFRssECl7Ynhz/
	BCvxUyDyv1rfuR5PrSMZaYu3RNKzgEhD1rtdDQQ6
X-Received: by 2002:a05:6000:1a8f:b0:4a3:8b21:51c1 with SMTP id ffacd0b85a97d-4a38b2152c6mr1214677f8f.53.1794864450317;
        Mon, 16 Nov 2026 13:27:30 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:29 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:25 +0000
Subject: [PATCH v2 09/16] dt-bindings: crypto: qcom,inline-crypto-engine:
 Add Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-9-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=921;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=LNBr+b73CKCaJq+Lcoy2dBwwEKE3EuPIoRzvD97HKJ8=;
 b=Oo5JC5eiOukaaqszf2JD96qfK1gjo4Z88L7lhFkJnmKZtf8EiRQqPApokWBgoFrRDRq84oEys
 dN0aV0Wol0LDOOw0PtPKsKDeYZp8RCTw6bkJAf6hQZCCV8VanxNS3ZJ
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132732_116436_C5A97B61 
X-CRM114-Status: UNSURE (   8.51  )
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

Document the Inline Crypto Engine on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 23bf98c2b9fa..1512fd1d7471 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-inline-crypto-engine
+          - qcom,halliday-inline-crypto-engine
           - qcom,hawi-inline-crypto-engine
           - qcom,kaanapali-inline-crypto-engine
           - qcom,maili-inline-crypto-engine

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
