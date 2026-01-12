Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24A2C9EC94
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8xw/2k30INzRjkcQKE7fhIIBQs6Wb4kFEqClXoM1ns=; b=xc3dZUKpy0jrD+
	epP6YwzCzXnGHNMTIdz73bezgIU1E6yvgxqFHGr+r1+0xY//ne2RR9y9595yku9Dqygvhz07v/FzP
	BIAJOkmGYGhilf/WCf2gTQg7J471J2FKQJJ9AVLnWWjDa41iw+4HL8Gt2qgre9mQ5QCZ8JOMJB7jb
	v43KtpRr2qFaawIb6uS/VlNDTuj95Ah0MkWxIcCYX19PgPgb8IZvWjwdbLPzfbYV24v84mxPEHRym
	gl/QsRVEIy/U/SxFhIh/6mmvbw+Vzawob8vm0o7aVxipp3wHE2O9jdZyjoqZGHPINnUZwyb56YR/w
	LOo1aaglgPC0Dt1xd+zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMH-00000005Shk-2GuD;
	Mon, 12 Jan 2026 13:53:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMF-00000005SgO-2DRl
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=O8IKnx9yXSe0FPYJrKraQqEmWSwhdYk1T8goN1fuYRo=; b=oQ7/MBmXiuyDLEL8sftaLbuJz8
	GqOidslCNa4zhQtPugIBJSw0Y6fQR7FrEujWbJJ46MdRSav3OGdERRr7YyqKMkrqYa5OhoSyO48Yb
	x71dXv1OV2JXJ28frSt0PPftYCiXD2Zhfkz3CpFcOfx9knIloHGp1+phZjhHZOOfxAf3zO7tn0uqX
	stbOk5Mg3kYv0bgFkcXkhc+HRSo6hkO0vbdA8P7BqQYC/lXR8zKLk/U4gaaGnzk5FWwx6RcvXfveb
	5XHBHjRBwd7BwhyNXaMHr9KrLM6h3m2lodfo2+WQcCRAf1gQAfoobjnETRZ393iK7090ciS6VcVCg
	8PxETOoA==;
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMC-00000000p9k-2vCJ
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:22 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-b8714a52072so171327266b.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225999; x=1768830799; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8IKnx9yXSe0FPYJrKraQqEmWSwhdYk1T8goN1fuYRo=;
        b=LZNFlvZA17kymjOcD6NdlSe6yWsBQJzSxErHAPn/gl4MwUSYc8rf1mqALyz4HiqWtx
         vx3eNnc4NH112y7g93AQrPB2RccbXUv+WqlKIvsYHbmDk7LDlUnVD2sPrE06ftiIMHvE
         Rs0BLibImeNKbImHI3t/TSTraDiZaNoqPZ3s2RI9ctPIlARsgDkvRN3tf+S+Z4OR2GFy
         zFQsqTzA9LXAqKbA/MepOVB6UxcuJwl06jJoxJMOxQENEk7fB5Un+W/AQqWjZq3mTnku
         F/wWHNJZwLPsOnbuTlS8+lGUdjBZPhRxD8bHOzHEJUnYKxBDvEuZyrL1j43WP2/t14QS
         sJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225999; x=1768830799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O8IKnx9yXSe0FPYJrKraQqEmWSwhdYk1T8goN1fuYRo=;
        b=BZFnMfrUiSZQT8FJ/OzgVqga3zdTBfkmjvgOOcQwFCi/BOtFlinC07NVMirauHQ391
         8SD4k2bivUfuQAvxpC3toblNkMiOUj7GSJgTCdj/uwIy4J85jFzkk6NlMrIhRK1EhUEs
         QBWnzlSIulUCB869lZnd51ch5j9KbHMIR9WkWEZJKB7kdtH7vGr4QzPNQqbcIXVWUEqM
         7JP8anzxlQbfvE243zgYWimd5/0nQPXBLOeb5yNbzbDLezRGKvh2PPCDGose8dE4nMXO
         poRxI9EPmTW+QfsnrBhmdrDF0Kbm6HrXR8KIogSzsdnkt3WoItHdr/XWHFUnylPY96a+
         oYiA==
X-Forwarded-Encrypted: i=1; AJvYcCUK0BMnfzsHKb0EiDV1nfNkCKruB1sXYlYTVFiWtPdFD5bc/8nTm21F7qiggx4iiv97UGB8bT5sKpk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMMRC+ARDi7AtIdlGsApKaSotehMTESDz1x8FWioWFVYk7nIvk
	2oObTMNTMZp5fpbA211nz03BkmGjzkpAl6zPhmQFfT3CnWGYkueqnz84RrzkASUikJA=
X-Gm-Gg: AY/fxX6iPItSRwygwiS/3q0DF07BYeyN4QpabHbs0f+UCIsxDWMPM/3kbmJd2Noc9GB
	+1s+eMgRLt932hgCPJzcIP4UkKL4SMnv4UJNMZUz+AWRoQcb39WlQS/2XHzKZ3SycGzOX4qiVfO
	Rrey/+eUL49o9LaXa6Gqg0DbQeb9Lva72f7OG28lqLcgbHgZMsMlPC+M3sN1rFJW7NwiUyXMV27
	8N4ShYZUD7vhcjh65IAVcbipVLR1I93khMXVVqQxJOXQE38liiUqfWUpdzlxhdqvuW07RnCd/Ah
	BAcfFmxPc9zcd7kNtkWtKMmDTvO3u1UQ4yzT0TFOtm9Uze+tp6IGkq3pTlC4MksPQGLtjSYI8vR
	/I1nWTZOx9nwxsTF8k1ZI39fazv9fRU/CQB7OIlhNpOVCihw0ZKFwniQghoRV8t/54tc9D/YWty
	RSsv6+t2i1OqUyv+C07N5WL2ItK3S8RTf91Enk8k9Ub7PM+YnX8Dp+q5JKqs/HUUO2
X-Google-Smtp-Source: AGHT+IG+AJ65kKB2Dp506sZrhGNvXlfvnMnaQWt8y8s6GD6rdulfK18GchB8ix/xHYp7NvkWK0olNQ==
X-Received: by 2002:a17:907:7b87:b0:b87:1a26:366d with SMTP id a640c23a62f3a-b871a265a30mr330532366b.49.1768225998538;
        Mon, 12 Jan 2026 05:53:18 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:15 +0100
Subject: [PATCH v2 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings: Document
 the Milos UFS Controller
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
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
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=1032;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=th6axCGBijF8Kah9JfcUeQ/2xCVBCKHltRaRG2KfK10=;
 b=294PpU4+wAexgNBjfPS7wMuzv8k505newwtgg10/kKLbAsBgxO3JAl/3GxpexhG6+tpOtAn2F
 pbq6ihiX5kQBk/D38DpXyiw6nLvGBd0OB0JwZO0FQ7fGpZDgw8b8oAn
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_135320_850787_9BD58860 
X-CRM114-Status: UNSURE (   7.86  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
