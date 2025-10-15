Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08107CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 13:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cvfgfz3P5YPQPoadTfITenBRB6tW7Hmy/buCShd10h8=; b=hTZTzY4UfHS/nl
	VHpFO1OeT45SCAFZTID7N0M66e6wHN04SnlferXDttZyCxsRI/T5QN0BwcDTk/lVMEXVs7hLXStJA
	TcCSEsn+evoudwQQIhblVGf0Y0C5O/Y73DJgmVP+e5j6fJOJN0+MBhaHQBO4jNrSm2kWlY09JiG9D
	ljzloUZMQFM1UaHoEnhS02E58FnNz+V0Q8sWJ7aysFmdMIZGFLVLTjz9MKw6t/VdgJQubFBDkBXQa
	esJhfsdk4BYcXU17zvsFDgG6bTjq6bAu7Sp1WJQpMen/jet6FgT5YuwG/wwsi40n/A53XdYOW7qZN
	vWMebf5wj6ZsWgSw0Csw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mn-00000001jqo-2TC0;
	Wed, 15 Oct 2025 13:43:25 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mk-00000001jpg-2wdH
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 13:43:24 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-46e33b260b9so53233775e9.2
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 06:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760535800; x=1761140600; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1wPyexKG43q2S/sOO7LTnlneSVFmXTxcSi+s2kdJX8=;
        b=g0mZH13nX92AqejCqoDDHQEVXrWFvi+rslkP7eTDn/lu1bgkVD/nO9pbT4xftPr+hV
         WIsTwePy03HHXvfu11Bj1ydmG3169noBxVb4Jr6cZEbsmDxMUzPPk9IvbO8FF23sBV4/
         KBVdv1EUvL4v0IBNNV7bUSAdlimX2rMn6sqSHV3g2hqEbbWP9dVaNMsDozgyvWlU+ekW
         n4yShlgWZ2oafo/TUEI0PUVyiw6ZDvUiVMeYvGqLxGLpC/I4FN8faVLDgkJtH+X2gB64
         hXF7FJa8fgXnVJZrweAGs82ZxD01paS6DtGOyJ2HioNlakk+biUv4kjS+nKDnm2rFbgt
         5MwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535800; x=1761140600;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1wPyexKG43q2S/sOO7LTnlneSVFmXTxcSi+s2kdJX8=;
        b=UMAlbkY3W/P6+QOVRqZCGtfoIZMqR64sR920odcdDXOdNkeiuneARv+O283Yw6PfHK
         AXMfmBWU8o2O2tSXZS9BCPZK4nw4UJvdrn2nP8Fe2X6IpZiR/M0taMBygdlTrhVz3Y3/
         Ic8rJbYtH641mncvyDzlMIV3tm8lppH+YXfTo2sT5CNpHoPdf+NRpRYevcCovY6LfV32
         phwKWUR7lB6xYI/UhXlnU7Jvro+d61TGCNn5fwBPBwT3XGMi35KhtLrlQ5qyF0aBIt5J
         8lKgz3TO/TKIZxbzdUmFgTYulRQvOXuQ8clUQrewq9si9pTkN/EAyPsjP3XfzeJq+sc6
         J/sg==
X-Forwarded-Encrypted: i=1; AJvYcCV3osZbgjBCJWsxnmjWClDtNTXJ+QZ5XoymdTzDMoDKztZJAAdfKWv3rL+HKkvo5pZxVHuKf2886QY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzZG5TCRB3UYsg3cWuisFM0QFUesE4nmaCHL7nM8cqgwbt5BXj
	FS/3bUJEw2sdBSPMdaNAE5JsRoZ+dK0Vf5tFOsPB5FZ39EGgxwTgoRzrJrm0fffv+1o=
X-Gm-Gg: ASbGnctLcnNa0wMvKWMVEBeYDQssK/6hLAHsuXjpuEjqVCGr4lQPq2oZEpt0nbuQQ0H
	pXMwF9Zb4rDN0X/a1Srj7/R4o079+GjWp5vBqEDe3x4MXF95v2QEt3kZPik96LLs6hVBqARbfcD
	SqH4m9Lr5ASP4woPzDgBNZxcqx2Pg082pk0dhM9iF/+tq/363uBolm/iY7E8RGE1lkX6vRIMe+E
	pBn1b6kpvgaMtcd3rsHJIFc9SElo/QklpbDo0+1UYrctTomcCldmF0sScs6R8s1OIx2Nukji3NI
	4i1j3qApsat1TftsUjHfE3zfn2ku36dB4Z2p9v+IqnVKS+NPHOS3/4imWMXQMLj5j8oBtw0s1OU
	PFwJ3GsypgLIGzWXduVScGJ5qpnf/S88SBtxHHeVNsrTZ44HI3v/1UA==
X-Google-Smtp-Source: AGHT+IEDNRHiLd8V84PrJutxE1YijuILSF7iz1WAhlDVrmP7yEDEZruWiWJN5TrIcrfXwM7BNuLZug==
X-Received: by 2002:a05:600c:8718:b0:46e:731b:db0f with SMTP id 5b1f17b1804b1-46fa9b08f09mr227911015e9.28.1760535800346;
        Wed, 15 Oct 2025 06:43:20 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2d65sm174180795e9.2.2025.10.15.06.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:43:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Date: Wed, 15 Oct 2025 16:42:53 +0300
Message-Id: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN2k72gC/x3MTQqAIBBA4avErBvQQKGuEi1MJxvox5Qiie6et
 PwW7z2QKDIl6KoHIl2ceN8KZF2Bnc3mCdkVQyMaJYVUGOaMh91XDJYJjXPol7yeEUWrR+1aJSd
 joeQh0sT3v+6H9/0Ah5x2PmoAAAA=
X-Change-ID: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=832; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=FEcVeNXEob3Or/fjZ7160WHo5UFeG3NUjybRm3Y7qg4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo76TtfQlQuLUSfyKLYFG/uNYaVXKOdeybOqKUw
 CANF2gkaCqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO+k7QAKCRAbX0TJAJUV
 VuYTD/9z76fsMU7KcN1pWMXDlk/BbOnYznrTMostkjqtlquDHKwCmR3JlZrNGmuKS4loi6jfwvT
 JuSmX5mhIFJcnjpJVX0fSETN5kEmZ3bv4VknpJlawrbX2c4eHcyB07TzyR59rb6AZrkSMPNM5ZF
 hKsTiliyShykTtUaFogjA1m9Ggo8YcYiqDImGHlCv9gxPNDBYxVYWvnq1/c5WjioZV7KJR71D8Y
 c5DU31kG3/noxD9WfODeHssg/bZiiiA6RT3Up7xi46FA8GbXm3qGzVm6ADJhoxh3+jlp8oG06bv
 931BXbqLTIKxnyxOmzAjt4PXdy2vQPJR3pp2gwF3eXbymMWJCZ9Q0Mawa7iSEhoSRsFAOL2M8Vg
 PqKOqx1JBXxq/O39eAN4U7p2MxAJNF9eCkyzW4QZ6pUdcdHEO+ewQ3SbcaRwKV+fuJOlVrcuyBn
 VZV16NE5rVoomGpG7WOc4ZSZxC5Fb/eLeSTVfzX4f11SpdDPUvgN1wMJTqVXyUGAibw9wWIG2sN
 22eANZxkDIx3gtliquHadOS7Rope404CgnTJxFlF3KzXTLnYnm9ux7uJ3zpcJr9SgwjQPKcdSWj
 7/fs1MQbiJGrcoMVwnyEwko7Nw68nBuz6M2O12X95DGAseINCwBeiBEwSScfIucRlA7bbMjNxGN
 VPFUwG9KjHNNTUQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_064322_760209_70AC31C3 
X-CRM114-Status: UNSURE (   4.57  )
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

The Glymur platform comes with two PCIe Gen4 2-lanes controllers.

Add support for their PHYs and document the compatible.

This patchset depends on the following:
https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 34 ++++++++++++++++++++++
 2 files changed, 37 insertions(+)
---
base-commit: f6d12bdc035bee8f83ee6735a0c00b5e0c7407d4
change-id: 20251015-phy-qcom-pcie-add-glymur-096b6d951fac

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
