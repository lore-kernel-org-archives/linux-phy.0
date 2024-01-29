Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25877C47DDB
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 00:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kRDDeUmKaXs2lbk+EUYV2M4uZHFRJEiWVt2aETcCHpY=; b=hctR6A/1LbfXWa
	hhovpdyK4rR2zdb4b8e2YW8Sxul0hARo6kQqEFjMhw9NvSlh/nU9u3E4d2WJ8F7GPm9qhX4fEoyiT
	CkeO2D+humbxHkrKdD/8Ml32c+1MoRqFTqvAPLDaQ58FiPBN1UjLphX+7VO2NJLe/i6LHtNFDwgrn
	tQi+Jn1UbG8ybwn+w5MN7pMVlKenEnAfwQCAwAVscsNf9pDz/heGLQaSZPhVjvkpkqpM9XtsK/+Wc
	SebKezXnHJhSmP9yJIPJuw34WCXRKwn2AydTbmNWl4seHYKSW3VshnhrUBiV4bZAVJhYE7zLh1CU3
	8oWwrgJg67pX9zGbQYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTX-0000000Aon5-209W;
	Mon, 29 Jan 2024 00:26:11 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTR-0000000Aolc-40Bn
	for linux-phy@lists.infradead.org;
	Mon, 29 Jan 2024 00:26:09 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-55ef011e934so643123a12.3
        for <linux-phy@lists.infradead.org>; Sun, 28 Jan 2024 16:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706487961; x=1707092761; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QSP/j0QUmoRkVRe8b6nQxtIgMt443r+QjiLpoKVUJr8=;
        b=Z2IAE5bTKdENUK6/hHJnd3PdhXGNoFiMdZ67JwH9GhWPEr7s0UNyXAZiXWh8VqIso7
         Ys0ZSDdZDMHGCQYp78hMjMNESEJdY3CFyZae30He2OEXs7G/+oTnY8YS4aa/ydz7I83h
         HAXEacP6oY4+hV9mZAjBgATdpIT1Cva83VV8RgG+yU6o7QYKYKxeUxtwVm7vP2hfe4zP
         LG1IE2O6MHua41EBcwTJ4j+KptlcZJo56396DmKCr15vKS07qNmOkLelo39gx+Va5FJj
         zqEK3sXVaYjdw4Rb5K1vkF5gyAVnaL/RCkso7gXh1ZMam1GQR3Lr0LheFEhXd8++FVz4
         lB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706487961; x=1707092761;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSP/j0QUmoRkVRe8b6nQxtIgMt443r+QjiLpoKVUJr8=;
        b=Fu2YkE6c2+7fLAZ56j+ltGc/AyRCfLXas3NxJpEvnQh1pLBS7n4Qv9UsaM0rW7hOyh
         RQBWyYaQNAfS7HwRzqmjnobyHATJJ4qkCRcCZg6df6NLIxm6SL1hrLYbH5MXhBagPfE2
         BGJ/reYLfYfDOMIVB/NiVcj0qAt6pjPY9ikwfRUY6P/G0pPp8OIH14QeIpDqsOGiB4TG
         nXdjS6scDSrPyjwI4/UyskDcjqzhyNMBkhR8RtYUwqwiRWwsu/B7vM88jbJaFlXVVNrn
         N7ClI+2FsbVDw9QE///6KVX6yyagwclLB/Y6/Bx1Y+5qw82FPS78WVDP4Pt3g532v4ll
         Lg8A==
X-Gm-Message-State: AOJu0YzdjBIY/nzb911pCdDgcCH7UmOtpkVgh2HCIIb/lEFwIEReR8qG
	6/x9A/jk4ppWG/TXoIjNXdUhdLUsbF8iXMXb8bZeJyjPKe8gCbjz+n9idit0Vi4=
X-Google-Smtp-Source: AGHT+IERBspR/BOG1bTBqBY4Y6bfWcD0fOJHyOWkJ1LLmNscXmuRLmLuU5s0xeNWt9RRyzLTJhBxbw==
X-Received: by 2002:a05:6402:4503:b0:55e:dcdf:50b0 with SMTP id ez3-20020a056402450300b0055edcdf50b0mr1828652edb.15.1706487961084;
        Sun, 28 Jan 2024 16:26:01 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h29-20020a0564020e9d00b0055cfb3f948fsm3208193eda.76.2024.01.28.16.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 16:26:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Mon, 29 Jan 2024 02:25:44 +0200
Message-Id: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIjwtmUC/5WNQQ6CMBBFr2K6dkw7TS248h7GRWkHaIK0KYRAC
 He3sNKdLt/Mz3srGyh5GtjttLJEkx986DPI84nZ1vQNgXeZGXKUAkUJs6CCC84htguQi2DDK5r
 RVx1BotrYMSQotJRkjbbWGZZVMX/8fGQez8ytH/JsOaqT2K9/BiYBHOqStNYKSyXdvfO9SeESU
 sP2woQfVsQfrZitplK6uFqUqqy/rNu2vQEn1po0LwEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1980; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=fAzsOPWQXg496cQXdSRwttLRSK17eobKfvDNm7cJwnI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBltvCQBfS5UyZzHhV0GQwwQcciT4hN0x/JoP1/G
 prHeMx7m1OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbbwkAAKCRAbX0TJAJUV
 VjrFEADJnJpjIiS2JY5iAhr+bwymSv6XOiwMhJ4R5gRXky2QknEdN7w8QdUAGoS07hIU4ZeZKU5
 4Kk7X6k8N13FcTvv/Ht1o+l3wmqIalhWQh4dZ3cM3eF/E5bNlEDeU8036WLOhvjJ0JGKG9PAbkN
 3bs/fH8DxEQ1P/phajqIl1H1lzWqu2irPh+c5CkDeUuaLj3FdCLTOHPIF8YS8Vp4kUpNosfk0vM
 gBAuV8+n2fylK6tg8MKzHUDb3ReTmrvLfemSWq/wbKwz6nNu1RyPA3pb4lu3NOG41ZQAaw2b23a
 MjVgkuadPGVWqSPTALwhB8FlxfX+SQ9hmpD0yFlWXOqknOZ9hXt7xBIos7MCWNwNdf2c6n3uD/M
 rjMUWV4yvrKK1ZrJW/34XfANc8E7Nt7yKDj5RrwdRakP18BOyoggYkQht47G/50ICnNAK4kNtQW
 NSL8UfHuws+qy2HRPME1/c+6g/3mggQfIWEgwLAKqO24eoLWnoYvYUVI+fpD9r0UJLJnndziSAn
 4eMdvcoilH3189B3ptkwTgmfjyt+hFMpoGRbqgJNmfAW2RsR9sBGVD3gui2xPuG7hUuDeYYw+4+
 8FZdDSfWWdBq4CgLknUIzjVjt02xpgcdW4ythAC5a9B9WleDfsG/ZC5S2LILtuvPI0pEhnRgDnR
 uwQ62LSjJwkC52w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_162606_090867_FD1FC811 
X-CRM114-Status: GOOD (  10.68  )
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

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the submode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Dropped needs_swing_pre_emph_cfg as we store the table instead
- Picking the table based on is_edp instead of overriding.
- Link to v2: https://lore.kernel.org/r/20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org

Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 54 insertions(+), 20 deletions(-)
---
base-commit: 72dd5696a6a27d019a1592acbca13263a2ebbac6
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
