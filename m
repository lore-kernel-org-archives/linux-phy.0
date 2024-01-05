Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0860BC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DD14n9p5ZkA58+/7/ekiU3OzsyyT2TAejKHaMPz1LW0=; b=cw/CAtxg+fqZtw
	dk/bybZgF07Mx5pWgQ2mawI9zk2Ets33O09j13gRfMx6CwGzNgdl0qwvtJizd+QHhlsChX0+40Lbs
	8LwSQyzIagnEfKj6507KJTYzvaMMvH2Ic59k6ooddVsXGt4T/1d1czZKWwTN7i0w1XLVfFRTB9nmI
	0sajAU/FjS7og5vmTmfsfFIt5B29EjhqYDvc66gllEcB9c1sW1Kq9I0WpIAfjuvUKgJKno89epto+
	wYHC22Jc5z8Y76DSY0aKnGrYIoiwMx2H6LRRbrfy8/TQJKz9EqkGDzb6SAc2ZyGEqVYYcq7BOj5bw
	Ld4D7VyhLxFh2ueTnKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFh-00GVCW-2R;
	Fri, 05 Jan 2024 10:16:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFe-00GVAz-1D
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:16:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a2967a6a86bso26132366b.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704449788; x=1705054588; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JEdYVhrehgTxb2xPeGPy8ZmHUEqPAqYAW54ixn4xFbo=;
        b=nO4aEbdhqn8/3r700VNSZ1KulL9D4t3evFWanQtVJ2ptT/hhgTxXwS7LzgvgArJxgO
         oonRUx/rsaBDeDiS785/lCCVBqZt3pG7bGpB7N/vQrPN+ghQ3qkwqMuf2cRyerJocOWO
         TxWQEgElnkSmaNUIvnf1oEsOOKtOgj2Ov38m+2+DYSDf8qnU09MlufLfEmZVHhJXa16R
         cDZsNNZSwe199AECKT9NmEgL0f2IKj6TnQGxGTiPhJZiVHAFCne0I7ad4m5UXwIftsV5
         dnsSV7PspdTc/FoKtKSHe64/zWCNoCoBkvytbT5KA+1eKoW1fiaGilFNaiKTKv469eXa
         djGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704449788; x=1705054588;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JEdYVhrehgTxb2xPeGPy8ZmHUEqPAqYAW54ixn4xFbo=;
        b=vJZfHcBHC7tPAiyQ4yTUiSecqr0fsZOO4JJn8zUD+5Q7QQQOuU4y+MNyQzzxXJx/jq
         wsPhgawwaBvJ6vixRhCR0z197yXfAN0jWQ46P0n6VZL3MGwnw3JnkstBz4+Kt9P4EJJp
         C+wFekvOBHvPNpGMy3Cm5FBIi7Xk/wN8Mtn08gAP1Ag/PpXNvA76fN4pfsIunebYEQGF
         Z4rEcD2pwJxllqlQ776jQ4SwLbf3gtypxIC5Gz4B/pmptItfHirxEhrMz9ChJpU0Sz7k
         hzQfGuJFsnAFOD1z9ekegAwTk9tWCTDmnTAwaqA89m0R02iL3klXGfquD3r6F865NuBW
         6STg==
X-Gm-Message-State: AOJu0YwHaeYm3kp6f5gxvT23JHQU908cpdBx6zdWWFWQ60yJPkN4fW31
	N+Uut1ujUgMdPlUm6teshoAikDLG6AuFEA==
X-Google-Smtp-Source: AGHT+IHXszKz6YoDG5ESGGOO/jQA7HvVNO9DLvuBEm1mEOAj0fYQG14FVh+OjKPjAnLApWAgadvYvg==
X-Received: by 2002:a17:906:c417:b0:a28:e546:1efb with SMTP id u23-20020a170906c41700b00a28e5461efbmr1024879ejz.115.1704449788331;
        Fri, 05 Jan 2024 02:16:28 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id o9-20020a170906358900b00a2824bff5b1sm713180ejb.216.2024.01.05.02.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 02:16:27 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qualcomm: eusb2-repeater: Some fixes after the
 regmap rework
Date: Fri, 05 Jan 2024 12:16:15 +0200
Message-Id: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO/Wl2UC/42NQQ6CMBBFr0Jm7ZhpS0RdeQ/DgtYRJlGKUyQSw
 t2tnMDlez95f4HEKpzgXCygPEmS2GewuwJC1/Qto9wygyVbkqESh27GV4hP5HfyFpUHbkZWvMu
 HE4aTJWOMI2cD5MagvA05ca0zd5LGqPN2N5mf/bc8GSSksvKVP/ijc+7ykL7RuI/aQr2u6xc16
 E+tywAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1305; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=xkpoCUfYUnRlKp4mUYR1zyLDW4HOErb0ofza230yj5Q=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBll9bzhtIy9JFvKOV55EJCAuxUM2665z65pjA9O
 MV3tU+LoOmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZfW8wAKCRAbX0TJAJUV
 VmP8D/9l8aBD7nGZ4ofFcmrf5G3oLZn5pbgBkzkdf4mNvLOVgcjfcwQkpL4o8Z75Px8herVyJk7
 SjZYUQOM4TsUu69JNQIen0N+wcaUJlH9OWtIwOLRStJ4cYRYY4N7XXwwELbU2qJhrS2+PDOKHSr
 ztM+2YpCIojhFOhwT6FgkP1OmXiXKu18aQGJHBSTnni1SnFRxXqdld5B9E1oSJgs9r/twfw7hAN
 Vbx4v/aUZlGzkzIqF+/1G2d5NHCd1iADCY6fGWIPiejOdxkUfAmvX9fqEYK/eAvtqVs2YbHRq3u
 lx+GxR8OiUiM56vbc5kUfxk+RQp6cjy7LhFWnDjbF3ra6yHblL4kdvK2m25ZdHvTXzpIdQxMOZh
 zoZccUFVyaO6uY+fzTK0XOCSuI/bnwTMFcBGvtBpEjNDjwFHWP68pMvUqxaXZ9/kTHKitLUfxlB
 mfo29Oxqx/e36B5KGtQAA34RtBtI60a3VOOTO16UwDIAl0mLJ6f/9zjFj7rhcCg6pNl897KJPLf
 Q0QneGWztEmEDnq4h4eDrzPXz14MQWdku8TYN9s27FTfcWLcqGghDx10Rb4+rze4N27Fltjufhb
 VbG4GgVc5P5fqJnfy3B+eRtlIwndJ5Les4ut97e7M6V2ekcCHrjAmM5l9+dyWbs6jKpH14NFy+5
 rHH8bPJHkr1utyQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_021630_413481_5A977F42 
X-CRM114-Status: GOOD (  10.16  )
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

Found the first issue (from first patch) while adding support
for X Elite (X1E80100) which comes with more than one repeaters.
The second fix is just bonus.

---
Changes in v2:
- The regfields is being dropped from the repeater init, but it's done
  in the second patch in order to not break bisectability, as it is
  still needed by the zero-out loop.
- Added Konrad's R-b tag to the first patch. Did not add Elliot's T-b
  tag as the second patch has been reworked massively.
- The zero-out loop is dropped now by holding a copy of the init_tlb in
  the container struct. This led to dropping the cfg from the container
  struct (see second patch commit message for more details).
- Link to v1: https://lore.kernel.org/r/20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org

---
Abel Vesa (2):
      phy: qualcomm: eusb2-repeater: Fix the regfields for multiple instances
      phy: qualcomm: eusb2-repeater: Rework init to drop redundant zero-out loop

 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 53 ++++++++++++++------------
 1 file changed, 28 insertions(+), 25 deletions(-)
---
base-commit: e2425464bc87159274879ab30f9d4fe624b9fcd2
change-id: 20240104-phy-qcom-eusb2-repeater-fixes-c9201113032c

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
