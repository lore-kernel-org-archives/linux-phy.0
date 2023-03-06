Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4DADC64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 16:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8Acp+WcT+IFFvk5MPINPzR6S7/NGQ0LBn0Dsa/k9LQ=; b=CvuaIpAsiU7SL8
	N0BPBlSmNyZzAA5xcRFLoMxii6WpHNxgou0ohH2m4DUVcZHYHDyK3zJssoJRCU4rgWlNOXnMlH8qQ
	DE9tpg5bKhb7WKRW3cSQgBzXqtA8LFTa0k26pf3BtvJ4CJ0Q4CPV7pGniFNlWw+4dbHCiL8vtkegR
	t2o4yazBIBhz/NKWsYR22pXioMR6Fi0fgC7Voq77Qj8p1LOK0d0KxirbGaScYJwNN9brRbYA+HD4Q
	up5LdJ2LC2ajImG7gHADMFGVQs4VWkA8X3mFPZxi66FuQcKZWuqB5+GtjhJuxds1l5VR45hSsUoQR
	7pcFSdq0X4lvTTqBkzxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE5i-00E0qa-BE; Mon, 06 Mar 2023 16:53:38 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE5f-00E0p4-Qk
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 16:53:37 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVl5T5HSCz1S5K0
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 11:53:33 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1678121608;
	 x=1678985609; bh=FkAuJdcUu5FTTMaBTqO+u5YZNyEm3L8Dndam8ecgfiA=; b=
	M/nnsDzZswXZVVFEJAN1FcVMLEaCBvLsovf+LPgfSa2Dk4uv+fLhmR04H5dG7LQI
	O7Vjon5y/YvZhXtupglYTCNzMwFX6n2sQu7qd5+NE5x0zFy5PTVp1UirxWZ3sYAA
	abuDpPRy65bDfEH+bxZDG4I7nPxy0Rx9YGoXoi98/BspE2slN8iJehP6NKg47mab
	XS5PD15WkmKgyjSJKFVRW3Hyai5AESbEjv4mHoPYwSG/6MCyIF2tYVOpU6xWYiV6
	ClkShDfOCyFT1uKAqMfi4R0mR4B+0acwYJtBOs52HRlQjYuSmcGsSZloh2XUGHdH
	trUefbE/wIlGLh5+KzwmYw==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LsWqUDTtkYeX for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 11:53:28 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVl504TX0z1S5JW;
	Mon,  6 Mar 2023 11:53:08 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible string
Date: Mon,  6 Mar 2023 13:52:40 -0300
Message-Id: <20230306165246.14782-2-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306165246.14782-1-they@mint.lgbt>
References: <20230306165246.14782-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_085336_031376_3237C98E 
X-CRM114-Status: UNSURE (   6.74  )
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

Document the compatible for UFS found on the SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Martin Botka <martin.botka@somainline.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index b517d76215e3..42422f3471b3 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
+          - qcom,sm6125-ufshc
           - qcom,sm6350-ufshc
           - qcom,sm8150-ufshc
           - qcom,sm8250-ufshc
@@ -185,6 +186,7 @@ allOf:
           contains:
             enum:
               - qcom,sm6115-ufshc
+              - qcom,sm6125-ufshc
     then:
       properties:
         clocks:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
