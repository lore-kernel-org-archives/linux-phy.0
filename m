Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF47A606D80B
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=isDajpgO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NoSuu267
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5WjLAju3IqEQ8GrCBapwhm0sa08t3YS0Ezh9ONnAjF4=; b=isDajpgOiAA9Wt1yQF1hsWJjJi
	uvtChg+6aXHKLqbQyLB4nBr3SGqFzuQEGXCRIsl8cnKhNuVMiaJIhTfzuNyhpZOqib0VX8e/LXv/F
	B4IEIRH4dHf9XLnymu/RD0kNF/5aDw/YGr9/uEmMSAJvJ4AAKxpAz/4pj+oUBLXwGobLDL2TJkN+J
	L0yiYpdhjZ6Fnz8+ifWJEhEEBfAEBo5OYB/zOaN+HsG45MDKsXRMMDzS9wRd6mImZrmdBjA0PWP8e
	vcNyJa4bsPmbOD/8+WarGLZhzY/Q24qpT3QE8uRfh+2/W+xrbb45KDwDXtUtqrDGYoJqBrWOKq5xU
	MgD5oMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOnn-0000000DPZD-2g6n;
	Fri, 06 Nov 2026 18:36:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOnm-0000000DPYe-3M4M
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:36:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6959B41353;
	Fri,  6 Nov 2026 18:36:38 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793990198;
	b=vXcPfdKhGehF4k4INYBYV7FjI64qzs2hwmjlyQb3ebmbNX87gqDgV7Tsb4x+v3ufnglo
	 2wRtiY+9kd6QNbOFRqfECmlFY+euMaVXmoTxmnn+4KdZdhAt9igDWWVoTXSQTFBfKOEzn
	 z+y67767gnqgrwv4/ALZiIjWMl/ArtjODLCMInESRSECm2VTOe3Xd2iSxu5s1MH8u5Nc5
	 xPdZ9u7XYAE4WaMPPd6A/+YxoKtK+k+4x2YWLA1ewqtnyny0WfzQ025sN4ZWms2J6XT2s
	 zMatY0XMjwV4O4IZ5s7turZTTgcEujpBhB22QhLHTy6iIKapkOQsAWz8zPMAdD5B7Cw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793990198;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=bxEDg/6uv6KvrjforzjxYgizKhspeJzA9yZhl63ubF8=;
	b=DVzhW72VAt3iSmKANgXUHoLxkyIhxD2R8QvfPtZscix6jas27/j6a6Z3CX2JZ0qXa/J/
	 R/8RrsYaUEMTUV1mB078rgvbewghp2dx65XQK2Uz94ObhsZQTAGzrP2gCLj82IsK7x3O8
	 86v9gSjd55iTF8aMBifLd6MZQGmjNEn+hpmvve5JCL4Tp1w2svrRGfWUiksJks5Ss+LTb
	 3itzBWH83/Z2khwAzeyYaJz2YeSKpMBVCPgCTtOoI/+SZYUM0Qw0cEqy+QQ6wRo47XsqL
	 U4ySE9TVFMeul7A8VNRjQZhDZUZT7lwUTNabqGIsoAjb79IgJx8Z49w8CicIPrfr/hg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id AD3AE1F008A1;
	Fri,  6 Nov 2026 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793990198;
	bh=bxEDg/6uv6KvrjforzjxYgizKhspeJzA9yZhl63ubF8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=NoSuu267wYzQwsPu5qu93S6WluWrtIxj6uKFmmDx4RC46kAaRD4RG8+MfgD4o2HEa
	 b7wdTN3j6JKTEReZ7x9OAT1LKgxMq/5kcvgc4uWogYBms6U9f/DxpWkTHyM8MzRPze
	 NA4nIPj96SMmRghApurgVVuAf5hLtZaKDoYXanzGNd7EZhiU0ILukV73QJRGdZ8/hF
	 +gYcWK7MLNRfs1dR+Yn72LGHE/tmZ7VTHqX4mnUhbSFKyKUjxMPAw8xIP0ZI7+L9Rl
	 3X+4Np9w2lp4vO09CxIZ+jk6n/QMZwk6A080SEhz5CDTCvrmj7gZIlGe798WzCJYqD
	 w1ohcvlBMfmlA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 1F79C45E3F;
	Fri,  6 Nov 2026 18:36:37 +0000 (UTC)
From: Andrew Gigena via B4 Relay <devnull+mail.andrewgigena.dev@kernel.org>
Date: Fri, 06 Nov 2026 18:35:33 +0000
Subject: [PATCH v3 1/7] dt-bindings: i2c: qcom-cci: Document SM8150
 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-sm8150-v7.4-rc1-camss-v3-1-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Andrew Gigena <mail@andrewgigena.dev>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793990195; l=1117;
 i=mail@andrewgigena.dev; s=20261104; h=from:subject:message-id;
 bh=BOMUc49jkRpvHI7pH0yM1r2cOIOm5BH9Tmbbjx7uHKQ=;
 b=Zg7HdmgXglhlQfa6xWtHr8kw+NywDUDBxeoDowYbBv55cKCKnTzo2cuwpHcUkyrcFCogo5kck
 ed07u25+VzMA1dQf5SFrq7w2/XSyArRsEBHu2RHcnBY3bqQ4O4JnFSz
X-Developer-Key: i=mail@andrewgigena.dev; a=ed25519;
 pk=OMhlYIBaOEC8g4mJ4JCKy7kbg+lrwRxuujieZF8Ne6U=
X-Endpoint-Received: by B4 Relay for mail@andrewgigena.dev/20261104 with
 auth_id=1402
X-Original-From: Andrew Gigena <mail@andrewgigena.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: mail@andrewgigena.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Andrew Gigena <mail@andrewgigena.dev>

Add qcom,sm8150-cci as a CCI v2 compatible, with qcom,msm8996-cci as
the fallback.

Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 1e8def25ec0e..1e7a8efaa398 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -39,6 +39,7 @@ properties:
               - qcom,shikra-cci
               - qcom,sm6150-cci
               - qcom,sm6350-cci
+              - qcom,sm8150-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
               - qcom,sm8550-cci
@@ -218,6 +219,7 @@ allOf:
           contains:
             enum:
               - qcom,sc7280-cci
+              - qcom,sm8150-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
     then:

-- 
2.56.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
