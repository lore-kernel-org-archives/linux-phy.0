Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22806C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 15:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uuaw6z6V+F15Mnx4Ar4hY2QpPujPpiF62JA+iWsvyX0=; b=GCCQsc0fwAwqwQ
	CeMkMAwWONQAJ81LYKGcBo5CLXPwjCDHp2lNuoUv1rc0lxrsktVIoi9REBFLpFosufpk0Y/OipZN8
	D9FtRKRApz+cjfIhVrQh8V0DUcmxcrttRM6eeC57f1h1ZHn2ajOCdxisLlQxgAu7V9ikMunLeGvGb
	591kaV+Q7nQ+Q0n4iEju5tUVbGWLUKucFPnYKdfe0VF9Ottog1vsiW0kJommH4Kz52P6MRpdh5RXz
	SzjP7h6e2f9Xz39avczapizkRMqf2iOPrzAqlmS73LMDlIscoEoWuEgyNXZWvujaJkmiiRdlTkXNP
	zMJ8S/dl1mka0jVSczHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSa8-0000000HKuf-3Vwg;
	Fri, 09 Feb 2024 15:14:24 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSa6-0000000HKtj-3IqN
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 15:14:24 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so1486974a12.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Feb 2024 07:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707491660; x=1708096460; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ssqSDwTHA+Cg2ijKB5pjXoS992iHVcyLNIc1aZBV/UQ=;
        b=ebyByVAcqFWjVrff5W/YXcMuNQYx+n1FodjDt93mC1hTSd3iXlrsLx5k83RdB/+/QT
         pA2+e7QiAeExLzUvK4Vc+hL0m0T+jPc/77Xc0X8oIOxuXjyr/9cL3qPMJP59aKPC3umB
         YXkAyq0tHyYo6bXAmT9zc/mlTUYd+DC9pFC0/YnR+/4CoctjyoTyL2zTBF9xCTMYat52
         iWYUJR+ooZY+vfn/xn6wqF7qS0UbCuzU5aTQVwdAjBEkGLmVktuUXoW7TVDwK1NQQk+1
         14QN2vG0s01F+8ZWZ3lIdvBJX1L6QDyM3gQu9/YFCFzF9embYWrk0dmSxXvhM2ZBcbsq
         44tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707491660; x=1708096460;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ssqSDwTHA+Cg2ijKB5pjXoS992iHVcyLNIc1aZBV/UQ=;
        b=AxjDb5UYOjB/NljKru7v6G9mXbfDbVP2yQy+wJQSbkYD4vLcrPBTdmi4F7XkdbUIna
         AyiS+kluH0gn2hLRUkh3CLXtJp6ByDt6kDJc95CwGt2lFBTmkWKdQXHgI34VJqb286EI
         sTTzUq+ecpC7Iu8M2+kKidrL/nWB40nygjXT1L7MHN/S8pRO3CxgQ+y2aJ20eS79EJR9
         CJek0XXabwMEWFqivu9czw5gXApuOOuR6EAN6pD7shDcWzZSAy2QsJeygpkH4E6wYF2j
         TOeHxYMIrhupZc8sw9WCqMnUo+GmL1qz5UdRtJ3asKuLtWFfZryYxpLHxk/g2eypTE9k
         7Emw==
X-Forwarded-Encrypted: i=1; AJvYcCV4OZXw18uwu23QzpT3/0VC+K32DcgNZvKqeAs92xuwhkVBHZpuNNVrZNLogQbfwEtycOAtVPU+fKQ7qJDxd2XRYTPWE6z3AXjreW6bLg==
X-Gm-Message-State: AOJu0YyRbJe5bbZfcpaR3O49dOwImlowB/aaaNVXfGe4LsfhZBAFdWqI
	rlbv9ipcyEUSDrH20zw47sHjEbH1PDRia7PbdUM4MveLx7ih7t3YolZfhBx4Nl8=
X-Google-Smtp-Source: AGHT+IHu9PVQg/r3sWuJHx1k2qkljpt+JWg2pF6vB0xvRGdbHye6OBmqU3LXCloNZ8Tem8RH0C6CTA==
X-Received: by 2002:a05:6402:5172:b0:560:1c4:cb31 with SMTP id d18-20020a056402517200b0056001c4cb31mr1769965ede.17.1707491660328;
        Fri, 09 Feb 2024 07:14:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXmZi9YsbyFKpWiZF4EXJr6enGQRn8co107vnc7hb4OYlCmiE4G/sQCGNg3B0WgqNPmQw8MkwSQGzK8cWdouIv5MedArdXKISw9tRbzTsTEnL47/a7m8HQMskWg06/CLDm5qGKJT/hSfzHG0PRDOevZjKwaeDh4s7FUmbTa3a4KWyg6A6uF7I1fRbsDE1anVtXsYiGNu8x8GjqoYbN27J3ZlipLfx1tKxSzqudwO7xonA7Y98S62U6ig6zQundfkGpJKNAQNnxcfr3c0xVov38Vh7r4iHt3UFhcYBvGYC8euYAz0KHx14VK43Z/Wk1t2LJXYe6Pt/arKH3+b7XA6rwNzlUzQmDLhm1mRcTFYGpiuHz80ShKE/lmk1GANu8hRziZP4+a2Q==
Received: from [127.0.1.1] ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id k6-20020a05640212c600b0055ef56f4575sm860240edx.39.2024.02.09.07.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 07:14:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: eusb2-repeater: Add support for SMB2360
Date: Fri, 09 Feb 2024 17:14:08 +0200
Message-Id: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEBBxmUC/x2NywrCMBAAf6Xk7EKykSL+injIY2sCSVp3jSil/
 27wOHOY2ZUQZxJ1nXbF9M6S1zbAnCYVkmsPghwHK9RojUGELX3h2V0Ja61AXTwC00buRQxSPdp
 Zg9NLnHW0FwxnNUreCYFn10IardZLGXJjWvLnv77dj+MHSpZdtIoAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=674; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=JnQWgOa5RsKDLidoGwqHhBQEnjeKf7MhKMdfRKVLKYE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlxkFCjPFNGqQEAHDMm8un4UpzIPoMi/I8tkss3
 P6g/EWAxs2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZcZBQgAKCRAbX0TJAJUV
 VkwJEAC5puaTIct3iYSEkrfTs/4Q04IUUS2TENsfwEEq39VB0Znx7YbU4aMr68tgNt4eVTLtRy+
 aCqGdYGN1TCAHHn4VutMZLuh2tbzKwTtWUga8XGCDknU9hdZSrmiSI8z69eg8Qda4AW0CVWWhtA
 6RpCH/uRyoaV+M0pZQZOvnRn2O9enAwM52BCryNx+NyyZHUGa8E7+fYPuYe89oPUlE7MB2XRjkE
 w97PvUNwRMJabXmdbTcvBwZblyP1x4Vi+nBWs/4AjEEZ7IAbeoS27AG+C3gp020VCS13hTWuOfP
 d8JkrxTMB73pvnSXcsEMvo9fL6l/98LPLQon/a5XYuNxE0AaYXdB0trdS6WA4PzYwWeTfZbagyI
 JCEtBTIA06tjEYZknf+QyLL9feXyLczCSrZRgnimIp64uWobxZbIeQ7jSMvRY4WGniBXZgAUTBL
 2PtvRlPGUlmbC6aYl1ZzavmmDDtzwOj36q5raxkTPcmrmkMlnUd2Orn33/1hcsIx1ngBS7ftbfh
 BelVrvQUDjj7Y98Zz1UYsF7c9lpsXjP3DHYqOz8Ko2yn8M+zryURDlTQs0T140stp7g+kPq/dAA
 e+AzKiU8zAxa3hGhnOEoVL1m6bpJMbkKabmdJerSmx9j88zxyPOQclHNBmS/MkKNIJj4B6v5RWl
 5nkQ1urMr/baffQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_071422_865102_341C9705 
X-CRM114-Status: UNSURE (   5.91  )
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
Abel Vesa (2):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for SMB2360
      phy: qualcomm: phy-qcom-eusb2-repeater: Add support for SMB2360

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c          | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
---
base-commit: 445a555e0623387fa9b94e68e61681717e70200a
change-id: 20231122-phy-qualcomm-eusb2-repeater-smb2360-a0fd60d382c4

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
