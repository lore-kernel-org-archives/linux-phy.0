Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6EC60A2603
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oaQzijby;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jISJZ0X6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=T3x4wZVhgiz8by1Y9KOB3PcRlUHyylsh/sOFkWY0IL0=; b=oaQzijbyunzWGaGlG/XXCxwEo1
	7fPoh6pUWYAFJyGrSASEYonY3jwBOudLRuIH9pEuxu9WEqYo4J5y4hg5sf6gLpl9SFtyrHOHthpMa
	azNxS86BKVkOviyRQ1PuS5KegFJTJyBXU8pdgtndudweF+Xh1AlxXDmu8tLF15HiNjwG8/FnS6j2y
	zoKU1bf0Fl2jvhhk7hI1WWtgqgKxpJEtQfBkkATPgczG0a5g//mpZuOXnwvU1NWR+TJiz9L7AIIdT
	8/8AjWt9ECSriAYYXHntw270nJolfLK+h2GfvE6TgcWdgtN9ijgYAoAW7p/VPF16IimOee3QloX2E
	S3NUTZ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLB-0000000GysW-0NjA;
	Mon, 09 Nov 2026 00:34:29 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDL3-0000000Gyim-08mG
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:27 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-490d59c3edaso229606f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184459; x=1794789259; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w98VdCA9EtnwfzZZ4SHf5Gk3YVXSBdJ/uT/O1NuBZJI=;
        b=jISJZ0X69QXY/8dFT+r/6QlmKKNdGWMLxlVGMiBxl/tT0NWr+ElJg9mokYQ8pzwFe7
         G5HJlSDOtcw6ueLFPE4bUbPLAu7qRcd32OnPj1cMBRzIfqBGBbFtyh/HsBRQK5TGX2ev
         Gb9zO5P4ZT9akhnoPrcRx0087TI8yJUt/wUo7Bf6F7pgjSHVbla84cdR0QEuA1Q149XE
         sFXgoXQOO7OAkp6R+RadlKDklTffJ/S0HGvwedxHtkdMOQaHYT9Alh+supkXPaHSMzOV
         w5od6GiXjVFJwE97FT6wPClMrYQvstp2ax6IhXhAAN9jB3CVEFst2qnFHhvqhV8tiG9f
         gvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184459; x=1794789259;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w98VdCA9EtnwfzZZ4SHf5Gk3YVXSBdJ/uT/O1NuBZJI=;
        b=anc8SU6TEh0NsWGhTUq3/JPTk+f5rhF8oAX/OXqwuoV1FDFjetzvE2SZDFWrYiXhm4
         NnRsjEzj3NzA+K5HhN8fnkQV6We2zuvmr6zzkomPKgHgbtABYaT5QQyKhNNO3HzQcA5p
         V2lwcOW06fn00K9Y3DBsKiIV3381LZ/z/WPlN9b/l4XfDAaHJcaMFepeUyDb8xddnopi
         AdAFKcz88mFma4/I5xP8UOnkzhyWEGL78rnvYNmirBE7eILYol+fffZ2c+OihhgGTvKN
         5arQoeN0LI8sMWr0OV6uKhAVIRvtl0/U7LFt5U6Iy4kuNCf01od3ADliFFeJSBcwHQUp
         PqsA==
X-Forwarded-Encrypted: i=1; AL+hErEAnX7Zrd6fxuuVJdiSlwWdkBMteKU+rAS+prrLDBdsrbMa9jBwdrFdNTcqpaD+WKjtJ8eO+jYXzlM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8CGzsLfiR8MP4iNUVGRaoTfiRrMv3bJQBfQ1bNHt6gMrwZmlYC
	z7rsCqGq098wmOC+d0SyD+uTrAj3eZpOq1iyJ2KpUJvBioKIpzrNOzzv
X-Gm-Gg: AYBFou2QEgCkGLfuIEH3ornbWkzn0Ufsc0PWyEfkuTsV+nC0rHrFwO5E8fPFZGavRwU
	jduQXQmLV952bXAm7Qnz4B1sUM+bzwCDIj8noCtyA80TatP2qXIg/VB240d2/6wSsRyB4+RLLyO
	XqMwWKD2q5MX1bubH6vcTBNQ4GVrPR6NPB3dB/KS2tWWNzmz1qtTAp3vAyeOUT6pOOlg8WlsDmx
	Sg0eJnI7jx3vqMHosKX8o9rKpqpvcFcZJ21/sYYn54nMthFD97lEkqfgU8CQ9E01oCIuIxZgVEH
	XGSPnioaz/0SjqZgweByRvbC9/qDp3WDXecFr8TkFrwZ3zJBL31yY/ZEFY6Sdjfr7nRwOPELmnt
	f+lt7KeUz/fWDovAHPbCywcxEyzr3e7AZeOQLgtbQ17YNmskdFW1t570f+ptSnWWoLgweuZhCuS
	cCOK+vcXzwq/PtfmDantvPZpY/eATZ+y29N/eG5ehvUdbrVFKTqpb2+InEsXl1IXqsh/KlnJIhn
	ITDQu3Ov8RhDI/T93ajgGDkO3YV13DjX/SHvjY/7ORLp2CIEl8zn3MgSkAB1Itg0hVcutciqQBi
	WU0bswdwZ1Li2mYvZDUuQieX/zqeL0ipqJ8FQSG8
X-Received: by 2002:a05:6000:2511:b0:48e:d7c:4bc3 with SMTP id ffacd0b85a97d-494248ee013mr10847131f8f.21.1794184459219;
        Sun, 08 Nov 2026 16:34:19 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:17 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:22 +0000
Subject: [PATCH 10/17] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-10-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=993;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=Os3dtyGi4Umq8bQ7AEz34h0NK9e+Ws6GY42XJz6qujA=;
 b=whHNXCMkWBlbyRe6Xqxsfmk8vbhGS1Ie1Ck2sCxfwGhqRMBxKE4lbZ1T0XWovH16DltXzjMRT
 ok60qvi/6qNA6DJ9tcvRYuZUzSKXMRRZZv1H2XgMMF2zBm+cXxEQ/SB
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163421_137588_92D1413C 
X-CRM114-Status: UNSURE (   9.29  )
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
