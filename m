Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F3E6083612
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eMbyrSzx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xELwVNPE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BPLakR68wxOCPgrzxYJV0VirfJ4WiGpIxIzL0dLRQxA=; b=eMbyrSzxmBz30tyNpOhPew2Z9h
	60uzbFaKtBOJ6ePNN2CTaIPQ8mq+XsdbtgdblNx7JMfjNSLUO/2ud6GcrrQcLt9CKw6+9PRPyFomo
	WPn5q010FF0I/qzwym+DBKmTPaMz5Do2F5CwMKXICBWP2tlobhYT65EKYwKN7k1Gqr890mO1ZJ9Wk
	9icdGNL018X+WhT+sGUfN4qXudVAUyNTcVFee/8HGzjMJc7pkKj0aFU01zqT2PTOiuG/y7Tyz7+tL
	tJBxmFgHyPZXXUYYldOkqiH1MLnIEC7PXSLjvvvP0SxzTG9j9CQURToubl5CM0QmHp2/cEXNgLzgv
	5fzajCcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDL2-0000000Gyk0-43Rm;
	Mon, 09 Nov 2026 00:34:20 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKw-0000000Gyby-25FE
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:20 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-491971ac844so310097f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184453; x=1794789253; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/ljkdQydKv0eJnuPEQK47y3qmQ4duXo8otCxl59TOE=;
        b=xELwVNPEpnmrM7MoASE812YJptRp7tRE1pn4cDxDHq+5gV2kbGqzRMWlrwvKYXOt8G
         MhRzgkp+FiWu4zMJGNGdVj/ztrQDTFKWvW/ZB3b52uWWktvtWngSmqhJCHWiNrLf9R6h
         65D+Hs1F5mXihrysGrZSa/hKYGu0yvPyyC2Mb5T1OuxuZBu1SJt9Uyn2YAp4lF4eEXy9
         g/wTVDz9/1mVOrT/eIBy/w35eAIpLPsXYtLoKWNFkVDApWhitXPjjiq54ks93hsXLKu7
         p75P5dImzhyFL06CmlE39dkL7caBH92k/q3JnYFGghVMsE+OABdCO/XQHePG1Bl5iXWZ
         C2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184453; x=1794789253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s/ljkdQydKv0eJnuPEQK47y3qmQ4duXo8otCxl59TOE=;
        b=1aZVGhnaVWnbkfmzqisNEgwVc1ISlBz5kGlAgFdNMok7Gr80bzT+hQXrj1RVHkyUPV
         rq9CSyiTXKatv0vJt9eYg6C1MT3SnPG9UeeeNI0avRm4zFiSz0DnX8THOUq5/fU78UFS
         N9jnElQqeh1PrQFPSJyU4t3INKOhOL5X+ZgYCfIc8YtaCDLYpFi4UXw801vNsxvw4tfw
         Wj5IJjEpejI/72yPYoPpxt8mXzO1YhkypuY0LNldCc6z8kpURbF8Ec4T0KVNWf1Mk052
         cDuCtUDsKk8cMNFPm+nFQpajj6TDKD8MwycrwfD2/IwUsBbnWbacaBKT7ZDRUNfqUYiB
         k7fg==
X-Forwarded-Encrypted: i=1; AL+hErGMB1K1uxKSFoDMiB8tgKh/nwEZyz4tOIwGgXwf95M9frHLAmB3s3nLOBhSWv642yT+XdKCwzlptI0=@lists.infradead.org
X-Gm-Message-State: APuU4Z+hjnfhXbGzfEAMlrwRSLx1J8oqDcbjJto9hval2OERxnTfasae
	zQxdcC16sa6nu1QhCOXzBUH2VwKR3/EtcZTCuhQ7UdbSBZLSLMMIenrH
X-Gm-Gg: AYBFou0ZJsEOlaheiIKRe0hNZ3sI809cS0Y84ui3P5zYhSO1uag6IGzG0DsiEfwUIRK
	N8Qj5AMEndbpiB13k3a792QVeRw2VxxkpjTMzImZOtZjktMEUaSB3W3LgF1ZC86Lo/XUyQjorNm
	rvbbq3gL/8hECbu1jdQCIXtsV5x4RqvIKIGq1YAX+m7WFtkrYSSfCVyW1ALo9hMnabaY0LqNPOF
	AqaAeKjSz8hqTPlAk9gh06dtyVJ22mxpTQ//8IgkXkP2p/iMM1d6S39WQBsTGLV8JqQ8zN6sSdu
	2UYHW7gyGMkFFjqtIwuehuYeMy33ZUvKuj9ACTlrMCIZfMwqDL5aR+VsNOp4G+uXULOSmE1oafV
	NtBtYr0wjKp0BqoXq8K/kHE5ZEkmJoBx3ZxD0NE4MsQUhzlhWFP0g6ZRoR/g0lBrE9D4foB9XrQ
	FFj4Sn9osKs8Gllc8VEs3mwFdhFCMiSyfFU1rO3LiS+/qULOA8dxR0g6pqIJqIZG0P9HTY5wif6
	ykoZ25RccpYwKarOmzjUK3ycb+3B2MPIzFu0aNBZMlJrKf0O8qzZ9c8SBdtPmXqq0BA1gVOY2+K
	PTKHY8PIIuSDObCxtGJKVvpP5CNoGpHN70UAEYa9
X-Received: by 2002:a05:6000:40db:b0:48e:3d2:44b1 with SMTP id ffacd0b85a97d-49585ca3e5dmr5109174f8f.52.1794184452788;
        Sun, 08 Nov 2026 16:34:12 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:11 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:21 +0000
Subject: [PATCH 09/17] dt-bindings: ufs: qcom,sc7180-ufshc: Add Halliday
 UFS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-9-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
In-Reply-To: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
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
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=1028;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=e5+pG0dDXEqC2bp77Ez+oDydvwUzWtL2BPwcLeGQJvE=;
 b=iWkySt37dA02PFmmfguFJEKrCwxdhGzWk24XOJRJESzAH3T4aPp1n4WJJawTbnHxhzVp2Ej2x
 6zP4CwoB/ABAxTrRpUZjqAEi2nTiW6DG09fAo8ednu84TwNnmQyJB1n
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163414_610774_33971139 
X-CRM114-Status: UNSURE (   8.86  )
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

Document the UFS host controller on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index 3c407426d697..5d1784baddd7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,halliday-ufshc
           - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
@@ -40,6 +41,7 @@ properties:
           - const: qcom,ufshc
       - items:
           - enum:
+              - qcom,halliday-ufshc
               - qcom,milos-ufshc
               - qcom,msm8998-ufshc
               - qcom,qcs8300-ufshc

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
