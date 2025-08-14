Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E0FDCA0EE0
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 00:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QziVAhStl/phDG4WVC4O4d7gaHr2avrHJzeRFSCxYo8=; b=G8H9XlJ3NpvWJT
	X8OYJMM4YfYk0sdoaHdjqGYW6nVWpBZBMuV7Uxm5xQIUAlfm25KRIYNOzkLsB3k5PcPyYUVMgpjMA
	huq70GbFn3WF4bgTHWECTbTyxWCO9d7WDpkD0xVqBFwc6823dAjnPwEahNL4whEw7FeLbsETSzvW/
	aaDutChCdNtga6eMvxIerjlIvygvXQtYHuqvNFOF4+a7rI/PR0LI8E+eleHF7sr5CFoVfm6TFQobi
	fg6S+tylzHG87R7BADOlQNWq3N5E+HoKgVGxzXrQfcSb4BnioCpTMX3aL0bYoZDwj8etH++2ybHqn
	1K578hksIC4VSesb1RJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMJz-0000000FRn0-0s6M;
	Thu, 14 Aug 2025 00:59:59 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umMJx-0000000FRm5-1pG8
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 00:59:58 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-76e2eb6d07bso460821b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 17:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755133197; x=1755737997; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Av1Ijp3yREaOIIrOjE6hDH01SRduzURtend/0/9r/9w=;
        b=a4qZmeCWKI5kz49r4iuFIFoatXLAdSTMlIIRYWdi+yROuOHAKsEa1EtRtNX+iYlzJ6
         CbNrEcdRHSUFYDVrQPqTQBace8Gkw0iPDoThPX7/afZULMca+U8Xc0u0eB7o0NDu/jJF
         x8FAwFm29sDPUHYBzw7P4M5Pe7Y6EO0pZhQntiF31ttCeJStP7Znmm3JPsitQhRNlj2m
         Iq3Vzfc4Re2FVyM0O5xs4pRb+tgAocTHQaWLb3AOjGl22MwOM2wz84C4QLcwgcSLgTIf
         bfvkqtQ0wD9LtNkH01OftD/fP7WArXdQiUh+N5EcOcpdlCzQfO84Cpln5z17zRxHF2ak
         6vPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755133197; x=1755737997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Av1Ijp3yREaOIIrOjE6hDH01SRduzURtend/0/9r/9w=;
        b=hUU44XC1fw7If6ESR8A0uLuZW51JpkEwgf3dVBo/zM7Vr92BTzW8Olw8kPQjIBpH84
         DYRoZ1/TfffZO6jL1ecFGk7iR4nK03IP8PnGzNUXLqeOBA2a5WyKLPqQqAo9xo6xPWsO
         tiBeZZkDkNhIorhRN2VI/pTN023fi5ZZwlsXzAeZEIHggFebFC5n7AA4ggGVCwzQplKB
         WmDuBIZRg5AT3cErGdCdSkm+RILyYH1vPud4LXCDu/XLpHD7fcdPZvLtos+mRTFLi9V+
         4JtlPCAguHOhqfriROTWMv9IoY0saLT7iXUB03zdWJ7941UhucZ5/kJe20aunfg5nDQJ
         Meyw==
X-Forwarded-Encrypted: i=1; AJvYcCWMR2UiRtvcfiz4lNbz5HEHkeINp9VOw7qU51YW0C8l4PaqtHh88oKEIlaDCBmDfmo3isawgS33LA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzobbilLJNGKvcHfwG8vUYuk7OhvEWcJ8yliGKrAXUDajixw5E/
	ZXM9HuDG7yXTdj9vJUVSu26EcuLXyhOOEn4o/5GeQYbKeY36AWnCk0y/
X-Gm-Gg: ASbGncsFQXPhLkz8LfySKkvc4VSp2aqVXjSJcdBXXpTiB31tAinSK2uN2/Diep6hBuK
	sQcJ88/t1fFDBP/O1CzHzFz+jQFnunpyKZE6+AXAaoR0oY9FZ3tr+aqLG6pFhIKrHVzetyAxowv
	PD3uHY9ZY6MFhS3CCGZZ6nrlA97zZTRB5PsuSmpAdAWxRC9aehp67QcHVz4SOoAevbwCJsUO6rG
	PUsffrTQHQnIYNzFPOtAnok8CyRdPVOullm5H0ZvVbjy7/6VXUUU+Dkgvfm+aGWjI5tmtn+m0m0
	3JdGtSmza9QqeG5A3QJGhlOLHSEdoZIEtm6Dquc9SC8HpQKC8lFuNXH8+Las2yRqJ57psagwDCN
	nnLJnKtDbjJnG/LcBYTykzI2uSfYyQLcqdQAls9CbeSZxZPFinpqp9YDlaZVgJJAUmqNWPaZSOu
	UHP5Ws1E4RlrYDb0SiGHzMig==
X-Google-Smtp-Source: AGHT+IHw822HbCZdhcd9mDtB5qCrUoxERRHmeNwKz7oQV+bksDBgEr1QZ+027JGplWiK2+Z/VMIxXQ==
X-Received: by 2002:a05:6a00:4f8d:b0:730:9946:5973 with SMTP id d2e1a72fcca58-76e2f8a26f5mr1583329b3a.5.1755133196697;
        Wed, 13 Aug 2025 17:59:56 -0700 (PDT)
Received: from harrison-Surface-Pro-12in-1st-Ed-with-Snapdragon.lan ([101.178.35.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76be9143983sm28875783b3a.1.2025.08.13.17.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 17:59:56 -0700 (PDT)
From: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
To: marcus@nazgul.ch,
	kirill@korins.ky,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mani@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	andersson@kernel.org,
	agross@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org
Cc: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Subject: [PATCH 1/3] dt-bindings: describe x1e80100 ufs
Date: Thu, 14 Aug 2025 10:59:02 +1000
Message-ID: <20250814005904.39173-2-harrison.vanderbyl@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_175957_473602_EBBD378A 
X-CRM114-Status: UNSURE (   7.38  )
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

Describe dt-bindings entries for x1e80100 ufs device
Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml             | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a58370a6a5d3..a5f115655235 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -45,6 +45,7 @@ properties:
           - qcom,sm8550-qmp-ufs-phy
           - qcom,sm8650-qmp-ufs-phy
           - qcom,sm8750-qmp-ufs-phy
+          - qcom,x1e80100-qmp-ufs-phy
 
   reg:
     maxItems: 1
@@ -113,6 +114,7 @@ allOf:
               - qcom,sm8550-qmp-ufs-phy
               - qcom,sm8650-qmp-ufs-phy
               - qcom,sm8750-qmp-ufs-phy
+              - qcom,x1e80100-qmp-ufs-phy
     then:
       properties:
         clocks:
diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 6c6043d9809e..f820470d4cca 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -44,6 +44,7 @@ properties:
           - qcom,sm8550-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
+          - qcom,x1e80100-ufshc
       - const: qcom,ufshc
       - const: jedec,ufs-2.0
 
@@ -160,6 +161,7 @@ allOf:
               - qcom,sm8550-ufshc
               - qcom,sm8650-ufshc
               - qcom,sm8750-ufshc
+              - qcom,x1e80100-ufshc
     then:
       properties:
         clocks:
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
