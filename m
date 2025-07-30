Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72466C87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSm9BLavPAh7ZeCs7W3Ijzit+9vDgkjMqU69Z5LtFVc=; b=MR1x1WR/uzxmlz
	9nsbDFVKVnBMZCeZsa/tNnPFB7JipupAl9yuSkq2pcOmImBN9nqLutSps4zY7u3uquRTKo+0ZwHUM
	A3zTNg4jsbwlu8b5Pf+ljZafn0eiLxQCi0bp8JbT3w04HT4YeDAl24NR3S1SlaD2HOlkrnjkRSyOI
	k9gh6RjAnHIsmOOCQdjJ9dAHYBfyHMaXwcY8rtjSe1po0syfAupYg0/TGRkRTCRuLC9W4/Ar2uX4m
	wqQV/GxJN+xPztIr9ItoL82ltrlBSXfGud1vMlSq5GrbrG9AM0nP4T8XTrECiqf1yR0v3lTGWQl9L
	KbUki3Why72khVmDDDXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5tT-00000001Src-0aHa;
	Wed, 30 Jul 2025 12:26:51 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5H1-00000001Nhg-3M8f
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:47:09 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b791736d12so1349767f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 04:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753876026; x=1754480826; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gDvSgqMNHa6pK6/sHq8aMUOcGLW4HtPHI+Zx0q18Mkg=;
        b=QaMaUq7vPblByRtL5xLCDA9MhBbwSvU/yP6aoC2VCiUpLd5vXC0uYMi+tDaF8SJJ+I
         66ESr05UBxyjbKh+yLqdVZP3OnGzgfO89mdpqA6mtQC5lXW10ra9W0D69N2JFr7Ll8Av
         wbnrjXFa/nPudAsDPwbyGn6Z5VOkgGOuz9f134rLy+lqDHCbfiul2FEtxeyHBY4ukcZb
         +IsZp8Sj1WQMIsjICM/DQlOY3wk3PuYSkkjYMal0T1APgzV2vYwtkzL5kNZMrSvd1+iu
         HTgnK873hjyzjByrsAcm9JMmR97HVIN91eRFNu/bJYWNUN4v/reI9ArADF3kDCcJklZD
         JYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876026; x=1754480826;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gDvSgqMNHa6pK6/sHq8aMUOcGLW4HtPHI+Zx0q18Mkg=;
        b=nJmtT5yxZHPjEAgb6U8rBdVn9ihenUWfvBSk2TA9a7l6hbKdZxXbpGOulbPLjkfrKX
         FOoOAszHbnoGjGMQLbWNqq9thpvRlcXbtcE2+uI3+7Azkbe1GzQjjSnAB3tqrMzOxwRk
         dIOrYLlvTRwNHBKPh8nWKoIXn6FnX5QJwsZwCQ7dU6STpJU8ykpxeIwHx9kcYqz6DPky
         mWjlTkMahvL1WjIjZ/kgKx6IQzFA+rTyfDUQGepsI6SscF+QmzhGqbg82IIvUFTUj2BQ
         FQt5ILE4DZNjLTLCB0Pi2Pwx38+GYdHp2NXXvuMCjBBluP5KMg3ZDKe1sz/pjzZdfcBo
         8yIg==
X-Forwarded-Encrypted: i=1; AJvYcCWfdiPF2jewZ8XqO3Ow+7NhQAon/1EHGVMf4CUOvU+mrvxX0mKaqtzQZuMUIyMn7qfmtMUKXi2MTdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YymMYgiXhDwK/nE//HqEDEfA9pvJgHnLIf5SYKOWhDKyzLm7LGF
	og75T3AYZ2LlZXbW3ZT1uFJRMMFjmCn48HYbKxfE4FsQojruv+L0jK+Z4MmMb7z/kOI=
X-Gm-Gg: ASbGncuE+2V2fcY0PfNhEhHcqWeiBQ6QRUSpA1JpMycRwCKdLtW/LyjBWrLSMrjwaFF
	paayO8DrnscXfMe8PKi2A4yHkRmrfmX/gGv4Hu9IO2h0kQE48TEde/SL4Dbg7foOOzcaI/lq2XU
	uheBuc/65eUSdWUgclG+jbpyb5FktBq6Rqn1MZ2vm8nx4npUZeNGfu0sXppdoHXwTqzMLFXfmZ6
	UDvPg0lUjtIENGg76pD+6ha5CN921aIXNKejnaZPIHSBxJbZQAWvPef3O6LTkgTxhYg2iMyrio5
	CeZdAgLXYC+d2jRWKT2lxzXB6KJ6QMr3uzKI0QedRno8460sB5mA+RjvSN59o82UQ5i+dr81xzj
	+M39pOLI3HHrCuAItugbJ
X-Google-Smtp-Source: AGHT+IEB+YwR+DpUWl96VRVfJqnHrx70aTbCoi7WlBph+Pjdsqm+59fGnyFfLtjJThrUZcQTfhLunA==
X-Received: by 2002:a05:6000:2c0b:b0:3a5:57b7:cd7b with SMTP id ffacd0b85a97d-3b794fd735emr2401593f8f.22.1753876025818;
        Wed, 30 Jul 2025 04:47:05 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm24503235e9.25.2025.07.30.04.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 04:47:04 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] phy: qcom: edp: Add missing refclk clock to x1e80100
Date: Wed, 30 Jul 2025 14:46:47 +0300
Message-Id: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACgGimgC/x2NQQqDMBBFryKzdiBNEcWrSBdpMiZDa4wZkBbx7
 g7yVu8t/j9AqDIJjM0BlXYWXrPKo23AJ5cjIQd1sMZ2pn8aLOmPm18XpFDQhYALi3COWGn23w9
 27j1YZR6oB10p2vl3P0yv87wABPjbrXEAAAA=
X-Change-ID: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=976; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=PPzsEWxbNLwJQ4PFTPPmrbQv/VqLl1WNdraoffF/cFA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoigYqr3oqVDq6QF5yX7prai0WCXSHnoIt642Xl
 k2knTASat+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaIoGKgAKCRAbX0TJAJUV
 VhFtD/90XNK6iKLj9l8tp9cBMZHm8XpbvrPknsAXmIwTAN0bf7mbmn0O8abBJS6Zz53LoIBwsYW
 zbuIkOlJUgce7OBnWaKSXy9//hp7O7lqqstqXvl1sxx8w4fn+e2fPhCJpsmgvUkiz0msPEWTxVR
 5AhEeYO+nFuc+4qg0dwGxuM6Sh2o7tHEa3AHW/5ZiLtp/33NgrpJAu/5a0nCP2CsZDSkqqXsGMS
 FbDoEvLhsMvxOO5B/bd1Fo0etapeXDHoiVdJV3qpz9b5wWh4xcOcxwGdVoUr+6RQ2oNWKKsoANA
 e3f1XD8DMT8DzwzLuHpZO4Njrj1XSnq6fPP2xwY2T6RDczym+Z9iSn0cuUSHH+eFGXb+HuzI+hN
 AfW+hFJkA5CNLAzgc0BmkC1ubNNYJbFt0JlNikfFE5sEbJtl0ny+fEXaVS9NkNZ5yN1or03P7Gb
 5Ffmngi6F1knLNx/9PgpjghBNwD6RIKaMAPQmo1ETO2k27FlSohORP+BiYpwuKKLKdh1UMKXf8J
 y73HqxdrSrJp1bGmuY9p7xJilZiLbP8kQbSukUv4Mi0dxcOxEdN/YTRZzQjjESN2w6uou39FdtS
 5tgrktrmYUHURLI0sESp6kXhlUsLzupQQlic4ePtbIvhG+v69bQie0ZWvcbueUtk8hauJAsYMQY
 bWi6i1nKftduGUQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_044707_869794_55F9BC47 
X-CRM114-Status: UNSURE (   6.49  )
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

According to documentation, the eDP PHY on x1e80100 has another clock
called refclk. Rework the driver to allow different number of clocks
based on match data and add this refclk to the x1e80100. Fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Add missing refclk for X1E80100
      arm64: dts: qcom: Add missing TCSR refclk to the eDP PHY

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 23 +++++++++++-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |  6 ++-
 drivers/phy/qualcomm/phy-qcom-edp.c                | 43 ++++++++++++++++++----
 3 files changed, 62 insertions(+), 10 deletions(-)
---
base-commit: 79fb37f39b77bbf9a56304e9af843cd93a7a1916
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
