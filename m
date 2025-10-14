Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241F7CCD18E
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 09:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XnadRSIEhytPsDGRdqPBqRh07bWFE4UCE+LBtG6ndk=; b=DA7KwcQUB9VELj
	9nfVYn513aUhj7gOnB48sASL7XQ8MumBLDhoheTquMVtw73w2GMLeqS7dtYkVNr4vuaHwxRl+KBu4
	u/zV0IPKsDOPDxtFArTpZC0HyhVNJLWy04CgFWFn0mROKbx+FB5PmZRMjy7x8GeO8U0pgPny780vP
	Tn5g57vHo5W/HrCsJlebq7g6Qis1G0RjyS1zLtx3+tB1PtptWE9WEpcyGzLs0A6o+31NM6DMt/0kA
	yUHyrmFgbpX47OkeH1/k5TTqpYS7OH8m/QsBlvFIvrPtuctaqBiXG6mjbAZ8dFjw76lsxNb4w8dnl
	gl9jS4frYr63BAX554Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bbw-0000000FoCy-3GMz;
	Tue, 14 Oct 2025 09:46:29 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bbt-0000000FoAQ-3fsq
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 09:46:27 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-421b93ee372so2743215f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760435183; x=1761039983; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2bKZTYq6/6Otgm4/JoAPAscRI3Nhvh8qLkW+Q3h459I=;
        b=AagW8BZBTZOKvQqP8e+Cxs0aJ4TOupu7fgm+2XlDzb9YujUjLeRHEtOPsqrnD1P+7Y
         Asn2ZXiPiqf/mMnuwKmXDxbhK1WUcya/ZL3sR12pGdmg2s6if4jLytJDuIAIXa5xK9bG
         ldfTd0AM6QDozG3azLy7bXbQcuIacSMcPFBTc4ggQ98+734ZhSSYlAE3gRVfzl18G4xW
         Zn4PYvAFseYG/8mkDjUmQCRRp3hBH2yT0b9o0cY1ur7nMYIP7U6YzMe1sDtpV+uwFbVM
         TSO5qNyEyX6w/RDtqUdufy8yW0HacMo7vljrOPP7cn1dEy7i6f12n1keK/la/VZGTcZ1
         wOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435183; x=1761039983;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bKZTYq6/6Otgm4/JoAPAscRI3Nhvh8qLkW+Q3h459I=;
        b=F3M0x/nxeGw/t17Xu/miv38QrPotqm6J+oa4yB7s+5SOKLVhd4H2wXBp2AMJEwXyBk
         KGKDHAnAsWaZPHGTyjz4yWTJq5OzSIe055N0+M5lkI57Z0kvg/kfPYkdmShyRQDMEP33
         jHsgNoOp183TJ1qgbW20kI6SPFvokzTjP35P0fn6tr1D2Bf7c3OkeejfHstsXntb0pdq
         aXT7D/oQgdPcL6K1xbANjuponQd5tRLRDZ+QgrirOCTzD4m5wiiITnyTqFCJ6aI40Gqo
         g3451miZ7FWEqHZlhsYY0J96Ug/enzeP5eyOKXp+mxcvKEJ76/UKFNSQXoRDVOld8a2/
         9ehA==
X-Forwarded-Encrypted: i=1; AJvYcCWwdAf4+rI8a4QBrPeOgFI/8yshMAWVSL7Pq3bsapNjc/HscAmB94OiBr7IuXwTIYc3A5hZZV0irEg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxy5+WeqmIioIulTBXFAon2hKBp+rEXDnS+B5RdGCfLMW9ONudD
	YcwdUpOoyUODKngFsnXH2wsJx2fqhfWphCh/Ai6TwahnyEzGceVsOdxajv5JRaOeI30=
X-Gm-Gg: ASbGncsg5COojbq1WKk2wDfFQABcJxE3WDWBFwO+IGzT6bCMgTgT4SfXy+ULA7emPRT
	DEzQ8WQsAyiZeFtsjSOHX8Ga4hqcHe0/SQCjxgABToJvcI5AK2kjZJodhNL/6R3/DOIVMLMzpsm
	P1WMIVvwdIRSkFbeeOJogyYQrlGnKRkY4EalGZ5hExo9fkeXb72gmtl1JpCZa0GgoFUfsSPKbFV
	tecYH4Sb/r69p6w6Yuf9+NzGFUcCYJGU7nUftFuQ7S4q3ykes1E4yJZ2BvsG2+xs4+U1Wha+jGd
	GFJhCChXj/Ag8kfL7kRx+4BKICtM7JLdzqO/kE0VFWKE0KDzOcKorFRnlvdyP+IMWMXQQhwzlpI
	pgqql98XzK8HxowtiUQBWlqRaw4NniWewRJIIUUx513KgnHSIogRLJg==
X-Google-Smtp-Source: AGHT+IEUB3DwM5KbLo0YAJy95OK5FzaMYTEWXQtizciZwE/s3oqnbKLTxn0r/kkXbHky5tXVsGFBvg==
X-Received: by 2002:a05:6000:2305:b0:3ea:c360:ff88 with SMTP id ffacd0b85a97d-4266e7dffe5mr15539748f8f.31.1760435183185;
        Tue, 14 Oct 2025 02:46:23 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8b31sm22866442f8f.54.2025.10.14.02.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:46:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH RESEND v3 0/3] phy: qcom: edp: Add missing ref clock to
 x1e80100
Date: Tue, 14 Oct 2025 12:46:02 +0300
Message-Id: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANob7mgC/42NPQvCMBRF/4pk9kmaUhudHOzqoKM4pPloH7ZJT
 aRYSv+7IYs4KQ8e3HvhnJkE7VEHsl/NxOsRAzobQ75eEdkK22hAFTNhlBW0zCkM7QQP6XrQagC
 hFPQYAtoGvDayu0Mhas7iGa5LEilD7PGVDFdyri7V6UhusW8xPJ2fknjM0vq3Y8yAwtaUXBgtV
 C3NoUMrvNs43yT4yD7AHc1/A1kEKs5lVlOp4v8CLsvyBsfdUy0oAQAA
X-Change-ID: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2061; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=l3LysOIyApMjrPfw785wmo0UxKg51Ii7YvKFAglf7l4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7hvgVAHgN7NhN1/gnFmV/M7oRWvD9UaYEhDcp
 EFbt/WOLzOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4b4AAKCRAbX0TJAJUV
 VjPUD/4vUoPpHoZQWjDPWDIax0TPyCIZXxnvSmDbXKi4MhCqrcHcqwDOearqPMQ8sxSM7QmlQ2b
 KGS0+yeAvLVpGGIfMzL8PbjdspuFBqqa7HRvq26iaynnnb3XzBwtY82XMW05SAVh1mA8c3frW+v
 TyrcvmlnC9nUqZlQPiaheoyJ3+KPOKIL/IHSBSonTKoWTEhFTIzQT08A+MlJKAEatGZ8Rw1j6O5
 bT0eISB85t7O7wRCXnUsvw+3dVF5dCQA/EW7KR4XnYcAAikYMTTi2F+QM7hPnP36UWs44pSaq/u
 CiLbgozuozyDaM8SZwSEyiPC/mbRyIuOpWYeyeAj7zE9b9QE4wtFZYqUiXLFpkcTu+vTjuHKx/J
 9Cx8cSdYudTX3X2dT3KQgvqPuM1+mFkpeYnibSDgQqLYs4cC2/NyoqabG5B0Ba60cWZjoaWLw+Q
 qOnjtM5NFKVKHHsFOP9hUOYgBI7CkHoQRG47iXJ50lmvCUqR31nrSRkYGPOwAZ5AqsFUlDZG4K6
 pWnso6ZqhODJmEFSympcsTLFII5/A+1PMhzlDp4v++C2h/kbeks3HH0UfGyTSPcWQ0goKvw2Dpa
 B8lZPdjzvzgIKMyx8lnE6jsr7wqd60+pO+J9TJpzPASUa52RGX7eDdrtisyyrZ8hW5qDG7+2EFB
 CTJZTSy9WL91a8w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_024625_969179_71D08D28 
X-CRM114-Status: GOOD (  12.47  )
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

According to documentation, the DP PHY on x1e80100 has another clock
called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, when it comes to power management, this clock
needs to be also disabled on suspend. So even though this change breaks
the ABI, it is needed in order to make we disable this clock on runtime
PM, when that is going to be enabled in the driver.

So rework the driver to allow different number of clocks, fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3 (resend)
- picked-up Krzysztof's R-b tag for bindings patch

Changes in v3:
- Use dev_err_probe() on clocks parsing failure.
- Explain why the ABI break is necessary.
- Drop the extra 'clk' suffix from the clock name. So ref instead of
  refclk.
- Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org

Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
 3 files changed, 43 insertions(+), 13 deletions(-)
---
base-commit: 52ba76324a9d7c39830c850999210a36ef023cde
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
