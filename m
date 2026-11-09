Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6AA606D819
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qVFB+qRy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KyOCLE0j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zO/t3TQXo8P1gyJ6wVOou89h4+NS/A9xfnON/8lRHdw=; b=qVFB+qRywmovSFZLNfS5PHiNj0
	oh4E0FbXY2ArHz/8ZOdphAwiVizh9TsAZwsY2rI9Drp4Nz/fVvSSVRfd8KQYS20c5t0Cj1YF3kWyM
	t+S4u3RMAPBbfUuyINasQ/2nt3vEZ7xrsAdOM6ULtdo6g71XcjFaHM0eDDojlFKOU9Q7d0raJk62w
	bR1Apkox1gIfpaE2gzM0TJ5cjWgeH7EMeO/FPNtkM79cevpJ+Lq65WrIRI6topCvvHYskzIM07Ee9
	4SuBmllZBNgFtTTnsjhuMHcEIuMQcujCUI7Meuhoojc2ciPWL8zVz+m0UkZ/7SF5P7ntA9kEtaf49
	94hixfAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLN-0000000Gz4k-480C;
	Mon, 09 Nov 2026 00:34:41 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLE-0000000GyvH-2YCW
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:40 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4b4571ff080so3942725e9.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184471; x=1794789271; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sqWf0ZqjfW7jYj0FTgNGieSVB4q6BkczPYaUBzocbio=;
        b=KyOCLE0jfTBeYv+L8nhaWxaC9rJxpmvqewkqhgkH0gjEagIvX3ro5ZQmLWSpTkZ87k
         jb9/uOWRrFNXkHXEqnXh+E16m9GR1vzPD9FKRMucFvoLleo9+1QeAHOXrxxUtFMb1ngG
         4jmasz0xhD3i8MIvrrzGoMi4VD9sgX1TiJk/D4w3fd3QiaLKjfUPdOd4cXjVihKRUtDc
         6EXA0EjY/W3V1sR+VgNkTcMBBXORMfKJFFwRy8G+uhFgKJn/NNN237rRwOzcuE9gyVE5
         YK4f12jIkN8mAt+etI+mfBJjRjmNXVpKPITJB8z5tcMvQxvadKWpy+G5M1JjsSAC0EI0
         9rBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184471; x=1794789271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sqWf0ZqjfW7jYj0FTgNGieSVB4q6BkczPYaUBzocbio=;
        b=pnysoIaunGGsGVuWHQuDVj1N0SwBEDByTGY5hpKSPyOTW3/GBWQo8znYeliSYTafsn
         Vii0k+sCKp4fA00xcQ5iclYADNPVD11LmK3ibtpCPBKDzihUEnOwxbxmqYm0NLvbi3qw
         4YFvyl8qFnoasbvtAgr9Ul2LVFsMBAuTapH3Q0F6yZ/bGM/WSoIpptn8ozlvpuylzCH5
         EdwnX6teMFojnejC1uQ/UhSUWZszBq7T4BZ9nwbD4ZD23NNicSRQul0eSFLrXNhoFf7P
         Eg4HF+excT97kJaF2s02GAfAR1oR8y/cYTSq6q9yjP2pOImx9CcRFwBXaNgFeBtLb2h+
         cSeg==
X-Forwarded-Encrypted: i=1; AL+hErEr++EWQUNlHDKEXPFJIgbYvPP5+AupRwseU8STCNZYJ5T3jy/9flzw4W3/S1a6TSvSOGflzwF4b7c=@lists.infradead.org
X-Gm-Message-State: APuU4Z/KAsiBGUiR8eNspFAqqBeW69Dy4a0ME2Ypq9unWlB16ovHRY68
	T/MEXYwi1qiBDawFZlo7PpG6lrxEzhGV1e8D2lPAaw62aNT14++9Aqym
X-Gm-Gg: AYBFou1lYd4efljCk3jqr9nYIAf0E01jnM2YcsMRktf7C+FjZ8ns/jb0XYw6y8EFqhz
	j44oWhKuMv1FKLpPYIxHlGaVQ9KIWLwNNA5wHpktIxoI5rUoHPLGjtSamD8WPkjNVwN9BjsiC25
	8hGCfc9by3VW1hGlyo+xp9PRaYI4pGWsrTxCSbLUp/lkAUlYMaiU6qldFmJv6TTAHY1SJ360LI7
	hxv2+dQltonpSAm5XuykVHj+ZcLuej1Tt1Rhm4tNsEf2WOkwtRYTXEJ9+iMxZBdSzXQnrtX8a/5
	tXzEGEzk7jL6sQbU49k/JlUIh4a6Sa2qVW2REBryZ81rBB/RMoZdR0w2k3x9m+q378VBb9Gbs4F
	QhDTaJRIyMF02RVsbrSB9SzkMsSEsHmb9ofGPn7X6iloyz/JlPdDHwKujJx62/tcHxbKc3a89hj
	kodVCCx+jV8MAKU7CVlISjEuPYf4QhNFbR8R65Wqw7axYhX8vaMkBjIioETarA3wbiBSPTBMD2u
	d07Gctaa3LFPjgUO5reuXiiXNvNHN4nb8XSzvqCIqHYnoL86waICUVmPrRGh4mKOwlBAYan27oz
	CBd4y+5Uk0TqRdFe7k9yfpZUoftLhqt/KpicNGI5
X-Received: by 2002:a05:600c:46d2:b0:4a1:df52:3e36 with SMTP id 5b1f17b1804b1-4b963c814b4mr45217895e9.27.1794184470772;
        Sun, 08 Nov 2026 16:34:30 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:29 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:24 +0000
Subject: [PATCH 12/17] dt-bindings: cpufreq: qcom-hw: Document Halliday
 CPUFREQ hardware
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-12-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=1136;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=/5q7xJNdAtVYNP2eKqnOFRxkwGs69ZAxtJgwpCpPYPc=;
 b=gh19qIBvqo941uuBuTtSY86YfaNCAEdG9vJI0o/4tLOqHDCaja10/kLnOnTQrwdqkmy4TCdF6
 7e+ZDYLm+CcCb5BN2fAjGQTjhEqtQqzl3jdn43oLAWX5E1v6iUbyst4
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163432_692041_152EB8A3 
X-CRM114-Status: UNSURE (   8.96  )
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

Document the CPUFREQ hardware (EPSS) on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 98eb36bff172..d6040cd293f9 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -36,6 +36,7 @@ properties:
         items:
           - enum:
               - qcom,eliza-cpufreq-epss
+              - qcom,halliday-cpufreq-epss
               - qcom,milos-cpufreq-epss
               - qcom,qcs8300-cpufreq-epss
               - qcom,qdu1000-cpufreq-epss
@@ -135,6 +136,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,halliday-cpufreq-epss
               - qcom,qcs615-cpufreq-hw
               - qcom,qdu1000-cpufreq-epss
               - qcom,sa8255p-cpufreq-epss

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
