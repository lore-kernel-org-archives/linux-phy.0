Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87D5BC41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 20:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b05O8Z4jrjzqbRuL0eQnnDdfWudHiuiJFof5UDfmf2k=; b=GPZg4ZXmXli7kQ
	EjGMuEIQ8J28Rf0XLbcWsYDWz2B7/ugBU1v2HWSZBbNgA7mCtAWGhr0QZRIEXmG6o1ryEDvEuHIVf
	UxA0kU+F9+uYYjdn39c7x5znFwnoEleQQ46GXpI0LnEtmefRLySF1lbRwoE6C4c5gZCvcbxk1pYCx
	+A+hNFElZQ+uFkn/f/qIYUadc+pbDrmA1VDLk7AYZFjfV64vISBMwSu8tn031NPxB7CmVtak94ESB
	9gM+IaGCYxU7aXn0HE4RGaKcFHUaXhPoK3RB/fpJMVaajARuD5F0zmlOGdUW5hBm6MhvUvHR5QVt6
	l9gc1h72kuWUYZdwJYng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7s-00FRsG-0Q;
	Tue, 19 Dec 2023 20:55:40 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7p-00FRr3-02
	for linux-phy@lists.infradead.org;
	Tue, 19 Dec 2023 20:55:38 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c256ffdbcso59044615e9.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Dec 2023 12:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703019335; x=1703624135; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=80CU+yeod+Yt0peXksdOGK0+bUEHvW9EJ+C21wPANvY=;
        b=yAp7XuOpFfbzmfYGwDFBXKG7LcP9hIZGtVsI3MiWtD602SeQodTcs2rIdD3hcfykzI
         WS+MS6V1tCICGK4riWF5f6JlVeKYFMFqLu91PeZEqb5sUnAa/F008dWyj5Hb0diAPvZ5
         jSfIRmMOOhyMT4xz2w4n1QnbbQaNJT+1VA3RikOReaKwGt6YJpd6Yd1MWlfywic978oT
         p0pVNRnS9nRBqPVDn/Y0+TaKpBr/Nx/3o8eSbhVZB7Y0jqUKzM+T011YDivLla7fzKEi
         s61ZruOD1xJcRJ/r3IxQcTrQIIUleZiHY5GV4raO4MzQuH0+WNwa7ccOCt7PluEpKLDo
         dF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703019335; x=1703624135;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=80CU+yeod+Yt0peXksdOGK0+bUEHvW9EJ+C21wPANvY=;
        b=wnYgjzdDSCwoM/DOECaAPGT6KVrKTi7gKvXLuVQRLK4xiHNa8zKxBSwiPgPBXTKuDu
         Mngwb1BXTcc1JeUyehzHbsmxUXksLu52K/NzS6+0FcZx31GkM0agAaReZZpsyFXoStcb
         aj6mL1vUzstNWbM4LP7+3B3mXuTtnh9Hz71PqYU1yEweXPqGQ/SwP6Tvc5JjKjc/S13B
         fQzhdWxXeEbh81BDpyhHvPwUk362fbmsxKZ7PMtUflhaFHhEaetbnDrg54XicvO+27W8
         JEE8z7oqcLHASrE7BKU+hKyRPK2Bz4QDceJgji1T5OK9WgCsSicURb4Cr+A/65S8AVt1
         rmMA==
X-Gm-Message-State: AOJu0Yy8EFngkDKxkC3cCFKFgEQ0SQQJ54EnqJFhRfxck6cMYNX1TA4O
	rsyU+rOs2kC9GeRHFccbBZtJGg==
X-Google-Smtp-Source: AGHT+IG2dugVLWFhvm2ao0v3lUBqXjvW4cAitD3xDK8EpHvuzvTUVzY5T1+Pd2cLf38ZID5QrW9HRw==
X-Received: by 2002:a05:600c:4f8d:b0:40c:55c4:45f5 with SMTP id n13-20020a05600c4f8d00b0040c55c445f5mr6740557wmq.132.1703019334725;
        Tue, 19 Dec 2023 12:55:34 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v16-20020a05600c471000b0040c4886f254sm4460701wmo.13.2023.12.19.12.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:55:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode
 configuration
Date: Tue, 19 Dec 2023 22:55:21 +0200
Message-Id: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADkDgmUC/x2NQQqDMBAAvyJ77kI2OWj7ldLDdrPWBTUhkWIR/
 97gcRiYOaBqMa3w6A4o+rVqaW1Atw5k4vWjaLExeOcDebrjTjo4cg7z9EONGSUtmTd7z4pFR5Y
 tFRz6EFS4F4kMLZWbsf3aPF/n+Qcm8na2dgAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1833; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=cxCsK5pPL1ouaTVUEaXGUdmvdaQ8uvQZc+vq2k9i0C8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlggM7F52Lzw+szjnLXv9iiHPEH0//KIcZP3WF1
 /Nqreh4KdyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYIDOwAKCRAbX0TJAJUV
 VqOPEAClwnP4muEViar7Pb7gz1K11YvF4s3wy1cyTi7Vldm+EETsNmIs1GVulZ4Lhds7FQ8sdZw
 63s7myZ/N7rSOXn/wKN7cTsS3OVW+xwAtUFwKjQXk38va8EsjFSZZC6ZrmHl2YCWLFG1giptxFT
 13xKGLZc7Exc8d01N055F0h4IqPvXVdHfapdzMnLCiqkgmBOb0pUMSb26Fi2lZn+KnUnE8298Dz
 LbJPUM1Gbq5+x3v4qfe+na5x2UWs8JkXzCrmXsnchxW9cMIa/hnnGtGwcqtfzgdybb8kToId8Xl
 6t3ty5zu7SW2ror7cJJCza7k7aulPQCBdm1KJU472XlJOwnoJ0jGmpbkztHLYPGPAMEgaqHXq7x
 0Dxs3F2XHqnk5LJock2fOIUgfrNP5za9MGveBr8SP5EFoOlr1Fc9mMkU5X9yuPi2WVkzvYfaKNj
 JlV8Mq2fCZwmQ8FzFUM8AFaayfWKwNyCFDd5gqgi1PKqVD/vVoH2ZmIXXmg3tYLqTO3E2ShLunP
 xDnjtPTSCQ7dPxo23OKY4sqFUVoQ+KIED4p8cO7pfO5yc+h9q5BVUZ8JjTGRiyLSu2rIpW9HkKx
 y0yLvKbohlZBvOIrrQDShsbEtzLZ11u3HgPYSSA+Eypizo+UE33ZMG4Xo662ePBSlui/f2+2qQL
 j7a6+1L4F2LdrwA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_125537_052121_B6A8BCDD 
X-CRM114-Status: GOOD (  13.18  )
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
method, we should allow the mode to be configured from devicetree.

There has been an off-list discussion on what would be the right way
to pass on the PHY mode information to the driver and it has been
concluded that phy-cells is the way to go. This means that basically
the controller will pass another value (that is, the PHY type) to
its 'phys' DT property.

For this, we need both the bindings value and the PHY mode value to be
added as well.

The controller part will follow shortly. But for now, lets see where
this is going.

There has been another attempt at this here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/

Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      dt-bindings: phy: Add PHY_TYPE_EDP definition
      phy: Add PHY Embedded DisplayPort mode
      phy: qcom: edp: Allow PHY mode configuration via devicetree

 drivers/phy/qualcomm/phy-qcom-edp.c | 89 ++++++++++++++++++++++++++++---------
 include/dt-bindings/phy/phy.h       |  1 +
 include/linux/phy/phy.h             |  3 +-
 3 files changed, 70 insertions(+), 23 deletions(-)
---
base-commit: 0e182d9523f6c0af49357fcd812eaa702bd4b403
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
