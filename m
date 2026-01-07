Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB3FCF6BF4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XakkivHHpebXFdsnkpGVRv1YjykbMRicqQtuPdVTGa8=; b=APrxqZ4f0lGSvd
	kbDD39t/xpeE3iwbtZRjs0RuBvP1HUDsQCgipZk+txE4wlfuiZoBDzqFISN8gu0V4Fs2VnGiArt7i
	z2V0HQt8CrK+TYS/PLbsmcpn/5MV9Zc3niEkJFtFR11Sh3AlhTd7ka7CNVunEYxTOyzqTGdamaI1v
	W5W9qQU2hbFqWWibmIWTbaNtuA7k7uM5Tcvxw3N1w1MlHU0hkzyofdNXF8nZ4n4/vTjDbn/dbnBwK
	NkfE5knQbhq1Sj08hlUod3wMEXrQ9eMUrclmeRPxjhunaAySvjT/QQvw+xpAbKc+DKw1ILLM3bX2C
	Gt2W9+JQxCLyUXCtH7Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYY-0000000EMCu-1qhv;
	Wed, 07 Jan 2026 08:06:14 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYW-0000000EMC9-3XAS
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:13 +0000
Received: by mail-ej1-x641.google.com with SMTP id a640c23a62f3a-b7eff205947so245781966b.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773171; x=1768377971; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AsHvzqbYWPHqvIyyKZ5ziYmivvXzm7HgbZNmFTyTVlY=;
        b=SApA8XCCg7ndBfd2slBVQxB54grxPDKGJnQT0fJrNY20WV/W8yPIfwW1/Wjw4a6zMk
         QFicVDCjYGATyrpLAGHTUtuXgAS+8/datovodhIYJi9wXxnP2Yq7mn7qpK9CFOymnRkR
         vOEgzG1n25482OtIYgqP98hA1yRIizyc9FhLQhstlPj8yXM/PDpYegyiAgZ6yWNwJgmZ
         f6aBTVGAI/sa2ysVaFrOD/Y8NXCVM6DVJ8naA7Dt2jyk2nJk3cl2bu3h46+boMHIQhk9
         5ELhuXeKm4EynBrBNIfaDXqN6HDAKlScGTzPbgSxX/+kN70kK2xjCeqyZOBrUvGePekB
         j6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773171; x=1768377971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AsHvzqbYWPHqvIyyKZ5ziYmivvXzm7HgbZNmFTyTVlY=;
        b=PoXCx1jlDsYN9dvV7TTjoeH55KbUvfBZHN8dacKXljTphbudSo7R6IZV80oHMNL5iH
         72OgErgxcqYIV2keYuMZCQUd51P4YSeOTdlcMpyhwTQf5he3BQYRQJCylOxLNAMTf7qv
         gJG4Ce4y1mAGtVVxMLUlC4r651DZuvHy5saZLiSTaEmn33eNhQhCl8uDb1o6R69pgiPr
         eFM5ly3MuogVrzyRR923WLStUPkdeNZgufUdJ3mpMjOtmhPB7txVTufLzzzwl9twkW3C
         qnDsTe/Zdc6rER+mKHi2nZuAvwIj1YE/t9TbYxvHCfVpVO1KctiU8YV2e4A8VzOLYbHf
         3R0A==
X-Forwarded-Encrypted: i=1; AJvYcCWVmcmDQniEDVqNkWQCCePUJsy4oYr9xfvWVfIcE7m4YHF+rSeE9YP2H6WXFK2NN13yo4N+Q3lqRaU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+viMmO+o/STfKrvrhXar0FAHxF8B2BFtrdxxi+vfuK0Ek1jUv
	gDyGLHhWixJL/9qlo0rb+4lLYbLyG9gk10R9fctNbR/FcprTn/Ht+dzWGg/p1934sfY=
X-Gm-Gg: AY/fxX7WNf2HLiGs+R+DPvPI3O2nKLXV8WVhLO4a+rV2W+PwxFl0nwIrnArBUnIGliy
	pSgiovh8wi0lolfnL2AMdLFPWTPo78XmXEqaFfCWBbLIoYM0HYaHakd5/O3KMz6jq8VuvpZbT1x
	CjZ0FF6z/FrN8UrL5m4z/Ut49Oz92WfDAz6jlFxrecA2t0Y6sBYiLHvXRe4L3JaRkNmj9pgt9n0
	wQ4K+D5zKmIxAbFdc6eomYT7EkmxMqTk1ct3lVFlY1+Uhd56TP35J4ngWQhSqqFnR72/zRIzJOf
	70tDc6uuPbyjp45Zf4SmzoWEBwr9cRfapWabBXJfGFu+hMLHAuG1vTrBrjnMcYMUaixfOyiGPXD
	wbFDjxsZqVfnIe4cgRFnHSNQUpHlnGEcK57yrzkvyoLz18mV2//sJCRdWcwyKWH35EzWvMZRa9/
	sw0WqisyNrqUfj67XxDH6WDpanHA==
X-Google-Smtp-Source: AGHT+IE4p/vShR93wKW4ZJiqzHFOVPLWCJgnEqo2jRVbm+FDwTqLGqE1aGXNP46YX4KBtv7HXppcKg==
X-Received: by 2002:a17:907:72d1:b0:b73:6b24:14a0 with SMTP id a640c23a62f3a-b8444c9f0eemr155635166b.18.1767773170902;
        Wed, 07 Jan 2026 00:06:10 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:10 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:52 +0100
Subject: [PATCH 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings: Document
 the Milos UFS Controller
MIME-Version: 1.0
Message-Id: <20260107-milos-ufs-v1-2-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=959;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=TJq6smJNpzhUyCl9pcUEvogC5t0FBsHTmp+T+Fq62FE=;
 b=SDduZQ32z58+v5112RpYgH7igk0LTEEt4gvQOJlOViBskefmZPWHVqnyn4YLFTSn/Rxj3XIvm
 dlb0sn0jl3AAlOokauCExkdezRA9GPP42e6wIixJKqAMRF66ZMZSpuJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000612_904124_A3959D8A 
X-CRM114-Status: UNSURE (   7.50  )
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

Document the UFS Controller on the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..c85f126e52a0 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc
@@ -33,6 +34,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
