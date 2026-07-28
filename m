Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE56C54EFC
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqE83kQtGN15UZUH+GH3+Eev8TLPRPGgUjmDucJKHys=; b=UNZRm/43hhdRcj
	3jTpfBrNejh6Y1mwl5nej8UdRC6aUgHkRozH7noBQ4uhSnSehWdvcQDVTZskbWEm6XtriiOESpBqA
	qq/TPacTF9cMfzr9HJOvvKnVLHg/R8/uh3PTJXElzAkXuyoREk7ez3WkqXVIo3uStsbClduYpXe1U
	8HVsST7JyB9RSzPFnbsQFLtCS4AjJTXq4wJZ2XhlNX96S27clVn1fyCl5zSOEIRh47fpGUwWrwahH
	Gquq9okEZlM6QsR9dlx/yqGKG8C41GcE7Wf/rtK0gYbOWyE8WlbNL3kRssUFAGlHc4W8FzexK0mVL
	pTibz6aFU0/ECecT8TqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeEA-00000004qbc-1ekS;
	Tue, 28 Jul 2026 09:35:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeE4-00000004qZ7-0Zbp
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:35:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4954afac04bso41758855e9.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 02:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785231350; x=1785836150; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bJniRco96ZhJUJ+Yk+f3eF2otMHPdpjSj7bXg2cOCuQ=;
        b=Ca+I9PN4RGYAkEap0V2Ala62ywANpn7L4kvPQpf9UrnSiE9auGrE0BVONi6jbteOCt
         rg3v2t7N/0KcVmYsoAwKDOEQHNiC/m5QUhuf+T5KIVzzEeVICEJcd6q+ugnoFUbHROJP
         Xw39k7wnpn14gXSRYCNY4sNA87haYQBgGeESselS5OpHK6lCi2VEihDLSr0rir/m+AQe
         JqQREoES0Xgonu6ZnhrtMZmCausYiupqe6sLcgHDpnMDccARFJOovMzp4dJtkr4YTajK
         Eur7Ux13EiWpwMvEfo66Pd5ocf1eL8perhKSjSRK8RkJvAE81wC6R0AVW4Uzgqf2Uy8S
         B3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785231350; x=1785836150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bJniRco96ZhJUJ+Yk+f3eF2otMHPdpjSj7bXg2cOCuQ=;
        b=k12OhfylX3q717zEOqRu9vH1GapOh90lf5rAu7QJ5vxRpEY8HWjld2GM34W0xopw6G
         4CT2bkUzBcqP1rF9nGr4nuE52llpp9dlfVGcxjRU9O5zKNf1n/BdQCWiDseO3mknCtCh
         rpOnL/tz96d+rJLFdsjoz8dS82GzQQ2vnS+02C2WdU93gMGzFO7lEMCAUSMCr0c0ZAXF
         KcOBAeu9bwJa0IPs+ipHB5HKzraUgANkeRfEdf+ebGyHHU+fbSBLea5JmR3lyMvmdMzv
         e43Ld0U5K/RqPCJD3vz3E39JHMjRJkZ6oO/zV2XUjyKq6BZl+mcaNNrJoHvexlZ5alye
         +jzA==
X-Forwarded-Encrypted: i=1; AHgh+RqkQM/PsL7T+sLdHIy1c7RIQUCYdHOa40Iw9oTisMOxdhKNfaxp7a5J0VR4tpaTtWodL6HDPVCHxGM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUBPx83B2ht4s4hrnBqKG6SQE5pu/GTBOOSt5at4XEM+S2Lu0B
	OGRTyCwvGjR+jZov25YLOTUWs/GBO5HoDo9wFwqsb41lGDeBNKhPO5TUfKEKzOhFVclGKLp6gdL
	vON1cy3M=
X-Gm-Gg: AR+sD13ZMm0YVOuArs9Qw6348uko72uNG9q4WJnmPT+6RoF/X9GF6JtmeQvi6oENA+R
	zO00SGzPn/xBAn1uyH3vgxhtRBrgx9ZiIRTXZW0+CjBtefc8FUalRSMi8CLtT2311WCRvVeloDw
	FtGYgZOtcmV+R7LVm2KoERvPGkpov0ZJ621psH4ZLG4nJNrAoeUcliw0M4JezqF5aHpPWnW+cB1
	2AqyMwRyQPH1AzHrk18WPbTDFI65lV4DlwYODNj15N4RXtC7EKq1PLmPRFKO7ULuAJsGN4zby+a
	SfELMqeq2NNVNQydiYzUKTlECHGoOPjtJxFqa4wwv3vTIhum7dj6f7PU6nLYsUM3mM8f1tMHM4q
	q/8nVT8RO7HjeMQSdBcRkI24fiFjssps5FZxTC3lZqHaf5I7E/1nrw0LfmTwqGh4xS7RTrXDJ6w
	uC+81qPZLpD0CR
X-Received: by 2002:a05:600c:5494:b0:493:c42e:5be0 with SMTP id 5b1f17b1804b1-496c60bede5mr17438645e9.0.1785231350341;
        Tue, 28 Jul 2026 02:35:50 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c4632263sm68190825e9.15.2026.07.28.02.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 02:35:50 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 28 Jul 2026 10:35:36 +0100
Subject: [PATCH v13 5/5] dt-bindings: media: qcom,x1e80100-camss: Make
 vdd-csiphy supplies optional
MIME-Version: 1.0
Message-Id: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=961;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=e5G/1gpd6w5RUemT1hHxSrPtt8y2TvG6ssB05XjEsgM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqaHft0cPUUgit905GNCZrjqlTZe3rJ37IFM1ZU
 h/qDA6xynmJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCamh37QAKCRAicTuzoY3I
 Ost9D/9u3lYofi4F2s61/n/+5ucihnSYHuKfssGjxGNKFnR9qBCXN3za6mfLa6MHXNOd5ZQYl5i
 lh0dZXBbZFsaqajrCxaVd9d43+Q2xl4pOndOdFPIi4PJb9VBUNh1F+l/Y9SzaN4wTF5S00yFvBy
 7t2HwD4Me0e7LsjbzObuQTH+jCgoBpFdSaVshQaacDyGM60vQRLjALYuhX82kjprBKtWxciay3e
 k10p9rpTyX10Y2ar4NP8ROMwgb2WL1ARBsssY4qApZ4Dm9YacTZ7rqDZRE58SZDXYiJi+awGdnI
 mOPTSkyimLYcV9VxEQsaSlOYXx1pL03cD874zDNEfUDFQcpO/Wm8fVWbssd6t05hNtSJ3gNSrE8
 RC5q8Lwp4YFCcYwiRZ9JDoJwmXd1PQcdpb3RXx//xPRUoOp26jcmZkBapcSoxdHwjp/D/vosKdG
 8S7ybhQKBkZe9iNEAhKAT+6qUv1OkLwyTqR8nPvJraAjS6zboq/3saaUF3uwxUdWHdqZKY8syVd
 EoN0x4Hf3JJQ3yppVLD/O3VvFwDv6mkYb/+8br6X0VsP3ee176ovIi3sLBcuu4RprdSt65MoJ+G
 VSxaVjCDF95SwwZcNWkkaJ9IJJd1ZROe5336kXh7Gxh0lvay6y9dEFYOfMcWZHSZOfKDQ2UIyrs
 Gp3dhA7FPSIhK2A==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_023552_213613_7B673341 
X-CRM114-Status: UNSURE (   9.18  )
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

Moving the csiphy to peer nodes means making the current supplies optional.
Optional since we still need to support the old way but, at the same time
separate nodes means having rails per phy which is a key benefit of having
separate nodes.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 126400772d028..57a838fe2d229 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -186,8 +186,6 @@ required:
   - iommus
   - power-domains
   - power-domain-names
-  - vdd-csiphy-0p8-supply
-  - vdd-csiphy-1p2-supply
   - ports
 
 additionalProperties: false

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
