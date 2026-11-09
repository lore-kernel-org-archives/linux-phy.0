Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB98606A334
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1jGy0wjo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lz1yOYjp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Q3vRzcsGVbxlnnBAN4Hw7wEOnEylC55soY3KcdjtOFQ=; b=1jGy0wjo1BnTPkhTWA7gAfZbh2
	c7/MjDFoL6+EI6rcdCzpBAgl0+5fuKgdNhRbx5fl4VU7CiJkLrNMcoebFFPo9h8qhJs3CprurQkYl
	7nq3WO8OqgW9Jzr/dg1eJ5OLdSz6LpT5iGQqOijvk7uQtdJwSkG7vblVtRgI10ecCXRHBH/mp9iim
	dXB62CDne6PuZrjK4h4iTd8bszNyv7/56pPgZYEcUl0F0OlGYHzuwVY43pc8itxD93vAUzrOkZ3K7
	x/uixy9VZMTuMExeXaJ8FC9oRXQ31wNuxeJvMk0weXDQwY4Ky12ydpHRxazogEltrmmFgPIGxWlrz
	QGk50hLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKG-0000000GxzQ-1mAu;
	Mon, 09 Nov 2026 00:33:32 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKE-0000000Gxy8-1Yn2
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:31 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-492fcbfaa88so228832f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184409; x=1794789209; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YFKLW8KNYAJNpwdl3pS8AB+PKg8ma9J8S7TqNdUzcMs=;
        b=lz1yOYjp2puMLkmteMMKQBUVHZtlQ4ux9Mv66Lzz7NDWaXam9xMX+IfEtSnHy4z70E
         cljqMjfuj5QQMgAQbzfwCOJoFTDP9mJhTop8tXmaZzeMcbue8rzAbzM0hoGJNDVT+G3j
         cDttbuR4P7ykTLY8LhsRsSUQ9ia3soKvjEkXI/HPmmf4RVhqV4WYrusJfXbHOQIRC4zQ
         wKgvfE/+j3TLSfASZkYigdASxfLj6sccB4sXVY6+LdR+8CPIi3nKEh/moHjr0zRihfOM
         0B/KQJgph5AypckTxxBIPaIvxpBx6xIfyPqHATkYekPLKSts4T/W6SN01XAohGimylgf
         J0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184409; x=1794789209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YFKLW8KNYAJNpwdl3pS8AB+PKg8ma9J8S7TqNdUzcMs=;
        b=PetfyDJipF8e127STmGxxYlaSyESUKe4lrwq7gVRPojOHPWpSy3ASYVs9tS6cBPjde
         tOJUKyIoZN34XMrYbcsTPmsUM7v8qeHqJZTCddRY2+sJ4e6gVhDqmjY48xlW1WKseeQS
         FNEyUbnPsgItJ2kh3xy8+ij5Ry744Pj5ezFmQ4+l1vN9GPzDOgj7onraNsVH66L98pMp
         HFoyt4pcrQqehqyv3qaqzV79n6+Jpm/noxmLR3dP9gd1GCfqN7sAllgVR7R/MigPYNFO
         kLrCIuuSFmMjZX3reVbS4LJraeUQz3mAZs7waZiNFF1GcApe2dHeKN2j5/SazfZsIq4l
         76pA==
X-Forwarded-Encrypted: i=1; AL+hErFh595OWcX2S1KqVzMCqs/bfFtKUqsCJvFUjRXaRPy+WWkd/eserknZos21XLmttpndOsc1K+suQtA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+UTiK6bs4+rtIC28wWIY96E6E026r+m+oWZ8pG2RQnDQVEwhPn
	4CBCtzMRCqzrh9fNW8lDiditw5PltPQJDNFW4BROVnp7QgKAdKbdndUK
X-Gm-Gg: AYBFou1n4oRXG5UK6mp46K+/sIIIrQTlqQys3TaIeWJAotwTKqpPwtanZdKC0qX9JFK
	zhYi91mXR8wWr+GzJojxVbh9CgQtXnxvF8Vu7ayc/+qBf2e1RJ0USmWcjajByDh0K9dOHy0jn9j
	ECK6Wjs9dVKN1Io8BtCyms8e3VLKwDW6hLA+KmirxOicvTacogg1CoEjvmxQ/kUXIQYbAQFJ9Po
	rUm64nZi5FHJDzUq8wBW1vWdckZg1ajV9f8zm52Ubday68kbF5qOpQeFDwTt0KXnQUCTNXCzNm4
	+QQ5bB4fMVoyKLFKWhl8Skr6UmvnEypgS/HW7mmV89D0gvW6TCpzAnB3ZZ6/JXA73dEydLpqXr2
	pVdWUMw0N2M4IblG2yl6ek5rC0pb5u4H3nNTlJhnvfdmdnJi7LWsuweD3h+WTCS30d78AURH2hW
	Hi37I8n+lNmVlaVixIFnbV6xVXtLwt/TQntQd93xp4IkByPeI1PCxRQIvBJtdHPmbvokSz9d2lf
	J/5PFvbouAuIrWFOWzBGgQCtPBBy+eG959eeVSlHui5LjavFGd+zgPgdIj6O0HdPGmxWGup1/ZF
	PhumwuCKcO4GDAKo+HIIkxtVmMT3wAwke8ObI/MC
X-Received: by 2002:a05:6000:41de:b0:487:6f2:1a4c with SMTP id ffacd0b85a97d-4958363aef7mr5202460f8f.25.1794184408539;
        Sun, 08 Nov 2026 16:33:28 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:27 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:13 +0000
Subject: [PATCH 01/17] dt-bindings: arm: qcom-soc: Add Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-1-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=1550;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=tUWocDfAfCJsF3v3OtoKwfhNWUHIfuzBBTQPqmsMKT4=;
 b=6d7YwzTFYjop5p0/v6W6IN2CR4pGsNNDgYvAeTsTx60B++SOP4IVlql7QjUftzoP94efcMQBt
 9wyXGd+1Qj8DJV/y/ijna8Tz4UO7i/9OTJJYJc+5QBZZdn3iTw6kOCC
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163330_463780_22986994 
X-CRM114-Status: GOOD (  11.28  )
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

Add Halliday to the SoC codenames allowed in Qualcomm compatibles.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom-soc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
index 179aadc86a9f..9d392329d437 100644
--- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -30,7 +30,7 @@ select:
       contains:
         oneOf:
           - pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
-          - pattern: "^qcom,.*(eliza|kaanapali|kuno|glymur|hawi|mahua|maili|milos|nord|shikra).*$"
+          - pattern: "^qcom,.*(eliza|kaanapali|kuno|glymur|halliday|hawi|mahua|maili|milos|nord|shikra).*$"
   required:
     - compatible
 
@@ -42,7 +42,7 @@ properties:
         - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm|x1[ep])[0-9]+(pro)?-.*$"
         - pattern: "^qcom,sar[0-9]+[a-z]?-.*$"
         - pattern: "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
-        - pattern: "^qcom,(eliza|kaanapali|kuno|glymur|hawi|mahua|maili|milos|nord|shikra)-.+$"
+        - pattern: "^qcom,(eliza|kaanapali|kuno|glymur|halliday|hawi|mahua|maili|milos|nord|shikra)-.+$"
 
         # Legacy namings - variations of existing patterns/compatibles are OK,
         # but do not add completely new entries to these:

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
