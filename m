Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2C0606A322
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YKWN66qZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ISFO6OLb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=USsmgim7Iq2onLKi6XlHlCY3uWXSKDi+6GA0+vAWZJc=; b=YKWN66qZlB/WnUfVIOXrcg5H/o
	br9/j3A5YvGjhtV+5ZveHoDohhjnBprkFTkTb4UD/B/uu2QCzMb9STQYXREmMxszeaI0kydJJvKOA
	Bv3nrdksPCjeF1c+So7ufXzt55nSUPO5eLakOs25p+QecLSA64wlQCi+8XHJHXYgru+BNxVY4nquB
	8O97vECskn8Cod3q5de2lofnPMYwm4bcIY6hFlTJsRtvzpGDx4+w9EUt7+KnfxS2h3SIv8uwjS2vs
	isE0k+kaK+Nc6hHIPD4B/YFU9iBdNEZTWIaGLtiIvpY/wOp/JW2iFFv24cjKEsjrr0GXtCuYoufr/
	ufyu+Uew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Eu-00000003y4j-2arE;
	Mon, 16 Nov 2026 21:27:48 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Ej-00000003xqc-3bpf
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:40 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so3551459f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864456; x=1795469256; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bHyunwqhqqpQQZSm8FsYLG0nPatLuBc3TvD/xVa6m3c=;
        b=ISFO6OLbhwF8mK6E/NJNCUmS4HxS6ZXXm+yKudVhLQGdmd8QBVPuAXIfxVgXtmIsHB
         fQnYsAcTt5NNvgUxk4yfVNbGq/MeIDIrz/PfuY+x8vaOk7uazRflNrdzoBchJPwUv0Xw
         GoY2jL9meGV1SUIrXUmumMfH/lVCSyv4vB4WEGS2w5RjFncHgtCXTs5KfN8yGlh0HBMM
         U5CPrJLJsDT+NrgjGZDzMFExObPScAmMYvJUT7+hy4/oLYhLnXrLK5WiJ1OOujGLTp1P
         xw0AesbzW3DPSSQAMYBu1O5jvbDUQRhz1xAcIQGYmpqdns9nN/MoyECLKn3VYvo/BqCl
         FYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864456; x=1795469256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bHyunwqhqqpQQZSm8FsYLG0nPatLuBc3TvD/xVa6m3c=;
        b=fM+b7pklML+OtK2wSSJtzmwz+iUZ1AjJUByLqLT5IgUNN/m1qVtiGmh0ZrgUt71m9S
         PiUPBc57rWX+qjhYlHZKL6jncrSBa/RSqDXjguquwXWM5LumQKA73h3kJfJa7ZXqp163
         iIS5A5A1fsXafEpvcubepYZ/lYcvpyc3YwsoB+n3mSmdzddfDSkwheUpNmAr+cQkinbh
         E/K3Z0hiH/Gkotg5lEWumnyvVDyBqH9FEIKVv87BAovZk/rS15sfkZNa/8UAgrc1Wk8X
         OeipaB2rwklVArJVm8KRCh/zEXMEtT07APpLLjH+1H6njnV8SHpOck64T++zjWbgNU5j
         CvIw==
X-Forwarded-Encrypted: i=1; AL+hErEut2wwt05O60QIeuRK7KL3hYH8DepG9TXJZndZAXP8Zn9iwAIIJ8t/nosiKzHCL4qGUQX90ovpiLg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+UMta2Qc7rylPRKKNwkw+jaVI4DUK2v9Jnyp64JAgG62WcDMg/
	guDhxXn5NzjGr17Tt1BQqu7XOYuXtV1OBNFCzVeIgZ1fNpCEvsokNoHh
X-Gm-Gg: AZFdTZd33PBclfKbUptaoYzaaM9ono8qkpGCqWs6VPoELWe3WFosl6hUZie65QOWKvn
	uL0EvWH03NsttpdpqNTWtyrHdiHgmFAkgKOY2dfRVWbjZ78FE3vzJkfnmZr+7KJjvMzLbAZoHeA
	Bo/+zQuTSRtxRYb6+i1gJUuLQ0clleTYo9kkbH5k4zQUW9E5tgvbKiIh5KOQV1aXda66n/Iqk/p
	6kdctAzAFJQG02vCgg+sCaBUWAeP+4r8Kn7ayv0gBypzWvILaMWDwJ/AZEhjEBNfTid6V2ZprJD
	aZKBTMfZbqMz/0i8DnZz7kFR5oNedHzk7/3FvLOcS+TUE9aL+eWJck+pECvZmsce/YLm6YzoDB5
	gqK6Hh30xdhX0tbURaR6W0xPjNg6mJ5TV7lXkJhqH6L4BC841qINUzcmaO5M7ByW37HIM2A1fWd
	GBWPHBG1J90QmAAmzf46bE2YNK6785FCyWJ7HBNswHC/N4hphnewV3Onnlus/IWltCNm58cjC06
	E2GLNkrC076I//I3T15zuvrxKD8CBWFvgdVBbcpGylAWQn44y3z8E18WBPPu2Uh94d5J8yU7L3m
	Su3jenb/zIh19DZiysspNkgbDMQAPRm+L3seJY9K
X-Received: by 2002:a05:6000:25ee:b0:490:b23b:802d with SMTP id ffacd0b85a97d-49c71d475ddmr22315194f8f.37.1794864455894;
        Mon, 16 Nov 2026 13:27:35 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:35 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:26 +0000
Subject: [PATCH v2 10/16] dt-bindings: thermal: qcom-tsens: Document the
 Halliday Temperature Sensor
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-10-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=829;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=QaX1Uqhi9JFBTyniSmrOqgkrx65fb+cn/pSnBpltl3Q=;
 b=9cBm/5Mi8IeF1ejOwJZWQD4SfyJ7BWDjVcE5y5kBsTodKh6u91I9h5To2Rc8ArYF4KPYJAO96
 griT0U/fTv6BDQooM53jxYIwB3vuzMj024ajCLGGuHNM9Pf4WE6Noed
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132737_948465_B43C360D 
X-CRM114-Status: UNSURE (   8.41  )
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

Document the Temperature Sensor (TSENS) on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index c78074fbcecf..3b440f395fe8 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -57,6 +57,7 @@ properties:
           - enum:
               - qcom,eliza-tsens
               - qcom,glymur-tsens
+              - qcom,halliday-tsens
               - qcom,hawi-tsens
               - qcom,kaanapali-tsens
               - qcom,maili-tsens

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
