Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F0A6082BCF
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rb+vPWiZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TjPtbDIQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LQuZAKV1iYTendYOzFNvVypVMeo3ricTCp29ebXE0hw=; b=rb+vPWiZOBVTAkXVPPUq1Ksij3
	QeOgVAwNuWrvKv9uLoopig/Sm9bHJX/SVFrImKQsn9JtLxmN3C9i8rt/C8aAdHmdG+SgNpmdJD6pF
	Bg8/62BoVHM0BbaUNrdxNUTm28Kf5GrInwCHp3SwilON5cwaQ3ki9fzWlkguKW4sy28jUNQVrU+ye
	Rj7WeZA3hTa+OkN8oUyBmPhDgQ5sY97OFFGCr5xot9iJVpIxiDvyZN6snWXo5jR6I8U/Kw1TH6UjN
	XP3lJzWUToebHH2iyitymXnxlEtRaK3FsyGVaJygE8sHwvxUk2nuAY05KVOgeYYMrqvUMbkKuPYHt
	8Bai4jjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKg-0000000GyLo-3Ra4;
	Mon, 09 Nov 2026 00:33:58 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKe-0000000GyIH-0yzE
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:57 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-490a0e72588so164361f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184434; x=1794789234; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=b3VvGqgW7w89m51V5OtlQCJq1vHDswwHimQMB9pEHTM=;
        b=TjPtbDIQt5IS+Kwh4jkijO37Z2VAMCbZUNP2HjxxGDHPzNlpEMOt+axGVEcymjN+ue
         90MO1jFLv+o7uGuJriHcDAyRISykl+gU9xEFeuGpUvsf1cB36lrURNZ1rB0awPW4tRez
         6JDqnJUJI3CtsfBSm9FskdxwQT/HByPbcrQ2eiCyS8+hd+2wQY0Pc5LmTdCcO7+z1KJr
         z/2MWZx4xfKkTvqaJhG4ry+JFsij70lxMwCu8XgOD2TpkdP5X64BLCYWQnm8sODNLguH
         qOd0qPAAQsMuMKUDS14iIz5HPXQ50j9iyL0XEBPcyacKQbZ8n65aHN7Rd0sqJor14JqU
         CKXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184434; x=1794789234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=b3VvGqgW7w89m51V5OtlQCJq1vHDswwHimQMB9pEHTM=;
        b=MFbrIjR+66L/dwC1/TB9J3azsHgKsL43AM/9s38+cDxWRXZ+kc3W7MPH6JPpmwKfMU
         l9SFlcMSkAYVv5YIU2zoCOAgXoLdhXtkRx8beAAOwnaptUzIYgEUCwSktjaGUQMBrgSR
         80dBX19WqcWizrHgtNFY2q+lBzdMANZLpqLfyse6IyiwKG4CkGFOyvAllXOGEo0xN/CM
         DzjvJ5E9/OmGw5az4tyinjR8ABHNgDMUuj4+lmQuC5zhM9lHH0/Bo4tk+ZawGFrg1LcC
         hUYnGemFFeX0Us/YK6u2U1ZF3VkO30ZBypd5TuYMBPpUPlqExC/BP7DTrwlFq8RJy00W
         u8Mg==
X-Forwarded-Encrypted: i=1; AL+hErFHlj8TmxbMsDYNKmuIWk1hgi031DbTq+NQ6VIZi8JCkAbZziqAJ1GU8Y9SFirJbzoR+jn5y0z+Lu4=@lists.infradead.org
X-Gm-Message-State: APuU4Z/pSkGOuTAuf3ItNAa2kyw7H6RV648fPv9tTrDwQMN1XuRV/mNN
	H6Y3eVQ/ezErjiU2pV9xUtfvOPEVUvvTxomrelacmoeQRujbEhlfwg+j
X-Gm-Gg: AYBFou0fd1r7T/Kl+5vQiZeePwwCjx04LaADHMXW44oiVJizo4uAWk+bcGsFOuMEA0r
	88s2Nf419VGkPpDQ3crmsK54mkKJ6AozS9qHojryaIkJ8LEq/O7iQKGvw9c5s8A3QSPD3HsdtGd
	Jt46OIkIWpRCGY1sa0t5srSm2nFA+hFiocqUFORjDylpG90stTFg2ltLU9og3lBd61niBSC0oxC
	9ul2YW12c0Ab4vIYRF45tGbyIMrIAMUmGMuOAAN1PB3EgNHaajDKGVb594Lmtb3KwnSmiNintdU
	CUgmCXmcXOS4SWFmQCzFzxSaO4PykyiskvKVMamrO6fIOIsWVcT3Z+x7srcGm2WXpdO3NQ3laKG
	5w5fC5xnmVkUlwMH5cLosPrSoicQO910DVaZdpOqyzKBIm6PPTystAJikllOhyhyyeAIghqxGcR
	A1mE+cjJyUfq06JZ55AMf26o3L7oXbiPOUnh07SkYebNT3henGAdE3m7eFLQWpv4RKmuhUTpskT
	stvYlI40cleFAyM+uso+I71MPdRe3D5AhmjQwsxqslFawes4tPdrVTxwiL0e7SmBCiyHAl9Eisr
	UmRyQ8Php1zpBXShHxh0nIKrhpwuziHUvOgRwGNv9w==
X-Received: by 2002:a05:6000:186c:b0:493:2eb8:e7fb with SMTP id ffacd0b85a97d-495856e15f7mr5379354f8f.41.1794184434351;
        Sun, 08 Nov 2026 16:33:54 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:53 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:18 +0000
Subject: [PATCH 06/17] dt-bindings: arm-smmu: Add Halliday SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-6-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=1112;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=ePrzoruUVeLDRq3OCS+DiCl1d/Uk3kZuK6w1BATsFKY=;
 b=pH81WehGSEFzi7T7LS+ShwXYAfu5lsev7imaA1JaeNifItRSFvMkK3a/y3Fr2K8IwuXgQfeAv
 1F1xnpR5tNxDdiiDmSxt0TVIqWh9HxtwfbMTz8uhxpsozlK3LlCAs7D
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163356_297677_1DD51CCE 
X-CRM114-Status: UNSURE (   9.18  )
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

Document the SMMU-500 on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 6748351c7812..925afa8cca8d 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -37,6 +37,7 @@ properties:
           - enum:
               - qcom,eliza-smmu-500
               - qcom,glymur-smmu-500
+              - qcom,halliday-smmu-500
               - qcom,hawi-smmu-500
               - qcom,ipq9650-smmu-500
               - qcom,kaanapali-smmu-500
@@ -629,6 +630,7 @@ allOf:
             - enum:
                 - qcom,eliza-smmu-500
                 - qcom,glymur-smmu-500
+                - qcom,halliday-smmu-500
                 - qcom,hawi-smmu-500
                 - qcom,ipq9650-smmu-500
                 - qcom,kaanapali-smmu-500

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
