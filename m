Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ED62C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 19:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1Mu89sOchkiobXIOOVhpCs4m56MpyZllvRv/wdnNgU=; b=AaP172lffIGCoT
	FdVGiGoXixoUFemLtlATjJHRi/YErj8BmQ9xuJznqBKRN/pBfD/+0TELlMm5dblWHPLNfbh+mFPLx
	eVZkeDMXnlMKDLqrj+oWdyoDo9HN+Tz2aO3Ijh7a0QXC0FS/MKWFJ6Yw+9Oan+fiRgiqpyVEv7p3R
	n4zuoQa5XL/sBvRukEoD5T0prWHeYByI8BDdZic+x1MiLU1agtP55tXmQuTqMm1Poka/OGBTHeMxV
	FH7+mUNnkQ0UMhlAOfimCnKpqJD5LKOqwH5BSUbYVV/EULQgE4SU2ZGMhmITcfFZSWBf/GQj9qtau
	nzDVdETxa+0wb4tTs6Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0M-0000000Fz8q-3BA6;
	Tue, 20 Feb 2024 19:42:14 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0J-0000000Fz7s-041j
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 19:42:13 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5643eccad0bso4666967a12.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 11:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708458129; x=1709062929; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JhuET/T0FANjeqzL8xf3U1OOYne712izFcHMVgNkJis=;
        b=GazQHwffftKm64QSUlfL4pqVwF1t+d2GtfeA5Fblu32nh5mQZpkAPxU9XmFJKQahpF
         NSVDDPhDxBrltEYFJizLBTJs0fOD74FVij/4KPcE8l6tjmI7IaNfYfXLdskNHH6z9brM
         mqJ8kV2SPLxE0+OsWllpkFSVMFNKznf4InoDFN77nQ0Vv9/1CVi8kvefdNcw8XOGakmW
         zcDLcBNulIwNeIozd/TRV1bGFwvvccWfdaMz/QcSKORETaX5P7gmu/wnvc5UF2b733dD
         3fcPWTXtZw49xWSC1ZivzKAyn58U07FqbgQl7weKN88LVbBShInWQyVXuIXWviqJ7oe2
         jGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708458129; x=1709062929;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JhuET/T0FANjeqzL8xf3U1OOYne712izFcHMVgNkJis=;
        b=NiNdOiddNdcR4sPt2aznIsHA++ilEkAfGMgEbFm5g1s7fxfPl0A1PS38hinmMdXQzE
         SvOJKRihPFcBebnn/1b7y6ZtpfuK3kFT1xPw4mqznPlGvK8TJzzm/u5EO5AG2I4LzQkq
         GIyARPi89E8ulktlv/4LRy0t10FhypUW3RG+VD4e89g1vEIXFndKhQj5Go1ZmTro+K/m
         YwtnLvOjyfIYY8urY3yv/i091T5Wsk9i01wMej62lU+XsTg/qq9Gh/EjwamQ2vpzNMEX
         f9qWoHC2n/XmJdJNwr8NuLIq0/KJA5fUBdm7APO/cGvIEJjEAs3dcy0KXeov187r503O
         1SOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtpkNxbiSzIszly+Y9lKa+KIGJgzDOB8esgaRkb/QIUAT8gFZcdXqdmRQoT38eSklGHGAGjSiqKduOcqYLXYqR03RGJ+Pvex2qbyfsfg==
X-Gm-Message-State: AOJu0YxjN891/b/c2UEH27j2luAwJe3bM/p/n1oSEvs9qzWSiLHgd/go
	5/VMLIhI7cUNYn9gP1JHijVUMYyjkdswFrarQTfBv7vArsomI3LlDD5GWtsKZ40eNp34MC5hUux
	L
X-Google-Smtp-Source: AGHT+IFRrj5v8hh0hSjlC77d2Mey3KqKNXqp373Xia098XsxTnsRZEZzSLlrq/fVkmA7kp1skyw5jg==
X-Received: by 2002:a05:6402:33c9:b0:563:e5e0:85e3 with SMTP id a9-20020a05640233c900b00563e5e085e3mr7766330edc.33.1708458129076;
        Tue, 20 Feb 2024 11:42:09 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id c1-20020a056402100100b0056486eaa669sm1906822edu.50.2024.02.20.11.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 11:42:08 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: eusb2-repeater: Add support for SMB2360
Date: Tue, 20 Feb 2024 21:41:58 +0200
Message-Id: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIYA1WUC/42OQQ6CMBBFr0K6dkwZEMWV9zAshjLYJtDiFIjEc
 HerJ3D53uK//1aRxXFU1+ythFcXXfAJ8JApY8k/GFyXWKHGIs8RYbIbPBcaTBhH4CW2CMIT08w
 CcWyxqDSQ7rtKd8UFTanSUkuRoRXyxqYtvwxDkpNw716/9L1JbF2cg2y/J2v+td9oqVHXf0XXH
 FK5R0NlV5+oOt8G50nCMchDNfu+fwCqJIf57AAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1078; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BcD6RsSSskw1Y1FZWqSNW79K1il0ALG4B1Z5loGjs3c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1QCInUMm+zVQe4rePGCRdJoZPR1980x4ZsJ6M
 blrGB5KFI2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUAiAAKCRAbX0TJAJUV
 VjxvEACSN7RkodjVNVk0+UuvzJNhrhOyKBVFhQvbXkauXDtYeg3+LJR+10MbcvR14n/tMT4vxix
 v3Oz6mUK1HOhCiBqsJt873FNX8JWWAU67Ic711H0AbP4jmL9rYualvMC5v4f+3vVmHCqalp5h1t
 sb2/rQktL9Tca5jKbzXt5R0xsjPJ0pshvMkef7Z4ADQJFdX2Y7xTFnB7UVk17ydXt/oUt0dcdwP
 uCgJKJ5rRq6LZGFQ92PxB05N49Fr3fbbbRf2VDEhDBwSkdOxkL9z/1L5r2jI/yVYInMozBsGu1F
 sGmRgX5strm+bMigviWZqJnTiJqgeg5cYBRukOkIdSKb8gr6OJzZVh6UM+pR+yHHnpUnkznEs38
 xd8qJQ2ccCcEBYmQam24FpSb/GKcr8iShAOpWguqQZN3DT8ToF3Ps6vR1Wa39u9m1AhUZWhgN2T
 2D+nLkC9P31eejfNQDid7/X/4gU2MqIzNnO97o7/qaMDnND3ger5VYsxpoh1joT+irmPpan+tBJ
 gQQ45Z3b+BV+Nz48koEuNRnRmSI3hqUIXaqsphi80w2Tg7GXhcJrgb8Faho84SA3G8Hc+ewMCnT
 +SQJeqFax6GMs9UJw+Ld9XkYEwskfenlBixNtMBQ/6T9RqUT7c1Vkw6TvHzsYx7BYGvg9fW0unR
 oDKOhTNrzMpadfg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_114211_091313_A1C8A3C8 
X-CRM114-Status: UNSURE (   9.80  )
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

This patchset adds support for the eUSB2 repeater provided
by the SMB2360 PMICs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Re-worded the commit message for the driver patch to fit Dmitry's request
- Added Dmitry's R-b tag to the driver patch
- Changed the compatible entry in schema to enum, like Krzysztof suggested
- Added Krzysztof's A-b tag to the schema patch
- Link to v1: https://lore.kernel.org/r/20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for SMB2360
      phy: qualcomm: phy-qcom-eusb2-repeater: Add support for SMB2360

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml          |  4 +++-
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c          | 17 +++++++++++++++++
 2 files changed, 20 insertions(+), 1 deletion(-)
---
base-commit: 2d5c7b7eb345249cb34d42cbc2b97b4c57ea944e
change-id: 20231122-phy-qualcomm-eusb2-repeater-smb2360-a0fd60d382c4

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
